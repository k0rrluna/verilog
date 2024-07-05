module lab4(
    input [8:0] signal,
    output reg [3:0] S
);

always@(*) begin
    S = 4'b0000;
    if (signal[8] == 1) begin //First most significant bit -> sum
        S = signal[5:3] + signal[2:0]; 
    end
    else if (signal[7] == 1) begin
        S = signal[5:3] - signal [2:0];
end
    else if (signal[6] == 1) begin
        S = signal[5:3] & signal [2:0];
    end
    else if (signal[6] == 0) begin
        S = signal[5:3] | signal [2:0];
    end

end
endmodule