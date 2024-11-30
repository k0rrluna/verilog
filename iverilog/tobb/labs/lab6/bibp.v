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

// wire [(UZUNLUK/2) - 1:0] v1,v2;

// !!! LOCALPARAM IVERILOG DA PROBLEMLI OLDUGU ICIN KULLANILMIYOR !!!

always@(*) begin
    $display("%d", buyruk[UZUNLUK - 1 : UZUNLUK/2]);
    $display("%d", buyruk[(UZUNLUK/2) - 1 : 0]);
    $display("%d", buyruk[UZUNLUK - 1 : UZUNLUK/2] - buyruk[(UZUNLUK/2) - 1 : 0]);
    case(buyruk[UZUNLUK+2:UZUNLUK])
        3'b000: sonuc = buyruk[(UZUNLUK - 1) : UZUNLUK/2] +  buyruk[(UZUNLUK/2) - 1 : 0];
        3'b001: sonuc = buyruk[(UZUNLUK - 1) : UZUNLUK/2] - buyruk[(UZUNLUK/2) - 1 : 0]; // SUBTRACTION ?????? CHECK!!!
        3'b010: sonuc = {1'b0, buyruk[UZUNLUK - 1 : UZUNLUK/2] & buyruk[(UZUNLUK/2) - 1 : 0]};
        3'b011: sonuc = {1'b0, buyruk[UZUNLUK - 1 : UZUNLUK/2] | buyruk[(UZUNLUK/2) - 1 : 0]};
        3'b100: sonuc = {1'b0, buyruk[UZUNLUK - 1 : UZUNLUK/2] ^ buyruk[(UZUNLUK/2) - 1 : 0]};
        default: sonuc = -1;
    endcase
    $display("%b", sonuc);
end

endmodule