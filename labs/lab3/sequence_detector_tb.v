`timescale 1ns / 10ps

////////////////////////////////////////////////////////////////////////////////
// File Name: sequence_detector_tb.v
// Project:  CECS 301 Lab 2
// Designer: Anthony Paguio 
// Email: anthony.paguio@student.csulb.edu
// Rev. Date: March 7, 2019
//
// Purpose: 
////////////////////////////////////////////////////////////////////////////////

module sequence_detector_tb;

	// Inputs
	reg clk;
	reg reset;
	reg X;
	reg M;

	// Outputs
	wire Z;
	wire [2:0] Q;
	
	// Local Declarations 
	reg [44:1] sequence_pattern ;
	integer i ;

	// Instantiate the Unit Under Test (UUT)
	sequence_detector uut (
		.clk(clk), 
		.reset(reset), 
		.X(X), 
		.M(M), 
		.Z(Z), 
		.Q(Q)
	);
	
	// Generate 10 ps clk
		always
		#5 clk = ~clk;
		
	// Initial block for the "test vectors," applied every clk cycle.
	initial begin
	
	$timeformat(-12, 1, " ps", 8);
	
		// Initialize Inputs
		clk = 0;
		reset = 0;
		X = 0;
		M = 0;
		
		sequence_pattern = 44'b01100010101101011011111001011011011011101010;
		@(negedge clk)
			reset = 1;
		@(negedge clk)
			reset = 0;
			M = 0;   // Moore implementation (M = 0). To simulate the Mealy implementation
						// set M = 1 and "re-run" the simulation to get a new waveform.			
			
		// this loop will "feed" the sequence detector with the
		// test sequence pattern from MSB to LSB.
		for (i = 44; i > 0; i = i - 1) begin
		
			// Change inputs on negative edge of clk.
			@(negedge clk)
				X = sequence_pattern[i];
			// Display outputs after the positive clk.
			@(posedge clk)
				#1 $display("Time = %t X = %b Q = %b Z = %b", $time, X, Q, Z);
		end// end of for-loop
		$stop;
	end // End initial
      
endmodule

