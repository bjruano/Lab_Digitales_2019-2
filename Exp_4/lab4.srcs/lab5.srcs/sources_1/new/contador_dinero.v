`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2019 21:49:18
// Design Name: 
// Module Name: contador_dinero
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


module contador_dinero(
    input clk,
    input [13:0] monedas_10_ingresadas,
    input [13:0] monedas_50_ingresadas,
    input [13:0] monedas_100_ingresadas,
    input [13:0] monedas_500_ingresadas,
    input [13:0] monedas_10_retiradas,
    input [13:0] monedas_50_retiradas,
    input [13:0] monedas_100_retiradas,
    input [13:0] monedas_500_retiradas,
    output reg [13:0] monto,
    output reg [13:0] monedas_10,
    output reg [13:0] monedas_50,
    output reg [13:0] monedas_100,
    output reg [13:0] monedas_500
    );
    
    initial monedas_500 = 14'd6;
    initial monedas_100 = 14'd10;
    initial monedas_50 = 14'd10;
    initial monedas_10 = 14'd10; 
    initial monto = 500*monedas_500 + 100*monedas_100 + 50*monedas_50 + 10*monedas_10;
    
    always @(posedge clk)
    begin
    
    monedas_500 = monedas_500 + monedas_500_ingresadas;
    monedas_100 = monedas_100 + monedas_100_ingresadas;
    monedas_50 = monedas_50 + monedas_50_ingresadas;
    monedas_10 = monedas_10 + monedas_10_ingresadas;
    
    monedas_500 = monedas_500 - monedas_500_retiradas;
    monedas_100 = monedas_100 - monedas_100_retiradas;
    monedas_50 = monedas_50 - monedas_50_retiradas;
    monedas_10 = monedas_10 - monedas_10_retiradas;
    
    monto = 500*monedas_500 + 100*monedas_100 + 50*monedas_50 + 10*monedas_10;
    
    if (monto >= 9999)
    begin
    monto = 9999;
    end
    
    if (monto <= 0)
    begin
    monto = 0;
    end
    
    end
    
    
endmodule
