`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:17:51 02/04/2019
// Design Name:   adder_4_b_v
// Module Name:   C:/Users/drpma/OneDrive/Desktop/school/cecs 301/hw1/adder_4_b_vtf.v
// Project Name:  hw1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_4_b_v
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_4_b_vtf;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg C0;

	// Outputs
	wire [3:0] S;
	wire C4;

	// Instantiate the Unit Under Test (UUT)
	adder_4_b_v uut (
		.A(A), 
		.B(B), 
		.C0(C0), 
		.S(S), 
		.C4(C4)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		{C0, A, B} = 9'h1_9_C; #100; //16
		{C0, A, B} = 9'h0_8_3; #100; //11
		{C0, A, B} = 9'h1_A_F; #100; //1A
		{C0, A, B} = 9'h1_8_E; #100; //17
		{C0, A, B} = 9'h0_2_D; #100; //F
		{C0, A, B} = 9'h1_F_4; #100; //14
		{C0, A, B} = 9'h0_3_B; #100; //E
		{C0, A, B} = 9'h0_1_6; #100; //7

	end
      
endmodule

