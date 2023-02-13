`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2022 01:56:24 PM
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
    input [2:0] Opcode,
    output reg RegDst,
    output reg MemToReg,
    output reg MemWrite, 
    output reg Branch,
    output reg MemRead,
    output reg [1:0] ALUOp,
    output reg ALUSrc,
    output reg RegWrite
    );
always @(Opcode)
begin
case(Opcode)

3'b000:
begin
assign RegDst = 1'b1;
assign MemToReg = 1'b0;
assign MemWrite = 1'b0;
assign Branch = 1'b0;               //Sub Add xor mod
assign MemRead = 1'b0;
assign ALUOp = 2'b10;
assign ALUSrc = 1'b0;
assign RegWrite = 1'b1;
end

3'b001:
begin
assign RegDst = 1'b0;
assign MemToReg = 1'b0;
assign MemWrite = 1'b0;
assign Branch = 1'b0;           //andi
assign MemRead = 1'b0;
assign ALUOp = 2'b11;
assign ALUSrc = 1'b1;
assign RegWrite = 1'b1;
end

3'b010:
begin
assign RegDst = 1'b0;
assign MemToReg = 1'b0;
assign MemWrite = 1'b0;
assign Branch = 1'b0;           //ori
assign MemRead = 1'b0;
assign ALUOp = 2'b11;
assign ALUSrc = 1'b1;
assign RegWrite = 1'b1;
end

3'b011:
begin
assign RegDst = 1'b0;
assign MemToReg = 1'b0;
assign MemWrite = 1'b0;
assign Branch = 1'b0;           //addi
assign MemRead = 1'b0;
assign ALUOp = 2'b11;
assign ALUSrc = 1'b1;
assign RegWrite = 1'b1;
end


3'b100:
begin
assign RegDst = 1'b0;
assign MemToReg = 1'b0;
assign MemWrite = 1'b0;
assign Branch = 1'b0;       //SLTI
assign MemRead = 1'b0;
assign ALUOp = 2'b11;
assign ALUSrc = 1'b1;
assign RegWrite = 1'b1;
end


3'b101:
begin
assign RegDst = 1'b0;
assign MemToReg = 1'b1;
assign MemWrite = 1'b0;
assign Branch = 1'b0;
assign MemRead = 1'b1;      //LW
assign ALUOp = 2'b00;
assign ALUSrc = 1'b1;
assign RegWrite = 1'b1;
end

3'b110:
begin
assign RegDst = 1'b0;
assign MemToReg = 1'b0;
assign MemWrite = 1'b1;
assign Branch = 1'b0;       //SW
assign MemRead = 1'b0;
assign ALUOp = 2'b00;
assign ALUSrc = 1'b1;
assign RegWrite = 1'b0;
end


3'b111:
begin
assign RegDst = 1'b0;
assign MemToReg = 1'b0;
assign MemWrite = 1'b0;
assign Branch = 1'b1;       //BNE
assign MemRead = 1'b0;
assign ALUOp = 2'b01;
assign ALUSrc = 1'b0;
assign RegWrite = 1'b0;
end
endcase
end
endmodule