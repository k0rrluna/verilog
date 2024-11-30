module tb();

reg [2:0] A, B;
wire [3:0] C;
adder3bit uut(A, B, C);

initial begin
	$dumpfile("dmp.vcd");
	$dumpvars;

	A = 3'd0; B = 3'd7; #10;
	A = 3'd1; B = 3'd6; #10;
	A = 3'd2; B = 3'd5; #10;
	A = 3'd3; B = 3'd4; #10;
	A = 3'd4; B = 3'd3; #10;
	A = 3'd5; B = 3'd2; #10;
	A = 3'd6; B = 3'd1; #10;
	A = 3'd7; B = 3'd0; #10;

	A = 3'd0; B = 3'd0; #10;
	A = 3'd1; B = 3'd0; #10;
	A = 3'd2; B = 3'd0; #10;
	A = 3'd3; B = 3'd0; #10;
	A = 3'd4; B = 3'd0; #10;
	A = 3'd5; B = 3'd0; #10;
	A = 3'd6; B = 3'd0; #10;
	A = 3'd7; B = 3'd0; #10;

end

endmodule
