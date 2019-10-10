`timescale 1ns / 1ps

module display_7s(
    input clk,
    input [6:0] N1, N2,
    output [3:0] an,
    output [6:0] seg
    );
    reg btnC = 1'd0;
    //reg [6:0] N1 = 7'd54;
    //reg [6:0] N2 = 7'd32;
    wire [3:0] D1, U1, D2, U2;
    digit_separator(N1, D1, U1);
    digit_separator(N2, D2, U2);
    wire [6:0] dig1a, dig2a, dig1b, dig2b;
    seven_seg_converter(D1, dig1a);
    seven_seg_converter(U1, dig2a);
    seven_seg_converter(D2, dig1b);
    seven_seg_converter(U2, dig2b);
    //wire [6:0] seg_aux;
    //wire [3:0] an_aux;
    seven_seg_manager_4digit(clk, btnC, dig1a, dig2a, dig1b, dig2b, an, seg);
    
    //assign seg = seg_aux;
    
    
       
endmodule
