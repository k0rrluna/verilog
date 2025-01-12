module switchRotary(
    input clk,                    // Clock signal
    input [3:0] switches,         // Slide switches SW3 to SW0
    input rot_a, rot_b,           // Rotary encoder signals
    input rot_center,             // Rotary encoder push button
    output reg [3:0] A = 0,       // Value of A
    output reg [3:0] B = 0,       // Value of B
    output reg [2:0] opCode = 0   // Value of opCode
);
    // Internal signals for rotary encoder
    reg [1:0] rot_state = 2'b00;
    reg [1:0] rot_prev = 2'b00;

    // Selected register for modification
    reg [1:0] selected = 2'b00;  // 0 = A, 1 = B, 2 = opCode

    // Debouncing for rotary center button
    reg [15:0] debounce_counter = 0;
    reg debounce_pressed = 0;

    // Update selected register on rotary center press
    always @(posedge clk) begin
        if (rot_center && !debounce_pressed) begin
            debounce_pressed <= 1;
            selected <= selected + 1;
        end
        if (!rot_center) begin
            debounce_pressed <= 0;
        end
    end

    // Handle rotary encoder signals
    always @(posedge clk) begin
        rot_prev <= rot_state;
        rot_state <= {rot_a, rot_b};

        // Detect clockwise or counterclockwise rotation
        if (rot_prev == 2'b01 && rot_state == 2'b11) begin
            case (selected)
                2'b00: if (A < 15) A <= A + 1;
                2'b01: if (B < 15) B <= B + 1;
                2'b10: if (opCode < 7) opCode <= opCode + 1;
            endcase
        end else if (rot_prev == 2'b11 && rot_state == 2'b01) begin
            case (selected)
                2'b00: if (A > 0) A <= A - 1;
                2'b01: if (B > 0) B <= B - 1;
                2'b10: if (opCode > 0) opCode <= opCode - 1;
            endcase
        end
    end

    // Update A, B, or opCode based on switches
    always @(posedge clk) begin
        case (switches)
            4'b0001: A <= switches[3:0];
            4'b0010: B <= switches[3:0];
            4'b1000: opCode <= switches[2:0];
        endcase
    end
endmodule
