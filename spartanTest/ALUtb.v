module ALUtb ();

    reg [3:0] A, B;
    reg CarryIN;
    reg [2:0] opCodeA;
    wire [11:0] bcd;
    wire CarryOUT, overflow;

ALU uut (
    .A(A),
    .B(B),
    .CarryIN(CarryIN),
    .opCodeA(opCodeA),
    .bcd(bcd),
    .CarryOUT(CarryOUT),
    .overflow(overflow)
);

initial begin
    $dumpfile("ALU.vcd");
    $dumpvars;
    A = 4'b1100; B = 4'b1100; CarryIN = 1'b0; opCodeA = 3'b010; #5;
    $finish;
end

endmodule
