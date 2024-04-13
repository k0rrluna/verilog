module tbAdder3Bit ();

reg r1[2:0], r2[2:0];
wire w1[2:0], w2[2:0];

Adder3Bit uut(
    .num1[2:0](r1[2:0]),
    .num2[2:0](r2[2:0]),
    .sum[2:0](w1[2:0]),
    .Carry[2:0](w2[2:0])
);

initial begin
    $dumpfile("Admp.vcd");
    $dumpvars;
    r1 = 3'b000; r2 = 3'b000; #10
    r1 = 3'b001; r2 = 3'b001; #10
    r1 = 3'b010; r2 = 3'b010; #10
    r1 = 3'b100; r2 = 3'b100; #10
    r1 = 3'b011; r2 = 3'b011; #10
    r1 = 3'b101; r2 = 3'b101; #10
    r1 = 3'b110; r2 = 3'b110; #10
    r1 = 3'b111; r2 = 3'b111; #10
    $display(w1[2:0]);
    $display(w2[2:0]);
end

endmodule