//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 
// Student Name: Pawit Kochakarn	
// Date: 02/06/2020
//
//  Description: In this exercise, you need to implement a UK traffic lights 
//  sequencing system. 
//
//  inputs:
//           clk
//
//  outputs:
//           red , amber, green
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module traffic_lights(clk,red,amber,green);

	input clk;
	output reg red,amber,green;

	reg [2:0] state;

	always @(posedge clk) begin
		case(state)
		3'b001 : state = 3'b011; //red --> red+amber
		3'b011 : state = 3'b100; //red+amber --> green
		3'b100 : state = 3'b010; //green --> amber
		3'b010 : state = 3'b001; //amber --> red
		default : state = 3'b001; //start at red
		endcase
	end

	always @(state) begin
		case(state)
		3'b001 : {green,amber,red} = 3'b001; //red
		3'b011 : {green,amber,red} = 3'b011; //red+amber
		3'b100 : {green,amber,red} = 3'b100; //green
		3'b010 : {green,amber,red} = 3'b010; //amber
		endcase
	end


endmodule

