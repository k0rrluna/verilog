module seqBlinkTB();

reg clock;
wire [3:0] leds;

seqBlink uut(clock, leds);

initial begin
    clock = 0;
    end

always begin
    clock = ~clock; #5;
    end
initial begin
    $dumpfile("lab5v.vcd");
    $dumpvars;

    #100;
    
    $finish;
end

endmodule