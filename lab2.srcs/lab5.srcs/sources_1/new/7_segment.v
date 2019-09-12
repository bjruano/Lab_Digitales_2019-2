`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2019 01:48:20
// Design Name: 
// Module Name: 7_segment
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


module seven_segment(
    input clk,
    input [1:0] wave_choice,
    output reg [3:0] an,
    output reg [6:0] segments
    );

    reg[6:0]disp;

    always@(posedge clk)
    begin
        an = 4'b1110;
    end

    always@(posedge clk)
    begin
            case(wave_choice)
            2'b00:disp=7'b1111001;//1
            2'b01:disp=7'b0100100;//2
            2'b10:disp=7'b0110000;//3
            default: disp = 7'b0111111;//"-" Número erróneo
            endcase
            segments = disp;
    end    
endmodule



    
 
