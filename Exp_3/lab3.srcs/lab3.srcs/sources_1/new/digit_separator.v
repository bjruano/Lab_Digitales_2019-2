`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2019 16:00:36
// Design Name: 
// Module Name: digit_separator
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


module digit_separator(
    input [6:0] N,
    output reg [3:0] decena, unidad
    );
    
    always @ (*)
       begin
       
       if (N>=0 & N<10)
           decena = 4'd0;
           unidad = N;
           
       if (N>=10 & N<20)
           decena = 4'd1;
           unidad = N-10;
           
       if (N>=20 & N<30)
           decena = 4'd2;
           unidad = N-20;
           
       if (N>=30 & N<40)
           decena = 4'd3;
           unidad = N-30;
           
       if (N>=40 & N<50)
           decena = 4'd4;
           unidad = N-40;
           
       if (N>=50 & N<60)
           decena = 4'd5;
           unidad = N-50;
           
       if (N>=60 & N<70)
           decena = 4'd6;
           unidad = N-60;
           
       if (N>=70 & N<80)
           decena = 4'd7;
           unidad = N-70;
           
       if (N>=80 & N<90)
           decena = 4'd8;
           unidad = N-80;
           
       if (N>=90 & N<100)
           decena = 4'd9;
           unidad = N-90;
           
       end
       
endmodule
