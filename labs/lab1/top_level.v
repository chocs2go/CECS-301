`timescale 1ns / 1ps

/**************************************************************
*
* Author: 		A. Paguio
* Email: 		anthony.paguio@student.csulb.edu
* Filename: 	top_level.v
* Date: 			February 13, 2019
* Version: 		1
* 
* Description: The purpose of the Top Level module is to
* 					instantiate all the other modules (aside from 
*					the d_ff and the mux_4to1).
*
***************************************************************/

module top_level(clk100mhz, reset, SI, M, D, Q, anodes, step);
	input clk100mhz, reset, SI, step;
	input [1:0] M;
	input [3:0] D;
	
	output [3:0] Q;
	output [7:0] anodes; 
	wire w0, w1;
	
	clk_div clk_500hz(clk100mhz, reset, w0);
	debounce one_shot(step, w0, reset, w1);
	shift_register shift_reg4(w1, reset, M, D, SI, Q);
	assign anodes = 8'hff;


endmodule
