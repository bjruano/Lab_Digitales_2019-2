`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2019 02:04:46
// Design Name: 
// Module Name: clasficador_flujo
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


module clasficador_flujo(
    input [7:0] cola_sn, cola_eo,
    output reg flujo_alto
    );
    
    wire cond_1;
    wire cond_2;
    
    assign cond_1 = cola_sn > 8'b00000110;
    assign cond_2 = cola_eo > 8'b00000110;
    
    always @(*)
    begin
        if (cond_1 & cond_2)
            flujo_alto = 1;
        else
            flujo_alto = 0;
    end
            
endmodule
