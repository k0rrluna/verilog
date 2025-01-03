module aluboard (
    input [3:0] select,
    input [7:0] Y,
    input [3:0] A, B,
    input [2:0] opCodeA,
   output [7:0] sO
);

ALU alu0 ()