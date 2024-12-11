module fulladderTB();

reg A, B, CarryIn;
wire Sum, CarryOut;

fulladder uut(
    .A(A),
    .B(B),
    .CarryIn(CarryIn),
    .Sum(Sum),
    .CarryOut(CarryOut)
);

initial begin
    $dumpfile("fulladder.vcd");
    $dumpvars;
    A = 1'b0; B = 1'b0; CarryIn = 1'b0; #10;
    A = 1'b0; B = 1'b0; CarryIn = 1'b1; #10;
    A = 1'b0; B = 1'b1; CarryIn = 1'b0; #10;
    A = 1'b0; B = 1'b1; CarryIn = 1'b1; #10;
    A = 1'b1; B = 1'b0; CarryIn = 1'b0; #10;
    A = 1'b1; B = 1'b0; CarryIn = 1'b1; #10;
    A = 1'b1; B = 1'b1; CarryIn = 1'b0; #10;
    A = 1'b1; B = 1'b1; CarryIn = 1'b1; #10;
    $finish;
end

endmodule
