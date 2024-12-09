module muxGateTB();
    reg A_i, B_i, S_i;
    wire Y_o;

muxGate uut(
    .A_i(A_i),
    .B_i(B_i),
    .S_i(S_i),
    .Y_o(Y_o)
);

initial begin
    $dumpfile("muxGate.vcd");
    $dumpvars;
    A_i = 1'b0; B_i = 1'b1; S_i = 1'b0; #10;
    A_i = 1'b1; B_i = 1'b0; S_i = 1'b0; #10;
    A_i = 1'b0; B_i = 1'b1; S_i = 1'b1; #10;
    A_i = 1'b0; B_i = 1'b1; S_i = 1'b1; #10;
    $finish;
end

endmodule
