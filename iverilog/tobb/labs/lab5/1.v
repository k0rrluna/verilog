module timer (
    input clock,
    input reset,
    input gate,
    input [2:0] counter,
    input way,
    output reg [5:0] count
);
reg [5:0] countReg;


always@(posedge clock or posedge reset) begin
    if (reset) begin
        countReg <= 6'd0;
    end
    else if (gate) begin
        if (way && (countReg != 6'b111_111)) begin
            countReg <= countReg + counter;
        end
        else if (!way && (countReg != 6'b000_000)) begin
            countReg <= countReg - counter;
            end
    end
end

assign count = countReg;

endmodule