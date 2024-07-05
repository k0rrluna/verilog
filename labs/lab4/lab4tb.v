module lab4tb();

reg [8:0] s1;
wire [3:0] s2;

lab4 uut(
    .signal(s1),
    .S(s2)
);

initial begin
    $dumpfile("lab4v.vcd");
    $dumpvars;

    s1 = 9'b100_101_001; #10;
    s1 = 9'b010_101_001; #10;
    s1 = 9'b001_101_001; #10;
    s1 = 9'b000_101_001; #10;
    $display("Done");
end

endmodule