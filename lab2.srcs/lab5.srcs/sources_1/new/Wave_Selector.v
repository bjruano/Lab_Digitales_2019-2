`timescale 1ns / 1ps

// Selector de frecuencias: Este es el módulo principal en donde se elige la onda que uno quiere y se entregan las
// salidas correspondientes. 

module Wave_Selector (input [1:0] clk_sel,               
                      input clk,
                      input enable, 
                      input button,
                      output [3:0] an,
                      output [7:0] val_selected,  
                      output [15:0] leds,           
                      output [6:0] segments);
 
wire [7:0] val_sine;
wire [7:0] val_square;
wire [7:0] val_triangle;
wire [1:0] wave_sel;

Sine(clk, clk_sel, enable, val_sine);
Square(clk, clk_sel, enable, val_square);
Triangle(clk, clk_sel, enable, val_triangle);
count_2(clk, button, wave_sel);
seven_segment(wave_sel, an, segments);
termo_decoder(val_selected, leds);

assign val_selected = wave_sel[1] ? (wave_sel[0] ? 8'b0000_0000 : val_triangle) : (wave_sel[0] ? val_square : val_sine); 
 
endmodule
