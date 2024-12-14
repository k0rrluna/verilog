module addition (
    input [3:0] A, B,
    output [4:0] Y
);

wire [3:0] Carry4;

halfadder h1(.A(A[0]), .B(B[0]), .Sum(Y[0]), .Carry(Carry4[0]));
fulladder f1(.A(A[1]), .B(B[1]), .Carry(Carry4[0]), .Sum(Y[1]), .CarryO(Carry4[1]));
fulladder f2(.A(A[2]), .B(B[2]), .Carry(Carry4[1]), .Sum(Y[2]), .CarryO(Carry4[2]));
fulladder f3(.A(A[3]), .B(B[3]), .Carry(Carry4[2]), .Sum(Y[3]), .CarryO(Y[4]));

endmodule
