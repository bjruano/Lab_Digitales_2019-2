`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2019 21:01:59
// Design Name: 
// Module Name: contador_stock
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


module contador_stock(
    input clk,
    input modo_conf,
    input monto_ingresado,
    input prod_A_pre, prod_B_pre, prod_C_pre, prod_D_pre,
    output [13:0] stock_A_out,
    output [13:0] stock_B_out,
    output [13:0] stock_C_out,
    output [13:0] stock_D_out
    );
    
reg [13:0] stock_A = 14'd10;
reg [13:0] stock_B = 14'D20;
reg [13:0] stock_C = 14'd30;
reg [13:0] stock_D = 14'd40;    

wire compra_exitosa;
wire dinero_insuficiente;
wire stock_insuficiente;

wire prod_A;
wire prod_B;
wire prod_C;
wire prod_D;

DeBouncer_D(clk, prod_A_pre, prod_A);
DeBouncer_D(clk, prod_B_pre, prod_B);
DeBouncer_D(clk, prod_C_pre, prod_C);
DeBouncer_D(clk, prod_D_pre, prod_D);

verificador_compra(stock_A, stock_B, stock_C, stock_D, monto_ingresado,
prod_A, prod_B, prod_C, prod_D, dinero_insuficiente, stock_insuficiente, compra_exitosa); 

always @(posedge clk)
begin
    if (prod_A & ~modo_conf & compra_exitosa)
    begin
        if (stock_A >= 1)
            begin
            stock_A = stock_A - 1;
            end
        else 
            begin
            stock_A = 0;
            end
    end
    if (prod_A & modo_conf)
    begin
    stock_A = stock_A + 1;
    end 
    if (stock_A >= 9999)
    begin
    stock_A = 14'd9999;
    end
    
    if (prod_B & ~modo_conf & compra_exitosa)
    begin
        if (stock_B >= 1)
            begin
            stock_B = stock_B - 1;
            end
        else 
            begin
            stock_B = 0;
            end
    end
    if (prod_B & modo_conf)
    begin
    stock_B = stock_B + 1;
    end 
    if (stock_B >= 9999)
    begin
    stock_B = 14'd9999;
    end
    
    if (prod_C & ~modo_conf & compra_exitosa)
    begin
        if (stock_C >= 1)
            begin
            stock_C = stock_C - 1;
            end
        else 
            begin
            stock_C = 0;
            end
    end
    if (prod_C & modo_conf)
    begin
    stock_C = stock_C + 1;
    end 
    if (stock_C >= 9999)
    begin
    stock_C = 14'd9999;
    end
    
    if (prod_D & ~modo_conf & compra_exitosa)
    begin
        if (stock_D >= 1)
            begin
            stock_D = stock_D - 1;
            end
        else 
            begin
            stock_D = 0;
            end
    end
    if (prod_D & modo_conf)
    begin
    stock_D = stock_D + 1;
    end 
    if (stock_D >= 9999)
    begin
    stock_D = 14'd9999;
    end
 
 end
 
 assign stock_A_out = stock_A;
 assign stock_B_out = stock_B;
 assign stock_C_out = stock_C;
 assign stock_D_out = stock_D;


endmodule
