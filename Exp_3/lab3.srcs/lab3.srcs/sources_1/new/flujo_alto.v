`timescale 1ns / 1ps

module flujo_alto (input clk,
                   input reset_btn,
                   output reg [5:0] lights);
  
  
  wire [4:0] count;
  wire clock;
  wire reset;
  
  debouncer(reset_btn, clk, reset);
  clk_divider(clk, clock);
  contador_0_17(clock, reset, count);

  //-- Memoria
  reg [3:0] rom [0:31];

  //-- Proceso de acceso a la memoria. 
  //-- Se ha elegido flanco de bajada en este ejemplo, pero
  //-- funciona igual si es de subida
  always @(posedge clock) begin
    lights <= rom[count];
  end

//-- Inicializacion de la memoria. 
//-- Solo se dan valores a las 8 primeras posiciones
//-- El resto permanecera a 0
  initial begin
  
//         E0   SN
rom[0] = 6'b100_001;
rom[1] = 6'b100_001;
rom[2] = 6'b100_001;
rom[3] = 6'b100_001;
rom[4] = 6'b100_001;
rom[5] = 6'b100_001;
rom[6] = 6'b010_001;
rom[7] = 6'b010_001;
rom[8] = 6'b010_001;
rom[9] = 6'b001_100;
rom[10] = 6'b001_100;
rom[11] = 6'b001_100;
rom[12] = 6'b001_100;
rom[13] = 6'b001_100;
rom[14] = 6'b001_100;
rom[15] = 6'b001_010;
rom[16] = 6'b001_010;
rom[17] = 6'b001_010;
    
   end
endmodule
