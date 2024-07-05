module full_adder(A,B,cin,cout,sum);
    input A, B, cin;
    output cout, sum;

    assign sum = A ^ B ^ cin;
    assign cout = (A & B) | (B & cin) | (A & cin);
endmodule