`timescale 1ns / 1ps

/**************************************************************
*
* Author: 		A. Paguio
* Email: 		anthony.paguio@student.csulb.edu
* Filename: 	debounce.v
* Date: 			February 13, 2019
* Version: 		1
* 
* Description: The purpose the debounce (binded by step or 
*					btn_down is to execute the operation on the 
*					board.
*
***************************************************************/

module debounce(D_in, clk_in, reset, D_out);
	input D_in, clk_in, reset;
	
	output D_out;
	wire D_out;
	
	reg q9, q8, q7, q6, q5, q4, q3, q2, q1, q0;
	
	always @ (posedge clk_in or posedge reset) begin
		if (reset == 1'b1) begin
			{q9, q8, q7, q6, q5, q4, q3, q2, q1, q0} <= 10'b0;
		end //end if
		
		else begin
			//shift in the new sample that's on the D_in input
			q9 <= q8; q8 <= q7; q7 <= q6; q6 <= q5; q5 <= q4;
			q4 <= q3; q3 <= q2; q2 <= q1; q1 <= q0; q0 <= D_in;
		end //end else
	end //end always 
	
	//create the debounced, one-shot pulse
	assign D_out = !q9 & q8 & q7 & q6 & q5 &
						q4 & q3 & q2 & q1 & q0; 


endmodule
