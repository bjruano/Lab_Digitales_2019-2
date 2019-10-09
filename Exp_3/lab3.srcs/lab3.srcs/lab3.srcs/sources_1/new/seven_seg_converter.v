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
    output reg [6:0] seg
    );
    
    always @(*)
      case(data)
        0: seg = 7'b1000000; 
        1: seg = 7'b1111001; 
        2: seg = 7'b0100100; 
        3: seg = 7'b0110000; 
        4: seg = 7'b0011001; 
        5: seg = 7'b0010010; 
        6: seg = 7'b0000010; 
        7: seg = 7'b1111000; 
        8: seg = 7'b0000000; 
        9: seg = 7'b0010000; 
        default: seg = 7'b0000001;
        
      endcase
    
endmodule
