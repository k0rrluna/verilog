module top (
    input clk,               // Clock signal
    input [3:0] switches,    // Slide switches SW3 to SW0
    input rot_a, rot_b,      // Rotary encoder signals
    input rot_center,        // Rotary encoder push button
    output lcd_rs,           // LCD Register Select
    output lcd_rw,           // LCD Read/Write
    output lcd_e,            // LCD Enable
    output [7:4] lcd_d       // LCD Data
);
    // Internal signals
    wire [3:0] A;
    wire [3:0] B;
    wire [2:0] opCode;
    wire [7:0] Y;
    wire [4:0] mem_addr;
    wire [7:0] mem_bus;

    // ALU Instance
    ALU alu_inst (
        .A(A),
        .B(B),
        .CarryIN(1'b0),       // No carry-in for this implementation
        .opCodeA(opCode),
        .Y(Y),
        .CarryOUT(),          // Unused output
        .overflow()           // Unused output
    );

    // Switch and Rotary Controller
    switch_and_rotary switch_rotary_inst (
        .clk(clk),
        .switches(switches),
        .rot_a(rot_a),
        .rot_b(rot_b),
        .rot_center(rot_center),
        .A(A),
        .B(B),
        .opCode(opCode)
    );

    // Character Memory
    char_mem char_mem_inst (
        .addr(mem_addr),
        .bus(mem_bus),
        .A(A),
        .B(B),
        .opCode(opCode),
        .Y(Y)
    );

    // LCD Controller
    lcd lcd_inst (
        .clk(clk),
        .lcd_rs(lcd_rs),
        .lcd_rw(lcd_rw),
        .lcd_e(lcd_e),
        .lcd_d(lcd_d),
        .mem_addr(mem_addr),
        .mem_bus(mem_bus)
    );
endmodule
