module dmuxGateTB();
    reg A_i, S_i;
    wire Y0_o, Y1_o;

dmuxGate uut(
    .A_i(A_i),
    .S_i(S_i),
    .Y0_o(Y0_o),
    .Y1_o(Y1_o)
);

initial begin
    $dumpfile("dmuxGate.vcd");
    $dumpvars;
    A_i = 1'b0; S_i = 1'b0; #10;
    A_i = 1'b1; S_i = 1'b0; #10;

    A_i = 1'b0; S_i = 1'b1; #10;
    A_i = 1'b1; S_i = 1'b1; #10;
    $finish;
end

endmodule
