module sayac (
    input clk, rst, en,
    input [2:0] sayma_miktari,
    input sayma_yonu,
    output reg [5:0] sayac
);

    reg [1:0] clk_divider;
    reg [2:0] miktar;

    initial begin
        sayac = 6'b0000_00;
        miktar = 3'b001;
        clk_divider = 2'b00;
    end

    always@(*) begin
    miktar = sayma_miktari;
    end

    always@(negedge clk or posedge rst) begin
        if (rst) begin
            sayac <= 6'b0000_00;
            clk_divider <= 2'b00;
        end else begin
            clk_divider <= clk_divider + 1;
        end

        if (clk_divider == 2'b11) begin
            clk_divider <= 2'b00;
            if (en) begin
                if (sayma_miktari) begin
                    if (sayac + miktar >= 6'b1111_11) begin
                        sayac <= 6'b1111_11;
                    end else begin
                        sayac <= sayac + miktar;
                    end
                end else begin
                    if (miktar >= sayac) begin
                        sayac <= 6'b0000_00;
                    end else begin
                        sayac <= sayac - miktar;
                    end
                end
            end
        end
    end
endmodule
