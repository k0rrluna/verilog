module knightRider (
    input clk,
    output reg [7:0] leds
);

reg direction;

initial begin
    leds = 8'b0000_0111;
    direction = 1'b0; // 0 left to right
end

always@(posedge clk) begin
if (direction == 0) begin
    if (leds == 8'b1110_0000) begin
        direction <= 1;
        leds <= leds >> 1;
    end else begin
        leds <= leds << 1;
    end
end else begin
        if (leds == 8'b0000_0111) begin
            direction <= 0;
            leds <= leds << 1;
        end else begin
            leds <= leds >> 1;
        end
    end
end

endmodule
