`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2022 09:58:45 PM
// Design Name: 
// Module Name: CPU
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


//Hyrje ne CPU - CLock CPU_IN_1
module CPU(input Clock);

//TELAT E BRENDSHEM TE CPU, SHIH CPU.PDF
wire [5:0] opcode; //D_OUT_1
//CU_OUT_x
wire RegDst, Jump, Branch, MemRead, MemWrite, RegWrite, MemToReg, ALUSrc;
wire [1:0] ALUOp;

//inicializimi i Datapath
Datapath DP
(
Clock,
RegDst, Jump, Branch, MemRead, MemWrite, RegWrite, MemToReg, ALUSrc,
ALUOp,
opcode
);

//Inicializimi i COntrol Unit
ControlUnit controlunit(
opcode,
RegDst, 
Branch, 
MemRead, 
MemToReg,
ALUOp,
MemWrite, 
ALUSrc,
RegWrite
);

endmodule
