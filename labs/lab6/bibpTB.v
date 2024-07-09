module bibpTB();

parameter UZUNLUK = 8; 
reg [UZUNLUK+2:0] buyruk;
wire [UZUNLUK/2:0] sonuc;

bibp uut(buyruk, sonuc);

initial begin
    $dumpfile("vbibp.vcd");
    $dumpvars;

    buyruk = 11'b000_0101_0101; #10;
    $finish;
end
endmodule