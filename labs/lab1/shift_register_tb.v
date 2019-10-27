`timescale 1ns / 1ps

/**************************************************************
*
* Author: 		A. Paguio
* Email: 		anthony.paguio@student.csulb.edu
* Filename: 	shift_reg_tb.v
* Date: 			February 13, 2019
* Version: 		1
* 
* Description: The purpose of the shift register is to 
*					instantiate the mux_4to1 and d_ff to make 
*					the shift register.
*
***************************************************************/

module shift_register_tb;

	// Inputs
	reg clk, reset, SI;
	reg [1:0] M;
	reg [3:0] D;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	shift_register uut (
		.clk(clk),
		.reset(reset), 
		.SI(SI), 
		.M(M),
		.D(D),
		.Q(Q)
	);

   // Generate clock with a 10 ns period.
	always 
		#5 clk = ~clk;

	// Initialize Inputs
	
	initial begin
		$timeformat(-9, 1, " ns", 6);
		clk = 0;
		reset = 0;
		M = 0;
		D = 0;
		SI = 0;
		
		// These two clocks take care of reset
		@(negedge clk)
			{reset, M, D, SI} = 8'b1_xx_xxxx_x;
		@(negedge clk)
			{reset, M, D, SI} = 8'b0_xx_xxxx_x;
			
		//load function
		@(negedge clk) //30ns
			{reset, M, D, SI} = 8'b0_01_1100_x;	//Q <- 1100 
		//no change function
		@(negedge clk) //40ns
			{reset, M, D, SI} = 8'b0_00_xxxx_x;	//Q <- 1100
		//shift right function, si = 0. 
		@(negedge clk) //50ns
			{reset, M, D, SI} = 8'b0_11_xxxx_0;	//Q <- 0110
		//shift right function, si = 1.
		@(negedge clk) //60ns
			{reset, M, D, SI} = 8'b0_11_xxxx_1;	//Q <- 1011
		//no change function
		@(negedge clk) //70ns
			{reset, M, D, SI} = 8'b0_00_xxxx_x;	//Q <- 1011
		//rotate left function
		@(negedge clk) //80ns
			{reset, M, D, SI} = 8'b0_10_xxxx_x;	//Q <- 0111
		//rotate left function
		@(negedge clk) //90ns
			{reset, M, D, SI} = 8'b0_10_xxxx_x;	//Q <- 1110
		//no change function
		@(negedge clk) //100ns
			{reset, M, D, SI} = 8'b0_00_xxxx_x;	//Q <- 1110
		$finish;

	end
endmodule

