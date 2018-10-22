`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2018 18:17:51
// Design Name: 
// Module Name: proverka
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


module proverka(
    input clk,
    input reset,
    input [31:0] Temp,
    input [31:0] TempOld,
    output [7:0] comp_result,
    output comp_result_valid
    );
    
    // e число сравнения
    // e = 0.0001;
    reg [31:0] const_e = 32'b00111000110100011011011100010111;
    
    //входные порты блока проверки
    reg [31:0] abs_in, Comp_1, Comp_2, newT, oldT;
    
    //входные reg сигналы управления
    reg abs_in_valid, comp_1_valid, comp_2_valid, sub_1_valid, sub_2_valid, clken_comp, clken_sub, reset_comp, reset_sub ;
    
    //выходные порты блока проверки
    wire [31:0] abs_out, sub_result; 
    
    //выходные wire сигналы 
    wire abs_out_valid, abs_in_ready, comp_1_ready, comp_2_ready, sub_1_ready, sub_2_ready, sub_result_valid, comp_result_v;

    initial begin
        abs_in_valid = 1'b0;
        comp_1_valid = 1'b0;
        comp_2_valid = 1'b0;
        sub_1_valid = 1'b0;
        sub_2_valid = 1'b0;
        clken_comp = 1; clken_sub = 1;
        reset_comp = 1'b0; reset_sub = 1'b0;
    end
    
    parameter s_0 = 0, s_1 = 1, s_start = 2;
    parameter s1_0 = 0, s1_1 = 1;
    parameter s2_0 = 0, s2_1 = 1;
    reg [3:0] state = 0;
    reg [3:0] state_1 = 0;
    reg [3:0] state_2 = 0;
    
    always @(posedge clk, posedge reset)
        begin
            if(reset)
                begin
                    //valid to 0
                    state <= s_start;
                    state_1 <= s1_0;
                    state_2 <= s2_0;
                    
                    clken_comp <= 1'b0; clken_sub <= 1'b0; 
                end
            else begin
                clken_comp <= 1'b1; clken_sub <= 1'b1;
                case(state) 
                    
                    s_start: state <= s_0;
                    
                    s_0: begin
                        newT <= Temp;
                        oldT <= TempOld;
                        sub_1_valid <= 1'b1;
                        sub_2_valid <= 1'b1;
                        reset_sub <= 1'b1;
                        state <= s_1;
                    end 
                    
                    s_1: begin
                        if(sub_result_valid == 1)
                            begin
                                sub_1_valid <= 1'b0;
                                sub_2_valid <= 1'b0;
                                reset_sub <= 1'b0;
                            end 
                        else if(comp_result_v == 1) state <= s_0;
                    end
                endcase
                
                case(state_1)
                    
                    s1_0: begin
                        if(sub_result_valid == 1)
                            begin
                                abs_in <= sub_result;
                                abs_in_valid <= 1;
                                state_1 <= s1_1;
                            end
                    end
                    
                    s1_1: begin
                        if(abs_out_valid == 1)
                            begin
                                abs_in_valid <= 0;
                            end 
                        else if(comp_result_v == 1) state_1 <= s1_0;
                    end
                endcase
                
                case(state_2)
                    s2_0: begin
                        if(abs_out_valid == 1)
                            begin
                                Comp_1 <= abs_out;
                                Comp_2 <= const_e;
                                comp_1_valid <= 1'b1;
                                comp_2_valid <= 1'b1;
                                reset_comp <= 1'b1;
                                state_2 <= s2_1;
                            end
                    end
                    
                    s2_1: 
                        if(comp_result_v == 1)
                            begin
                                state_2 <= s2_0;
                                /*comp_1_valid <= 1'b0;
                                comp_2_valid <= 1'b0;
                                reset_comp <= 1'b0;*/
                            end
                endcase
           end
        end
        
    assign comp_result_valid = comp_result_v;
    
    calc_check calc_check_1
       (.Comp_1(Comp_1),
        .Comp_2(Comp_2),
        .Sub_1(newT),
        .Sub_2(oldT),
        .abs_in(abs_in),
        .abs_in_ready(abs_in_ready),
        .abs_in_valid(abs_in_valid),
        .abs_out(abs_out),
        .abs_out_valid(abs_out_valid),
        .clk(clk),
        .clken_comp(clken_comp),
        .clken_sub(clken_sub),
        .comp_1_ready(comp_1_ready),
        .comp_1_valid(comp_1_valid),
        .comp_2_ready(comp_2_ready),
        .comp_2_valid(comp_2_valid),
        .comp_result(comp_result),
        .comp_result_valid(comp_result_v),
        .reset_comp(reset_comp),
        .reset_sub(reset_sub),
        .sub_1_ready(sub_1_ready),
        .sub_1_valid(sub_1_valid),
        .sub_2_ready(sub_2_ready),
        .sub_2_valid(sub_2_valid),
        .sub_result(sub_result),
        .sub_result_valid(sub_result_valid)
        );
endmodule
