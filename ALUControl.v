`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2022 01:08:08 PM
// Design Name: 
// Module Name: ALUControl
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

module ALUControl(
    input [1:0] ALUOp,
    input [3:0] Funct,
    input [2:0] Opcode,
    output reg [3:0] ALUCtrl
    );
    
    always @(ALUOp)
begin
case(ALUOp) 
2'b00:
     ALUCtrl = 4'b0010; // LW ose SW // me mbledhje
2'b01: 
    ALUCtrl = 4'b0110; // BNE
2'b10: //R format
    case(Funct)
    4'b1101: ALUCtrl = 4'b0011; //XOR   // 4-tparat funksioni //0-e par bnegate 3tjerat 
    4'b0000: ALUCtrl = 4'b0100; //ADD
    4'b0001: ALUCtrl = 4'b1100; //SUB    
    4'b0010: ALUCtrl = 4'b0111; //MOD
    endcase
2'b11: // I format
    case(Opcode)
    3'b001: ALUCtrl = 4'b0000; //ANDI
    3'b010: ALUCtrl = 4'b0010; //ORI
    3'b011: ALUCtrl = 4'b0100; //ADDI
    3'b100: ALUCtrl = 4'b0001; //SLTI
    endcase
endcase
end
endmodule
