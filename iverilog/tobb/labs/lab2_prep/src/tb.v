module tb();

reg r1, r2, r3, r4;
wire w1;
    
lab2 uut(
    .A(r1),
    .B(r2),
    .C(r3),
    .D(r4),
    .F(w1)
);

// test uut(r1, r2, w1, w2, w3);

initial begin
    $dumpfile("dmp.vcd");
    $dumpvars;
    r1 = 1'b0; r2 = 1'b0; r3 = 1'b0; r4 = 1'b0;  #50;
    r1 = 1'b0; r2 = 1'b0; r3 = 1'b0; r4 = 1'b1;  #50;
    r1 = 1'b0; r2 = 1'b0; r3 = 1'b1; r4 = 1'b0;  #50;
    r1 = 1'b0; r2 = 1'b0; r3 = 1'b1; r4 = 1'b1;  #50;
    r1 = 1'b0; r2 = 1'b1; r3 = 1'b0; r4 = 1'b0;  #50;
    r1 = 1'b0; r2 = 1'b1; r3 = 1'b0; r4 = 1'b1;  #50;
    r1 = 1'b0; r2 = 1'b1; r3 = 1'b1; r4 = 1'b0;  #50;
    r1 = 1'b0; r2 = 1'b1; r3 = 1'b1; r4 = 1'b1;  #50;
    $display(w1);
end



endmodule