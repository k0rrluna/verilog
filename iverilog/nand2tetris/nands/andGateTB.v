module andGateTB ();
   reg A_i, B_i;
   wire Y_o;

   andGate uut (
       .A_i(A_i),
       .B_i(B_i),
       .Y_o(Y_o)
   );

   initial begin
      $dumpfile("andGate.vcd");
      $dumpvars;
      A_i = 1'b0;
      B_i = 1'b0;
      #10;
      A_i = 1'b0;
      B_i = 1'b1;
      #10;
      A_i = 1'b1;
      B_i = 1'b0;
      #10;
      A_i = 1'b1;
      B_i = 1'b1;
      #10;
      $finish;
   end

endmodule
