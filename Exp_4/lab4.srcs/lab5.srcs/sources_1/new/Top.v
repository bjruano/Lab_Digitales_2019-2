`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 20:50:52
// Design Name: 
// Module Name: Top
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


module Top(
    input clk,
    input [15:0] sw,
    output [3:0] an,
    output [6:0] seg,
    output [3:0] led
    );

// BOTONES:

// Botones de ingreso de monedas:

wire mon_500 = sw[3];
wire mon_100 = sw[2];
wire mon_50 = sw[1];
wire mon_10 = sw[0];

// Botón de devolución: 

wire devolucion = sw[8];

// Botones de elección de productos:

wire prod_D = sw[7];
wire prod_C = sw[6];
wire prod_B = sw[5];
wire prod_A = sw[4];    

// Switch para modo configuración:

wire modo_conf = sw[15];

// REGISTROS:

// Monedas_en_caja:

wire [13:0] monedas_10_en_caja;
wire [13:0] monedas_50_en_caja;
wire [13:0] monedas_100_en_caja;
wire [13:0] monedas_500_en_caja;

// Monto en caja:

wire [13:0] monto_en_caja; 

// Monedas ingresadas:

wire [13:0] monedas_10_ingresadas;
wire [13:0] monedas_50_ingresadas;
wire [13:0] monedas_100_ingresadas;
wire [13:0] monedas_500_ingresadas;

// Monto ingresado:

wire [13:0] monto_ingresado;

// Stock de los productos:

wire stock_A; 
wire stock_B;
wire stock_C;
wire stock_D;

// Vuelto:

wire [13:0] vuelto;

// Avisos:

wire dinero_insuficiente;
wire stock_insuficiente;
wire compra_exitosa;
wire boleta_emitida;

contador_monto_ingresado(clk, devolucion, mon_500, mon_100, mon_50, mon_10, monto_ingresado, monedas_10_ingresadas,
monedas_50_ingresadas, monedas_100_ingresadas, monedas_500_ingresadas);

contador_stock(clk, modo_conf, monto_ingresado, prod_A, prod_B, prod_C, prod_D, stock_A, stock_B, stock_C, stock_D);

display_number(clk, stock_A, an, seg);

assign led[3] = compra_exitosa;
assign led[2] = boleta_emitida;
assign led[1] = stock_insuficiente;
assign led[0] = dinero_insuficiente;

endmodule
