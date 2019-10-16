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


module verificador_compra(
    input clk,
//    input [13:0] stock_A, stock_B, stock_C, stock_D,
//    input [13:0] monto_ingresado,
    input prod_A_pre, prod_B_pre, prod_C_pre, prod_D_pre, // botones
    output dinero_insuficiente,
    output stock_insuficiente,
    output compra_exitosa
    );


wire prod_A = prod_A_pre;
wire prod_B = prod_B_pre;
wire prod_C = prod_C_pre; 
wire prod_D = prod_D_pre;

//DeBouncer_D(clk, prod_A_pre, prod_A);
//DeBouncer_D(clk, prod_B_pre, prod_B);    
//DeBouncer_D(clk, prod_C_pre, prod_C);    
//DeBouncer_D(clk, prod_D_pre, prod_D);        

wire precio_A = 14'd1300;
wire precio_B = 14'd2850;
wire precio_C = 14'd3560;
wire precio_D = 14'd7890;

wire monto_ingresado = 14'd6666;
wire stock_A = 14'd10;
wire stock_B = 14'd10;
wire stock_C = 14'd10;
wire stock_D = 14'd10;

    
// Se revisa dinero insuficiente:
wire cond_p_A = prod_A & (precio_A > monto_ingresado);
wire cond_p_B = prod_B & (precio_B > monto_ingresado);
wire cond_p_C = prod_C & (precio_C > monto_ingresado);
wire cond_p_D = prod_D & (precio_D > monto_ingresado);
wire dinero_insuficiente_pre = cond_p_A | cond_p_B | cond_p_C | cond_p_D;
assign dinero_insuficiente = dinero_insuficiente_pre;

// Se revisa stock insuficiente:
wire cond_s_A = prod_A & (stock_A<=0);
wire cond_s_B = prod_B & (stock_B<=0);
wire cond_s_C = prod_C & (stock_C<=0);
wire cond_s_D = prod_D & (stock_D<=0);
wire stock_insuficiente_pre = cond_s_A | cond_s_B | cond_s_C | cond_s_D;
assign stock_insuficiente = stock_insuficiente_pre;

// Se revisa compra exitosa:
assign compra_exitosa = ~stock_insuficiente & ~dinero_insuficiente & (prod_A | prod_B | prod_C | prod_D); 



endmodule
