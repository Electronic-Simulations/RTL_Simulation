module full_adder_tb;
    reg A, B, cin;
    wire cout, sum;

    full_adder full_adder_inst(A, B, cin, cout, sum);

    initial begin
        A = 0; B = 0; cin = 0;
        #10 A = 0; B = 0; cin = 1;
        #10 A = 0; B = 1; cin = 0;
        #10 A = 0; B = 1; cin = 1;
        #10 A = 1; B = 0; cin = 0;
        #10 A = 1; B = 0; cin = 1;
        #10 A = 1; B = 1; cin = 0;
        #10 A = 1; B = 1; cin = 1;
        #10 $finish;
    end

    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);
    end

endmodule