// i will do adder subtracor four bit using N-bit adder
module adder_subtractor (
    input [3:0] a,B,
    input add_n,
    output [3:0] s,
    output cout
);
wire [3:0] k;
assign k[0] = a[0] ^ add_n;
assign k[1] = a[1] ^ add_n;
assign k[2] = a[2] ^ add_n;
assign k[3] = a[3] ^ add_n;
N_bit_adder #(.n(4)) A0 (
    .cin(add_n),
    .a(B),
    .b(k),
    .s(s),
    .cout(cout)
);
endmodule