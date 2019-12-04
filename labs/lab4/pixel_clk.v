`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//
// File Name: clk_div.v
// Project:  CECS 301 Lab 3
// Designer: Anthony Paguio 
// Email: anthony.paguio@student.csulb.edu
// Rev. Date: March 7, 2019
//
// Purpose:  The purpose of the clock divider is to slow down the internal clock 
//				 based on the incoming frequency of 100MHz and the outgoing 
//				 frequency of 480MHz.
////////////////////////////////////////////////////////////////////////////////

module pixel_clk(clk_in, reset, clk_out);

	input   clk_in, reset;
	
	output  clk_out;
	reg     clk_out;
	
	integer i; 
	
	//**************************************************************
	// The following verilog code will "divide" an incoming clock
	// by the 32-bit decimal value specified in the "if condition"
	//
	// The value of the counter that counts the incoming clock ticks 
	// is equal to [ (Incoming Freq / Outgoing Freq) / 2 ]
	//**************************************************************

	always @ (posedge clk_in or posedge reset) begin
	
		if (reset == 1'b1) begin
			i = 0;
			clk_out = 0;
		end
		//got a clock, so increment the counter and
		//test to see if half a period has elapsed
		
		else begin
			i = i + 1;
			if (i >= (100 * (10**6)) / (2 * 480)) begin
				clk_out = ~clk_out;
				i = 0;
			end // end if
		end // end else
		
	end // end always

endmodule
