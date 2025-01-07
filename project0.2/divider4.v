module divider4 (
    input [3:0] Dividend, // 4-bit dividend
    input [1:0] Divisor,  // 2-bit divisor
    output [3:0] Quotient, // 4-bit quotient
    output [2:0] Remainder // 3-bit remainder
);

wire [3:0] Carry;  // Carry wires between PUs
wire [3:0] Y;      // Intermediate PU outputs
wire S0, S1;       // Select signals based on division logic

// Calculate select signals based on carry outputs
assign S0 = Carry[3];  // First select signal
assign S1 = Carry[2];  // Second select signal

// Row 1
PU PU1 (
    .A(Dividend[3]),
    .B(Divisor[1]),
    .Cin(1'b0),  // Initial carry input is 0
    .S(S0),
    .Y(Y[3]),
    .COut(Carry[3])
);

PU PU2 (
    .A(Dividend[2]),
    .B(Divisor[1]),
    .Cin(Carry[3]),
    .S(S0),
    .Y(Y[2]),
    .COut(Carry[2])
);

// Row 2
PU PU3 (
    .A(Dividend[1]),
    .B(Divisor[0]),
    .Cin(Carry[2]),
    .S(S1),
    .Y(Y[1]),
    .COut(Carry[1])
);

PU PU4 (
    .A(Dividend[0]),
    .B(Divisor[0]),
    .Cin(Carry[1]),
    .S(S1),
    .Y(Y[0]),
    .COut(Carry[0])
);

// Assign outputs
assign Quotient = Y;       // Output of the PUs is the quotient
assign Remainder = Carry;  // Final carry values are the remainder

endmodule
