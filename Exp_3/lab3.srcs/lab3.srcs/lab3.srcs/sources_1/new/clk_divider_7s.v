`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2019 16:24:18
// Design Name: 
// Module Name: clk_divider
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


module clk_divider_7segment(clk, reset, clk_1Hz);
input clk, reset;
output clk_1Hz;

reg clk_1Hz = 1'b0;
reg [27:0] counter;

always@(posedge reset or posedge clk)
begin
    if (reset == 1'b1)
        begin
            clk_1Hz <= 0;
            counter <= 0;
        end
    else
        begin
            counter <= counter + 1;
            if ( counter == /*250*/125_000)
                begin
                    counter <= 0;
                    clk_1Hz <= ~clk_1Hz;
                end
        end
end
endmodule
