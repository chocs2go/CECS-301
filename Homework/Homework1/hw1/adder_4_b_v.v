`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:15:46 02/04/2019 
// Design Name: 
// Module Name:    adder_4_b_v 
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
module adder_4_b_v(A, B, C0, S, C4);
	input [3:0] A, B;
	input C0;
	output [3:0] S;
	output C4;
	
	assign {C4, S} = A + B + C0;
endmodule
