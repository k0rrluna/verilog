module divider4TB;

// Inputs
reg [3:0] Dividend;
reg [1:0] Divisor;

// Outputs
wire [3:0] Quotient;
wire [2:0] Remainder;

// Instantiate the Unit Under Test (UUT)
divider4 uut (
    .Dividend(Dividend),
    .Divisor(Divisor),
    .Quotient(Quotient),
    .Remainder(Remainder)
);

initial begin
    // Monitor output changes
    $monitor("Time=%0t | Dividend=%b | Divisor=%b | Quotient=%b | Remainder=%b", 
              $time, Dividend, Divisor, Quotient, Remainder);
    $dumpfile("divider4.vcd");
    $dumpvars;

    // Test Case 1: 8 / 2
    Dividend = 4'b1000; // 8 in binary
    Divisor  = 2'b10;   // 2 in binary
    #10;

    // Test Case 2: 15 / 3
    Dividend = 4'b1111; // 15 in binary
    Divisor  = 2'b11;   // 3 in binary
    #10;

    // Test Case 3: 7 / 2
    Dividend = 4'b0111; // 7 in binary
    Divisor  = 2'b10;   // 2 in binary
    #10;

    // Test Case 4: 9 / 3
    Dividend = 4'b1001; // 9 in binary
    Divisor  = 2'b11;   // 3 in binary
    #10;

    // Test Case 5: 6 / 1
    Dividend = 4'b0110; // 6 in binary
    Divisor  = 2'b01;   // 1 in binary
    #10;

    // Test Case 6: Division by 0 (should be undefined behavior)
    Dividend = 4'b1010; // 10 in binary
    Divisor  = 2'b00;   // Division by zero
    #10;

    // End simulation
    $finish;
end

endmodule
