`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2019 02:12:40
// Design Name: 
// Module Name: display_number
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


module display_number(
    input clk,
    input [13:0] N,
    output [3:0] an,
    output [6:0] seg
    
    );
 
wire [15:0] BCD;
wire X;
wire clock;
   
clk_divider_7segment(clk, 0, clock);   
Binary_to_BCD(clk, N, clock, BCD, X);
display_7s(clk, 10*BCD[15:12]+BCD[11:8], 10*BCD[7:4]+BCD[3:0], an, seg);

endmodule
