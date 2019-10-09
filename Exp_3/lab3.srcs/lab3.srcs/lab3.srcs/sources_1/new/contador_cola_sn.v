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
    input clk, S_sn_press, cruce_sn, cruce_A, A_press,
    output reg [6:0] N_sn,
    output reg ambulance
    );

wire S_sn, A;

debouncer(S_sn_press, clk, S_sn);

debouncer(A_press, clk, A);
    
always @(posedge clk)
begin
if (A)
 ambulance = 1;
if (S_sn | A)
 N_sn <= N_sn+1;
if (cruce_sn | cruce_A)
 N_sn <= N_sn-1;
end 
            
endmodule
