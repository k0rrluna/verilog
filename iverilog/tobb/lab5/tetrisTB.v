module tetrisTB();

    reg [2:0] p;
    reg clk;
    wire [3:0] yukseklik;
    wire bitti_mi;
    wire [3:0] cevrim;

tetris uut (
    .parca(p),
    .clk(clk),
    .yukseklik(yukseklik),
    .bitti_mi(bitti_mi),
    .cevrim(cevrim)
);

    always begin
        clk = ~clk; #1;
    end

initial begin
    $dumpfile("tetris.vcd");
    $dumpvars;
    clk = 0; p = 3'b010; #2;
    p = 3'b011; #2;
    p = 3'b010; #2;
    p = 3'b000; #30;
    $finish;
end

endmodule
