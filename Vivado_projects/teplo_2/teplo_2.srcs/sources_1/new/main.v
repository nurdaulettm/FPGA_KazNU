`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2017 16:35:09
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
    input clk, sw,
    output [15:0] led
    );
    reg [31:0] T;
    reg [31:0] T1 = 32'b0_0111_1111_0110_0110_0110_0110_0111_000;
    reg [31:0] T2 = 32'b0_0111_1111_0100_1010_1100_0000_0111_000;
    reg [31:0] T3 = 32'b0_0111_1111_0110_0110_1111_0111_0111_000;
    reg [31:0] T4 = 32'b0_0111_1111_0111_0110_0100_0000_1100_000;
    
    reg [31:0] zeroTemp = 32'b0_0111_1111_0011_0011_1000_0000_0000_000;
    reg [31:0] nothing = 32'b0_0111_1111_0000_0000_0011_1011_1000_000;
             
    wire [31:0] sub_1;
    wire [31:0] add_1;
    wire [31:0] mult_1; 
    wire [31:0] res; 
    reg [4:0] iter=0;
    reg clk1 = 0;
    reg [27:0] counter = 0;
    
    always @(posedge clk)
        begin
            counter = counter + 1;
            if(counter ==3*50000000)
                clk1 = ~clk1;
        end
    
    always @(posedge clk1)
        begin
            iter=iter+1;
            case(iter)
                1: T = T1;
                2: T = T2;
                3: T = T3;
                4: T = T4;
            endcase
        end
        design_3_wrapper sub (.sub_A(zeroTemp), .sub_B(T), .aclk(clk), .sub_out(sub_1));
        design_1_wrapper add (.add_A(sub_1), .add_B(zeroTemp), .aclk(clk), .add_out(add_1));
        design_2_wrapper mult (.mult_A(add_1), .mult_B(nothing), .aclk(clk), .mult_out(mult_1));
        design_1_wrapper add_1_1 (.add_A(mult_1), .add_B(zeroTemp), .aclk(clk), .add_out(res));
    assign led = (sw) ? res[31:16] : res[15:0];
endmodule
