module test2Tb();
    reg [3:0] a;
    wire [6:0] b;

test2 uut(a,b);

initial begin

    $dumpfile("test2v.vcd");
    $dumpvars;
    $display("Success!");
     a = 4'd5; #10;
    $finish;
end

endmodule