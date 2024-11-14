`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 03:35:36 PM
// Design Name: 
// Module Name: TB_four_bit_binary_incrementer
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


module TB_four_bit_binary_incrementer;
    logic [3:0] A;
    wire [3:0] B;
    
four_bit_binary_incrementer DUT (.A(A),.B(B));

    initial begin
        A = 4'b0000; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b0001; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b0010; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b0011; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b0100; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b0101; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b0110; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b0111; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b1000; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b1001; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b1010; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b1011; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b1100; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b1101; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b1110; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        A = 4'b1111; #10;
        $display("A = %b, B (incremented) = %b", A, B);

        $finish;
    end
endmodule