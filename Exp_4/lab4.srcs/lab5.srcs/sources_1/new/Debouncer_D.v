module DeBouncer_D(clk, boton, state);
  input clk, boton;
  wire cable1, cable2;
  output state;
  reg rst = 1'b0;

  FlipFlopD flip1(
    .D(boton), 
    .clk(clk),
    .rst(rst), 
    .Q(cable1));
    
  FlipFlopD flip2(
    .D(cable1), 
    .clk(clk),
    .rst(rst), 
    .Q(cable2));
 
 assign state = cable1 && !cable2;
    
endmodule