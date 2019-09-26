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


module clk_divider(clock_in, clock_out
    );
input clock_in; // input clock on FPGA
output clock_out; // output clock after dividing the input clock by divisor
reg[31:0] counter=32'd0;
parameter DIVISOR = 32'd50000000;
always @(posedge clock_in)
begin
 counter <= counter + 1;
 if(counter>=(DIVISOR-1))
  counter <= 32'd0;
end
assign clock_out = (counter<DIVISOR/2)?1'b0:1'b1;
endmodule
