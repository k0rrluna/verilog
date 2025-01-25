module sube3soru2TB();

reg [9:0] A;
reg [5:0] B;
wire [4:0] D,l1,l2;

sube3soru2 uut (
    .A(A),
    .B(B),
    .D(D),
    .l1(l1),
    .l2(l2)
);

initial begin
    $dumpfile("sube3soru2.vcd");
    $dumpvars;
    A = 10'b0000011001; B = 6'b000011; #5;
    $finish;
end

endmodule
