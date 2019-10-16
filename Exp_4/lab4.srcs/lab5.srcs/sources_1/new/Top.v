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

wire precio_A = 14'd1300;
wire precio_B = 14'd2850;
wire precio_C = 14'd3560;
wire precio_D = 14'd7890;

wire stock_A = 14'd500; //sacar esto del contador de stock
wire stock_B = 14'd500;
wire stock_C = 14'd500;
wire stock_D = 14'd500;

wire mon_500 = sw[3];
wire mon_100 = sw[2];
wire mon_50 = sw[1];
wire mon_10 = sw[0];

wire devolucion = sw[8];

wire prod_D = sw[7];
wire prod_C = sw[6];
wire prod_B = sw[5];
wire prod_A = sw[4];    

wire config_m = sw[15];

wire [13:0] monedas_10_ingresadas;
wire [13:0] monedas_50_ingresadas;
wire [13:0] monedas_100_ingresadas;
wire [13:0] monedas_500_ingresadas;
wire [13:0] monto_ingresado;

wire [13:0] vuelto;

wire dinero_insuficiente;
wire stock_insuficiente;
wire compra_exitosa;

contador_monto_ingresado(clk, devolucion, mon_500, mon_100, mon_50, mon_10, monto_ingresado, monedas_10_ingresadas,
monedas_50_ingresadas, monedas_100_ingresadas, monedas_500_ingresadas);

calculadora_vueltos(clk, precio_A, precio_B, precio_C, precio_D, stock_A, stock_B, stock_C, stock_D, monto_ingresado,
prod_A, prod_B, prod_C, prod_D, vuelto, dinero_insuficiente, stock_insuficiente, compra_exitosa);

display_number(clk, monto_ingresado, an, seg);

assign led[3] = compra_exitosa;
assign led[1] = stock_insuficiente;
assign led[0] = dinero_insuficiente;

endmodule
