module lab2(
     input A,
     input B,
     input C,
     input D,
     output F
     );

     wire An, Bn, Cn;
     wire AnBC, AD, CnD;

     not n1 (An, A);
     and (AnBC, An, B, C);

     not (Bn, B);
     and (AD, A, D);

     not (Cn, C);
     and (CnD, Cn, D);

     or (F, AnBC, Bn, AD, CnD);


endmodule