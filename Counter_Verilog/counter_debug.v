`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2021 20:39:34
// Design Name: 
// Module Name: counter_debug
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


module counter_debug(
input clk,reset,
output [3:0] dout
    );
 reg[3:0] temp;   
always@(posedge(clk))
begin
if(reset == 1'b1)
   temp <= 4'b0000;
else
   temp <= temp + 1;
end
assign dout = temp;
endmodule
