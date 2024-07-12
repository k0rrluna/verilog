module bibp #(parameter UZUNLUK = 8)(
    input [UZUNLUK + 2:0] buyruk,
/*    output reg [(UZUNLUK/2) - 1:0] v1,
    output reg [(UZUNLUK/2) - 1:0] v2, */
    output reg [(UZUNLUK/2):0] sonuc
);

/*    localparam halfUZUNLUK = UZUNLUK / 2;
    localparam v1 = buyruk[UZUNLUK - 1 : halfUZUNLUK];
    localparam v2 = buyruk[halfUZUNLUK - 1 : 0]; 
*/

/*assign v1 = buyruk[UZUNLUK - 1 : UZUNLUK/2];
assign v2 = buyruk[UZUNLUK/2  : 0];*/

wire [(UZUNLUK/2) - 1:0] v1,v2;

always@(*) begin
    v1 = buyruk[UZUNLUK - 1 : UZUNLUK/2];
    v2 = buyruk[(UZUNLUK/2) - 1 : 0];
    case(buyruk[UZUNLUK+2:UZUNLUK-1])
        3'b000: sonuc = v1 + v2;
        3'b001: sonuc = v1 - v2;
        3'b010: sonuc = v1 & v2;
        3'b011: sonuc = v1 | v2;
        3'b100: sonuc = v1 ^ v2;
        default: sonuc = v1 + v2;
    endcase
end

endmodule