`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2019 03:20:46
// Design Name: 
// Module Name: aviso_boletas
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


module aviso_boletas(
    input clk,
    input comprar,
    input compra_exitosa,
    output impresion
    );
    
reg cuenta = 28'd0;

always @(posedge clk)
begin
    if (cuenta > 0)
        begin
        cuenta = cuenta - 1;
        end
    if (comprar & compra_exitosa)
        begin
        cuenta = 28'd200000000; 
        end
end

assign impresion = cuenta > 0;

endmodule
