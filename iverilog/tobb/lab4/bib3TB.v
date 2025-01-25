module bib3TB();

reg [8:0] A;
wire [3:0] Y;

bib3 uut (
    .buyruk(A),
    .sonuc(Y)
);

initial begin
    $dumpfile("bib3.vcd");
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
