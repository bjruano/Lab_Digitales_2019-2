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
    input sacar_A_pre, sacar_B_pre, sacar_C_pre, sacar_D_pre, poner_A_pre, poner_B_pre, poner_C_pre, poner_D_pre,
    output  reg [13:0] stock_A,
    output  reg [13:0] stock_B,
    output  reg [13:0] stock_C,
    output  reg [13:0] stock_D
    );
    
wire sacar_A;
wire sacar_B;
wire sacar_C;
wire sacar_D;

wire poner_A;
wire poner_B;
wire poner_C;
wire poner_D;

initial stock_A = 14'd10;
initial stock_B = 14'd20;
initial stock_C = 14'd30;
initial stock_D = 14'd40;

DeBouncer_D(clk, sacar_A_pre, sacar_A);
DeBouncer_D(clk, sacar_B_pre, sacar_B);
DeBouncer_D(clk, sacar_C_pre, sacar_C);
DeBouncer_D(clk, sacar_D_pre, sacar_D);

DeBouncer_D(clk, poner_A_pre, poner_A);
DeBouncer_D(clk, poner_B_pre, poner_B);
DeBouncer_D(clk, poner_C_pre, poner_C);
DeBouncer_D(clk, poner_D_pre, poner_D);

always @(posedge clk)
begin
    if (sacar_A)
    begin
    stock_A = stock_A - 1;
    end
    if (poner_A)
    begin
    stock_A = stock_A + 1;
    end 
    if (stock_A <= 0)
    begin
    stock_A = 0;
    end
    if (stock_A >= 9999)
    begin
    stock_A = 14'd9999;
    end
    
    if (sacar_B)
    begin
    stock_B = stock_B - 1;
    end
    if (poner_B)
    begin
    stock_B = stock_B + 1;
    end 
    if (stock_B <= 0)
    begin
    stock_B = 0;
    end
    if (stock_B >= 9999)
    begin
    stock_B = 14'd9999;
    end
    
    if (sacar_C)
    begin
    stock_C = stock_C - 1;
    end
    if (poner_C)
    begin
    stock_C = stock_C + 1;
    end 
    if (stock_C <= 0)
    begin
    stock_C = 0;
    end
    if (stock_C >= 9999)
    begin
    stock_C = 14'd9999;
    end
    
    if (sacar_D)
    begin
    stock_D = stock_D - 1;
    end
    if (poner_D)
    begin
    stock_D = stock_D + 1;
    end 
    if (stock_D <= 0)
    begin
    stock_D = 0;
    end
    if (stock_D >= 9999)
    begin
    stock_D = 14'd9999;
    end 
 
 end
    
endmodule
