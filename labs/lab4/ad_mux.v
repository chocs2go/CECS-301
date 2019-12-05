`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:18:14 03/11/2019 
// Design Name: 
// Module Name:    ad_mux 
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
module ad_mux(d7, d6, d5, d4, d3, d2, d1, d0, sel, Y );

    input      [3:0] d7, d6, d5, d4, d3, d2, d1, d0;
    input      [2:0] sel;
    
    output reg [3:0] Y;
    
    always @ ( sel )
        case ( sel )
            3'b000 : Y = d0;
            3'b001 : Y = d1;
            3'b010 : Y = d2;
            3'b011 : Y = d3;
            3'b100 : Y = d4;
            3'b101 : Y = d5;
            3'b110 : Y = d6;
            3'b111 : Y = d7;
            default: Y = 4'h0;
        endcase


endmodule
