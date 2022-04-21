`timescale 1ns/1ns

module alutests();
    reg [7:0] a, b;
    reg [2:0] opcode;
    wire [7:0] out;

    parameter times = 5;

    initial begin
        a = {$random}%256;
        b = {$random}%256;
        opcode = 3'h0;
        repeat(times)
        begin
            #100 a = {$random}%256;
                 b = {$random}%256;
                 opcode = opcode + 1;
        end
        #100 $stop;
    end

    alu alul(opcode, a, b, out);
endmodule