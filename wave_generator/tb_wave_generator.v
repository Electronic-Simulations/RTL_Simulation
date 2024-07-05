`timescale 100us/1ns

module tb_wave_generator;
    reg clk;
    wire [11:0] wave;

    // Instantiate the wave generator
    generator wg (
        .clk(clk),
        .wave(wave)
    );

    // Clock generation: 1 MHz clock (period = 1 us = 5 * 200 ns)
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 2.5 * 200 ns high, 2.5 * 200 ns low -> 1 MHz
    end

    // Monitor the wave output
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_wave_generator);
        #100000 $finish;
    end
endmodule