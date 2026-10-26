
module mux_2to1_tb;
reg i0_tb,i1_tb,s_tb;
wire o_tb;
mux_2to1 dut (
    .i0(i0_tb),
    .i1(i1_tb),
    .s(s_tb),
    .o(o_tb)
);
initial begin
    i0_tb = 0 ; i1_tb=0 ; s_tb= 0;
    #10;
    i0_tb = 0 ; i1_tb=1 ; s_tb= 0;
    #10;
    i0_tb = 1 ; i1_tb=0 ; s_tb= 0;
    #10;
    i0_tb = 1 ; i1_tb=0 ; s_tb= 1;
    #10;
    i0_tb = 0 ; i1_tb=1 ; s_tb= 1;
    #10;
    i0_tb = 1 ; i1_tb=1 ; s_tb= 1;
    #10;
    $stop;
    $monitor ("i0_a=%b i1_tb=%b s_tb=%b | o_tb=%b",
                 $time, i0_tb, i1_tb, s_tb, o_tb);
end

endmodule