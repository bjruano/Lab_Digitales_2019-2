`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2019 18:26:07
// Design Name: 
// Module Name: Boton_mas_menos
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


module Boton_mas_menos(btnC,clk,an,seg);
    input btnC;
    input clk;
    reg[6:0]disp;
    output reg[3:0]an;
    output reg[6:0]seg;
    reg[1:0]counter;
    
    reg k;    
    
    always@(posedge clk)
    begin
         an = 4'b0110;
    end
    
    always@(posedge clk & btnC)
        begin
            /*if(btnC == 1 & k == 0)
                k = 1;*/
            if (btnC == 1 /*& k == 4*/)
                counter = counter + 1;
                //k = 0;
                if (counter == 4)
                    counter = 0;
            /*else
                k = k + 1;*/                                       
        end
        
    always@(posedge clk)
        begin
            case(counter)
            2'b00:disp=7'b1000000;//0
            2'b01:disp=7'b1111001;//1
            2'b10:disp=7'b0100100;//2
            2'b11:disp=7'b0110000;//3
            default: disp = 7'b0111111;//"-" Número erroneo
            endcase
            seg = disp;    
        end
endmodule
