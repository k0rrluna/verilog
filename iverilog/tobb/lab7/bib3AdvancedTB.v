module bib3AdvancedTB();

    reg clk;
    reg basla;
    reg [8:0] buyruk;
    reg [8:0] memory [15:0];
    wire [3:0] sonuc;
    wire bitti;

    bib3Advanced uut (
        .clk(clk),
        .basla(basla),
        .buyruk(buyruk),
        .sonuc(sonuc),
        .bitti(bitti)
    );

always begin
    clk = ~clk; #5;
end

integer i;

initial begin
    $dumpfile("bib3Advanced.vcd");
    $dumpvars;
    clk = 0; basla = 0; buyruk = 9'b0_0000_0000;
    $readmemb("memory.mem", memory); #10;
    basla = 1'b1;

    for(i = 0; i <= 16; i++) begin
        buyruk = memory[i]; #10;
    end

    basla = 1'b0; #10;
    $finish;
end

endmodule
