`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//
// File Name: Top_level.v
// Project:  CECS 301 Lab 3
// Designer: Anthony Paguio 
// Email: anthony.paguio@student.csulb.edu
// Rev. Date: March 7, 2019
//
// Purpose: The purpose of the top level module is to 
//				instantiate all the other modules.
//
////////////////////////////////////////////////////////////////////////////////


module Top_level(//clk100mhz, reset, we, addr_step, din, Q, a, b, c, d, e, f, g, anodes
	
	// Top Level
	
	input clk100mhz, 
	input reset,
	input step,
	input we,
	input [15:0] din,
	
	output a, b, c, d, e, f, g,
	output [7:0] anodes,
	
	
	// Display Controller
	
	//input        clk,
   input [3:0]  seg7, seg6, seg5, seg4, seg3, seg2, seg1, seg0				  
					  
	);
	
	// Top Level
	
	wire [7:0] addr;
	wire [15:0] dout; 
	wire wire_500hz, wire_pulse, wire_addr;
	
	
	// Display Controller //
	
	wire         clk_pixel;
   wire [2:0]   select;
   wire [3:0]   hex;
	
	// Top Level //
	
	clk_div clk_500hz(clk100mhz, reset, wire_500hz);
	
	debounce debounce_step(step, wire_500hz, reset, wire_addr ),
            debounce_wire(we, wire_500hz, reset, wire_pulse );
	
	addr_seqr sequence(wire_addr, reset, addr);
	
	ram1 ram(.clk(clk100mhz), .we(wire_pulse), .addr(addr), .din(din) , .dout(dout));
	
	//ram1 ram1(clk100mhz, wire_pulse, addr, {8'hFF, din}, dout);



  // Display Controller //
  
   //display_controller  dspcrtl(clk100mhz, reset, anodes, a, b, c, d, e, f, g, seg7, seg6, seg5, seg4, seg3, seg2, seg1, seg0);
	
	pixel_clk           pxlclk( .clk_in(clk100mhz), .reset(reset), .clk_out(clk_pixel) );
    
   pixel_controller    pxlctrl( .clk(clk_pixel), .reset(reset), .anodes(anodes), .seg_sel(select) );
    
   ad_mux              mux8to1( .d7(4'b0000), .d6(4'b0000), .d5(addr[7:4]), .d4(addr[3:0]), .d3(dout[15:12]), .d2(dout[11:8]), 
											.d1(dout[7:4]), .d0(dout[3:0]), .sel(select), .Y(hex) );
	
	hex_to_7segment hex_segment( .hex(hex), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g) );

endmodule
