module subtractionTB();

reg [3:0] A, B;
wire [4:0] Y;
wire overflow;

subtraction uut (
    .A(A),
    .B(B),
    .Y(Y)
);

    assign overflow = uut.overflow;

initial begin
    $dumpfile("subtraction.vcd");
    $dumpvars;
    A = 4'b0101; B = 4'b0100; #5;
    A = 4'b1000; B = 4'b0111; #5;
    A = 4'b0101; B = 4'b1000; #5;
    $finish;
end

endmodule
