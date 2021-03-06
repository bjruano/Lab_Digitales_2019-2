`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2019 04:02:05
// Design Name: 
// Module Name: counter_with_button
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


//module contador_monto_ingresado(
//    input clk,
//    input devolucion_pre, M_500_pre, M_100_pre, M_50_pre, M_10_pre,
//    input comprar_pre,
//    input compra_exitosa,
//    output reg [13:0] monto_ingresado,
//    output reg [13:0] monedas_10_ingresadas,
//    output reg [13:0] monedas_50_ingresadas,
//    output reg [13:0] monedas_100_ingresadas,
//    output reg [13:0] monedas_500_ingresadas
//    );
    
//wire M_10;
//wire M_50;
//wire M_100;
//wire M_500;
//wire devolucion;
//wire comprar;

//DeBouncer_D(clk, devolucion_pre, devolucion);
//DeBouncer_D(clk, M_500_pre, M_500);
//DeBouncer_D(clk, M_100_pre, M_100);
//DeBouncer_D(clk, M_50_pre, M_50);
//DeBouncer_D(clk, M_10_pre, M_10);
//DeBouncer_D(clk, comprar_pre, comprar);

//always @(posedge clk)
//begin
//    if(M_10)
//    begin
//    monedas_10_ingresadas = monedas_10_ingresadas + 1;
//    end
//    else if(M_50)
//    begin
//    monedas_50_ingresadas = monedas_50_ingresadas + 1;
//    end 
//    else if (M_100)
//    begin
//    monedas_100_ingresadas = monedas_100_ingresadas + 1;
//    end
//    else if (M_500)
//    begin
//    monedas_500_ingresadas = monedas_500_ingresadas + 1;
//    end
//    else if (devolucion)
//    begin
//    monedas_10_ingresadas = 0;
//    monedas_50_ingresadas = 0;
//    monedas_100_ingresadas = 0;
//    monedas_500_ingresadas = 0;
//    end
//    else if (comprar & compra_exitosa);
//    begin
//    monedas_10_ingresadas = 0;
//    monedas_50_ingresadas = 0;
//    monedas_100_ingresadas = 0;
//    monedas_500_ingresadas = 0;
//    end
    
//    monto_ingresado = 500*monedas_500_ingresadas + 100*monedas_100_ingresadas;
//    monto_ingresado = monto_ingresado + 50*monedas_50_ingresadas + 10*monedas_10_ingresadas;
    
//    if (monto_ingresado >= 9999)
//    begin
//    monto_ingresado = 9999;
//    end
    
//    else if (monto_ingresado <= 0)
//    begin
//    monto_ingresado = 0;
//    end
    
// end
     
//endmodule

module contador_monto_ingresado(
    input clk,
    input compra, compra_exitosa,
    input M_500_pre, M_100_pre, M_50_pre, M_10_pre,
    input devolucion_pre,
    output reg [13:0] monedas_500_ingresadas, monedas_100_ingresadas, monedas_50_ingresadas, monedas_10_ingresadas,
    output reg [13:0] monto_ingresado
    );
    
wire M_500;
wire M_100;
wire M_50;
wire M_10;
 
wire devolucion;

DeBouncer_D(clk, devolucion_pre, devolucion);
DeBouncer_D(clk, M_500_pre, M_500);
DeBouncer_D(clk, M_100_pre, M_100);    
DeBouncer_D(clk, M_50_pre, M_50);    
DeBouncer_D(clk, M_10_pre, M_10);        
    
always @(posedge clk)
begin
if (M_500)
    begin
    monedas_500_ingresadas = monedas_500_ingresadas + 1;
    monto_ingresado = monto_ingresado + 500;
    end
else if (M_100)
    begin
    monedas_100_ingresadas = monedas_100_ingresadas + 1;
    monto_ingresado = monto_ingresado + 100;
    end
else if (M_50)
    begin
    monedas_50_ingresadas = monedas_50_ingresadas + 1;
    monto_ingresado = monto_ingresado + 50;
    end
else if (M_10)
    begin
    monedas_10_ingresadas = monedas_10_ingresadas + 1;
    monto_ingresado = monto_ingresado + 10;
    end
else if (devolucion | (compra & compra_exitosa))
    begin
    monedas_500_ingresadas = 0;
    monedas_100_ingresadas = 0;
    monedas_50_ingresadas = 0;
    monedas_10_ingresadas = 0;
    monto_ingresado = 0;
    end
    
//monto_ingresado = monedas_500_ingresadas*500 + monedas_100_ingresadas*100 + monedas_50_ingresadas*50 + monedas_10_ingresadas*10;

end


endmodule
