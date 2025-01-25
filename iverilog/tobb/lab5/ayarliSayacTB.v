module ayarliSayacTB();

    reg clk, rst, en;
    reg [2:0] sayma_miktari;
    reg sayma_yonu;
    wire [5:0] sayac;

ayarliSayac uut (
    .clk(clk),
    .rst(rst),
    .en(en),
    .sayma_miktari(sayma_miktari),
    .sayma_yonu(sayma_yonu),
    .sayac(sayac)
);

always begin
    clk = ~clk; #1;
end

initial begin
    $dumpfile("ayarliSayac.vcd");
    $dumpvars;
    clk = 0; rst = 0; en = 1; sayma_miktari = 3'b110; sayma_yonu = 1'b1; #16;
    clk = 1; rst = 0; en = 0; sayma_miktari = 3'b010; sayma_yonu = 1'b1; #8;
    clk = 1; rst = 0; en = 1; sayma_miktari = 3'b011; sayma_yonu = 1'b1; #8;
    clk = 1; rst = 1; en = 1; sayma_miktari = 3'b010; sayma_yonu = 1'b1; #8;
    $finish;
end

endmodule
