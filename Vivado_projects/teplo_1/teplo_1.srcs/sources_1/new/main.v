`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2017 17:16:47
// Design Name: 
// Module Name: main
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


module main(
    input sw, clk, reset,
    output [15:0] led,
    output reg jb_out
    );
    reg [31:0] T = 32'b0_0111_1111_0110_0110_0110_0110_0111_000;
    reg [31:0] zeroTemp = 32'b0_0111_1111_0011_0011_1000_0000_0000_000;
    reg [31:0] k = 32'b0_0111_1111_0000_0000_0011_1011_1000_000;
             
    wire [31:0] mult_1;
    wire [31:0] sub_1;
    wire [31:0] add_1;
    wire [31:0] res;
    
    reg [25:0] q = 0;
    reg freq = 0; 
        
    design_3_wrapper sub (.sub_A(zeroTemp), .sub_B(T), .aclk(clk), .sub_out(sub_1));  
    design_1_wrapper add (.add_A(sub_1), .add_B(zeroTemp), .aclk(clk), .add_out(add_1));
    design_2_wrapper mult (.mult_A(add_1), .mult_B(k), .aclk(clk), .mult_out(mult_1));       
    design_1_wrapper add_2 (.add_A(mult_1), .add_B(zeroTemp), .aclk(clk), .add_out(res));  
        
    assign led = (sw) ? res[31:16]:res[15:0];
    
    always @(posedge clk, posedge reset)
        begin
            if(reset)
                begin
                    q <= 0;
                    freq <= 0;
                end
            else if(q == 26'd50000000)
                begin
                    q <= 0;
                    freq = ~freq;
                end
            else
                q <= q + 1;
        end
    
    integer i = 0;
    always @(posedge freq)
        begin
            i = i + 1;
            jb_out = res[i];
            if(i >= 32)
                jb_out <= 0;
        end
endmodule
