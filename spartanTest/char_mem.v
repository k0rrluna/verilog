module char_mem (
    input  [4:0] addr,
    output [7:0] bus,
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] opCode,
    input  [7:0] Y
);
    parameter LINES = 2;
    parameter CHARS_PER_LINE = 16;
    parameter BITS_PER_CHAR = 8;
    parameter STR_SIZE = LINES * CHARS_PER_LINE * BITS_PER_CHAR;

    // Map the data into strings for display
    wire [127:0] line1 = { "A:", nibble_to_ascii(A), " B:", nibble_to_ascii(B), "  " };
    wire [127:0] line2 = { "op:", nibble_to_ascii({1'b0, opCode}), " Y:", byte_to_ascii(Y) };

    // Combine the two lines
    wire [0:STR_SIZE-1] display_data = { line1, line2 };

    // Address selection for the LCD
    assign bus = display_data[{addr[4:0], 3'b000}+:8];

    // Converts a 4-bit nibble to two ASCII characters
    function [15:0] nibble_to_ascii;
        input [3:0] nibble;
        begin
            nibble_to_ascii[15:8] = (nibble[3:0] >= 4'd10) ? (nibble[3:0] - 4'd10 + "A") : (nibble[3:0] + "0");
            nibble_to_ascii[7:0]  = " ";
        end
    endfunction

    // Converts an 8-bit byte to two ASCII characters
    function [15:0] byte_to_ascii;
        input [7:0] byte;
        begin
            byte_to_ascii[15:8] = ((byte >> 4) >= 4'd10) ? ((byte >> 4) - 4'd10 + "A") : ((byte >> 4) + "0");
            byte_to_ascii[7:0]  = ((byte & 4'hF) >= 4'd10) ? ((byte & 4'hF) - 4'd10 + "A") : ((byte & 4'hF) + "0");
        end
    endfunction
endmodule
