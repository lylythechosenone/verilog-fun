`include add8.v

module sub8(

 input wire [7:0] A,
 input wire [7:0] B,
 output wire [7:0] Z

);

wire [8:0] C;
add8 T0(A, ~B, C);
wire [8:0] D;
add8 T1(C[7:0], 1, D);
assign Z = D[7:0];

endmodule
