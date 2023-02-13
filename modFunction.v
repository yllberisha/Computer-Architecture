`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2022 06:15:15 PM
// Design Name: 
// Module Name: modFunction
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


module modFunction(
    input Hyrja1, 
    input Hyrja2,
    output Dalja 
    );

integer num, divisor;

initial
begin
num = Hyrja1;
divisor = Hyrja2;
while (num >= divisor)

begin
assign num = num - divisor;
end
end
assign Dalja = num;

endmodule
