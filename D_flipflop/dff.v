module dff(
    input D, 
    input reset, 
    input clk, 
    output q_bar, 
    output reg q
);
    assign q_bar = ~q;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 0;
        end else begin
            q <= D;
        end
    end
endmodule