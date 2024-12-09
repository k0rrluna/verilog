module orGate (
    input  A_i,
    input  B_i,
    output F_o
);

   wire nand1_out, nand2_out;

   nand nand1 (nand1_out, A_i, A_i);
   nand nand2 (nand2_out, B_i, B_i);
   nand nand3 (F_o, nand1_out, nand2_out);

endmodule
