`timescale 1ps/1ps

module tb_detectmealy();
    reg in, clk, reset;
    wire out;

    detector_mealy detector1(
        .in(in),
        .clk(clk),
        .reset(reset),
        .out(out)
    );

    always begin
        #5 clk = ~clk;
    end

    initial begin
        $dumpfile("tb_detector_mealy.vcd");
        $dumpvars(0, tb_detectmealy);
        
        clk = 1'b0;
        reset = 1'b1;
        in = 1'b0;
        
        #10 reset = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 reset = 1'b0;
        #60 $finish;
    end

    

endmodule
