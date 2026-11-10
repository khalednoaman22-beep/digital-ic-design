// i will make full adder using half adder
module full_adder(
    input A , B,cin,
    output s, c
);
wire c1,s1;
half_adder dut (
    .a(A),
    .b(B),
    .s(s1),
    .c(c1)
);
wire c2;
half_adder dut1(
    .a(s1),
    .b(cin),
    .s(s),
    .c(c2)
);

assign c = c2 | c1;

endmodule