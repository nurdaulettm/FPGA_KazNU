`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2018 13:46:52
// Design Name: 
// Module Name: calc_tb
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


module calc_tb(
    );
    reg clk = 0;
    reg reset = 0;
    wire clk_out;
    wire [3:0] data_out;
    
    always
        #5 clk = ~clk;
        
    /* initial
        begin
            #50 reset = 1'b0;
        end
       */ 
    main UUT
       (
        //Data
        .clk(clk),
        .reset(reset),
        .data_out(data_out),
        .clk_out(clk_out)
        );
 endmodule