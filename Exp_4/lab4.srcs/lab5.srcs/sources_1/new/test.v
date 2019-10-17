`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 22:34:33
// Design Name: 
// Module Name: test
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


module test(
    input clk,
    input [15:0] sw,
    input btnC,
    output [3:0] an,
    output [6:0] seg,
    output [4:0] led
    );
    // Switch para modo configuración:
    wire modo_conf = sw[15];
    // Botones de ingreso de monedas:
    wire M500 = sw[9];
    wire M100 = sw[8];
    wire M50 = sw[7];
    wire M10 = sw[6];
    
    // Monto ingresado:
    wire [13:0] monto_ingresado;
    //Vuelto
    wire [13:0] vuelto;
    // Boletas:
    wire [13:0] boletas_emitidas;
    
    wire comprar;
    DeBouncer_D(clk, btnC, comprar);
    
    //Avisos
    wire compra_exitosa;
    
    // Datos a mostrar en el display:
    wire [13:0] data;


    
    selector_display(clk, modo_conf, M500, M100, M50, M10, monto_ingresado, vuelto, boletas_emitidas, comprar,
compra_exitosa, data);   

endmodule
