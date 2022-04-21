module fdivision(
    input F10M, RESET,
    output reg F500K
    );

reg [7:0]j;

always @(posedge F10M)
begin
    if (!RESET)begin
        F500K <= 0;
        j <= 0;
    end
    else if (j==19)begin
        F500K <= ~F500K;
        end
    else 
    j <= j+1;
end
endmodule