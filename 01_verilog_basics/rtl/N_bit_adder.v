// n_bit adder from full adder
module N_bit_adder #(parameter n = 4)(
input [n-1:0] a,b,
input cin,
output [n-1:0] s,
output cout
);
wire [n:0] c;
assign cin = c[0];
assign cout = c[n];
generate
    genvar k;
    for (k =0;k<n;k=k+1)begin
        full_adder dut(
            .A(a[k]),
            .B(b[k]),
            .cin(c[k]),
            .s(s[k]),
            .c(c[k+1])
        );

      
    end
endgenerate

endmodule