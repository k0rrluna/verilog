module halfadder (
    input A, B,
    output Sum, CarryOut
);

    xor xor1(Sum, A, B);
    and and1(CarryOut, A, B);

endmodule
