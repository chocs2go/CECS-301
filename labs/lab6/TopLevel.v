`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
// File Name: display_controller.v
// Project:  CECS 301 Lab 6
// Designer: A.Paguio & N.Okorie
// Email: anthony.paguio@student.csulb.edu & nkechidindu.okorie@student.csulb.edu
// Rev. Date: April 8, 2019
//
// Purpose: The purpose of the top level module is to	instantiate the 
//				clock divider, one shot, integer datapath and display controller  
//				modules.
//
//////////////////////////////////////////////////////////////////////////////////

module TopLevel(clk100mhz,rst,W_En,W_Adr,R_Adr,S_Adr,DS,S_Sel,ALU_OP,anode,a,b,c,d,e,f,g);
	//Inputs

	input			clk100mhz,rst;
	input			W_En,S_Sel;
	input  [3:0] ALU_OP;
	input  [2:0] W_Adr, R_Adr, S_Adr;
	input  [15:0] DS;

	//Outputs
	output  [7:0] anode;
	output		  a,b,c,d,e,f,g;

	//Wires
	wire      clk_500;
	wire      BD_click;
	wire  [15:0] S_out;

	//Instantiations for the top level


	/////
	//clk_500Hz
	/////
	clk_500Hz		clk500(clk_500,clk100mhz,rst);


	/////
	//one_shot
	////

	one_shot			one_shot(clk_500,rst,W_En,BD_click);


	////
	//Integer Datapath
	////

	wire [15:0] Reg_Out,Alu_Out;

	Integer_Datapath Integer_Datapath(BD_click,rst,W_En,W_Adr,
												 S_Adr,R_Adr,ALU_OP, 16'hAA55,
												 S_Sel,C,N,Z, Reg_Out,Alu_Out);

	////
	//Display_Controller
	///

	display_controller 		Disp_Ctrl(clk100mhz,rst,anode,a,b,c,d,e,f,g,Reg_Out[15:12],
												 Reg_Out[11:8],Reg_Out[7:4],Reg_Out[3:0],Alu_Out[15:12],
												 Alu_Out[11:8],Alu_Out[7:4],Alu_Out[3:0]);


endmodule
