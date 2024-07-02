`timescale 1ns / 1ps

module tb_ring_oscillator;
    wire osc_out;
 
    ring_oscillator uut (
        .osc_out(osc_out)
    );
    
    initial begin
        $monitor("Time = %0t, osc_out = %b", $time, osc_out);

        $dumpfile("ring_oscillator.vcd");
        $dumpvars(0, tb_ring_oscillator);

        #200;
        $finish;
    end
endmodule
