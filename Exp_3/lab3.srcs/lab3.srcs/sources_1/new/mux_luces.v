`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2019 01:59:36
// Design Name: 
// Module Name: mux_luces
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


module mux_luces(
    input [5:0] luces_bajo, luces_alto,
    input flujo_alto,
    output [5:0] luces_escogidas,
    output led_flujo_alto
    );
    
    assign led_flujo_alto = flujo_alto;
    
    assign clk_out_selected = flujo_alto ? luces_alto : luces_bajo; 
    
endmodule
