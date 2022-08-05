`timescale 1ns / 1ps

module Mux_tb;

    reg [3:0]in0;
    reg [3:0]in1;
    reg [3:0]in2;
    reg [3:0]in3;
    reg [1:0]select;
    wire [3:0]out;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  

    MuxParam UUT (.in0(in0[3:0]), .in1(in1[3:0]), .in2(in2[3:0]), .in3(in3[3:0]), .select(select[1:0]), .out(out[3:0]));
    
    initial // initial block executes only once
        begin
            // values for a and b
            in0[3:0] = 0;
            in1[3:0] = 1;
            in2[3:0] = 2;
            in3[3:0] = 3;
            select[1:0] = 0;
            #period; // wait for period 

            in0[3:0] = 0;
            in1[3:0] = 1;
            in2[3:0] = 2;
            in3[3:0] = 3;
            select[1:0] = 1;
            #period;
             
            in0[3:0] = 0;
            in1[3:0] = 1;
            in2[3:0] = 2;
            in3[3:0] = 3;
            select[1:0] = 2;
            #period;
            
            in0[3:0] = 0;
            in1[3:0] = 1;
            in2[3:0] = 2;
            in3[3:0] = 3;
            select[1:0] = 3;
            #period;
        end
endmodule