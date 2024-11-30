module hello(
	input wire A, B,
	output wire C, D
);

and(D, A, B);
xor(C, A, B);

endmodule
