`timescale 1ns / 1ps

module LEDGroups(
    input [15:0] sw,
    input btnL, btnU, btnR, btnD,
    output [15:0] led
    );
    
    //Bloque 1 
    assign led[15] = (~btnL) & sw[15];
    assign led[14] = (~btnL) & sw[14];
    assign led[13] = (~btnL) & sw[13];
    assign led[12] = (~btnL) & sw[12];
    
    //Bloque 2
    assign led[11] = (~btnU) & sw[11];
    assign led[10] = (~btnU) & sw[10];
    assign led[9] = (~btnU) & sw[9];
    assign led[8] = (~btnU) & sw[8];
    
    //Bloque 3
    assign led[7] = (~btnR) & sw[7];
    assign led[6] = (~btnR) & sw[6];
    assign led[5] = (~btnR) & sw[5];
    assign led[4] = (~btnR) & sw[4];
    
    //Bloque 4
    assign led[3] = (~btnD) & sw[3];
    assign led[2] = (~btnD) & sw[2];
    assign led[1] = (~btnD) & sw[1];
    assign led[0] = (~btnD) & sw[0];
    

endmodule
