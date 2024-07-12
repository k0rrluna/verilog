module bibpTB();

parameter UZUNLUK = 8; 
reg [UZUNLUK+2:0] buyruk;
wire [UZUNLUK/2:0] sonuc;

bibp #(.UZUNLUK(UZUNLUK)) uut(.buyruk(buyruk), .sonuc(sonuc));

initial begin
    $dumpfile("vbibp.vcd");
    $dumpvars;

    buyruk = 11'b001_0101_0100; #10;
    $finish;
end
endmodule