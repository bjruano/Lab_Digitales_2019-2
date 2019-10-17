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
    input btnC,
    output [3:0] an,
    output [6:0] seg,
    output [4:0] led
    );

// BOTONES:

// Botón de devolución: 

wire devolucion = sw[10];

// Botones de elección de productos:

wire prod_D = sw[14];
wire prod_C = sw[13];
wire prod_B = sw[12];
wire prod_A = sw[11];

// Botones de ingreso de monedas:

wire M500 = sw[9];
wire M100 = sw[8];
wire M50 = sw[7];
wire M10 = sw[6];

// Boton de confirmar compra:

wire comprar;
DeBouncer_D(clk, btnC, comprar);    

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

wire [13:0] stock_A; 
wire [13:0] stock_B;
wire [13:0] stock_C;
wire [13:0] stock_D;

// Carro de compras:

wire [13:0] cant_A;
wire [13:0] cant_B;
wire [13:0] cant_C;
wire [13:0] cant_D;

// Costo total:

wire [13:0] costo;

// Vuelto:

wire [13:0] vuelto;

// Boletas:

wire [13:0] boletas_emitidas;

// Avisos:

wire dinero_insuficiente;
wire stock_insuficiente;
wire compra_exitosa;
wire boleta_emitida;

// Datos a mostrar en el display:

wire [13:0] data;

// Funcionamiento del verificador de compras:

verificador_compra(clk, stock_A, stock_B, stock_C, stock_D, monto_ingresado, prod_A, prod_B, prod_C, prod_D, comprar,
devolucion, cant_A, cant_B, cant_C, cant_D, costo, dinero_insuficiente, stock_insuficiente, compra_exitosa);

// Funcionamiento del contador de monto ingresado:

contador_monto_ingresado(clk, M500, M100, M50, M10, compra_exitosa, comprar, devolucion, monedas_500_ingresadas,
monedas_100_ingresadas, monedas_50_ingresadas, monedas_10_ingresadas);

// Funcionamiento del contador de stock:

contador_stock(clk, modo_conf, compra_exitosa, comprar, cant_A, cant_B, cant_C, cant_D, stock_A, stock_B, stock_C, stock_D);

// Funcionamiento del contador de monto total:

contador_dinero(clk, modo_conf, compra_exitosa, comprar, costo, monto_ingresado, monedas_500_ingresadas, monedas_100_ingresadas,
monedas_50_ingresadas, monedas_10_ingresadas, vuelto, monto_en_caja, monedas_10_en_caja, monedas_50_en_caja, 
monedas_100_en_caja, monedas_500_en_caja);

// Funcionamiento del contador de boletas:

contador_boletas_emitidas(clk, comprar, compra_exitosa, boletas_emitidas);

// Funcionamiento del selector de display:

selector_display(clk, modo_conf, M500, M100, M50, M10, monto_ingresado, vuelto, boletas_emitidas, comprar,
compra_exitosa, data);

display_number(clk, data, an, seg);

// Funcionamiento del aviso de boletas:

wire impresion;

aviso_boletas(clk, comprar, compra_exitosa, impresion);

assign led[3] = compra_exitosa;
assign led[2] = boleta_emitida;
assign led[1] = stock_insuficiente;
assign led[0] = dinero_insuficiente;
assign led[4] = impresion;

endmodule
