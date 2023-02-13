`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2022 02:27:47 PM
// Design Name: 
// Module Name: InstructionMemoryTest
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




module InstructionMemory_Test();
reg[15:0] PC;
wire[15:0] Instruction;

initial
begin
#0 PC=16'd10;
end

InstructionMemory IM(PC, Instruction);
endmodule


