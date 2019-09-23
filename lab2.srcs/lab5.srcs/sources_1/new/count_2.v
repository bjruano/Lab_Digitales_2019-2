`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2019 02:00:27
// Design Name: 
// Module Name: count_2
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


module count_2(
    input clk, button,
    output reg [1:0] y
    );

wire button_fixed;

debouncer(button, clk, button_fixed);

always @ (posedge clk) begin
    if (button_fixed) begin  
        y <= y+1;
        if (y == 2'b10)  
          y <= 0;
    end
    end
 
endmodule
   




