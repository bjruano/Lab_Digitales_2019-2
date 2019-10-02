`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2019 16:46:07
// Design Name: 
// Module Name: cruce_eo
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


module cruce_eo(
    input [6:0] N_eo,
    input [1:0] contador,
    input [5:0] luces,
    output auto_cruza
    );
    
    wire verde_eo = luces[5];
    wire amarillo_eo = luces[4];
    wire rojo_eo = luces[3];
    
    assign auto_cruza = contador == 2'd0 & N_eo > 6'd0 & verde_eo == 1;

endmodule
