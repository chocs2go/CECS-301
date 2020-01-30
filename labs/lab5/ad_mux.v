`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
// File Name: ad_mux.v
// Project:  CECS 301 Lab 5
// Designer: Anthony Paguio & N.Okorie
// Email: anthony.paguio@student.csulb.edu & nkechidindu.okorie@student.csulb.edu
// Rev. Date: March 28, 2019
//
// Purpose: This multiplexer selects one 4-bit input from 8 selections and then 
//				outputs it to one 4-bit output 
//
//////////////////////////////////////////////////////////////////////////////////

module ad_mux(d7, d6, d5, d4, d3, d2, d1, d0, sel, Y );

    input      [3:0] d7, d6, d5, d4, d3, d2, d1, d0;
    input      [2:0] sel;
    
    output reg [3:0] Y;
    
    always @ ( * ) // "*" instead of d7-d0, sel.
        case ( sel )
            3'b000 : Y = d0;
            3'b001 : Y = d1;
            3'b010 : Y = d2;
            3'b011 : Y = d3;
            3'b100 : Y = d4;
            3'b101 : Y = d5;
            3'b110 : Y = d6;
            3'b111 : Y = d7;
            default: Y = d0;
        endcase


endmodule
