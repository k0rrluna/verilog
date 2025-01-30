module bibp #(parameter N = 3) (
    input [(N*2)+2:0] buyruk,
    output reg [N:0] sonuc
);
    integer i, a, b, c, count;

    always @(buyruk) begin
        case (buyruk[(N*2)+2:N*2])
            default: sonuc = {(N+1){1'b0}};

            3'b000: sonuc = buyruk[(N*2)-1:(N*2)-3] + buyruk[(N*2)-4:0];
            3'b001: sonuc = buyruk[(N*2)-1:(N*2)-3] - buyruk[(N*2)-4:0];
            3'b010: sonuc = buyruk[(N*2)-1:(N*2)-3] & buyruk[(N*2)-4:0];
            3'b011: sonuc = buyruk[(N*2)-1:(N*2)-3] | buyruk[(N*2)-4:0];

            3'b100: begin
            for (i = 0; i <= (N*2)-2; i++)
                if (buyruk[i] == buyruk[i+1])
                    sonuc = {(N+1){1'b1}};
                else
                    sonuc = {(N+1){1'b0}};
            end
            3'b101: begin
                sonuc = {(N+1){1'b0}};
                for (a = 0; a < (N*2); a++) begin
                    if (buyruk[a] == 1)
                        sonuc =  {(N+1){1'b1}};
                end
            end

            3'b110: begin
                count = 0;
                for (b = 0; b < (N*2); b++) begin
                    if (buyruk[b] == 1)
                        count = count + 1;
                end
                if (count % 2 == 0)
                    sonuc = {(N+1){1'b1}};
                else
                    sonuc = {(N+1){1'b0}};
            end

            3'b111: begin
                count = 0;
                for (c = 0; c < (N*2); c++) begin
                    if (buyruk[c] == 1)
                        count = count + 1;
                end
                if (count % 2 == 0)
                    sonuc = {(N+1){1'b0}};
                else
                    sonuc = {(N+1){1'b1}};
            end
        endcase
    end
endmodule
