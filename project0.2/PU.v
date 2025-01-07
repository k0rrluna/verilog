module PU (
    input A,        // Dividend bit
    input B,        // Divisor bit
    input Cin,      // Carry input
    input S,        // Select input for the mux
    output Y,       // Output of the PU
    output COut     // Carry output from the full adder
);

wire Sum, notB;

// Invert B for subtraction
not n1 (notB, B);

// Full adder performs A - B + Cin
fulladder f1 (
    .A(A),
    .B(notB),
    .Carry(Cin),
    .Sum(Sum),
    .CarryO(COut)
);

// 2:1 multiplexer to select between A and Sum
mux2 m1 (
    .A0(A),        // Input 0 of mux
    .A1(Sum),      // Input 1 of mux
    .S(S),         // Select line
    .Y(Y)          // Output of the mux
);

endmodule
