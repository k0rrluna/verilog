module selector (
    input [3:0] A,
    input [3:0] B,
    input [2:0] opCodeA,
    input [1:0] select,
    input [7:0] ALUY,
    output reg [7:0] Y
);

always @(*) begin
    case (select)
        2'b00: Y = {4'b0000, A};          // Zero-extend A to 8 bits
        2'b01: Y = {4'b0000, B};          // Zero-extend B to 8 bits
        2'b10: Y = {5'b00000, opCodeA};   // Zero-extend opCodeA to 8 bits
        2'b11: Y = ALUY;                  // Directly assign ALUY
        default: Y = 8'b00000000;         // Default case for safety
    endcase
end

endmodule
