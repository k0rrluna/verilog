module andSixTGate(
    input [15:0] A_i,
    input [15:0] B_i,
    output [15:0] Y_o
);

andGate a0(A_i[0], B_i[0], Y_o[0]);
andGate a1(A_i[1], B_i[1], Y_o[1]);
andGate a2(A_i[2], B_i[2], Y_o[2]);
andGate a3(A_i[3], B_i[3], Y_o[3]);
andGate a4(A_i[4], B_i[4], Y_o[4]);
andGate a5(A_i[5], B_i[5], Y_o[5]);
andGate a6(A_i[6], B_i[6], Y_o[6]);
andGate a7(A_i[7], B_i[7], Y_o[7]);
andGate a8(A_i[8], B_i[8], Y_o[8]);
andGate a9(A_i[9], B_i[9], Y_o[9]);
andGate a10(A_i[10], B_i[10], Y_o[10]);
andGate a11(A_i[11], B_i[11], Y_o[11]);
andGate a12(A_i[12], B_i[12], Y_o[12]);
andGate a13(A_i[13], B_i[13], Y_o[13]);
andGate a14(A_i[14], B_i[14], Y_o[14]);
andGate a15(A_i[15], B_i[15], Y_o[15]);

endmodule
