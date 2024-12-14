module overflowDetect (
    input [1:0] opCode,
    input [3:0] A, B,
    input [4:0] Y,
    output overflowDetect
);

wire opC,AandSum;
wire sign1, sign2, sign3, sign4;
wire detect1, detect2;

or o1 (opC, opCode[0], opCode[1]);
xor xo1 (AandSum, Y[4], A[3]);

and a1 (sign1, A[3], B[3]);
or o2 (sign2, opCode[0], sign1);

xor a2 (sign3, A[3], B[3]);
or o3 (sign4, opCode[1], sign3);

or o4 (detect1, sign2, sign4);
and a3 (detect2, AandSum, opC);
and a4 (overflowDetect, detect1, detect2);

endmodule
