`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2019 18:04:47
// Design Name: 
// Module Name: LEDs_mgmt
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


module LEDs_mgmt(sw, clk, led);
    input [15:13]sw;
    input clk;
    reg[15:0]disp;
    output reg[15:0]led;
    
    always@(posedge clk)
        begin
            case(sw)
            3'b000:disp=16'b1111111111111111;//0
            3'b001:disp=16'b1010101010101010;//1
            3'b010:disp=16'b1111111100000000;//2
            3'b100:disp=16'b0000000011111111;//3
            default: disp = 16'b0000000000000000;// Número erroneo: off
            endcase
            led = disp;    
        end
    
    
endmodule
