`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2019 00:48:18
// Design Name: 
// Module Name: clock_divider
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


module Clock_divider_2(clock_in,clock_out
    );
input clock_in; // input clock on FPGA
output clock_out; // output clock after dividing the input clock by divisor
reg[31:0] counter=32'd0;
parameter DIVISOR = 32'd2000000;
always @(posedge clock_in)
begin
 counter <= counter + 1;
 if(counter>=(DIVISOR-1))
  counter <= 32'd0;
end
assign clock_out = (counter<DIVISOR/2)?1'b0:1'b1;
endmodule

