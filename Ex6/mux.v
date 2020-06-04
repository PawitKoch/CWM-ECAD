module mux(
	input [2:0]a, [2:0]b,sel,
	output [2:0]out);
	
	assign out = sel ? b : a;           
      
endmodule
