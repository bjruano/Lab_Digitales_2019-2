`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2019 20:17:27
// Design Name: 
// Module Name: buttonScanner
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


module keyboardScanner (
  input            clk,
  input            reset,       /* additional input */
  input      [3:0] col,
  output reg [3:0] row,
  output reg [7:0] keyCode,
  output reg       keyValid     /* additional output */
);

  always @(posedge clk) begin
    if (reset) begin
      /* Reset all register variables.
       * Not strictly necessary for synthesis,
       * but the simulator will require it.
       */
      row <= 4'b1000;
      keyCode <= 8'b0;
      keyValid <= 0;
    end else begin
      /* If any column is active in the current row,
       * output the row and column pattern as a keyCode,
       * and assert keyValid. Pause the scanning as long
       * as the key is held down.
       */
      if (col != 4'b0000) begin
        keyCode <= {col, row};
        keyValid <= 1;
      end else begin
        keyValid <= 0;
        /* Scan the matrix, one row per clock period
         */
        case (row)
          4'b1000: row <= 4'b0100;
          4'b0100: row <= 4'b0010;
          4'b0010: row <= 4'b0001;
          4'b0001: row <= 4'b1000;
          default: row <= 4'b1000;
        endcase
      end
    end
  end

endmodule // keyboardScanner