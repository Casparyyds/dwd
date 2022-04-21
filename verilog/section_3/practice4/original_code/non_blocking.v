module non_blocking(
    input clk,
    input [3:0] a,
    output reg [3:0] b, c
);
    always @(posedge clk)begin
        b <= a;
        c <= b;
        $display("Non_Blocking: a = %d, b = %d, c = %d.",a,b,c);
    end
endmodule