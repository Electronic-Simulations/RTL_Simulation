module detector_mealy (in, clk, reset, out);
    input in, clk, reset;
    output reg out;

    reg [1:0] state;  // 2-bit state
    parameter S_default = 2'b00, S0 = 2'b01, S01 = 2'b10, S011 = 2'b11;

    initial begin
        state = S_default;
        out = 1'b0;
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= S_default;
            out <= 1'b0;
        end else begin
            case (state)
                S_default: begin
                    if (!in) begin
                        state <= S0;
                        out <= 1'b0;
                    end else begin
                        state <= S_default;
                        out <= 1'b0;
                    end
                end
                S0: begin
                    if (in) begin
                        state <= S01;
                        out <= 1'b0;
                    end else begin
                        state <= S0;
                        out <= 1'b0;
                    end
                end
                S01: begin
                    if (in) begin
                        state <= S011;
                        out <= 1'b0;
                    end else begin
                        state <= S0;
                        out <= 1'b0;
                    end
                end
                S011: begin
                    if (in) begin
                        state <= S_default;
                        out <= 1'b0;
                    end else begin
                        state <= S_default;
                        out <= 1'b1;
                    end
                end
            endcase
        end
    end
    
endmodule
