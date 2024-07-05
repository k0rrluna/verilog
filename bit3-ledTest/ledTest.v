module ledTest (
    input[1:0] v1, v2,
    output [5:0] L14
);

wire[3:0] sum;

bit3adder adder(
    .A({1'b0, v1}),
    .B({1'b0, v2}),
    .C(sum)
);


always @(*) begin
    L14 = 6'b000_000;

    if(sum == 4'd0) begin
        L14 = 6'b000_000;
    end
    else if(sum == 4'd1)
        L14 = 6'b000_001;
    else if(sum == 4'd2)
        L14 = 6'b000_011;
    else if(sum == 4'd3)
        L14 = 6'b000_111;
    else if(sum == 4'd4)
        L14 = 6'b001_111;

end


endmodule