//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #7 - Times Table
// Student Name: Pawit Kochakarn
// Date: 04/06/2020
//
// Description: A testbench module to test Ex7 - Times Table
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb();

parameter CLK_PERIOD = 10;

reg clk, err, [2:0]a, [2:0]b, read;
wire [5:0] result;

initial begin
read=1;
#300
read=0;

end

initial begin
clk = 1'b0;
forever 
#(CLK_PERIOD/2) clk=~clk;

end

initial begin
a = 0;
b = 0;
err = 0;

forever begin
	#CLK_PERIOD
	$display("Result=%h",result);
	if(read) && a*b!=result)
		begin
		$display("Error, miscalc");
		err = 1;
		end
	a = a+1; //go through whole ...7x...7 timestables
	if (a==0)
		b = b+1;
	end
end

times bram( .clk(clk), .a(a), .b(b), .result(result)); //instance


endmodule
