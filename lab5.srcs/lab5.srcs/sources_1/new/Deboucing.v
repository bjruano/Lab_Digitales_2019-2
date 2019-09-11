`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2019 19:49:53
// Design Name: 
// Module Name: Deboucing
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


module Deboucing(
    input clk,
    input btnC,
    output reg boton_limpio
    );
    
    reg k;
    reg contador;
    
    always@(posedge clk)
    begin
        if(btnC == 1 & k == 0)
            k = 1;
        else if (k == 1000)
            k = 0;
        else
            k = k + 1;
    end
endmodule


