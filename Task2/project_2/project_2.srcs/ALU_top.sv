module ALU_top(
    input wire CLK100MHZ,    // using the same name as pin names
    input wire CPU_RESETN,   
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [7:0] AN,    
    input wire [15:0] SW     
);


logic reset_n;
logic clk;
assign reset_n = CPU_RESETN;
assign clk = CLK100MHZ;


// Seven segments Controller
wire [6:0] Seg;
wire [3:0] digits[0:7];
wire [3:0]muxwire,A,B,alu_out;
wire IDEL;
wire [1:0]alu_op;

assign digits[0] = SW[3:0];//A
assign digits[1] = SW[7:4];//B
assign digits[2] = SW[9:8];//OPREATION SELECT
assign digits[3] = SW[13:10];
assign digits[4] = 4'b1111;
assign digits[5] = 4'b1111;
assign digits[6] = 4'b1111;
assign digits[7] = 4'b1111;

assign alu_op=digits[2];  
    
fourbit_adder adder_inst0(.A(digits[0]) ,.B(digits[1]), .M(digits[2]) ,.S(digits[3],.Cout(IDEL));

assign muxwire=alu_op[0]? digits[0]& digits[1]: ditigs[0]<<digits[1];

sev_seg_controller ssc(
    .clk(clk),
    .resetn(reset_n),
    .digits(digits),
    .Seg(Seg),
    .AN(AN)
);


assign CA = Seg[0];
assign CB = Seg[1];
assign CC = Seg[2];
assign CD = Seg[3];
assign CE = Seg[4];
assign CF = Seg[5];
assign CG = Seg[6];
assign DP = 1'b1; // turn off the dot point on seven segs


endmodule : sev_seg_top