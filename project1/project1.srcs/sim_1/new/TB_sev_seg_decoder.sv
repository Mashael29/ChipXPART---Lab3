`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 03:13:59 PM
// Design Name: 
// Module Name: TB_sev_seg_decoder
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

module TB_sev_seg_decoder;
logic [3:0] A;
logic [6:0] seg;


seven_seg_decoder DUT(A, seg);


initial begin 
    A = 0;
    #10;
    A = 1;
    #10;
    A = 2; // 4'b0011
    #10;
    A = 3; // 4'b0100
    #10
    A = 4;
    #10;
    A = 5;
    #10;
    A = 6;
    #10;
    A = 7;
    #10;
    A = 8;
    #10;
    A = 9;
    #10;
    A = 10;
    #10    
    A = 11;
    #10;
    A = 12;
    #10;
    A = 13;
    #10;
    A = 14;
     #10;
    A = 15;
end



endmodule




