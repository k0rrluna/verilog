module subtraction (
    input [3:0] A, B,
    input BorrowIN,
    output [3:0] Y,
    output BorrowOut,
    output overflow
);

wire [3:0] tempB;

// Full Subtraction logic for each bit (borrow-in for each subsequent bit)
fullsubtraction f0 (.A(A[0]), .B(B[0]), .BorrowIN(BorrowIN), .Difference(Y[0]), .BorrowOut(tempB[0]));
fullsubtraction f1 (.A(A[1]), .B(B[1]), .BorrowIN(tempB[0]), .Difference(Y[1]), .BorrowOut(tempB[1]));
fullsubtraction f2 (.A(A[2]), .B(B[2]), .BorrowIN(tempB[1]), .Difference(Y[2]), .BorrowOut(tempB[2]));
fullsubtraction f3 (.A(A[3]), .B(B[3]), .BorrowIN(tempB[2]), .Difference(Y[3]), .BorrowOut(BorrowOut));

// Overflow detection logic as provided
overflowDetect od1 (
    .opCode(2'b10), 
    .A(A), 
    .B(B), 
    .Y(Y), 
    .CarryOUT(BorrowOut), 
    .overflowDetect(overflow)
);

endmodule
