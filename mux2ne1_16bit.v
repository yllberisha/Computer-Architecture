`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2022 02:23:47 AM
// Design Name: 
// Module Name: mux2ne1_16bit
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



module mux2ne1_16bit(
    input[15:0] Hyrja0,
    input[15:0] Hyrja1,
    input S,
    output[15:0] Dalja
    );
    
assign Dalja = S ? Hyrja1 : Hyrja0;

endmodule
