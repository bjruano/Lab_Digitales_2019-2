`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2019 21:22:06
// Design Name: 
// Module Name: 7s_seg_manager
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


module seven_seg_manager_4digit(
    input clk,
    input reset,
    input [6:0] d7s_0, d7s_1, d7s_2, d7s_3,
    output reg[3:0]anodo,
    output reg[6:0]segments
    );
    
    //Lo ideal sería hacer un modulo _delay_ms(cuantos ms dura el delay)
    reg [2:0] selector = 2'd0;    
    wire clock;
    clk_divider_7segment(clk, reset, clock);
    
    always@(posedge clock)
    begin
        case(selector)
        2'd0:
            begin
            anodo = 4'b0111;
            segments = d7s_0;
            end
        2'd1:
            begin
            anodo = 4'b1011;
            segments = d7s_1;
            end
        2'd2:
            begin
            anodo = 4'b1101;
            segments = d7s_2; 
            end
        2'd3:
            begin
            anodo = 4'b1110;
            segments = d7s_3;
            end
        default:
            begin
            anodo = 4'b0000;
            segments = 7'b1111111;
            end
        endcase
        selector <= selector + 1;
    end
    
    /*Únicamente recibo los numeros de 7 bits
    que representan los digitos en 7segmentos
    y los hago alternar entre ellos para que
    aparente que estan encendidos al mismo tiempo*/ 
    
endmodule
