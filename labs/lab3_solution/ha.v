module ha(
	input X, Y,
	output S, C
);

xor(S, X, Y);
and(C, X, Y);

endmodule
