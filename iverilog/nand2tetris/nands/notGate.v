module notGate (
    input  A_i,
    output B_o
);

   nand nand1 (B_o, A_i, A_i);
endmodule
