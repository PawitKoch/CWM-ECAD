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

wire [2:0]throw, red, amber, green;


dice my_dice(.clk(clk), .rst(rst), .button(button), .throw(throw));
traffic_lights trafic_lights(.clk(clk), .red(red), .amber(amber), .green(green));
mux my_mux( .a(throw), .b({green,amber,red}), .sel(sel), .out(result));


endmodule


