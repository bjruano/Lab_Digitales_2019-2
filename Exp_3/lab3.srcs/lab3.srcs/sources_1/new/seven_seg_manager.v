`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2019 16:25:32
// Design Name: 
// Module Name: seven_seg_manager
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


module seven_seg_manager(
    input clk,
    //input [6:0] N_sn, N_eo,
    //Esto no input [6:0] d7s_0, d7s_1, d7s_2, d7s_3,
    output reg[6:0]seg,
    output reg[3:0]an
    );
    
    //Lo ideal sería hacer un modulo _delay_ms(cuantos ms dura el delay)
    reg [31:0] contador= 32'd0;
    reg[6:0]segments;
    reg[3:0]anodo;
    reg [2:0] selector = 2'd0;
    reg [31:0] maximo= 32'd1000000;
    
    wire clock;
    clk_divider(clk, clock);
    reg [6:0] N_sn, N_eo;
    wire [3:0] decena_eo, unidad_eo, decena_sn, unidad_sn;
    wire[6:0] d7s_0, d7s_1, d7s_2, d7s_3;
     
    always@(posedge clock)
    begin
        /*digit_separator(N_eo, decena_eo, unidad_eo);
        digit_separator(N_sn, decena_sn, unidad_sn);
        seven_seg_converter(decena_eo, d7s_0);
        seven_seg_converter(unidad_eo, d7s_1);
        seven_seg_converter(decena_sn, d7s_2);
        seven_seg_converter(unidad_sn, d7s_3);*/
        N_eo <= N_eo + 1;
        if(N_eo >=99)
        begin
            N_eo <= 7'd0;
        end
        N_sn <= N_sn + 1;
        if(N_sn >=99)
        begin
            N_sn <= 7'd0;
        end           
    end
    
    digit_separator(N_eo, decena_eo, unidad_eo);
    digit_separator(N_sn, decena_sn, unidad_sn);
    seven_seg_converter(decena_eo, d7s_0);
    seven_seg_converter(unidad_eo, d7s_1);
    seven_seg_converter(decena_sn, d7s_2);
    seven_seg_converter(unidad_sn, d7s_3);
    
    always@(posedge clk)
    begin
        case(selector)
        2'd0:
            begin
            anodo = 4'b0111;
            segments = d7s_0;
            end
        2'd1:
            begin
            anodo = 4'b1011;
            segments = d7s_1;
            end
        2'd2:
            begin
            anodo = 4'b1101;
            segments = d7s_2; 
            end
        2'd3:
            begin
            anodo = 4'b1110;
            segments = d7s_3;
            end
        default:
            begin
            anodo = 4'b0000;
            segments = 7'b0111111;
            end
        endcase
    end
    
    always@(posedge clk)
    begin
        an = anodo;
        seg = segments;
        /*Hacemos un delay de 10ms para que los d7s alternen*/
        contador <= contador + 1;
        if(contador>= (maximo-1))
        begin
            selector <= selector + 1; /*selector es de 2 bits
            entonces al llegar a 3, vuelve a 0*/
            contador <= 32'd0;
        end
    end    
    
    
    /*Únicamente recibo los numeros de 7 bits
    que representan los digitos en 7segmentos
    y los hago alternar entre ellos para que
    aparente que estan encendidos al mismo tiempo*/
    
    /*wire [3:0] decena_eo, unidad_eo, decena_sn, unidad_sn;
    
    digit_separator(N_eo, decena_eo, unidad_eo);   
    digit_separator(N_sn, decena_sn, unidad_sn);
    
    seven_seg_converter(decena_eo, L_1);
    seven_seg_converter(unidad_eo, L_2);
    seven_seg_converter(decena_sn, L_3);
    seven_seg_converter(unidad_sn, L_4);*/
    
    
endmodule
