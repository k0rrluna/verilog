module fulladder(
    input A, B, C0,
    output S, C
);

wire S1,C1,C2;

halfadder ha1(A, B, S1, C1);
halfadder ha2(S1, C0, S, C2);

or (C, C2, C1);

endmodule