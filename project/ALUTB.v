module ALUTB ();

reg [3:0] A, B;
reg CarryIN;
reg opCodeA, opCodeB, opCodeC;
wire [3:0] Y;
wire CarryOUT, overflow;

ALU uut(
    .A(A),
    .B(B),
    .CarryIN(CarryIN),
    .opCodeA(opCodeA),
    .opCodeB(opCodeB),
    .opCodeC(opCodeC),
    .Y(Y),
    .CarryOUT(CarryOUT),
    .overflow(overflow)
);

initial begin
    $dumpfile("ALU.vcd"); // GTKWAVE SIMULTAIN DATA WAVEFORM
    $dumpvars; // ICARUS VERILOG ADD ALL VARIABLES
    A = 4'b0000; B = 4'b0000; CarryIN = 1'b0; opCodeA = 1'b0; opCodeB = 1'b0; opCodeC = 1'b0; #5;
    A = 4'b0000; B = 4'b1111; CarryIN = 1'b0; opCodeA = 1'b0; opCodeB = 1'b0; opCodeC = 1'b0; #5;
    A = 4'b1111; B = 4'b0000; CarryIN = 1'b0; opCodeA = 1'b0; opCodeB = 1'b0; opCodeC = 1'b0; #5;
    A = 4'b1111; B = 4'b1111; CarryIN = 1'b1; opCodeA = 1'b0; opCodeB = 1'b0; opCodeC = 1'b0; #5;
    A = 4'b0111; B = 4'b0111; CarryIN = 1'b1; opCodeA = 1'b0; opCodeB = 1'b0; opCodeC = 1'b0; #5;

    A = 4'b0000; B = 4'b0000; CarryIN = 1'b0; opCodeA = 1'b0; opCodeB = 1'b0; opCodeC = 1'b1; #5;
    A = 4'b0000; B = 4'b1111; CarryIN = 1'b0; opCodeA = 1'b0; opCodeB = 1'b0; opCodeC = 1'b1; #5;
    A = 4'b1111; B = 4'b0000; CarryIN = 1'b0; opCodeA = 1'b0; opCodeB = 1'b0; opCodeC = 1'b1; #5;
    A = 4'b1111; B = 4'b1111; CarryIN = 1'b1; opCodeA = 1'b0; opCodeB = 1'b0; opCodeC = 1'b1; #5;
    A = 4'b0111; B = 4'b1111; CarryIN = 1'b1; opCodeA = 1'b0; opCodeB = 1'b0; opCodeC = 1'b1; #5;
    $finish; //NOT CONTAIN CLK, BUT STILL STOPS CODE
end

endmodule
