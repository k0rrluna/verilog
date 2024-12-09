module dmuxGate(
    input A_i, S_i,
    output Y0_o, Y1_o
);

wire notS, nand2_out, nand4_out;

nand nand1(notS, S_i, S_i);

nand nand2(nand2_out, notS, A_i);
nand nand3(Y0_o, nand2_out, nand2_out);

nand nand4(nand4_out, S_i, A_i);
nand nand5(Y1_o, nand4_out, nand4_out);

endmodule
