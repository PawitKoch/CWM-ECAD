//////////////////////////////////////////////////////////////////////////////////
// Exercise #4 
// Student Name: Pawit Kochakarn
// Date: 01/06/2020
//
//  Description: In this exercise, you need to design an electronic dice, following
//  the diagram provided in the exercises documentation. The dice rolls as long as
//  a button is pressed, and stops when it is released. 
//
//  inputs:
//           clk, rst, button
//
//  outputs:
//           throw [2:0]
//
//  You need to write the whole file.
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module dice(clk,rst,button,throw)

	input clk, rst, button;
	output [2:0]throw;

	always @(posedge clk or posedge rst) begin
		if (rst) throw <= 3'b0;
		else 



endmodule 
