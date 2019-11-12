`timescale 1ns / 10ps

////////////////////////////////////////////////////////////////////////////////
//
// File Name: sequence_detector.v
// Project:  CECS 301 Lab 3
// Designer: Anthony Paguio 
// Email: anthony.paguio@student.csulb.edu
// Rev. Date: March 7, 2019
//
// Purpose: This module creates a non-overlapping sequence that looks for 
//				"101101" for Moore and Mealy. 
//				This module is where we put our Next State Combinational Logic, 
//				State Memory, and Output Combinational Logic.
//
////////////////////////////////////////////////////////////////////////////////


module sequence_detector(clk, reset, X, M, Z, Q);

	input clk, reset, X, M;
	
	output [2:0] Q;
	output 		 Z;
	
	wire [2:0] Moore;
	wire [2:0] Mealy;
	
	//*****************************************************
	// Moore sequence detector for a serial input sequence.
	//*****************************************************
	
	//Next state combinational logic.
	assign moore_d0 = (~Moore[2] & ~Moore[1] & X) |
							(~Moore[2] & ~Moore[0] & X) |
							(Moore[2] & ~Moore[1] & ~Moore[0]);
							 
	assign moore_d1 = (Moore[2] & Moore[1] & ~Moore[0] & ~X) |
							(~Moore[2] & Moore[1] & ~Moore[0] & X) |
							(Moore[2] & Moore[0] & X) | 
							(~Moore[2] & Moore[0] & ~X);
							
	assign moore_d2 = (Moore[2] & ~Moore[1] & ~Moore[0] & ~X) |
							(Moore[2] & Moore[1] & ~Moore[0] & X) |
							(Moore[1] & Moore[0] & X) |
							(Moore[2] & Moore[0] & X);
							
	// State register using d-ff instances.
	d_ff Moore0 (clk, reset, moore_d0, Moore[0]);
	d_ff Moore1 (clk, reset, moore_d1, Moore[1]);
	d_ff Moore2 (clk, reset, moore_d2, Moore[2]);

	// Output combinational logic.
	assign Moore_Z = (Moore[2] & Moore[1]);

	//*****************************************************
	// Mealy sequence detector for a serial input sequence.
	//*****************************************************

	// Next state combinational logic.
	assign mealy_d0 = (~Mealy[2] & ~Mealy[1] & X) |
							(~Mealy[0] & X) |
							(Mealy[2] & ~Mealy[0]) |
							(Mealy[2] & X);
							 
	assign mealy_d1 = (~Mealy[2] & Mealy[0] & ~X) |
							(Mealy[1] & ~Mealy[0] & X) |
							(Mealy[2] & Mealy[0] & X);
							
	assign mealy_d2 = (Mealy[2] & ~Mealy[0] & ~X) |
							(Mealy[1] & Mealy[0] & X) ;
							
	// State register using d-ff instance.
	d_ff Mealy0 (clk, reset, mealy_d0, Mealy[0]);
	d_ff Mealy1 (clk, reset, mealy_d1, Mealy[1]);
	d_ff Mealy2 (clk, reset, mealy_d2, Mealy[2]);

	// Output combinational logic.
	assign Mealy_Z = (Mealy[2] & Mealy[0] & X);

	// Decision logic to switch between mealy and moore.
	// Decision is dependent on the mode.
	// Mode == 1; mealy. Mode == 0; moore.
	assign {Z, Q} = (M == 1'b0) ? {Moore_Z, Moore} : {Mealy_Z, Mealy};
	
endmodule
