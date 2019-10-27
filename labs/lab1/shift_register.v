`timescale 1ns / 1ps

/**************************************************************
*
* Author: 		A. Paguio
* Email: 		anthony.paguio@student.csulb.edu
* Filename: 	shift_reg.v
* Date: 			February 13, 2019
* Version: 		1
* 
* Description: The shift_reg_tb instantiate sthe shift register 
*					and provides the inputs to the module to see the 
*					outcome.
*
***************************************************************/

module shift_register(clk, reset, M, D, SI, Q);
	input clk;
	input reset;
	input [1:0] M;
	input [3:0] D;
	input SI;
	
	output [3:0] Q;
	wire w3, w2, w1, w0;
	
	mux_4to1 m0({Q[1], Q[3], D[0], Q[0]}, M, w0);
	mux_4to1 m1({Q[2], Q[0], D[1], Q[1]}, M, w1);
	mux_4to1 m2({Q[3], Q[1], D[2],Q[2]}, M, w2);
	mux_4to1 m3({SI, Q[2], D[3], Q[3]}, M, w3);
	

	d_ff d0(clk, reset, w0, Q[0]);
	d_ff d1(clk, reset, w1, Q[1]);
	d_ff d2(clk, reset, w2, Q[2]);
	d_ff d3(clk, reset, w3, Q[3]); 


endmodule
