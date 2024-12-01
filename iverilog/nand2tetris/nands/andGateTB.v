module andGateTB ();
   reg A, B;
   wire Y;

   andGate uut (
       .A(A),
       .B(B),
       .Y(Y)
   );

   initial begin
      $dumpfile("andGate.vcd");
      $dumpvars;
      A = 1'b0;
      B = 1'b0;
      #10;
      A = 1'b0;
      B = 1'b1;
      #10;
      A = 1'b1;
      B = 1'b0;
      #10;
      A = 1'b1;
      B = 1'b1;
      #10;
      $finish;
   end

endmodule
