`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2022 11:14:06 PM
// Design Name: 
// Module Name: DataMemory_Test
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


module DataMemory_Test();
reg Clock, MemWrite, MemRead;
reg[15:0] Adresa;
reg[15:0] WriteData;
wire[15:0] ReadData;

initial 
begin
#0 Clock=1'b0;
#5 MemWrite=1'b1; Adresa=16'd2; WriteData=16'h69; MemRead=1'b0;
#5 Clock=1'b1; 
#5 Clock=1'b0; MemWrite=1'b1;
#5 MemRead=1'b1; Adresa=16'd2;
#5 $stop;
end

DataMemory DM(Adresa, WriteData, MemWrite, MemRead, Clock, ReadData);
endmodule
