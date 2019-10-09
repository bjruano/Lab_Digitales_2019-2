`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2019 22:07:42
// Design Name: 
// Module Name: Top
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


module Top(
    input S_eo, S_sn, A, clk, reset, on,
    output cruce_eo, cruce_sn, cruce_amb,
    output [3:0] an, 
    output [6:0] seg,
    output [5:0] luces,
    output flujo_alto,
    output ambulance
    );
    wire [5:0] luces_alto, luces_bajo;
    wire [1:0] cuenta;
    wire [6:0] N_eo, N_sn;
    wire cruce_A;
    wire [4:0] c29, c17;
    
    contador_0_29(clk, reset, c17);
    contador_0_17(clk, reset, c29);
    
    flujo_alto(clk, reset, luces_alto);
    flujo_bajo(clk, reset, luces_bajo);
    mux_luces(luces_bajo, luces_alto, flujo_alto, luces);
    
    contador_012(clk, reset, cuenta);
    
    cruce_eo(N_eo, cuenta, luces, cruce_eo);
    cruce_sn(N_sn, A, cuenta, luces, cruce_sn, cruce_amb);
    
    contador_cola_eo(clk, S_eo, cruce_eo, N_eo);
    contador_cola_sn(clk, S_sn, cruce_sn, cruce_A, A, N_sn, ambulance);
    
    clasficador_flujo(clk, N_sn, N_eo, c29, c17, flujo_alto);
    
    display_7s(clk, N_eo, N_sn, an, seg);

    
endmodule
