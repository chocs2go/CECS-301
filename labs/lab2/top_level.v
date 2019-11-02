`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//
// File Name: Top_level.v
// Project:  CECS 301 Lab 2
// Designer: Anthony Paguio 
// Email: anthony.paguio@student.csulb.edu
// Rev. Date: March 7, 2019
//
// Purpose: The purpose of the top level module is to 
//				instantiate all the other modules 
//
////////////////////////////////////////////////////////////////////////////////

module top_level(clk100mhz, reset, X, M, Z, Q, anodes, step);
	input clk100mhz, reset, X, M, step;
//	input [3:0] D;
	
	output 		Z;
	output [2:0] Q;
	output [7:0] anodes; 
	wire wire_500hz, wire_oneshot;
	
	clk_div clk_500hz(clk100mhz, reset, wire_500hz);
	debounce one_shot(step, wire_500hz, reset, wire_oneshot);
	sequence_detector seq_detect(wire_oneshot, reset, X, M, Z, Q);
	assign anodes = 8'hff;


endmodule
