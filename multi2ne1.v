`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 04:20:33 PM
// Design Name: 
// Module Name: multi2ne1
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


module multi2ne1(

    input input0,
    input input1,
    input S,
    output multi2_out
    );
    
assign multi2_out = S ? input1 : input0;


endmodule
