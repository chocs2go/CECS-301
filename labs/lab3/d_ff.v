`timescale 1ns / 1ps

/**************************************************************
*
* Author: 		A. Paguio
* Email: 		anthony.paguio@student.csulb.edu
* Filename: 	top_level.v
* Date: 			February 13, 2019
* Version: 		1
* 
* Description: The function of the D flip flop is to accept 
*					the input data on the positive edge of the 
*					clock and hold it until it is needed.
*
***************************************************************/

module d_ff(clk, reset, D, Q);
	input clk, reset, D;
   
	output Q;
	reg  Q; 
  
   always@(posedge clk or posedge reset) begin
		if (reset) begin
			Q <= 1'b0;
		end //end if 
		
	   else 
			Q <= D;
	end //end always

endmodule
