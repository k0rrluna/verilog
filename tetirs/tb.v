module tb();

reg [2:0] parca;
reg clk = 0;

wire [4:0] yukseklik;
wire [4:0] cevrim;
wire bitti_mi;

tetris uut(
	.parca(parca),
	.clk(clk),
	.yukseklik(yukseklik),
	.cevrim(cevrim),
	.bitti_mi(bitti_mi)
);

always begin
	clk = ~clk; #5;
end

initial begin
	$dumpvars;
	parca = 3'b101; #10;
	parca = 3'b000; #10;
	parca = 3'b101; #10;
	parca = 3'b000; #10;
	parca = 3'b101; #10;
	parca = 3'b000; #10;
	parca = 3'b101; #10;
	parca = 3'b000; #10;
	parca = 3'b101; #10;
	parca = 3'b000; #10;
	parca = 3'b101; #10;
	parca = 3'b000; #10;
	parca = 3'b101; #10;
	parca = 3'b000; #10;
	parca = 3'b101; #10;
	parca = 3'b000; #10;
	parca = 3'b101; #10;
	parca = 3'b000; #10;
	$finish;
end

endmodule
