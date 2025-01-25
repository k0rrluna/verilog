module sube3soru2 (
    input [9:0] A,
    input [5:0] B,
    output reg [4:0] D,l1,l2
);

integer tempD, tempO, hunderedR;

always@(A or B) begin
    hunderedR = A[9:2] * 100;
    case(A[1:0])
    2'b01: tempD = 25;
    2'b10: tempD = 50;
    2'b11: tempD = 75;
    default: tempD = 00;
    endcase
    tempO = hunderedR + tempD;
    tempO = tempO / B;
    D = tempO / 100;
    l1 = (tempO%100)/10;
    l2 = tempO%10;
end

endmodule
