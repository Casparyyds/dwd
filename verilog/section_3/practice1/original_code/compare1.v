//the first way
module compare1(
    input a, b,
    output equal
);
    assign equal = (a==b)?1:0;
endmodule
