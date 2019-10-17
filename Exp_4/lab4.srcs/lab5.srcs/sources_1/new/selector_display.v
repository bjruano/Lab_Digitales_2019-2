`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2019 02:55:59
// Design Name: 
// Module Name: selector_display
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


module selector_display(
    input clk,
    input modo_conf,
    input moneda_500_pre, moneda_100_pre, moneda_50_pre, moneda_10_pre,
    input [13:0] monto_ingresado,
    input [13:0] vuelto,
    input [13:0] boletas,
    input comprar,
    input compra_exitosa,
    output reg [13:0] data
     );
     
wire moneda_500;
wire moneda_100;
wire moneda_50;
wire moneda_10;     
     
DeBouncer_D(clk, moneda_500_pre, moneda_500);
DeBouncer_D(clk, moneda_100_pre, moneda_100);
DeBouncer_D(clk, moneda_50_pre, moneda_50);
DeBouncer_D(clk, moneda_10_pre, moneda_10);

reg state, nextstate;

always @(posedge clk)
begin
state <= nextstate;
end

always @(*)
begin
case(state)
0: if (comprar & compra_exitosa) nextstate = 1;
   else nextstate = 0;
1: if (moneda_10 | moneda_50 | moneda_100 | moneda_500) nextstate = 0;
   else nextstate = 1;
endcase

if (state == 0 & modo_conf == 0)
    begin
    data = monto_ingresado;
    end
else if (state == 1 & modo_conf == 0)
    begin
    data = vuelto;
    end
else
    begin
    data = boletas;
    end
    
end
endmodule
