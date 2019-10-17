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
    input modo_conf,
    input compra_exitosa,
    input comprar,
    input [13:0] costo,
    input [13:0] vuelto,
    input [13:0] monedas_500_ingresadas,
    input [13:0] monedas_100_ingresadas,
    input [13:0] monedas_50_ingresadas,
    input [13:0] monedas_10_ingresadas,
    output reg [13:0] monto,
    output reg [13:0] monedas_10,
    output reg [13:0] monedas_50,
    output reg [13:0] monedas_100,
    output reg [13:0] monedas_500
    );
    
    initial
    begin
    monedas_500 = 14'd10;
    monedas_100 = 14'd10;
    monedas_50 = 14'd10;
    monedas_10 = 14'd10; 
    monto = 500*6 + 100*10 + 50*10 + 10*10;
    end
    
    wire [13:0] monedas_500_vuelto;
    wire [13:0] monedas_100_vuelto;
    wire [13:0] monedas_50_vuelto;
    wire [13:0] monedas_10_vuelto;

    calculadora_monedas_500(vuelto, monedas_500_vuelto);
    calculadora_monedas_100(vuelto, monedas_100_vuelto);
    calculadora_monedas_50(vuelto, monedas_50_vuelto);
    calculadora_monedas_10(vuelto, monedas_10_vuelto);  
    
always @(posedge clk)
    begin
    if (comprar & compra_exitosa)
        begin
        monto = monto + costo;
        monedas_500 = monedas_500 + monedas_500_ingresadas - monedas_500_vuelto;
        monedas_100 = monedas_100 + monedas_100_ingresadas - monedas_100_vuelto;
        monedas_50 = monedas_50 + monedas_50_ingresadas - monedas_50_vuelto;
        monedas_10 = monedas_10 + monedas_10_ingresadas - monedas_10_vuelto;
        end
    if (comprar & modo_conf)
        begin
        monedas_500 = monedas_500 + 1;
        monedas_100 = monedas_100 + 5;
        monedas_50 = monedas_50 + 5;
        monedas_10 = monedas_10 + 5;
        monto = monto + 14'd1300;
        end
end      
    
endmodule
