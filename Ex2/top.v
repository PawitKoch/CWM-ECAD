//////////////////////////////////////////////////////////////////////////////////
// Exercise #2 
// Student Name: Pawit Kochakarn
// Date: 01/06/2020
//
//  Description: In this exercise, you need to design a multiplexer, where the  
//  output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | a
//   1  | b
//
//  inputs:
//           a, b, sel
//
//  outputs:
//           out
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module mux(
    //Todo: define inputs here
	input a,b,sel,
    
    
    //Todo: define registers and wires here
	output out);


    //Todo: define your logic here  
	assign out = sel ? b : a;               
      
endmodule
