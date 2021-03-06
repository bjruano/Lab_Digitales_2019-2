`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2019 02:47:56
// Design Name: 
// Module Name: contador_boletas_emitidas
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


module contador_boletas_emitidas(
    input clk,
    input comprar,
    input compra_exitosa,
    output [13:0] boletas_out
    );

reg [13:0] boletas = 14'd0;
    
always @(posedge clk)
begin
if (comprar & compra_exitosa)
    begin
    boletas = boletas + 1;
    end
end
    
assign boletas_out = boletas;

endmodule
