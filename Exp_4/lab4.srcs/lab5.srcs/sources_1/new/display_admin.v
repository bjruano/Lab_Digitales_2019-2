`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2019 13:13:21
// Design Name: 
// Module Name: display_admin
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


module display_admin(
    input eleccion_1, eleccion_2, modo_conf,
    input [13:0] monto_ingresado,
    input [13:0] vuelto,
    input [13:0] boletas_emitidas,
    output reg [13:0] data
    );
    
always @(*)
begin
if (eleccion_1 & ~eleccion_2 & ~modo_conf) 
    data = monto_ingresado;
else if (eleccion_2 & ~eleccion_1 & ~modo_conf)
    data = vuelto;
else if (modo_conf & ~eleccion_1 & ~eleccion_2)
    data = boletas_emitidas;
else 
    data = 14'd0;
    

end




endmodule
