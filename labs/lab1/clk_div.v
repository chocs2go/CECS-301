`timescale 1ns / 1ps

/**************************************************************
*
* Author: 		A. Paguio
* Email: 		anthony.paguio@student.csulb.edu
* Filename: 	clk_div.v
* Date: 			February 13, 2019
* Version: 		1
* 
* Description: The function of the clock divider is to slow 
*					down the internal clock so that the circuit has 
*					time for the input signal.
*
***************************************************************/

module clk_div(clk_in, reset, clk_out);
	input   clk_in, reset;
	
	output  clk_out;
	reg clk_out;
	
	integer i; 
	

	always @ (posedge clk_in or posedge reset) begin
	
		if (reset == 1'b1) begin
			i = 0;
			clk_out = 0;
		end
		//got a clock, so increment the counter and
		//test to see if half a period has elapsed
		
		else begin
			i = i + 1;
			if (i >= 100000) begin
				clk_out = ~clk_out;
				i = 0;
			end //if
		end //else
		
	end //always

endmodule
