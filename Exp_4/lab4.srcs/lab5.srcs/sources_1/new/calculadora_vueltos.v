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
    input [13:0] precio_A, precio_B, precio_C, precio_D,
    input [13:0] stock_A, stock_B, stock_C, stock_D,
    input [13:0] monto_ingresado,
    input prod_A_pre, prod_B_pre, prod_C_pre, prod_D_pre,
    output reg [13:0] vuelto,
    output reg dinero_insuficiente,
    output reg stock_insuficiente,
    output reg compra_exitosa
    );
    
DeBouncer_D(clk, prod_A_pre, prod_A);
DeBouncer_D(clk, prod_B_pre, prod_B);
DeBouncer_D(clk, prod_C_pre, prod_C);
DeBouncer_D(clk, prod_D_pre, prod_D);

always @(posedge clk)
begin
if (prod_A)
    begin
    vuelto = monto_ingresado - precio_A;
    if (monto_ingresado < precio_A)
        begin
        vuelto = 0;
        dinero_insuficiente = 1;
        compra_exitosa = 0;
        end
    else 
        begin
        dinero_insuficiente = 0;
        compra_exitosa = 1;
        end
    end

if (prod_B)
    begin
    vuelto = monto_ingresado - precio_B;
    if (monto_ingresado < precio_B)
        begin
        vuelto = 0;
        dinero_insuficiente = 1;
        compra_exitosa = 0;
        end
    else 
        begin
        dinero_insuficiente = 0;
        compra_exitosa = 1;
        end
    end

if (prod_C)
    begin
    vuelto = monto_ingresado - precio_C;
    if (monto_ingresado < precio_C)
        begin
        vuelto = 0;
        dinero_insuficiente = 1;
        compra_exitosa = 0;
        end
    else 
        begin
        dinero_insuficiente = 0;
        compra_exitosa = 1;
        end
    end

if (prod_D)
    begin
    vuelto = monto_ingresado - precio_D;
    if (monto_ingresado < precio_D)
        begin
        vuelto = 0;
        dinero_insuficiente = 1;
        compra_exitosa = 0;
        end
    else 
        begin
        dinero_insuficiente = 0;
        compra_exitosa = 1;
        end
    end

end

endmodule
