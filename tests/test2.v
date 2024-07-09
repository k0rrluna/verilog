module test2 (
    input [3:0] a,
    output [6:0] b
);

assign b = (1 << (a + 1)) - 2;

endmodule 