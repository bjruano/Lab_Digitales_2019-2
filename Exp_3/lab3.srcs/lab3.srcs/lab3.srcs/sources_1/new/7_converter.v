`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2019 20:44:48
// Design Name: 
// Module Name: 7_converter
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


module seven_seg_converter(
    input [3:0] digito,
    output reg [6:0] segments
    );
    
    always @(*)
      case(digito)      
        // gfedcba
        4'd0: segments = 7'b1000000;
        4'd1: segments = 7'b1111001;
        4'd2: segments = 7'b0100100;
        4'd3: segments = 7'b0110000;
        4'd4: segments = 7'b0011001;
        4'd5: segments = 7'b0010010;
        4'd6: segments = 7'b0000010;
        4'd7: segments = 7'b1111000;
        4'd8: segments = 7'b0000000;
        4'd9: segments = 7'b0011000;
        default: segments = 7'b1111111;//"-" Número erroneo
      endcase
    
endmodule
