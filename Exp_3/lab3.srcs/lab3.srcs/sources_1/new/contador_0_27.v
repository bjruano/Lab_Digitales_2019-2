`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2019 01:58:41
// Design Name: 
// Module Name: contador_0_27
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

// Fuente: https://www.fpga4student.com/2017/03/verilog-code-for-counter-with-testbench.html


module contador_0_29 (input clk,               // Declare input port for clock to allow counter to count up
                  input reset_btn,              // Declare input port for reset to allow the counter to be reset to 0 when required
                  output reg[4:0] count,
                  output [6:0] seg);    // Declare 4-bit output port to get the counter values
 
  // This always block will be triggered at the rising edge of clk (0->1)
  // Once inside this block, it checks if the reset is 0, if yes then change out to zero
  // If reset is 1, then design should be allowed to count up, so increment counter
  wire clock;
  
  clk_divider(clk, reset_btn, clock);
  
  always @ (posedge clock) begin
    if (reset_btn) begin
      count <= 0;
      end
    else begin
      count <= count + 1;
      end
    if (count >= 5'd29) begin
      count <= 0;
      end
  end

endmodule