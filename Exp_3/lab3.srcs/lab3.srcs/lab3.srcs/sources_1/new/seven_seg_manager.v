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
    input [6:0] N_sn, N_eo,
    output [6:0] L_1, L_2, L_3, L_4
    );
    
    wire [3:0] decena_eo, unidad_eo, decena_sn, unidad_sn;
    
    digit_separator(N_eo, decena_eo, unidad_eo);   
    digit_separator(N_sn, decena_sn, unidad_sn);
    
    seven_seg_converter(decena_eo, L_1);
    seven_seg_converter(unidad_eo, L_2);
    seven_seg_converter(decena_sn, L_3);
    seven_seg_converter(unidad_sn, L_4);
    
endmodule
