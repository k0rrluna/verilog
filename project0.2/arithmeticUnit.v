module arithmeticUnit (
    input [1:0] opCode,
    input [3:0] A, B,
    input CarryIN,
    output [3:0] add_Y, sub_Y,
    output CarryOUT,
    output overflow
);

wire [3:0] addY, subY;
wire overflowADD, CarryOUTADD, CarryOUTSUB;

addition a1(.A(A), .B(B), .CarryIN(CarryIN), .Y(addY), .CarryOUT(CarryOUTADD), .overflow(overflowADD));
subtraction s1(.A(A), .B(B), .BorrowIN(CarryIN), .Y(subY), .BorrowOUT(CarryOUTSUB));

and add1 (add_Y[0], opCode[0], addY[0]);
and add2 (add_Y[1], opCode[0], addY[1]);
and add3 (add_Y[2], opCode[0], addY[2]);
and add4 (add_Y[3], opCode[0], addY[3]);

and sub1 (sub_Y[0], opCode[1], subY[0]);
and sub2 (sub_Y[1], opCode[1], subY[1]);
and sub3 (sub_Y[2], opCode[1], subY[2]);
and sub4 (sub_Y[3], opCode[1], subY[3]);

or or1 (CarryOUT, CarryOUTADD, CarryOUTSUB);
or or2 (overflow, overflowADD, CarryOUTSUB);

endmodule
