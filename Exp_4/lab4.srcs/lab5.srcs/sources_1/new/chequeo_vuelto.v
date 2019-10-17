`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2019 16:22:57
// Design Name: 
// Module Name: chequeo_vuelto
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


module chequeo_vuelto(
    input vuelto,
    input [13:0] M500_disp, M100_disp, M50_disp, M10_disp,
    output vuelto_disponible
    );
    
wire [13:0] M500_req;
wire [13:0] M100_req;
wire [13:0] M50_req;
wire [13:0] M10_req;

calculadora_monedas_500(vuelto, M500_req);
calculadora_monedas_100(vuelto, M100_req);
calculadora_monedas_50(vuelto, M50_req);
calculadora_monedas_10(vuelto, M10_req);

assign vuelto_disponible = (M500_disp >= M500_req) & (M100_disp >= M100_req) & (M50_disp >= M50_req);

endmodule
