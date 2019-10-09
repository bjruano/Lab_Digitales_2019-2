`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2019 01:52:56
// Design Name: 
// Module Name: clk_divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


//module clk_divider(clock_in, clock_out
//    );
//input clock_in; // input clock on FPGA
//output clock_out; // output clock after dividing the input clock by divisor
//reg[31:0] counter=32'd0;
//parameter DIVISOR = 32'd200000000;
//always @(posedge clock_in)
//begin
// counter <= counter + 1;
// if(counter>=(DIVISOR-1))
//  counter <= 32'd0;
//end
//assign clock_out = (counter<DIVISOR/2)?1'b0:1'b1;
//endmodule


module clk_divider(clk, clk_1Hz);
input clk;
output clk_1Hz;

reg clk_1Hz = 1'b0;
reg [27:0] counter;

always@(posedge clk)
        begin
            counter <= counter + 1;
            if ( counter == 25_000_000)
                begin
                    counter <= 0;
                    clk_1Hz <= ~clk_1Hz;
                end
        end
endmodule   