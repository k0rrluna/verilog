module test(
    input A,
    input B,
    output LED1,
    output LED2,
    output LED3
);


assign LED1 = A;
assign LED2 = B;
assign LED3 = A | B;

/*
buf(LED1, A);
buf(LED2, B);
and(LED3, A, B);
*/

endmodule