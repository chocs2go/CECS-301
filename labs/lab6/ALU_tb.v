`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
// File Name: display_controller.v
// Project:  CECS 301 Lab 6
// Designer: A.Paguio & N.Okorie
// Email: anthony.paguio@student.csulb.edu & nkechidindu.okorie@student.csulb.edu
// Rev. Date: April 8, 2019
//
// Purpose: The purpose of the ALU testbench is to test if the ALU module is 
//				working as we programmed it to.
//
//////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg clk;
	reg [15:0] R;
	reg [15:0] S;
	reg [3:0] Alu_Op;
	

	// Outputs
	wire [15:0] Y;
	wire N;
	wire Z;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	alu16 uut (
		.R(R), 
		.S(S), 
		.Alu_Op(Alu_Op), 
		.Y(Y), 
		.N(N), 
		.Z(Z), 
		.C(C)
	);
/*
	initial begin
		// Test 0			pass S
		Alu_Op = 0;
			  R=  16'hAAAA;
			  S= 16'hF0F0;
		#10;
		//test 1				pass	R
		Alu_Op = 1;
			  R=  16'hAAAA;
			  S= 16'hF0F0;

		#10;
		//test 2				increment S
		Alu_Op = 2;
			  S= 16'hABCD;

       #10;
		//test 3				decrement S
		Alu_Op = 3;
			  S= 16'hDCBA;
		
		#10;
		//test 4				add
		Alu_Op = 4;
			  R=  16'hA0A0;
			  S= 16'h0A0A;
		
		#10;
		//test 5				subtract
		Alu_Op = 5;
			  R=  16'hFEDC;
			  S= 16'h1234;
			  
		#10;
		//test 6				Right Shift S
		Alu_Op = 6;
			  S= 16'h5B5B;
		
		#10;
		//test 7				Left Shift S
		Alu_Op = 7;
			  S=  16'h1234;
			  
		#10;
		//test 8				and
		Alu_Op = 8;
			  R= 16'h5154;
			  S= 16'h0415;
		
		#10;
		//test 9				or
		Alu_Op = 9;
			  R=  16'h0987;
			  S= 16'h0890;
		
		#10;
		//test A				xor
		Alu_Op = 10;
			  R=  16'hF0E1;
			  S= 16'hFF00;
			  
		#10;
		//test B				Not S
		Alu_Op = 11;
			  S= 16'h5A5A;
			  
		#10;
		//test C			`	Negate S
		Alu_Op = 12;
			  S= 16'h3920;
			  
		#10;
		//test D default	| pass S
		Alu_Op = 13;
			  R=  16'h0000;
			  S= 	16'h1111;
		#10	$finish;
	end
      */
		
		
		integer i;
	always #5 clk = ~clk;

	
	initial begin
		R = 16'b0;
		S = 16'b0;
		clk = 0;
		
		for (i = 0; i <= 12; i = i + 1) begin
			
			@(negedge clk)
			Alu_Op = i;			
				case (i)
						0: begin R = 16'h0; S = 16'hAA55; end
						1: begin R = 16'h55AA; S = 16'h0000; end
						2: begin R = 16'h0000; S = 16'h0001; end
						3: begin R = 16'h0000; S = 16'h0002; end
						4: begin R = 16'h1; S = 16'h1; end
						5: begin R = 16'h1; S = 16'h1; end
						6: begin R = 16'h0000; S = 16'h0004; end
						7: begin R = 16'h0000; S = 16'h0002; end
						8: begin R = 16'h0F0F; S = 16'hFFFF; end
						9: begin R = 16'hF0F0; S = 16'h0F0F; end
						10: begin R = 16'h0FFF; S = 16'h0F0F; end // 00F0
						11: begin R = 16'h0000; S = 16'h0001; end // FFFF
						12: begin R= 16'h0000; S = 16'h0001; end // FFFF
						default: begin R = 16'h0; S = 16'hAA55; end
				endcase
				
			end
	end
endmodule

