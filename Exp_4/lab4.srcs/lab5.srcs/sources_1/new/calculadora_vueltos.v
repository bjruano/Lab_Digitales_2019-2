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
    input [13:0] stock_A, stock_B, stock_C, stock_D,
    input [13:0] monto_ingresado,
    input prod_A_pre, prod_B_pre, prod_C_pre, prod_D_pre,
    input comprar, 
    input devolucion_pre,
    output reg [13:0] cant_A, cant_B, cant_C, cant_D,
    output reg [13:0] costo,
    output reg dinero_insuficiente,
    output reg stock_insuficiente,
    output reg compra_exitosa
    );
    
wire prod_A;
wire prod_B;
wire prod_C;
wire prod_D;
 
wire devolucion;

DeBouncer_D(clk, devolucion_pre, devolucion);
DeBouncer_D(clk, prod_A_pre, prod_A);
DeBouncer_D(clk, prod_B_pre, prod_B);    
DeBouncer_D(clk, prod_C_pre, prod_C);    
DeBouncer_D(clk, prod_D_pre, prod_D);        
    
always @(posedge clk)
begin
if (prod_A)
    begin
    cant_A = cant_A + 1;
    end
else if (prod_B)
    begin
    cant_B = cant_B + 1;
    end
else if (prod_C)
    begin
    cant_C = cant_C + 1;
    end
else if (prod_D)
    begin
    cant_D = cant_D + 1;
    end
else if (devolucion)
    begin
    cant_A = 0;
    cant_B = 0;
    cant_C = 0;
    cant_D = 0;
    end
else if (compra_exitosa & comprar)
    begin
    cant_A = 0;
    cant_B = 0;
    cant_C = 0;
    cant_D = 0;
    end
    
costo = cant_A*14'd100 + cant_B*14'd250 + cant_C*14'd560 + cant_D*14'd700;
dinero_insuficiente = costo > monto_ingresado;
stock_insuficiente = (cant_A > stock_A) | (cant_B > stock_B) | (cant_C > stock_C) | (cant_D > stock_D);
compra_exitosa = (~dinero_insuficiente) & (~stock_insuficiente) & ((cant_A > 0) | (cant_B > 0) | (cant_C > 0) | (cant_D > 0));
end


endmodule
