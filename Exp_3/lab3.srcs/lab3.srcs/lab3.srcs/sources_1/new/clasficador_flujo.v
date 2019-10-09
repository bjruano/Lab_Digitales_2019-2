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
    input clk,
    input [7:0] cola_sn, cola_eo,
    input [4:0] c_29, c_17,
    output reg flujo_alto
    );
    
    reg siguiente;
    wire clock;
    
    clk_divider(clk, clock);
    
    always @ (posedge clock)
        flujo_alto <= siguiente;
    
    always @ (*)
      case(flujo_alto)
         0: if (c_29 == 5'd29 & cola_sn >= 8'd7 & cola_eo >= 8'd7) siguiente = 0;
         1: if (c_17 == 5'd17 & (cola_sn < 8'd6 | cola_eo < 8'd6)) siguiente = 1;
         default: siguiente = 0;
      endcase
            
endmodule
