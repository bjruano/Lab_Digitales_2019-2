`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 02:05:15
// Design Name: 
// Module Name: calculadora_vueltos
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


module calculadora_vueltos(
    input clk,
    input [13:0] precio, 
//    input [13:0] monto_ingresado,
//    input [13:0] monedas_10_disponibles,
//    input [13:0] monedas_50_disponibles,
//    input [13:0] monedas_100_disponibles,
//    input [13:0] monedas_500_disponibles,
    output reg [13:0] monedas_10_vuelto,
    output reg [13:0] monedas_50_vuelto,
    output reg [13:0] monedas_100_vuelto,
    output reg [13:0] monedas_500_vuelto,
    output reg [13:0] vuelto,
    output reg vuelto_posible,
    output reg dinero_suficiente
    );
    
    wire [13:0] monedas_10_requeridas;
    wire [13:0] monedas_50_requeridas;
    wire [13:0] monedas_100_requeridas;
    wire [13:0] monedas_500_requeridas;
    
    reg cond_10;
    reg cond_50;
    reg cond_100;
    reg cond_500;
    
//    calculadora_monedas(clk, monto_ingresado - precio, monedas_500_requeridas, monedas_100_requeridas,
//    monedas_50_requeridas, monedas_10_requeridas);
    
    
    always @(*)
    begin
    
    if (precio > monto_ingresado)
        begin
        vuelto_posible = 0;
        vuelto = 0;
        dinero_suficiente = 0;
        end
    
    else
        begin
        dinero_suficiente = 1;
        cond_10 = monedas_10_disponibles >= monedas_10_requeridas;
        cond_50 = monedas_50_disponibles >= monedas_50_requeridas;
        cond_100 = monedas_100_disponibles >= monedas_100_requeridas;
        cond_500 = monedas_500_disponibles >= monedas_500_requeridas;
        
        if (cond_10 & cond_50 & cond_100 & cond_500)
            begin
            vuelto_posible = 1;
            vuelto = monto_ingresado - precio;
            end
        
        else 
            begin
            vuelto_posible = 0;
            vuelto = 0;
            end
        
        end
    
    end 
        
endmodule
