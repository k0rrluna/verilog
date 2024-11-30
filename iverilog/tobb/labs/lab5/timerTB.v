module timerTB ();
    reg clock;
    reg reset;
    reg gate;
    reg [2:0] counter;
    reg way;
    wire [5:0] count;

timer uut (clock,reset,gate,counter,way,count);

initial begin
    clock = 0;
    forever begin
        #5 clock = ~clock;
    end
end

initial begin
    $dumpfile("lab5t.vcd");
    $dumpvars;

    reset = 1'b0; gate = 1'b1; counter = 3'b010; way = 1'b1;
    #200;
    $finish;
end

endmodule