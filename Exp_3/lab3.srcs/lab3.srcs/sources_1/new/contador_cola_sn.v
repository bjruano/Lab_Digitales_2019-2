`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2019 15:30:34
// Design Name: 
// Module Name: contador_cola_sn
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


module contador_cola_sn(
    input clk, S_sn, cruce_sn, cruce_A, A,
    output reg [6:0] N_sn 
    );
    
always @(posedge clk or posedge S_sn or posedge cruce_sn or posedge A or posedge cruce_A)
begin
if (S_sn | A)
 N_sn <= N_sn+1;
if (cruce_sn | cruce_A)
 N_sn <= N_sn-1;
end 
            
endmodule
