`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 12:42:52
// Design Name: 
// Module Name: calculadora_monedas_total
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


module calculadora_monedas_total(
    input clk,
    output [3:0] an,
    output [6:0] seg
    );

wire [13:0] monto = 14'd1350; 
wire [13:0] monedas_500; 
wire [13:0] monedas_100;
wire [13:0] monedas_50;
wire [13:0] monedas_10;
    
calculadora_monedas_500(monto, monedas_500);
calculadora_monedas_100(monto, monedas_100);
calculadora_monedas_50(monto, monedas_50);
calculadora_monedas_10(monto, monedas_10);
    
display_number(clk, 1000*monedas_500 + 100*monedas_100 + 10*monedas_50 + monedas_10, an, seg);
    
endmodule
