`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:09 03/25/2019 
// Design Name: 
// Module Name:    reg16 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module reg16(clk,reset,ld,Din,DA,DB,oca,oeb);

//Inputs
input 			clk,reset,ld, oca, oeb;
input [15:0] 	Din;

//Output
output [15:0] DA, DB;

//wire
reg [15:0] Dout;

//Behavioral section for writing to the register
always @ (posedge clk or posedge reset)
	if (reset)
		Dout<= 16'b0;
	else
		if(ld)
			Dout<= Din;
		else Dout <= Dout;
//Conditional Continuous assignments for reading the register
assign DA = oca ? Dout : 16'hz;
assign DB = oeb ? Dout : 16'hz;


endmodule
