`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:51 03/14/2019 
// Design Name: 
// Module Name:    display_controller 
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

module display_controller(clk, reset, anodes, a, b, c, d, e, f, g, seg7, seg6, seg5, seg4, seg3, seg2, seg1, seg0);
    
    input        clk, reset;
	 input [3:0]  seg7, seg6, seg5, seg4, seg3, seg2, seg1, seg0;
					  
    output [7:0] anodes;
	 //output [2:0] Q;
    output		  a, b, c, d, e, f, g;
	 
	 //output [3:0] seg3, seg2, seg1, seg0;
	 
	    
   // change ad mux to seg [7:0]
    
    wire         clk_pixel;
    wire [2:0]   select;
    wire [3:0]   hex;
    
    pixel_clk           pxlclk( .clk_in(clk), .reset(reset), .clk_out(clk_pixel) );
    
    pixel_controller    pxlctrl( .clk(clk_pixel), .reset(reset), .anodes(anodes), .seg_sel(select) );
    
    ad_mux              mux8to1( .d7(seg7), .d6(seg6), .d5(seg5), .d4(seg4), .d3(seg3), .d2(seg2), 
											.d1(seg1), .d0(seg0), .sel(select), .Y(hex) );
    
    hex_to_7segment     hex_segment( .hex(hex), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g) );


endmodule
