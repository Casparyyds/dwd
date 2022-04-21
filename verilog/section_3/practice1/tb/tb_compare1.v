`timescale 1ns/1ns

module tb_compare1;

reg a, b;
wire equal;

initial begin
    a = 0;
    b = 0;
    #100 a = 0; b = 1;
    #100 a = 1; b = 1;
    #100 a = 1; b = 0;
    #100 a = 0; b = 0;
    #100 $stop;
end

compare1 tb_compare1(.a(a),
                    .b(b),
                    .equal(equal)
                    );

endmodule