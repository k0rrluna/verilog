module fulladder (
    input  A,
    input  B,
    input  Cin,
    output S,
    output Cout
);
  wire AxB, AnB1, AnB2;


  halfadder h1 (A,B,AxB,AnB2);

  halfadder h2 (AxB,Cin,S,AnB1);

  or o1 (Cout,AnB1,AnB2);
endmodule
