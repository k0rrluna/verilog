module subtraction (
    input [3:0] A, B,
    input CarryIN,
    output [3:0] Y,
    output CarryOUT,
    output overflow
);

wire [3:0] xB;
wire [3:0] notB;
wire [3:0] Y1;

not n1 (xB[0], B[0]);
not n2 (xB[1], B[1]);
not n3 (xB[2], B[2]);
not n4 (xB[3], B[3]);

addition a1 (.A(xB), .B(4'b0001), .CarryIN(1'b0), .Y(notB));
addition a2 (.A(A), .B(notB[3:0]), .CarryIN(CarryIN), .Y(Y1), .CarryOUT(CarryOUT));
overflowDetect od1 (.opCode(2'b10), .A(A), .B(B), .Y(Y1), .CarryOUT(CarryOUT), .overflowDetect(overflow));

or o1 (Y[0], Y1[0], 1'b0);
or o2 (Y[1], Y1[1], 1'b0);
or o3 (Y[2], Y1[2], 1'b0);
or o4 (Y[3], Y1[3], 1'b0);

endmodule
