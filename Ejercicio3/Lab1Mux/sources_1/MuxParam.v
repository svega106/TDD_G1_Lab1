`timescale 1ns / 1ps

module MuxParam #(parameter Bits = 4)
    (
input [1:0] select,
input [Bits-1:0] in0,
input [Bits-1:0] in1,
input [Bits-1:0] in2,
input [Bits-1:0] in3,
output [Bits-1:0] out
    );

reg [Bits-1:0]regout;

    always @(*)begin
        if (select == 0)begin
            regout <= in0;
        end
        if (select == 1)begin
            regout <= in1;
        end
        if (select == 2)begin
            regout <= in2;
        end
        if (select == 3)begin
            regout <= in3;
        end
    end

    assign out = regout; 

endmodule
