`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
// File Name: pixel_controller.v
// Project:  CECS 301 Lab 5
// Designer: Anthony Paguio & N.Okorie
// Email: anthony.paguio@student.csulb.edu & nkechidindu.okorie@student.csulb.edu
// Rev. Date: March 27, 2019
//
// Purpose: The pixel controller is design to control which pixel is to be currently selected. 
//				Generates the signals for the common anode inputs to the 7 segment displays and 
//				also genetates the multiplexer select signals for multiplexing the address/data nibbles.
//
//////////////////////////////////////////////////////////////////////////////////

module pixel_controller(clk,reset,anodes,seg_sel);
	//Input 
	input clk, reset;
	
	//outputs with wires
	output reg [7:0] anodes;
	output reg [2:0] seg_sel;
	
	////
	//state register and nex_state variables
	////
	
	reg [2:0] present_state;
	reg [2:0] next_state;
	
	/////
	//Next State Combo Logic
	/////
	
	always@ (present_state)
		case(present_state)
			3'b000: next_state = 3'b001;
			3'b001: next_state = 3'b010;
			3'b010: next_state = 3'b011;
			3'b011: next_state = 3'b100;
			3'b100: next_state = 3'b101;
			3'b101: next_state = 3'b110;
			3'b110: next_state = 3'b111;
			3'b111: next_state = 3'b000;
			default: next_state = 3'b000;
		endcase;
		
		
		////
		//State Register Logic
		////
		
		always@(posedge clk or posedge reset)
			if (reset ==1'b1)
				present_state = 3'b0;
			else
				present_state=next_state;
				
		//////
		//Output Combo Logic
			
		
		always@(present_state)
			case(present_state)
				3'b000: {anodes, seg_sel} = 11'b11111110_000;
				3'b001: {anodes, seg_sel} = 11'b11111101_001;
				3'b010: {anodes, seg_sel} = 11'b11111011_010;
				3'b011: {anodes, seg_sel} = 11'b11110111_011;
				3'b100: {anodes, seg_sel} = 11'b11101111_100;
				3'b101: {anodes, seg_sel} = 11'b11011111_101;
				3'b110: {anodes, seg_sel} = 11'b10111111_110;
				3'b111: {anodes, seg_sel} = 11'b01111111_111;
				default:{anodes, seg_sel} = 11'b11111110_000;
			endcase
		endmodule
	