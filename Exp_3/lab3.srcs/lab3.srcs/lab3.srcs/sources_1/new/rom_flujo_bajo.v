`timescale 1ns / 1ps

//Fuente: https://github.com/Obijuan/open-fpga-verilog-tutorial/wiki/Cap%C3%ADtulo-26:-Memoria-ROM

//-- Fichero rom32x4.v

module flujo_bajo (input clk,
                   input reset,
                   output reg [5:0] lights);
                   
  wire [4:0] count; 
  contador_0_29(clk, reset, count); 

  //-- Memoria
  reg [5:0] rom [0:31];

  //-- Proceso de acceso a la memoria. 
  //-- Se ha elegido flanco de bajada en este ejemplo, pero
  //-- funciona igual si es de subida
  always @(posedge clk) begin
    lights <= rom[count];
  end

//-- Inicializacion de la memoria. 
//-- Solo se dan valores a las 8 primeras posiciones
//-- El resto permanecera a 0
  initial begin

//          EO  SN
rom[0] = 6'b100_001;
rom[1] = 6'b100_001;
rom[2] = 6'b100_001;
rom[3] = 6'b100_001;
rom[4] = 6'b100_001;
rom[5] = 6'b100_001;
rom[6] = 6'b100_001;
rom[7] = 6'b100_001;
rom[8] = 6'b100_001;
rom[9] = 6'b100_001;
rom[10] = 6'b100_001;
rom[11] = 6'b100_001;
rom[12] = 6'b010_001;
rom[13] = 6'b010_001;
rom[14] = 6'b010_001;
rom[15] = 6'b001_100;
rom[16] = 6'b001_100;
rom[17] = 6'b001_100;
rom[18] = 6'b001_100;
rom[19] = 6'b001_100;
rom[20] = 6'b001_100;
rom[21] = 6'b001_100;
rom[22] = 6'b001_100;
rom[23] = 6'b001_100;
rom[24] = 6'b001_100;
rom[25] = 6'b001_100;
rom[26] = 6'b001_100;
rom[27] = 6'b001_010;
rom[28] = 6'b001_010;
rom[29] = 6'b001_010;
    
   end
endmodule