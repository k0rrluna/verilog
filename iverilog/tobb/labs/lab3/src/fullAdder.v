module fullAdder(
    input A, B, Z,
    output S, C
);
    wire W0, W1, W2;

halfAdder h0(A, B, W0, W1);
halfAdder h1(W0, Z, S, W2);

or(C, W1, W2);

endmodule