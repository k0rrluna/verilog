module muxGate (
    input A_i, B_i, S_i,
    output Y_o
);

    wire notS,nand2_out,nand3_out;

    nand nand1(notS, S_i, S_i);

    nand nand2(nand2_out, A_i, S_i);
    nand nand3(nand3_out, B_i, notS);

    nand nand4(Y_o, nand2_out, nand3_out);

endmodule
