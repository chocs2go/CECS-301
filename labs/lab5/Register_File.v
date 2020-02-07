`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
// File Name: Register_File.v
// Project:  CECS 301 Lab 6
// Designer: A.Paguio & N.Okorie
// Email: anthony.paguio@student.csulb.edu & nkechidindu.okorie@student.csulb.edu
// Rev. Date: April 8, 2019
//
// Purpose: The purpose of the register is to write the 16-bit data and return or 
//				send them to outputs R and S
//
//////////////////////////////////////////////////////////////////////////////////

module Register_File(clk,reset,we,W,W_Adr, R_Adr,S_Adr,R,S );

	//Inputs 
	input				clk,reset,we;
	input		[15:0] W;
	input    [2:0] W_Adr, R_Adr, S_Adr;

	//output
	output [15:0] S;
	output [15:0] R;

	//Wires
	wire [7:0] Id,oea,oeb;


	//Instantiation for registers 7-0.
	reg16 						R0 (clk,reset,Id[0], W, R, S, oea[0],oeb[0]),
									R1 (clk,reset,Id[1], W, R, S, oea[1],oeb[1]),
									R2 (clk,reset,Id[2], W, R, S, oea[2],oeb[2]),
									R3 (clk,reset,Id[3], W, R, S, oea[3],oeb[3]),
									R4 (clk,reset,Id[4], W, R, S, oea[4],oeb[4]),
									R5 (clk,reset,Id[5], W, R, S, oea[5],oeb[5]),
									R6 (clk,reset,Id[6], W, R, S, oea[6],oeb[6]),
									R7 (clk,reset,Id[7], W, R, S, oea[7],oeb[7]);
									
	//Decoders
	Decoder_3_to_8				Dec0(W_Adr, we, Id),
									Dec1(R_Adr, 1'b1,oea),
									Dec2(S_Adr, 1'b1,oeb);

endmodule
