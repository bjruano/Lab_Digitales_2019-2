`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2019 03:20:46
// Design Name: 
// Module Name: aviso_boletas
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


module aviso_boletas(
    input clk,
    input comprar,
    input compra_exitosa,
    output reg impresion
    );
    
reg [27:0] count;

initial
begin
count = 0;
impresion = 0;
end

always @(posedge clk)
begin

 if (comprar & compra_exitosa)
     begin
     impresion = 1;
     count = 1;
     end
 else if (count > 200000000)
     begin
     impresion = 0;
     count = 0;
     end
 else if (count)
     begin
     count = count + 1;
     end
end

endmodule
