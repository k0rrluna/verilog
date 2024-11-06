module htb ();

reg [7:0] value1;
reg [7:0] value2;
wire [3:0] hammingValue;

hamming uut (
    .value1(value1),
    .value2(value2),
    .hammingValue(hammingValue)
);

initial begin
    $dumpfile("ham.vcd");
    $dumpvars;
    value1 = 8'hB0; value2 = 8'hBF; #10;
    value1 = 8'hBF; value2 = 8'hBF; #10;
    $display(hammingValue);
end
endmodule