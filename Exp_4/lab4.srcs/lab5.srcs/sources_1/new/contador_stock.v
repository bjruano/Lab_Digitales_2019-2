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
    input compra_exitosa,
    input comprar,
    input [13:0] cant_A,
    input [13:0] cant_B,
    input [13:0] cant_C,
    input [13:0] cant_D,
    output [13:0] stock_A_out,
    output [13:0] stock_B_out,
    output [13:0] stock_C_out,
    output [13:0] stock_D_out
    );
    
reg [13:0] stock_A = 14'd10;
reg [13:0] stock_B = 14'D20;
reg [13:0] stock_C = 14'd30;
reg [13:0] stock_D = 14'd40;    

wire prod_A;
wire prod_B;
wire prod_C;
wire prod_D;

always @(posedge clk)
begin
if (comprar & compra_exitosa)
    stock_A = stock_A - cant_A;
    stock_B = stock_B - cant_B;
    stock_C = stock_C - cant_C;
    stock_D = stock_D - cant_D;
    
if (comprar & modo_conf)    
    stock_A = stock_A + cant_A;
    stock_B = stock_B + cant_B;
    stock_C = stock_C + cant_C;
    stock_D = stock_D + cant_D;
end
 
 assign stock_A_out = stock_A;
 assign stock_B_out = stock_B;
 assign stock_C_out = stock_C;
 assign stock_D_out = stock_D;


endmodule
