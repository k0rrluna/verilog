// REWRITE !!
module bib3Advanced (
    input clk,
    input basla,
    input [8:0] buyruk,
    output reg [3:0] sonuc,
    output reg bitti
);
    integer i, a, b, c, count;
    always@(posedge clk) begin
        if(basla) begin
            bitti <= 1'b0;
            case (buyruk[8:6])
                default: begin
                    sonuc <= 4'b0000;
                end
                3'b000: begin
                    sonuc <= buyruk[5:3] + buyruk[2:0];
                    bitti <= 1'b1;
                end
                3'b001: begin
                    sonuc <= buyruk[5:3] - buyruk[2:0];
                    bitti <= 1'b1;
                end
                3'b010: begin
                    sonuc <= buyruk[5:3] & buyruk[2:0];
                    bitti <= 1'b1;
                end
                3'b011: begin
                    sonuc <= buyruk[5:3] | buyruk[2:0];
                    bitti <= 1'b1;
                end
                3'b100: begin
                    for (i = 0; i <= 4; i++) begin
                        if (buyruk[i] == buyruk[i+1])
                            sonuc <= 4'b1111;
                        else
                            sonuc <= 4'b0000;
                    end
                    bitti <= 1'b1;
                end
                3'b101: begin
                    for (a = 0; a <= 5; a++) begin
                        if (buyruk[a] == 1)
                            sonuc <= 4'b1111;
                        else
                            sonuc <= 4'b0000;
                    end
                    bitti <= 1'b1;
                end
                3'b110: begin
                    count = 0;
                    for (b = 0; b <= 5; b++) begin
                        if (buyruk[b] == 1)
                            count = count + 1;
                    end
                    if (count % 2 == 0)
                        sonuc <= 4'b1111;
                    else
                        sonuc <= 4'b0000;
                    bitti <= 1'b1;
                end
                3'b111: begin
                    count = 0;
                    for (c = 0; c <= 5; c++)
                        if (buyruk[c] == 1)
                            count = count + 1;
                    if (count % 2 == 0)
                        sonuc <= 4'b0000;
                    else
                        sonuc <= 4'b1111;
                    bitti <= 1'b1;
                end
            endcase
        end
        else begin
            bitti <= 1'b0;
            sonuc <= 4'b0000;
        end
    end
endmodule
