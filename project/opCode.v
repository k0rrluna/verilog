module opCode (
    input A, B, C,
    output [7:0] opCode
);
    wire and1, and2, and3, and4, notA, notB, notC;

    not n1(notA, A);
    not n2(notB, B);
    not n3(notC, C);

    and a01(and1, A, B);
    and a02(and2, notA, B);
    and a03(and3, A, notB);
    and a04(and4, notA, notB);

    and a1(opCode[0], and4, notC);
    and a2(opCode[1], and4, C);
    and a3(opCode[2], and2, notC);
    and a4(opCode[3], and2, C);
    and a5(opCode[4], and3, notC);
    and a6(opCode[5], and3, C);
    and a7(opCode[6], and1, notC);
    and a8(opCode[7], and1, C);

endmodule
