`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 15:55:53
// Design Name: 
// Module Name: calculadora_monedas
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


module calculadora_monedas(
    input clk,
//    input [13:0] monto,
//    output reg [13:0] monedas_500, monedas_100, monedas_50, monedas_10,
    output [3:0] an,
    output [6:0] seg
    );

wire clock;


clk_divider_7segment(clk, 0, clock);

reg [13:0] monedas_500, monedas_100, monedas_50, monedas_10;
wire monto_inicial = 14'd1350;
reg [13:0] monto_actual = 14'd1350;   

always @(posedge clock)
begin
    if (monto_actual >= 14'd500)
        begin
        monto_actual = monto_actual - 14'd500;
        monedas_500 = monedas_500 + 14'd1;
        end
    else if (monto_actual - 14'd100 >= 0)
        begin
        monto_actual = monto_actual - 14'd100;
        monedas_100 = monedas_100 + 14'd1;
        end
    else if (monto_actual - 14'd50 >= 0)
        begin
        monto_actual = monto_actual - 14'd50;
        monedas_50 = monedas_50 + 14'd1;
        end
    else if (monto_actual - 14'd10 >= 0)
        begin
        monto_actual = monto_actual - 14'd10;
        monedas_10 = monedas_10 + 14'd1;
        end

end

display_number(clk, monedas_500, an, seg);

endmodule
