`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2019 15:37:14
// Design Name: 
// Module Name: Flip_FlopD
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


module FlipFlopD(
    input D, clk,rst,
    output reg Q);
    
always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1)
        Q <= 1'b0;
    else
            Q <= D;
end
endmodule

