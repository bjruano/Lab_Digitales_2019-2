`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2019 10:48:49
// Design Name: 
// Module Name: counter_1
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


module counter_1 (
      input [1:0] sel,
      input clk,
      input enable,
  output reg [7:0] out
    );
    
  wire clk_selected;
  freq_selector(sel, clk, clk_selected);

 
    always @(posedge clk_selected)
      if (enable) begin
        out = out+1;
      end
        
endmodule



