`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 08:53:12 AM
// Design Name: 
// Module Name: pattrenselctor
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


module pattrenselector(
    input wire [1:0] SW,
    output reg  [4:0] dis1,dis2,dis3,dis4       // 7-bit output for segments a-g
);

always @ (SW) begin
case (SW)
2'b00 :
begin
dis1=4'b1100; 
dis2=4'b0000;
dis3=4'b1101;
dis4=4'b1110;
end 
2'b01 :
begin
dis1=4'b1110; 
dis2=4'b0000;
dis3=4'b1100;
dis4=4'b1101;
end 
2'b10 : 
begin
dis1=4'b1101;
dis2=4'b1110;
dis3=4'b1100;
dis4=4'b0000; 
end 
2'b11 : 
begin
dis1=4'b0000;
dis2=4'b1101;
dis3=4'b1100;
dis4=4'b1110;
end 
default : 
begin
dis1=4'b1100; 
dis2=4'b0000;
dis3=4'b1101;
dis4=4'b1110;
end 
endcase
end
endmodule
