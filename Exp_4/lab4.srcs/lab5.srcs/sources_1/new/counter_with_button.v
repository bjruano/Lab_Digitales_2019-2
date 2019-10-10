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
    output [3:0] an,
    output [6:0] seg
    );
    
wire reset;
wire add;
reg [3:0] count;

debouncer(clk, btnL, btnC, add); 
debouncer(clk, btnL, btnU, reset); 

always @(posedge clk)
    if (reset)
    count = 0;
    else if (add)
    count = count + 1;
     

display_7s(clk, count, 0, an, seg);
endmodule
        
