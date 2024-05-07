module fa(
	input X, Y, Z,
	output S, C
);

wire W0, W1, W2;

ha h0(X, Y, W0, W1);
ha h1(W0, Z, S, W2);
or(C, W1, W2);

endmodule
