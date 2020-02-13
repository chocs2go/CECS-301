`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
// File Name: Top_level.v
// Project:  CECS 301 Lab 5
// Designer: Anthony Paguio & N.Okorie
// Email: anthony.paguio@student.csulb.edu & nkechidindu.okorie@student.csulb.edu
// Rev. Date: March 28, 2019
//
// Purpose: The purpose of the register testbench is to check if the register_file
//				module is working and to simulate how it would be displayed on the 
//				board. 
//
///////////////////////////////////////////////////////////////////////////////////

module Reg_File_tb;

	// Inputs
	reg clk;
	reg reset;
	reg we;
	reg [15:0] W;
	reg [2:0] W_Adr;
	reg [2:0] R_Adr;
	reg [2:0] S_Adr;

	// Outputs
	wire [15:0] R;
	wire [15:0] S;

	//var
	integer i, j, k;
	// Instantiate the Unit Under Test (UUT)
	Register_File uut (
		.clk(clk), 
		.reset(reset), 
		.we(we), 
		.W(W),
		.W_Adr(W_Adr), 
		.R_Adr(R_Adr), 
		.S_Adr(S_Adr), 
		.R(R), 
		.S(S)
	);
	
	//clock
	always #5 clk=~clk;
	
	initial begin

		{i, j, k} = 0;
		clk =0;
		W_Adr=0;
		R_Adr=0;
		S_Adr=0;
		S_Adr=0;
		W=0;
		we=0;
		
		
		
		//#100;
        
		// Add stimulus here

		 @(negedge clk)
            reset = 1;
        @(negedge clk)
            reset = 0;
        for( i = 0 ; i < 4 ; i = i + 1 )
        begin
            @(negedge clk)
            begin
                R_Adr = i;
                S_Adr = i + 4; 
            end
        end
        
        @(negedge clk)
            R_Adr = 0;
            S_Adr = 0;
            
        
        for( j = 0 ; j < 8 ; j = j + 1 )
        begin
            @(negedge clk)
            begin
                we = 1;
                W_Adr = j;
                W = ~j;
            end
        end
        
        @(negedge clk)
        begin
            we = 0;
            W = 0;
            W_Adr = 0;
        end
            
       for( i = 0 ; i < 4 ; i = i + 1 )
       begin
           @(negedge clk)
           begin
               R_Adr = i;
               S_Adr = i + 4; 
           end
       end
       
       @(negedge clk)
       begin
           W_Adr = 0;
           R_Adr = 0;
           S_Adr = 0;
       end      

		
		
		
	end
      
endmodule

