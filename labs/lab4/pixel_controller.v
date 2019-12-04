`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:58:39 03/13/2019 
// Design Name: 
// Module Name:    pixel_controller 
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
module pixel_controller(clk, reset, anodes, sel[2:0], D, Q);
    
    input clk, reset;
    
    output reg [7:0] anodes;
    output reg [2:0] sel;
    
    reg [2:0] D, Q;
    
    //**************************//
    //  Next-State Combo Logic  //
    //**************************//
    always @ ( Q )
        case ( Q )
            3'b000 : D = 3'b001;
            3'b001 : D = 3'b010;
            3'b010 : D = 3'b011;
            3'b011 : D = 3'b100;
            3'b100 : D = 3'b101;
            3'b101 : D = 3'b110;
            3'b110 : D = 3'b111;
            3'b111 : D = 3'b000;
            default: D = 3'b000;
        endcase
    
    //************************//
    //  State Register Logic  //
    //************************//
    always @ (posedge clk or posedge reset)
        if (reset == 1'b1)
            Q = 3'b0;
        else
            Q = D;
            
    //*********************//
    //  Ouput Combo Logic  //
    //*********************//
    always @ ( Q )
        case ( Q )
            3'b000 : { an, seg_sel } = 11'b01111111111;
            3'b001 : { an, seg_sel } = 11'b10111111110;
            3'b010 : { an, seg_sel } = 11'b11011111101;
            3'b011 : { an, seg_sel } = 11'b11101111100;
            3'b100 : { an, seg_sel } = 11'b11110111011;
            3'b101 : { an, seg_sel } = 11'b11111011010;
            3'b110 : { an, seg_sel } = 11'b11111101001;
            3'b111 : { an, seg_sel } = 11'b11111110000;
            default: { an, seg_sel } = 11'b01111111111;
        endcase
		  
endmodule
