module ALU_top (
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
wire [3:0] digits [7:0];
wire [3:0] alu_out,muxwire,addsub,A,B;
wire IDEL;
wire [1:0]alu_op;

//assign 
assign A=SW[3:0];
assign B=SW[7:4];
assign alu_op=SW[9:8];  

//adderand sub
fourbit_adder adder_inst0(.A(A) ,.B(B), .M(alu_op[0]) ,.S(addsub),.Cout(IDEL));

assign muxwire=alu_op[0]? A&B:A<<B;
assign alu_out=alu_op[1]? muxwire: addsub;

assign digits[0] = A;//SW[3:0]
assign digits[1] = B;//SW[7:4]
assign digits[2] = alu_op;//SW[9:8]
assign digits[3] = alu_out;
assign digits[4] = 4'b1111;
assign digits[5] = 4'b1111;
assign digits[6] = 4'b1111;
assign digits[7] = 4'b1111;


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


endmodule 