`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2019 15:12:56
// Design Name: 
// Module Name: Prueba_N_4_digitos
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


module seven_seg_display(
    input clk,
    output [6:0] seg,
    output [3:0] an
    );
    reg [6:0] N1 = 7'd78;
    reg [6:0] N2 = 7'd39;
    wire [3:0] D1, U1, D2, U2;
    digit_separator(N1, D1, U1);
    digit_separator(N2, D2, U2);
    wire [6:0] dig1a, dig2a, dig1b, dig2b;
    seven_seg_converter(D1, dig1a);
    seven_seg_converter(U1, dig2a);
    seven_seg_converter(D2, dig1b);
    seven_seg_converter(U2, dig2b);
    seven_seg_manager(clk, dig1a, dig2a, dig1b, dig2b, seg, an);
    
endmodule
