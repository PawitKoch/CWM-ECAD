//////////////////////////////////////////////////////////////////////////////////
// Exercise #9 
// Student Name: Pawit Kochakarn
// Date: 05/06/2020
//
//  Description: In this exercise, you need to design a module that lights leds
//  at different frequencies
//
//  inputs:
//           rst_n, clk_n, clk_p, button
//
//  outputs:
//           led_0, led_1, led_2
//////////////////////////////////////////////////////////////////////////////////


module top(
    input clk_p,
    input clk_n,
    input rst_n, //active LOW
    input button,
    output reg led_0,led_1,led_2
     //Todo: add all other ports besides clk_n and clk_p 
   );
    

   /* clock infrastructure, do not modify */
    wire clk_ibufds;

    IBUFDS IBUFDS_sysclk (
	.I(clk_p),
	.IB(clk_n),
	.O(clk_ibufds)
);

     wire clk; //use this signal as a clock for your design
        
     BUFG bufg_clk (
	.I  (clk_ibufds),
	.O  (clk)
      );
//Add logic here

	reg [20:0]counter = 21'd0; //21-bit up counter to 2e6 for 50Hz LED blink cycle (on+off)

	always @(posedge clk, posedge rst_n) begin
		if (~rst_n && button) begin //active low reset + button
			{led_2,led_1,led_0} = 3'b0;
			counter = 0;
		end
		else if (counter==21'd1000000) begin //LED ON
			{led_2,led_1,led_0} = 3'b111;
		end
		else if (counter==21'd2000000) begin //LED OFF
			{led_2,led_1,led_0} = 3'b0;
			counter = 0; 
		end
		else begin
			counter = counter + 1;
		end
	end

endmodule
