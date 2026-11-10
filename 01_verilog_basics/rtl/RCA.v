// i use full adder to make ripple carry adder
module RCA(
    input cin,
    input[3:0] xi,yi,
    output[3:0] si,
    output cout
);
wire c1,c2,c3;
full_adder dut (
    .A(xi[0]),
    .B(yi[0]),
    .cin(cin),
    .s(si[0]),
    .c(c1)
);
full_adder dut1 (
    .A(xi[1]),
    .B(yi[1]),
    .cin(c1),
    .s(si[1]),
    .c(c2)
);
full_adder dut2 (
    .A(xi[2]),
    .B(yi[2]),
    .cin(c2),
    .s(si[2]),
    .c(c3)
);
full_adder dut3 (
    .A(xi[3]),
    .B(yi[3]),
    .cin(c3),
    .s(si[3]),
    .c(cout)
);
endmodule