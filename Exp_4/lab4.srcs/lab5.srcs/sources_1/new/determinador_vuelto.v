`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2019 15:11:29
// Design Name: 
// Module Name: determinador_vuelto
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


module determinador_vuelto(
    input [13:0] monto_ingresado,
    input [13:0] costo,
    output reg [13:0] vuelto
    );
    
always @(*)
begin
if (costo > monto_ingresado)
    vuelto = 0;
else 
    vuelto = monto_ingresado - costo;
end




endmodule
