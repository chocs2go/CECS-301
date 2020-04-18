`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
// File Name: Integer_Datapath.v
// Project:  CECS 301 Lab 6
// Designer: A.Paguio & N.Okorie
// Email: anthony.paguio@student.csulb.edu & nkechidindu.okorie@student.csulb.edu
// Rev. Date: April 8, 2019
//
// Purpose: The purpose of the integer datapath module is designed to link the 
//				register file, S-Mux, and ALU16 and create the integer's datapath.
//
//////////////////////////////////////////////////////////////////////////////////

module Integer_Datapath(clk,reset,W_En,W_Adr,S_Adr,
								R_Adr,ALU_OP,DS,S_Sel,C,N,Z,
								Reg_Out,Alu_Out);
	
	//Inputs
	input					clk, reset;
	input				W_En,S_Sel;
	input	[2:0] R_Adr,W_Adr,S_Adr;
	input	[3:0] ALU_OP;
	input [15:0] DS;

	//Outputs
	output wire [15:0] Reg_Out,Alu_Out;
	output wire 	  C,N,Z;

	//Wires
	wire	[15:0] R,S,S_mux;

	//Assign statement
	assign Reg_Out = R;

	/////
	//Register_File
	/////

	Register_File Register_File(clk,reset,W_En,Alu_Out, W_Adr,R_Adr,S_Adr, R,S);
	//Register_File Register_File(clk100mhz, reset,we_click,W,W_Adr,R_Adr,S_Adr,R,S);
	////
	//S_Mux
	///

	assign S_mux = (S_Sel == 0 )  ? S: DS;
	//S_mux		S_mux(S,DS,S_Sel,S_M);

	///////
	//ALU16
	///////

	alu16		alu16(R,S_mux,ALU_OP,Alu_Out,N,Z,C);

endmodule
