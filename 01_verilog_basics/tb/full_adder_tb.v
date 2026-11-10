module full_adder_tb;
reg a ,b,cin;
wire c,s;
reg expected_s,expected_c;
full_adder uut(
    .A(a),
    .B(b),
    .cin(cin),
    .s(s),
    .c(c)
);
integer i;
initial begin
    for (i = 0; i < 8; i = i + 1)begin
        {a, b, cin} = i[2:0];
        #10
        expected_s = a ^ b ^ cin;
        expected_c = (a & b) | (b & cin) | (a & cin);
        if (s === expected_s && c === expected_c) begin
                $display(a, b, cin, s, c, expected_s, expected_c);
            end

    end

end 

endmodule