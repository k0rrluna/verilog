module BitM(
  input A,
  input B,
  output AlB,
  output AeB,
  output AgB  
);

    wire An, Bn;

    not n1 (An, A);
    not n2 (Bn, B);

    and a1 (AlB, An, B);
    and a2 (AgB, Bn, A);

    nor nor1 (AeB, AlB, AgB);

endmodule