module hello_tb();

reg A;
reg B;
wire C, D;

initial begin
	$dumpfile("dmp.vcd");
	$dumpvars;
	A = 0; B = 0; #10;
	A = 0; B = 1; #10;
	A = 1; B = 0; #10;
	A = 1; B = 1; #10;
	$finish;
end

endmodule
