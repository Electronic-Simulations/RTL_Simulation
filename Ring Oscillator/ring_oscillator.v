module ring_oscillator #(
    parameter delay = 10.4167)(
    output wire osc_out
);
    reg n1, n2, n3, n4;
    
    initial begin
        n1 = 0;
    end

    always @(n1) begin
        #delay n2 = ~n1;
    end

    always @(n2) begin
        #delay n3 = ~n2;
    end

    always @(n3) begin
        #delay n4 = ~n3;
    end

    always @(n4) begin
        n1 = n4;
    end

    assign osc_out = n4;
endmodule
