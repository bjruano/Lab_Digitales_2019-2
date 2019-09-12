`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2019 11:31:30
// Design Name: 
// Module Name: Wave_Selector
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


module Wave_Selector (input [1:0] clk_sel,               // input sel used to select between a,b,c,d
                      input clk,
                      input enable, 
                      input button,
                      input [3:0] an,
                      output [7:0] val_selected,  
                      output [15:0] leds,           // 4-bit output based on input sel
                      output [6:0] segments);
 
wire [7:0] val_sine;
wire [7:0] val_square;
wire [7:0] val_triangle;
wire [1:0] wave_sel;

Sine(clk, clk_sel, enable, val_sine);
Square(clk, clk_sel, enable, val_square);
Triangle(clk, clk_sel, enable, val_triangle);
count_2(clk, button, wave_sel);
seven_segment(clk, wave_sel, an, segments);
termo_decoder(val_selected, leds);

assign val_selected = wave_sel[1] ? (wave_sel[0] ? 8'b0000_0000 : val_triangle) : (wave_sel[0] ? val_square : val_sine); 
 
endmodule
