module tetris (
    input [2:0] parca,
    input clk,
    output reg [3:0] yukseklik,
    output reg bitti_mi,
    output reg [3:0] cevrim
);

    reg [3:0] yukseklik1, yukseklik2, yukseklik3;
    initial begin
        cevrim = 4'd0;
        bitti_mi = 1'b0;
        yukseklik = 4'b0;
        yukseklik1 = 4'd0;
        yukseklik2 = 4'd0;
        yukseklik3 = 4'd0;
    end


    always@(posedge clk) begin
        if (!bitti_mi) begin
            if (parca[0]) begin
            yukseklik1 <= yukseklik1 + 1;
            end if (parca[1]) begin
                yukseklik2 <= yukseklik2 + 1;
            end if (parca[2]) begin
                yukseklik3 <= yukseklik3 + 1;
            end
         cevrim <= cevrim + 1;

         if (cevrim == 4'd15) begin
            bitti_mi <= 1'b1;
         end
    end
end

always@(posedge clk) begin //comperator
    if (bitti_mi) begin
        if (yukseklik1 >= yukseklik2 && yukseklik1 >= yukseklik3) begin
            yukseklik <= yukseklik1;
        end else if (yukseklik2 >= yukseklik1 && yukseklik2 >= yukseklik3) begin
            yukseklik <= yukseklik2;
        end else begin
            yukseklik <= yukseklik3;
        end
    end
end

endmodule
