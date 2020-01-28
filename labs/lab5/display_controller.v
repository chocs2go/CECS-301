`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
// File Name: display_controller.v
// Project:  CECS 301 Lab 6
// Designer: A.Paguio & N.Okorie
// Email: anthony.paguio@student.csulb.edu & nkechidindu.okorie@student.csulb.edu
// Rev. Date: March 28, 2019
//
// Purpose: The purpose of the display controller module is to	combine 
//				pixel_clk, pixel_controller, ad_mux, and hex_to_7segment into a 
//				single module. 
//
//////////////////////////////////////////////////////////////////////////////////

module display_controller(clk, reset, anodes, a, b, c, d, e, f, g, seg7, seg6, seg5, seg4, seg3, seg2, seg1, seg0);
    
    input        clk, reset;
	 input [3:0]  seg7, seg6, seg5, seg4, seg3, seg2, seg1, seg0;
					  
    output [7:0] anodes;
    output		  a, b, c, d, e, f, g;
	 
    wire         clk_pixel;
    wire [2:0]   select;
    wire [3:0]   hex;
    
    pixel_clk           pxlclk( .clk_in(clk), .reset(reset), .clk_out(clk_pixel) );
    
    pixel_controller    pxlctrl( .clk(clk_pixel), .reset(reset), .anodes(anodes), .seg_sel(select) );
    
    ad_mux              mux8to1( .d7(seg7), .d6(seg6), .d5(seg5), .d4(seg4), .d3(seg3), .d2(seg2), 
											.d1(seg1), .d0(seg0), .sel(select), .Y(hex) );
    
    hex_to_7segment     hex_segment( .hex(hex), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g) );


endmodule
