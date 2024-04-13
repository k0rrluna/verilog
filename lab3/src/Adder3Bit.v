module Adder3Bit (
    input [2:0] num1,
    input [2:0] num2,
    output [2:0] Carry,
    output [2:0] sum
);

    xor (sum[0], num1[0], num2[0]);
    and (Carry[0], num1[0], num2[0]);

    wire num12[1:0];
    wire num12Carry[1:0], num1a2[1:0];

    xor (num12[0], num1[1], num2[1]);
    xor (sum[1], num12[0], Carry[0]);

    and (num12Carry[0], num12[0], Carry[0]);
    and (num1a2[0], num1[1], num2[1]);

    or (Carry[1], num12Carry[0], num1a2[0]);

    xor (num12[1], num1[2], num2[2]);
    xor (sum[2], num12[1], Carry[1]);

    and (num12Carry[1], num12[1], Carry[1]);
    and (num1a2[1], num1[2], num2[2]);

    or (Carry[2], num12Carry[1], num1a2[1]);

endmodule