module detector (in, clk, reset, out);
    input in, clk, reset;
    output reg out;

    reg [2:0] state;
    parameter S_default = 3'b000, S0 = 3'b001, S01 = 3'b010, S011 = 3'b011, S0110 = 3'b100;

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
                    end else begin
                        state <= S_default;
                    end
                end
                S0: begin
                    if (in) begin
                        state <= S01;
                    end else begin
                        state <= S0;
                    end
                end
                S01: begin
                    if (in) begin
                        state <= S011;
                    end else begin
                        state <= S0;
                    end
                end
                S011: begin
                    if (in) begin
                        state <= S_default;
                    end else begin
                        state <= S0110;
                    end
                end
                S0110: begin
                    if (in) begin
                        state <= S_default;
                    end else begin
                        state <= S0;
                    end
                end
            endcase
        end
    end

    always @(state) begin
        if (state == S0110) begin
            out = 1'b1;
        end else begin
            out = 1'b0;
        end
    end
    
endmodule
