`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2019 15:36:20
// Design Name: 
// Module Name: seven_seg_converter
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
        /*0: segments = ~7'b111_1110;
        1: segments = ~7'b011_0000;
        2: segments = ~7'b110_1101;
        3: segments = ~7'b111_1001;
        4: segments = ~7'b011_0011;
        5: segments = ~7'b101_1011;
        6: segments = ~7'b101_1111;
        7: segments = ~7'b111_0000;
        8: segments = ~7'b111_1111;
        9: segments = ~7'b111_1011;
        default: segments = 7'b000_0000;*/
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
        default: segments = 7'b0111111;//"-" Número erroneo
      endcase
    
endmodule
