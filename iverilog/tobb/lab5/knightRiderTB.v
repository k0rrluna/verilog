module knightRiderTB();

reg clk;
wire [7:0] leds;

knightRider uut (
    .clk(clk),
    .leds(leds)
);

always begin
    clk = ~clk; #2;
end

initial begin
    $dumpfile("knightRider.vcd");
    $dumpvars;
    clk = 0; #50;
    $finish;
end

endmodule
