//////////////////////////////////////////////////////////////////////////////////
// Exercise #7
// Student Name:
// Date: 
//
// Description: In this exercise, you need to implement a times table of 0..7x0..7
// using a memory.
// 
// inputs:
// 		clk, a[2:0], b[2:0], read
//
// output:
//		result[4:0]
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module times(input clk, [2:0]a, [2:0]b, read,
		output [5:0]result);

	wire [5:0] ab;
	assign ab = {a,b}; //concat ab in order to look up addr in mem
	
	my_bram bram_1(.clka(clk),.ena(read),.wea(1'b0),.addra(ab),.dina(6'd0),.douta(result));


endmodule
