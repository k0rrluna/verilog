module mult2bit (
    input [1:0] A,
    input [1:0] B,
    output [3:0] C
);

wire c1, c2, c4, c5;

and a0(c1, A[1], B[0]);
and a1(c2, A[0], B[1]);
and a2(c5, A[1], B[1]);
and a3(C[0], A[0], B[0]);

halfAdder h0(c1, c2, C[1], c4);
halfAdder h1(c5, c4, C[3], C[2]);

endmodule