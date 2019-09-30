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
    input [3:0] data,
    output reg [6:0] segments
    );
    
    always @(*)
      case(data)
        0: segments = ~7'b111_1110;
        1: segments = ~7'b011_0000;
        2: segments = ~7'b110_1101;
        3: segments = ~7'b111_1001;
        4: segments = ~7'b011_0011;
        5: segments = ~7'b101_1011;
        6: segments = ~7'b101_1111;
        7: segments = ~7'b111_0000;
        8: segments = ~7'b111_1111;
        9: segments = ~7'b111_1011;
        default: segments = 7'b000_0000;
        
      endcase
    
endmodule
