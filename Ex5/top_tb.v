//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Traffic Lights
// Student Name: Pawit Kochakarn
// Date: 02/06/2020
//
// Description: A testbench module to test Ex5 - Traffic Lights
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module top_tb();

parameter CLK_PERIOD = 10;

reg clk;
wire red, amber, green;

initial begin
clk = 1'b0;
forever 
#(CLK_PERIOD/2) clk=~clk;
$display("red=%h",red);
$display("amber=%h",amber);
$display("green=%h",green);
end

traffic_lights mytraffic(clk,red,amber,green);

endmodule
