`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2019 16:46:44
// Design Name: 
// Module Name: cruce_sn
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


module cruce_sn(
    input [6:0] N_sn, A,
    input [1:0] contador,
    input [5:0] luces,
    output auto_cruza,
    output amb_cruza
    );
    
    wire verde_sn = luces[2];
    wire amarillo_sn = luces[1];
    wire rojo_sn = luces[0];
    
    assign auto_cruza = contador == 2'd0 & N_sn > 6'd0 & verde_sn & ~A;
    
    assign amb_cruza = contador == 2'd0 & A == 1 & verde_sn | amarillo_sn;

endmodule
