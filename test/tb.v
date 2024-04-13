module tb();

reg r1, r2;
wire w1, w2, w3;

test uut(
    .A(r1),
    .B(r2),
    .LED1(w1),
    .LED2(w2),
    .LED3(w3)
);

// test uut(r1, r2, w1, w2, w3);

initial begin
    $dumpfile("dmp.vcd");
    $dumpvars;
    r1 = 0; r2 = 0; #10;
    r1 = 0; r2 = 1; #10;
    r1 = 1; r2 = 0; #10;
    $display(w3);
    r1 = 1; r2 = 1; #10;
    $display(w3);
end



endmodule