`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2019 15:12:10
// Design Name: 
// Module Name: contador_cola_eo
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


module contador_cola_eo(
    input clk, S_eo_press, cruce_eo, 
    output reg [6:0] N_eo 
    );

wire S_eo_pres;
wire S_eo;

debouncer(S_eo_press, clk, S_eo_pres);
debouncer(S_eo_pres, clk, S_eo);
    
always @(posedge clk)
begin
if (S_eo)
 N_eo <= N_eo+1;
if (cruce_eo)
 N_eo <= N_eo-1;
end 
            
endmodule
