module bttn (
    input [3:0] A, B,
    input [2:0] opCodeA,
    input [1:0] select,
    output [11:0] Y
);

wire wire1, wire2;
wire [11:0] selectY;
ALU a1(.A(A), .B(B), .opCodeA(opCodeA), .CarryIN(1'b0), .bcd(selectY), .CarryOUT(wire1), .overflow(wire2));
selector s1(.A(A), .B(B), .opCodeA(opCodeA), .select(select), .ALUY(selectY), .Y(Y));

endmodule
