`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2022 10:09:52 PM
// Design Name: 
// Module Name: RegisterFile
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


module registerfile(
input wire[2:0] RS,
input wire [2:0] RT,
input wire [2:0] RD,
input wire [15:0] WriteData,
output wire [15:0] ReadRS,
output wire [15:0] ReadRT,
input wire RegWrite,
input wire Clock);


reg[15:0] Registers[7:0];
integer i;

initial
begin
    for(i = 0; i < 8; i = i + 1)begin
       Registers[i] = 16'd0; 
       end
    
end

always @ (posedge Clock)
begin
if(RegWrite) Registers[RD] <= WriteData;
end

assign ReadRS = Registers[RS];
assign ReadRT = Registers[RT];

endmodule
