module mux2 (
    input A0, A1,
    input S,
    output Y
);

wire notS, and1, and2;

not n1 (notS, S);

and an1 (and1, A1, S);
and an2 (and2, notS, A0);

or o1 (Y, and1, and2);

endmodule
