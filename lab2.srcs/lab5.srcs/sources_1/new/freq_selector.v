`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2019 01:48:42
// Design Name: 
// Module Name: freq_selector
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


module freq_selector ( input [1:0] sel,               
                       input clk,
                       output clk_out_selected);             
 
   wire clk_out_2, clk_out_3, clk_out_4, clk_out_5;
   Clock_divider_2(clk,clk_out_2);
   Clock_divider_3(clk,clk_out_3);
   Clock_divider_4(clk,clk_out_4);
   Clock_divider_5(clk,clk_out_5);
   
   assign clk_out_selected = sel[1] ? (sel[0] ? clk_out_5 : clk_out_4) : (sel[0] ? clk_out_3 : clk_out_2); 
 
endmodule
