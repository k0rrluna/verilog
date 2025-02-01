module paramBib3Advanced #(parameter N = 3) (
    input clk,
    input basla,
    input [(N*2)+2:0] buyruk,
    output reg [N:0] sonuc,
    output reg bitti
);

genvar i;
generate
    for (i = 0; i < N)
endgenerate