module bit3AdderTB();

reg [2:0] A;
reg [2:0] B;
wire [3:0] Sum;

bit3Adder uut (
    .A(A),
    .B(B),
    .Sum(Sum)
);

initial begin
    $dumpfile("bit3Adder.vcd");
    $dumpvars;
    A = 3'b000; B = 3'b000; #10;
    A = 3'b000; B = 3'b001; #10;
    A = 3'b001; B = 3'b001; #10;
    A = 3'b010; B = 3'b010; #10;
    A = 3'b010; B = 3'b011; #10;
    A = 3'b110; B = 3'b010; #10;
    A = 3'b101; B = 3'b100; #10;
    A = 3'b111; B = 3'b100; #10;
    A = 3'b111; B = 3'b110; #10;
    A = 3'b111; B = 3'b111; #10;
    $finish;
end

endmodule
