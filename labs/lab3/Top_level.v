`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//
// File Name: Top_level.v
// Project:  CECS 301 Lab 3
// Designer: Anthony Paguio 
// Email: anthony.paguio@student.csulb.edu
// Rev. Date: March 7, 2019
//
// Purpose: The purpose of the top level module is to 
//				instantiate all the other modules.
//
////////////////////////////////////////////////////////////////////////////////


module Top_level(clk100mhz, reset, X, M, Z, anodes, step, a, b, c, d, e, f, g);
	
	input clk100mhz, reset, X, M, step;

	output a, b, c, d, e, f, g, Z;
	output [7:0] anodes;
	
	wire [2:0] Q; 
	wire wire_500hz, wire_oneshot;
	
	clk_div clk_500hz(clk100mhz, reset, wire_500hz);
	debounce one_shot(step, wire_500hz, reset, wire_oneshot);
	sequence_detector seq_detect(wire_oneshot, reset, X, M, Z, Q);
	hex_to_7segment hex_segment({1'b0, Q}, a, b, c, d, e, f, g);
	assign anodes = 8'hFE;


endmodule
