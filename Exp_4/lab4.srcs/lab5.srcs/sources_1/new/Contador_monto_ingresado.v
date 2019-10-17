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
    input prod_A_pre, prod_B_pre, prod_C_pre, prod_D_pre,
    input compra_exitosa,
    input comprar,
    input devolucion_pre,
    output reg [13:0] cant_A, cant_B, cant_C, cant_D,
    output reg [13:0] costo
    );
    
wire prod_A;
wire prod_B;
wire prod_C;
wire prod_D;
 
wire devolucion;

DeBouncer_D(clk, devolucion_pre, devolucion);
DeBouncer_D(clk, prod_A_pre, prod_A);
DeBouncer_D(clk, prod_B_pre, prod_B);    
DeBouncer_D(clk, prod_C_pre, prod_C);    
DeBouncer_D(clk, prod_D_pre, prod_D);        
    
always @(posedge clk)
begin
if (prod_A)
    begin
    cant_A = cant_A + 1;
    end
else if (prod_B)
    begin
    cant_B = cant_B + 1;
    end
else if (prod_C)
    begin
    cant_C = cant_C + 1;
    end
else if (prod_D)
    begin
    cant_D = cant_D + 1;
    end
else if (devolucion)
    begin
    cant_A = 0;
    cant_B = 0;
    cant_C = 0;
    cant_D = 0;
    end
else if (compra_exitosa & comprar)
    begin
    cant_A = 0;
    cant_B = 0;
    cant_C = 0;
    cant_D = 0;
    end
    
costo = cant_A*14'd500 + cant_B*14'd100 + cant_C*14'd50 + cant_D*14'd10;

end


endmodule
