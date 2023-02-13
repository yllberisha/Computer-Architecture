`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 04:28:55 PM
// Design Name: 
// Module Name: ALU_1b
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


module ALU_1b(
    input A,
    input B,
    input CIN,
    input BInvert,
    input LESS,
    input [2:0] Operation,
    output Result,
    output COUT
    );

wire notB, mB, andi, ori, mbledhesi_teli, jo_or, moduli_wire;

assign notB = ~B;

multi2ne1 multiB(B, notB, BInvert, mB);

assign andi = A & mB;
assign ori = A | mB;
assign jo_or = A ^ mB;

modFunction moduli(A, mB, moduli_wire);

mbledhesi1b adder(A, mB, CIN, mbledhesi_teli, COUT);

multi8ne1 multiALU(andi, ori, mbledhesi_teli, jo_or, moduli_wire, LESS, Operation, Result);
   
endmodule
