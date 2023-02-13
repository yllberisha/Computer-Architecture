`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2022 07:56:09 PM
// Design Name: 
// Module Name: multi8ne1
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


 module multi8ne1(
    input input0,
    input input1,
    input input2,
    input input3,
    input input4,
    input input5,
    input [2:0] S,
    output multi8_out
    );
    
   //S 000 H0
//S 001 H1
//S 010 H2
//S 011 H3
//S 100 H4
//S 101 H5

 //   assign multi4_out = S[1] ? (S[0] ? input3 : input2) : (S[0] ? input1 : input0);

   assign multi8_out = S[2] ? (S[0] ? input5 : input4) : (S[1] ? (S[0] ? input3 : input2) : (S[0] ? input1 : input0));
endmodule