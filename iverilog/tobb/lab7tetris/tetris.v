module tetris(
	input clk,
	input [2:0] parca,
	output reg [4:0] yukseklik,
	output [4:0] cevrim,
	output bitti_mi
);

reg [4:0] cevrim_r = 0;
reg [4:0] y_0 = 0;
reg [4:0] y_1 = 0;
reg [4:0] y_2 = 0;
assign cevrim = cevrim_r;
assign bitti_mi = cevrim_r == 5'b10000;

always @(posedge clk) begin
	if (cevrim != 5'b10000) begin
		cevrim_r <= cevrim_r + 5'd1;
		y_0 <= y_0 + {4'b0000, parca[0]};
		y_1 <= y_1 + {4'b0000, parca[1]};
		y_2 <= y_2 + {4'b0000, parca[2]};
	end
end

/* always @(posedge bitti_mi) 
	yukseklik <= 	y_0 > y_1 
			? y_0 > y_2 ? y_0 : y_2
			: y_1 > y_2 ? y_1 : y_2;
			*/

always @(posedge bitti_mi) begin
	if (y_0 > y_1) begin
		if (y_0 > y_2) yukseklik <= y_0;
		else yukseklik <= y_2;
	end else if (y_0 > y_1) begin
		if (y_1 > y_2) yukseklik <= y_1;
		else yukseklik <= y_2;
	end
end

endmodule
