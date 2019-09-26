`timescale 1ns / 1ps

// Fuente: https://www.fpga4student.com/2017/03/verilog-code-for-counter-with-testbench.html

module contador_0_17(input clk, reset, output[4:0] counter
    );
reg [4:0] counter_up;

// up counter
always @(posedge clk or posedge reset)
begin
if(reset)
 counter_up <= 5'd0;
if (counter_up >= 5'd17)
 counter_up <= 5'd0;
else
 counter_up <= counter_up + 5'd1;
end 
assign counter = counter_up;
endmodule
