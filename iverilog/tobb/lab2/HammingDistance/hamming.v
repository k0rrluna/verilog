module hamming (
    input[7:0] value1,
    input[7:0] value2,
    output reg[3:0] hammingValue
);

integer i = 0;

always @(*) begin
    hammingValue = 0;
    for(i = 0; i < 8; i = i+1) begin
        if (value1[i] != value2[i]) begin
            hammingValue = hammingValue + 1;
        end
    end
end
endmodule