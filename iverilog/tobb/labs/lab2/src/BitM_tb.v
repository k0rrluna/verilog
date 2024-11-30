module BitM_tb();

reg r1, r2;
wire w1, w2, w3;

BitM uut(
    .A(r1),
    .B(r2),
    .AlB(w1),
    .AeB(w2),
    .AgB(w3)
);

initial begin
    $dumpfile("bdmp.vcd");
    $dumpvars;
    r1 = 0; r2 = 0; #10
    r1 = 0; r2 = 1; #10
    r1 = 1; r2 = 0; #10
    r1 = 1; r2 = 1; #10
    $display(w1);
    $display(w2);
    $display(w3);
end

endmodule