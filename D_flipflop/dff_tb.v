`timescale 1ns/1ps

module dff_tb;
    reg D;
    reg reset;
    reg clk;
    wire q;
    wire q_bar;

    // Instantiate the D flip-flop module
    dff uut (
        .D(D),
        .reset(reset),
        .clk(clk),
        .q(q),
        .q_bar(q_bar)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #10 clk = #1 ~clk; // 10ns clock period
    end

    // Stimulus generation
    initial begin
        // Initialize signals
        D = #100 0;
        reset = #100 0;

        // Apply reset
        reset = #100 1;
        #1000;
        reset = #100 0;

        // Apply test stimulus
        #1000 D = #100 1;
        #1000 D = #100 0;
        #1000 D = #100 1;
        #2000 D = #100 0;
        
        // Apply reset again
        reset = #100 1;
        #1000;
        reset = #100 0;

        // Continue stimulus
        #1000 D = #100 1;
        #1000 D = #100 0;
        #2000;

        // Finish simulation
        $finish;
    end

    // Dump waveform
    initial begin
        $dumpfile("dff_tb.vcd");
        $dumpvars(0, dff_tb);
    end

endmodule
