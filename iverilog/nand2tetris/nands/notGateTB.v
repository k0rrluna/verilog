module notGateTB ();

   reg  A;
   wire B;

   notGate uut (
       .A(A),
       .B(B)
   );

   initial begin
      $dumpfile("notGate.vcd");
      $dumpvars;
      A = 1'b0;
      #10;
      A = 1'b1;
      #10;
      $finish;
   end
endmodule
