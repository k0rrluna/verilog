module ALUTB ();

reg [3:0] A, B;
reg CarryIN;
reg [2:0] opCodeA;
wire [3:0] Y;
wire CarryOUT, overflow;

ALU uut(
    .A(A),
    .B(B),
    .CarryIN(CarryIN),
    .opCodeA(opCodeA),
    .Y(Y),
    .CarryOUT(CarryOUT),
    .overflow(overflow)
);

initial begin
    $dumpfile("ALU.vcd"); // GTKWAVE SIMULTAIN DATA WAVEFORM
    $dumpvars; // ICARUS VERILOG ADD ALL VARIABLES
    A = 4'b0000; B = 4'b0000; CarryIN = 1'b0; opCodeA = 3'b000; #5;
    A = 4'b0000; B = 4'b1111; CarryIN = 1'b0; opCodeA = 3'b000; #5;
    A = 4'b1111; B = 4'b0000; CarryIN = 1'b0; opCodeA = 3'b000; #5;
    A = 4'b1111; B = 4'b1111; CarryIN = 1'b1; opCodeA = 3'b000; #5;
    A = 4'b0111; B = 4'b0111; CarryIN = 1'b1; opCodeA = 3'b000; #5;

    A = 4'b0000; B = 4'b0000; CarryIN = 1'b0; opCodeA = 3'b001; #5;
    A = 4'b0000; B = 4'b1111; CarryIN = 1'b0; opCodeA = 3'b001; #5;
    A = 4'b1111; B = 4'b0000; CarryIN = 1'b0; opCodeA = 3'b001; #5;
    A = 4'b1111; B = 4'b1111; CarryIN = 1'b1; opCodeA = 3'b001; #5;
    A = 4'b0111; B = 4'b1111; CarryIN = 1'b1; opCodeA = 3'b001; #5;
    $finish; //NOT CONTAIN CLK, BUT STILL STOPS CODE
end

endmodule
