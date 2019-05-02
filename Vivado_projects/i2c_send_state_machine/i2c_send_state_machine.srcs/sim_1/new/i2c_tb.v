`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2019 13:12:50
// Design Name: 
// Module Name: i2c_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module i2c_tb(
    );
    
    reg clk, reset;
    wire sda, scl;
    
    always 
        #3 clk = ~clk;
    
    initial begin
        clk = 0; reset = 1;
        #20 reset = 0;
        #5000 $finish;
    end
    
    i2c_send_sm UUT(
        .clk(clk),
        .reset(reset),
        .sda(sda),
        .scl(scl)
        );
endmodule