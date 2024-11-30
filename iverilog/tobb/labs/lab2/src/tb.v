module tb();

reg r1, r2;
wire w1, w2;

halfAdder uut(
    .A(r1),
    .B(r2),
    .S(w1),
    .C(w2)
);

initial begin
    $dumpfile("dmp.vcd");
    $dumpvars;
    r1 = 0; r2 = 0; #20
    r1 = 1; r2 = 0; #20
    r1 = 0; r2 = 1; #20
    r1 = 1; r2 = 1; #20
    $display(w1);
    $display(w2);
end

endmodule