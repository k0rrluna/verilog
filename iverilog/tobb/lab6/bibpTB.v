module bibpTB();
    parameter N = 3;
    reg [(N*2)+2:0] A;
    wire [N:0] sonuc;

    bibp #(N) uut (
        .buyruk(A),
        .sonuc(sonuc)
    );

initial begin
    $dumpfile("bibp.vcd");
    $dumpvars;
    A = 9'b000_001_001; #5;
    A = 9'b001_100_001; #5;
    A = 9'b010_100_101; #5;
    A = 9'b011_100_011; #5;
    A = 9'b100_111_111; #5;
    A = 9'b100_100_001; #5;
    A = 9'b101_100_001; #5;
    A = 9'b110_100_001; #5;
    A = 9'b111_100_001; #5;
end

endmodule
