//////////////////////////////////////////////////////////////////////////////////
// Exercise #6 
// Student Name: Pawit Kochakarn
// Date: 03/06/2020
//
//
//  Description: In this exercise, you need to design a multiplexer between a dice and traffic 
//  lights, where the output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | dice
//   1  | traffic lights
//
//  inputs:
//           rst, clk, button,sel
//
//  outputs:
//           result[2:0]
//
//////////////////////////////////////////////////////////////////////////////////

module top(
	input clk,rst,button,sel,
	output [2:0]result
);

wire [2:0]tmp_1, r, a, g;


dice my_dice(.clk(clk),.rst(rst),.button(button),.throw(tmp_1));
traffic_lights trafic_lights(.clk(clk),.red(r),.amber(a),.green(g));
mux my_mux(.a(tmp_1),.b({g,a,r}),.sel(sel),out(result));


endmodule


