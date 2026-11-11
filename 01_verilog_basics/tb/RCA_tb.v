module RCA_tb;
reg cin_tb;
reg[3:0] xi_tb,yi_tb;
wire[3:0] si_tb;
wire cout_tb;

RCA uut (
    .cin(cin_tb),
    .xi(xi_tb),
    .yi(yi_tb),
    .si(si_tb),
    .cout(cout_tb)
    );
initial begin
    $monitor("cin_tb = %b | xi_tb = %b | yi_tb = %b || cout_tb = %b | si_tb = %b ", 
                cin_tb, xi_tb,yi_tb,cout_tb, si_tb);
    cin_tb = 1'b0; xi_tb=4'b0000; yi_tb=4'b0000;
    #10;
    cin_tb = 1'b1; xi_tb=4'b0000; yi_tb=4'b0000;
    #10;
    cin_tb = 1'b0; xi_tb=4'b0110; yi_tb=4'b0110;
    #10;
    cin_tb = 1'b0; xi_tb=4'b0100; yi_tb=4'b0001;
    #10;
    cin_tb = 1'b1; xi_tb=4'b0001; yi_tb=4'b0001;
    #10;
    cin_tb = 1'b1; xi_tb=4'b0100; yi_tb=4'b0000;
    #10;
    $finish;
end



endmodule 