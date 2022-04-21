//the second way
module compare2(
    input a, b,
    output reg equal
);
    always @(*)begin
        if (a==b)
            equal = 1;
        else
            equal = 0;
    end
endmodule