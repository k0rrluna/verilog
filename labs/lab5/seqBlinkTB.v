module seqBlinkTB();

reg clock;
wire [3:0] leds;

seqBlink uut(clock, leds);

initial begin
    clock = 0;
    forever begin
        #5 clock = ~clock;
    end
end

initial begin
    $dumpfile("lab5v.vcd");
    $dumpvars;

    #100;
    
    $finish;
end

endmodule