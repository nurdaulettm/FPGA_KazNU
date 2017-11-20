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
    reg [31:0] Temp[9:0];
    initial 
        begin
            Temp[0] = 1;
            Temp[1] = 32'b0_0111_1111_0011_0011_0011_0011_0011_001;
            Temp[2] = 32'b0_0111_1111_0011_0011_0011_0011_0011_001;
            Temp[3] = 32'b0_0111_1111_0011_0011_0011_0011_0011_001;
            Temp[4] = 32'b0_0111_1111_0011_0011_0011_0011_0011_001;
            Temp[5] = 32'b0_0111_1111_0011_0011_0011_0011_0011_001;
            Temp[6] = 32'b0_0111_1111_0011_0011_0011_0011_0011_001;
            Temp[7] = 32'b0_0111_1111_0011_0011_0011_0011_0011_001;
            Temp[8] = 32'b0_0111_1111_0011_0011_0011_0011_0011_001;
            Temp[9] = 1;
        end
   
    //Коэффициент постоянная k = 0.00090000009
    reg [31:0] k = 32'b0_0111_1111_0000_0000_0011_1010_1111_101;
    
    //u = 2* Temp[i] = 0.4
    reg [31:0] u = 32'b0_0111_1111_0110_0110_0110_0110_0110_011;
    
    reg clk1 = 0;
    reg [27:0] counter = 0;
    always @(posedge clk)
        begin
            counter = counter + 1;
            if(counter ==3*50000000)
                clk1 = ~clk1;
        end
    
    reg [31:0] Var1, Var2, Var3;
    reg [4:0] iter=0;
  
    always @(posedge clk1)
        begin
            iter <= iter+1;
            case(iter)
                1: 
                    begin
                        Var1 <= Temp[1];
                        Var2 <= Temp[2];
                        Var3 <= Temp[0];
                    end
                2: 
                    begin
                        Var1 <= Temp[2];
                        Var2 <= Temp[3];
                        Var3 <= Temp[1];
                    end
                3: 
                    begin
                        Var1 <= Temp[3];
                        Var2 <= Temp[4];
                        Var3 <= Temp[2];
                    end
                4: 
                    begin
                        Var1 <= Temp[4];
                        Var2 <= Temp[5];
                        Var3 <= Temp[3];
                    end
                5: 
                    begin
                        Var1 <= Temp[5];
                        Var2 <= Temp[6];
                        Var3 <= Temp[4];
                    end
                6: 
                    begin
                        Var1 <= Temp[6];
                        Var2 <= Temp[7];
                        Var3 <= Temp[5];
                    end
                7: 
                    begin
                        Var1 <= Temp[7];
                        Var2 <= Temp[8];
                        Var3 <= Temp[6];
                    end
                8: 
                    begin
                        Var1 <= Temp[8];
                        Var2 <= Temp[9];
                        Var3 <= Temp[7];
                    end
            endcase
        end
        
    wire [31:0] sub_1;
    wire [31:0] add_1;
    wire [31:0] mult_1; 
    wire [31:0] res; 
              
    design_3_wrapper sub (.sub_A(Var2), .sub_B(u), .aclk(clk), .sub_out(sub_1));
    design_1_wrapper add (.add_A(sub_1), .add_B(Var3), .aclk(clk), .add_out(add_1));
    design_2_wrapper mult (.mult_A(add_1), .mult_B(k), .aclk(clk), .mult_out(mult_1));
    design_1_wrapper add_1_1 (.add_A(mult_1), .add_B(Var1), .aclk(clk), .add_out(res));
    
    assign led = (sw) ? res[31:16] : res[15:0];
endmodule
