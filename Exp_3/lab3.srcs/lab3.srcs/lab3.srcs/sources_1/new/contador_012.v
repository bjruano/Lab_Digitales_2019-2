`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2019 17:31:45
// Design Name: 
// Module Name: contador_012
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

module contador_012(input clk,               // Declare input port for clock to allow counter to count up
                  input reset_btn,              // Declare input port for reset to allow the counter to be reset to 0 when required
                  output reg[1:0] count
                  );
 
  // This always block will be triggered at the rising edge of clk (0->1)
  // Once inside this block, it checks if the reset is 0, if yes then change out to zero
  // If reset is 1, then design should be allowed to count up, so increment counter
  wire clock;
  wire reset;
  
  clk_divider(clk, clock);
  debouncer(reset_btn, clk, reset);
  
  always @ (posedge clock) begin
    if (reset) begin
      count <= 0;
      end
    else begin
      count <= count + 1;
      end
    if (count >= 2'd2) begin
      count <= 0;
      end
  end

endmodule
