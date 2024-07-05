module generator (
    input wire clk,
    output reg [11:0] wave
);
    reg [11:0] wave_data [0:9999]; // Array to hold the wave data
    integer i;

    initial begin
        $readmemh("wave.mem", wave_data); // Read memory file
        i = 0;
    end

    always @(posedge clk) begin
        wave <= wave_data[i];
        i <= i + 1;
        if (i == 10000) // Reset index if end of data
            i <= 0;
    end
endmodule