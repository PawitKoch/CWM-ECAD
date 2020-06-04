//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #8 - Times Table using AXI interface
// Student Name: Pawit Kochakarn
// Date: 04/06/2020
//
// Description: A testbench module to test Ex8 - Times Table using AXI4-Lite
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb();

parameter CLK_PERIOD = 10;

reg clk;
reg rst;
reg [2:0]a;
reg [2:0]b;
reg read;
wire [5:0] result;

initial begin
clk = 1'b0;
forever 
#(CLK_PERIOD/2) clk=~clk;
end

initial begin
a = 0;
b = 0;
read=1;
rst=0;
forever begin
	#CLK_PERIOD
	$display("Result=%h",result);
	a = a+1; //cycle through a=0->7 x b=0->7
	if (a==0)
		b = b+1;
	end
end

times my_times(.clk(clk), .a(a), .b(b), .rst(rst), .read(read), .result(result)); //top instance


endmodule
