`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
// File Name: Top_level.v
// Project:  CECS 301 Lab 5
// Designer: Anthony Paguio & N.Okorie
// Email: anthony.paguio@student.csulb.edu & nkechidindu.okorie@student.csulb.edu
// Rev. Date: March 28, 2019
//
// Purpose: The purpose of the top level module is to 
//				instantiate all the other modules.
//
//////////////////////////////////////////////////////////////////////////////////


module TopLevel(

	//Inputs
	input 		clk100mhz,reset,we,
	input [3:0] W_sw,
	input [2:0] W_Adr, R_Adr, S_Adr,

	//Outputs
	output [7:0] anodes,
	output    	a,b,c,d,e,f,g

	);


	//Wires

	wire clk_500;
	wire we_click;
	wire [15:0] W;
	wire [15:0] R,S;
	
	
	
	clk_500Hz   clk_500Hz(clk_500,clk100mhz,reset);

	one_shot		one_shot(we_click,we,clk_500,reset);

	
	//Register File

	assign W = {12'hFFF,W_sw};

	Register_File Reg_File(clk100mhz, reset, we_click,W,W_Adr,R_Adr,S_Adr,R,S);


	//Display_Controller

	display_controller Disp_Ctrl(clk100mhz, reset, anodes, a, b, c, d, e, f, g, 
										  R[15:12], R[11:8], R[7:4], R[3:0], S[15:12], S[11:8], S[7:4], S[3:0]);



endmodule
