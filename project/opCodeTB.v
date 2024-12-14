module opCodeTB();

reg A, B, C;
wire [7:0] opCode;

opCode uut (
    .A(A),
    .B(B),
    .C(C),
    .opCode(opCode)
);

initial begin
    $dumpfile("opCode.vcd");
    $dumpvars;
    A = 1'b0; B = 1'b0; C = 1'b0; #3;
    A = 1'b0; B = 1'b0; C = 1'b1; #3;
    A = 1'b0; B = 1'b1; C = 1'b0; #3;
    A = 1'b0; B = 1'b1; C = 1'b1; #3;
    A = 1'b1; B = 1'b0; C = 1'b0; #3;
    A = 1'b1; B = 1'b0; C = 1'b1; #3;
    A = 1'b1; B = 1'b1; C = 1'b0; #3;
    A = 1'b1; B = 1'b1; C = 1'b1; #3;
    $finish;
end

endmodule
