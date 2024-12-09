module notGateTB;

    reg  A_i;
    wire B_o;

    notGate uut (
        .A_i(A_i),
        .B_o(B_o)
    );

    initial begin
        $dumpfile("notGate.vcd");
        $dumpvars;
        A_i = 1'b0;
        #10;
        A_i = 1'b1;
        #10;
        $finish;
    end
endmodule
