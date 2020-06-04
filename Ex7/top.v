//////////////////////////////////////////////////////////////////////////////////
// Exercise #7
// Student Name: Pawit Kochakarn
// Date: 04/06/2020
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
	assign ab = {a,b}; //concat ab in order to look up addr in mem table
	
	my_bram your_instance_name(
		  .clka(clk),    // input wire clka
		  .ena(read),      // input wire ena
		  .wea(1'b0),      // input wire [0 : 0] wea 
  		  .addra(ab),  // input wire [5 : 0] addra
		  .dina(6'b0),    // input wire [5 : 0] dina
		  .douta(result)  // output wire [5 : 0] douta
		);


endmodule
