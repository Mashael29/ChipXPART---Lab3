module seven_seg_decoder(
    input  wire [4:0] D,      // 4-bit binary input (0–F)
    output reg  [6:0] seg       // 7-bit output for segments a-g
);

// Add your code here -----------------------------------
// Add your code here -----------------------------------
assign seg[6]=(~D[3]&~D[2]&~D[1])|(~D[3]&D[2]&D[1]&D[0])|(D[3]&D[2]&~D[1]&~D[0]);
assign seg[5]=(~D[3]&~D[2]&D[1])|(~D[3]&~D[2]&D[0])|(~D[3]&D[1]&D[0])|(D[3]&D[2]&~D[1]&D[0]);
assign seg[4]=(~D[1]&D[0]&~D[2])|(~D[3]&D[2]&~D[1])|(D[0]&~D[3]);
assign seg[3]=(~D[3]&D[2]&~D[1]&~D[0])|(D[2]&D[1]&D[0])|(D[3]&~D[2]&D[1]&~D[0])|(~D[3]&~D[2]&~D[1]&D[0]);
assign seg[2]=(~D[3]&~D[2]&D[1]&~D[0])|(D[3]&D[2]&D[1]&~D[0])|(D[3]&D[2]&D[1]);
assign seg[1]=D[2]&((~D[3]&~D[1]&D[0])|(D[3]&~D[0]|D[1]&~D[0])|(D[3]&D[1]))|(D[3]&D[1]&D[0]);
assign seg[0]=(D[3]&~D[2]&D[1]&D[0])|(D[3]&D[2]&~D[1]&D[0])|(~D[3]&D[2]&~D[1]&~D[0])|(~D[3]&~D[2]&~D[1]&D[0]);
/*
always @ (bin)
begin 
case (bin)
2'b0 : seg=7'b1;
2'b01 : assign seg=7'b1001111;
2'b10 : assign seg=7'b0010010;
2'b11 : assign seg=7'b0000110;

end*/

// Add your code here -----------------------------------

endmodule
