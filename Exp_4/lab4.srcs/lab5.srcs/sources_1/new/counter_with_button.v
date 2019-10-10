`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2019 04:02:05
// Design Name: 
// Module Name: counter_with_button
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


module counter_with_button(
    input clk,
    input btnC,
    input btnU,
    input btnL,
    input btnD,
    input btnR,    
    output [3:0] an,
    output [6:0] seg
    );
    
wire boton1_mas, boton2_mas;
wire boton1_menos, boton2_menos;
wire reset;
reg [6:0] count_1;
reg [6:0] count_2;
wire clock;
reg rst = 1'b0;

DeBouncer_D(clk, btnL, boton1_menos);
DeBouncer_D(clk, btnR, boton1_mas);
DeBouncer_D(clk, btnD, boton2_menos);
DeBouncer_D(clk, btnU, boton2_mas);
DeBouncer_D(clk, btnC, reset); 


always @(posedge clk)
begin
    if(count_1 >= 100)
    begin
    count_1 = 0;
    end
    if(count_2 >= 100)
    begin
    count_2 = 0;
    end 
    if (reset)
    begin
    count_1 = 0;
    count_2 = 0;
    end
    else if (boton1_mas)
    begin
    count_1 = count_1 + 1;
    end
    else if (boton1_menos)
    begin
    count_1 = count_1 - 1;
    end
    else if (boton2_mas)
    begin
    count_2 = count_2 + 1;
    end
    else if (boton2_menos)
    begin
    count_2 = count_2 - 1;
    end
 end
     

display_7s(clk, count_2, count_1, an, seg);
endmodule
        
