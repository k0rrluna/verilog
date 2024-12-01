module Fulladder (
    input  A,
    input  B,
    input  Cin,
    output S,
    output Cout
);
  wire AxB, AnB1, AnB2;


  halfadder h1 (
      .A(A),
      .B(B),
      .Sum(AxB),
      .Carry(AnB2)
  );

  halfadder h2 (
      .A(AxB),
      .B(Cin),
      .Sum(S),
      .Carry(AnB1)
  );

  or o1 (.Y(Cout), .A(AnB1), .B(AnB2));
endmodule
