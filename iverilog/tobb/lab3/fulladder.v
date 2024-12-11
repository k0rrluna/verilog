module fulladder (
    input A, B, CarryIn,
    output Sum, CarryOut
);

    wire AandB, AxorB, ABandCIn;

    halfadder h1 (.A(A),.B(B),.Sum(AxorB), .CarryOut(AandB));
    halfadder h2 (.A(AxorB), .B(CarryIn), .Sum(Sum), .CarryOut(ABandCIn));

    or o1 (CarryOut, AandB, ABandCIn);

endmodule
