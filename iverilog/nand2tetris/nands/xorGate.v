module xorGate (
    input A_i,
    input B_i,
    output F_o
);

wire nand1_out, nand2_out, nand3_out;

nand nand1(nand1_out, A_i, B_i);
nand nand2(nand2_out, A_i, nand1_out);
nand nand3(nand3_out, B_i, nand1_out);
nand nand4(F_o, nand3_out, nand2_out);

endmodule
