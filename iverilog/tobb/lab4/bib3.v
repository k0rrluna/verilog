module  bib3 (
    input [8:0] buyruk,
    output reg [3:0] sonuc
);
    integer i, a, b, c, count;
    always@(buyruk) begin
        case (buyruk[8:6])
        default: sonuc = 4'b0000;
        3'b000: sonuc = buyruk[5:3] + buyruk[2:0];
        3'b001: sonuc = buyruk[5:3] - buyruk[2:0];
        3'b010: sonuc = buyruk[5:3] & buyruk[2:0];
        3'b011: sonuc = buyruk[5:3] | buyruk[2:0];
        3'b100: begin
            for (i = 0; i <= 4; i++)
                if (buyruk[i] == buyruk[i+1])
                    sonuc = 4'b1111;
                else
                    sonuc = 4'b0000;
        end
        3'b101: for (a = 0; a <= 5; a++) begin
                            if (buyruk[a] == 1)
                                sonuc = 4'b1111;
                            else
                            sonuc = 4'b0000;
        end
        3'b110: begin
             count = 0;
            for (b = 0; b <= 5; b++) begin
                if (buyruk[b] == 1)
                    count = count + 1;
            end
            if (count % 2 == 0)
                sonuc = 4'b1111;
            else
                sonuc = 4'b0000;
        end
        3'b111: begin
             count = 0;
            for (c = 0; c <= 5; c++)
                if (buyruk[c] == 1)
                count++;
                if (count % 2 == 0)
                    sonuc = 4'b0000;
                else
                    sonuc = 4'b1111;
        end
        endcase
    end
endmodule
