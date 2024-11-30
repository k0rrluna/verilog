module seqBlink (
    input clock,
    output reg [3:0] led
);

reg [2:0] fsm = 0;

reg [31:0] clkcnt = 0;
reg newclk = 0;

always@(posedge clock) begin
    clkcnt <= clkcnt + 1'b1;
    if (clkcnt >  9_000_000) begin
        clkcnt <= 0;
        newclk <= ~newclk;
    end
end

always@(posedge newclk) begin
    if (fsm == 3'd7) begin
        fsm <= 0;
    end else begin
        fsm <= fsm + 1;
    end
    case (fsm) 
        3'b000 : led <= 4'b0111;
        3'b001 : led <= 4'b1011;
        3'b010 : led <= 4'b1101;
        3'b011 : led <= 4'b1110;
        3'b100 : led <= 4'b1101;
        3'b101 : led <= 4'b1011;
        3'b110 : led <= 4'b0111;
        default: led <= 4'b0000;
    endcase
end
endmodule
