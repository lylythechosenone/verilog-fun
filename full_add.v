module adder(
    input wire A,
    input wire B,
    input wire C,

    output wire[2:0] X
);

wire msb = (A & B) | (B & C) | (A & C);
wire lsb = A ^ B ^ C;

assign X = {msb,lsb};

endmodule
