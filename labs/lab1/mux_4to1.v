`timescale 1ns / 1ps

/**************************************************************
*
* Author: 		A. Paguio
* Email: 		anthony.paguio@student.csulb.edu
* Filename: 	mx_4to1.v
* Date: 			February 13, 2019
* Version: 		1
* 
* Description: The purpose mux_4to1 is to accept four inputs 
*					and sent through as one output.
*
***************************************************************/

module mux_4to1(input [3:0] I, input [1:0] S, output reg Y);
	
	always @ (I, S)
		case(S)
			2'b00: Y = I[0];
			2'b01: Y = I[1];
			2'b10: Y = I[2];
			2'b11: Y = I[3];
			default: Y = I[0];
		endcase 

endmodule
