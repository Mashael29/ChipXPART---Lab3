//TASK5
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 02:15:35 PM
// Design Name: 
// Module Name: fourbit_adder
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


module fourbit_adder(
input wire [3:0] A ,
input wire [3:0] B ,
input wire M ,
output wire [3:0] S,
output wire Cout
);
 
//vribles 
logic [3:0]b;
logic [3:1] C;

xor b_0(b[0],B[0],M);
xor b_1(b[1],B[1],M);
xor b_2(b[2],B[2],M);
xor b_3(b[3],B[3],M);

//
fulladder1 fa1(.a(A[0]),.b(b[0]),.cin(M),.s(S[0]),.c(C[1]));
fulladder1 fa2(.a(A[1]),.b(b[1]),.cin(C[1]),.s(S[1]),.c(C[2]));
fulladder1 fa3(.a(A[2]),.b(b[2]),.cin(C[2]),.s(S[2]),.c(C[3]));
fulladder1 fa4(.a(A[3]),.b(b[3]),.cin(C[3]),.s(S[3]),.c(Cout));

endmodule



