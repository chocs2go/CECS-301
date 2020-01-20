`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:13 03/25/2019 
// Design Name: 
// Module Name:    Decoder_3_to_8 
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
module Decoder_3_to_8(in,en,Y);
	
	//input
	input [2:0] in;
	input			en;

	//output
	output [7:0] Y;
	reg [7:0] Y;

	always @(in or en)
	begin
		if(~en)
			Y= 8'b0;
		else 
			case(in)
				3'b000: Y = 8'b00000001;
				3'b001: Y = 8'b00000010;
				3'b010: Y = 8'b00000100;
				3'b011: Y = 8'b00001000;
				3'b100: Y = 8'b00010000;
				3'b101: Y = 8'b00100000;
				3'b110: Y = 8'b01000000;
				3'b111: Y = 8'b10000000;
				default: Y = 8'b00000000;
			endcase
	end	

endmodule
