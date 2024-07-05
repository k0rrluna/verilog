module mtb();

reg[1:0] A, B;
wire [3:0] C;
mult2bit uut(A,B,C);

initial begin
    $dumpfile("3dmp.vcd");
    $dumpvars;

	A = 2'd0; B = 2'd3; #10;
	A = 2'd1; B = 2'd2; #10;
    A = 2'd2; B = 2'd1; #10;
    A = 2'd3; B = 2'd0; #10;

    A = 2'd0; B = 2'd0; #10;
    A = 2'd1; B = 2'd1; #10;
    A = 2'd2; B = 2'd2; #10;
    A = 2'd3; B = 2'd3; #10;

end

endmodule