`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//
// File Name: hex_to_7segment.v
// Project:  CECS 301 Lab 3
// Designer: Anthony Paguio 
// Email: anthony.paguio@student.csulb.edu
// Rev. Date: March 7, 2019
//
// Purpose: The purpose of the the hex to 7 segment module is to display the 
//				segments	0-7 and a-g on the Nexys board. 
//
////////////////////////////////////////////////////////////////////////////////

module hex_to_7segment(hex, a, b, c, d, e, f, g);

	input [3:0] hex;
	
	output reg a, b, c, d, e, f, g;

	always@ (hex) begin
		case (hex)
		

			4'b0000 : {a,b,c,d,e,f,g} = 7'b0000001; // Display 0
			4'b0001 : {a,b,c,d,e,f,g} = 7'b1001111; // Display 1
			4'b0010 : {a,b,c,d,e,f,g} = 7'b0010010; // Display 2
			4'b0011 : {a,b,c,d,e,f,g} = 7'b0000110; // Display 3
			4'b0100 : {a,b,c,d,e,f,g} = 7'b1001100; // Display 4
			4'b0101 : {a,b,c,d,e,f,g} = 7'b0100100; // Display 5
			4'b0110 : {a,b,c,d,e,f,g} = 7'b0100000; // Display 6
			4'b0111 : {a,b,c,d,e,f,g} = 7'b0001111; // Display 7
			4'b1000 : {a,b,c,d,e,f,g} = 7'b0000000; // Display 8
			4'b1001 : {a,b,c,d,e,f,g} = 7'b0000100; // Display 9
			4'b1010 : {a,b,c,d,e,f,g} = 7'b0001000; // Display A
			4'b1011 : {a,b,c,d,e,f,g} = 7'b1100000; // Display B
			4'b1100 : {a,b,c,d,e,f,g} = 7'b0110001; // Display C
			4'b1101 : {a,b,c,d,e,f,g} = 7'b1000010; // Display D
			4'b1110 : {a,b,c,d,e,f,g} = 7'b0110000; // Display E
			4'b1111 : {a,b,c,d,e,f,g} = 7'b0111000; // Display F
			default : {a,b,c,d,e,f,g} = 7'b1111010; // Display 'r' for error.
		
		endcase
		
	
	end
	
endmodule
