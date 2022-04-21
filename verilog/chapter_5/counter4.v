module counter(
    input clock, clear,
    output reg [3:0] Q
);
    always @(posedge clear or negedge clock)begin
        if (clear)
            Q <= 4'd0;
        else
            Q <= Q + 1;
    end
endmodule