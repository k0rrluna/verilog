module selectorTB();

reg [1:0] select;
reg [3:0] A, B;
reg [7:0] ALUY;
reg [2:0] opCodeA;
wire [7:0] Y;

selector uut (
    .select(select),
    .A(A),
    .B(B),
    .opCodeA(opCodeA),
    .ALUY(ALUY),
    .Y(Y)
);

initial begin
    $dumpfile("selector.vcd");
    $dumpvars;
    A = 4'b0001; B = 4'b0010; opCodeA = 3'b111; ALUY = 8'b1111_0000; select = 2'b00; #5;
    A = 4'b0001; B = 4'b0010; opCodeA = 3'b111; ALUY = 8'b1111_0000; select = 2'b01; #5;
    A = 4'b0001; B = 4'b0010; opCodeA = 3'b111; ALUY = 8'b0111_0000; select = 2'b10; #5;
    A = 4'b0001; B = 4'b0010; opCodeA = 3'b111; ALUY = 8'b0111_0000; select = 2'b11; #5;
    $finish;
end

endmodule
