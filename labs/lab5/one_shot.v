`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: 			N.Okorie
// Email: 			nkechidindu.okorie@student.csulb.edu
// File Name: 		one_shot.v
// Date: 			2/18/2019
//	Version:   		1.3
// 
//
// Notes: 			The one shot pulse is one of multiple forms of debouncing.
//						The purpose of the one shot pulse is to 
// 					control logical sequences with precise timing. 
//						In this case it is providing a one shot pulse 
//                to our sequence detector.
//						
//
//
//
//////////////////////////////////////////////////////////////////////////////////
module one_shot(dout,din,clk_in,rst);

	input clk_in,rst,din;
   output dout;
	
	wire dout;
	 
	reg q9,q8,q7,q6,q5,q4,q3,q2,q1,q0;

	always @(posedge clk_in or posedge rst)
		if (rst==1'b1)
		//If reset is active all the signals sent 
		//to the shift register will be zero.
		{ q9,q8,q7,q6,q5,q4,q3,q2,q1,q0}<=10'b0;
	else begin
		//Shifts in the new sample on Din input.
		q9<=q8;q8<=q7;q7<=q6;q6<=q5;q5<=q4;q4<=q3;q3<=q2;q2<=q1;q1<=q0;q0<=din;
	end
	/* Create the debounced,one-shot output pulse
		this pulse will signal the shift register that 
		the bounce has reached full stabilization.
	*/
	
	assign dout =!q9&q8&q7&q6&q5&q4&q3&q2&q1&q0;

endmodule

