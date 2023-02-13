`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2022 10:52:00 PM
// Design Name: 
// Module Name: DataMemory
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



 
module DataMemory(
input wire[15:0] Adresa,
input wire[15:0] WriteData,
input wire MemWrite,
input wire MemRead,
input wire Clock,
output wire[15:0] ReadData
);

reg[7:0] dataMem[127:0];

initial
$readmemh("DataMemory.mem", dataMem);

always@(posedge Clock)
begin
    if(MemWrite) 
        begin
            dataMem[Adresa] <= WriteData[15:8];
            dataMem[Adresa+1] <= WriteData[7:0];
           end           
end

always@(negedge Clock)
begin
if(MemWrite)
$writememh("DataMemory.mem", dataMem);
end

assign ReadData = {dataMem[Adresa], dataMem[Adresa+1]};


endmodule