//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #3 - Up/Down counter
// Student Name: Pawit Kochakarn
// Date: 01/06/2020
//
// Description: A testbench module to test Ex3 - counter
// Guidance: start with simple tests of the module (how should it react to each 
// control signal?). Don't try to test everything at once - validate one part of 
// the functionality at a time.
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb();
    
//Todo: Parameters
parameter CLK_PERIOD = 10;

//Todo: Registers and wires
reg clk,rst,enable,direction;
wire [7:0] counter_out;


//Todo: Clock generation
initial begin
clk= 1'b0;
forever 
#(CLK_PERIOD/2) clk=~clk;
end

//Todo: User logic
initial begin
rst=1;
enable=0;
direction=1;
#10
enable=1;
direction=1;
#20
direction=0;
#10
direction=1;
$display("counter_out=%h",counter_out);
end
    
//Todo: Finish test, check for successclear

//Todo: Instantiate counter module
counter my_counter(clk,rst,enable,direction,counter_out);

 
endmodule 
