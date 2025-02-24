`include full_add.v

module add8(

input wire [7:0] T,
input wire [7:0] U,
output wire [8:0] V

);

wire [1:0] d;
adder T0 (T[0], U[0], 0, d);
wire [1:0] z;
adder T1 (T[1], U[1], d[1], z);
wire [1:0] x;
adder T2 (T[2], U[2], z[1], x);
wire [1:0] b;
adder T3 (T[3], U[3], x[1], b);
wire [1:0] j;
adder T4 (T[4], U[4], b[1], j);
wire [1:0] q;
adder T5 (T[5], U[5], j[1], q);
wire [1:0] a;
adder T6 (T[6], U[6], q[1], a);
wire [1:0] p;
adder T7 (T[7], U[7], a[1], p);

assign V = { p, a[0], q[0], j[0], b[0], x[0], z[0], d[0] };

endmodule
