`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: 			N.Okorie
// Email: 			nkechidindu.okorie@student.csulb.edu
// File Name: 		Display_Controller.v
// Project:			Lab 5
// Date: 			3/18/2019
//	Version:   		1.3
// 
//
// Notes: 			The purpose of the Displaycontroller module is to display a 8 pixel wide display.
//						Produces a 60Hz display using 8 , 7 segment pixels, (the 8 segmnets are inputs and 
//						the corresponding 7 segment code is sent to each pixel at a time). 
//
//                						
//
//
//////////////////////////////////////////////////////////////////////////////////

module Display_Controller(clk,reset,anode,a,b,c,d,e,f,g,seg7,seg6,seg5,seg4,seg3,seg2,seg1,seg0);

//Inputs
input clk,reset;
input [3:0] seg7,seg6,seg5,seg4,seg3,seg2,seg1,seg0;

//Outputs
output 		a,b,c,d,e,f,g;
output	[7:0] anode;
//wires
wire			pixel_clock;
wire [2:0]  seg_sel;
wire [3:0]   Y;

//
//pixel_clk
//

		//Which allows the display controller to have 60hz of refresh rate

pixel_clk 		pixel_clk(pixel_clock, clk, reset);

/////
//pixel_controller
/////

pixel_controller pixel_controller(pixel_clock, reset, anode, seg_sel);

////
//8 to 1 mux
///

ad_mux ad_mux(seg_sel, Y,seg7,seg6,seg5,seg4,seg3,seg2,seg1,seg0);

/////
//Hex to 7 segment decoder
////

hex_to_7seg Hex_to7(Y, a,b,c,d,e,f,g);


endmodule
