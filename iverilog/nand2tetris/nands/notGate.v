module notGate (input A,
                output B);
    
    nand nand1 (B, A, A);
endmodule
