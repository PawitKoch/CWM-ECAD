//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Electronic Dice
// Student Name: Pawit Kochakarn
// Date: 02/06/2020
//
// Description: A testbench module to test Ex4 - Electronic Dice
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module top_tb();

parameter  CLK_PERIOD = 10;

reg clk, rst, button;
wire [2:0]throw;

initial begin
clk = 1'b0;
forever
#(CLK_PERIOD/2) clk=~clk;
end

initial begin
rst=1;
#10
rst=0;
button=1;
#100
button=0;
$display("throw=%h",throw);
end

dice my_dice(clk,rst,button,throw);

endmodule
