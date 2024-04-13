module fullAdder(
  input A,
  input B,
  input Cin,
  output S,
  output Cout  
);

    wire AB;
    wire ABCin, AaB;

    xor (AB, A, B);
    xor (S, AB, Cin);

    and (ABCin, AB, Cin);
    and (AaB, A, B);

    or (Cout, ABCin, AaB);

endmodule