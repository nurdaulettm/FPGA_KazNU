`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2018 13:52:15
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
    input clk,
    input reset,
    output [3:0] data_out,
    output clk_out
    );
    
    parameter N = 100;
    
    reg [31:0] A, B, C, D, E, k, result_input2, result_input3;
    reg [31:0] Var1, Var2, Var3;
    
    wire wr_clk, full, empty;
    reg a_valid, b_valid, c_valid, D_valid, E_valid, k_valid, result_input2_valid, result_input3_valid, reset1, aclken, aclken2, reset2, aclken3, reset3;
    wire a_ready, b_ready, c_ready, k_ready, D_ready, E_ready, result_valid, result2_valid, result3_valid, result_input2_ready, result_input3_ready;
    wire [31:0] res, result2, result3;
    //result_ready, result2_ready, result3_ready, 
    
    reg [30:0] count = 0;
    reg read_clk = 0;
    
    always @(posedge clk, posedge reset) begin //peredacha clock clk=>read_clk
        if(reset) begin
            count <= 0;
            read_clk <= 0;
        end    
        else begin
            if(count == 89999) begin
                count <= 0;
                read_clk <= ~read_clk;
            end
            else
                count <= count + 1;
        end
    end
    
    assign clk_out = read_clk;
    
    reg [31:0] TempOld [N-1:0];
    reg [31:0] Temp [N-1:0];
    reg [31:0] TempFirst [N-1:0];
    
    initial begin
        TempOld[0] = 64'b0011111111110000000000000000000000000000000000000000000000000000;    //1 
        TempOld[1] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2 
        TempOld[2] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[3] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[4] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[5] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[6] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[7] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[8] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[9] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2 
        TempOld[10] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[11] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[12] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[13] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[14] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[15] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[16] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[17] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[18] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempOld[19] = 64'b0011111111110000000000000000000000000000000000000000000000000000;    //0.2
        
        TempFirst[0] = 64'b0011111111110000000000000000000000000000000000000000000000000000;    //0.2 нач. темп всех точек
        TempFirst[1] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2 
        TempFirst[2] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[3] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[4] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[5] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[6] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[7] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[8] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[9] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2 
        TempFirst[10] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[11] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[12] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[13] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[14] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[15] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[16] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[17] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[18] = 64'b0011111111001001100110011001100110011001100110011001100110011010;    //0.2
        TempFirst[19] = 64'b0011111111110000000000000000000000000000000000000000000000000000;    //0.2
        aclken = 1'b1; aclken2 = 1'b1; aclken3 = 1'b1;
        reset1 = 1'b0; reset2 = 1'b0; reset3 = 1'b0;
        a_valid = 1'b0; b_valid = 1'b0; c_valid = 1'b0; result_input2_valid = 1'b0; result_input3_valid = 1'b0;
        D_valid = 1'b0; E_valid = 1'b0; k_valid = 1'b0;
        
        Var1 = 32'b00111111100000000000000000000000;    //1
        Var2 = 32'b00111110010011001100110011001101;    //0.2
        Var3 = 32'b00111110010011001100110011001101;    //0.2
        A = 32'b11000000000000000000000000000000;       //-2
        k = 32'b00111010011010111110110111111100;       //0.0009
        
        Temp[0] = 32'b00111111100000000000000000000000;
        Temp[N-1] = 32'b00111111100000000000000000000000;
    end
    
    parameter s_0 = 0, s_1 = 1, s_2 = 2, s_start = 3;
    parameter s2_0 = 0, s2_1 = 1, s2_2 = 2;
    parameter s3_0 = 0, s3_1 = 1, s3_2 = 2;
    reg [3:0] state = 0;
    reg [3:0] state2 = 0;
    reg [3:0] state3 = 0;
    
    integer j, t;
    reg [10:0] i = 1;
        
    always @(posedge result3_valid, posedge reset) begin
        if(reset) begin
            for (j=0; j<N; j=j+1) 
                begin
                    TempOld[j] <= TempFirst[j];
                end
            Var1 <= TempFirst[0];     //1
            Var2 <= TempFirst[1];
            Var3 <= TempFirst[2];
            i <= 1;
        end
        else begin
            if(i == N - 2)
                begin
                    Temp[i] <= result3;
                    Var1 <= Temp[0]; 
                    Var2 <= Temp[1];
                    Var3 <= Temp[2];
                    for (t=0; t<N-2; t=t+1) 
                        begin
                            TempOld[t] <= Temp[t];
                        end
                    TempOld[N - 2] <= result3;
                    TempOld[N - 1] <= TempFirst[N-1];
                    i <= 1;
                end    
            else 
                begin
                    Temp[i] <= result3;
                    Var1 <= TempOld[i];
                    Var2 <= TempOld[i + 1];
                    Var3 <= TempOld[i + 2];
                    i <= i + 1;
                end                            
        end
    end    
    
    always@(posedge clk, posedge reset)
        begin
            if(reset)
                begin
                    //valid to 0
                    state <= s_start;
                    state2 <= s2_0;
                    state3 <= s3_0;
                    aclken <= 1'b0; aclken2 <= 1'b0; aclken3 <= 1'b0;
                end
            else begin
                aclken <= 1'b1; aclken2 <= 1'b1; aclken3 <= 1'b1;
                case(state) 
                    
                    s_start: state <= s_0;
                    
                    s_0: begin
                        A <= 32'b11000000000000000000000000000000;
                        B <= Var2;
                        C <= Var1;
                        a_valid <= 1'b1;
                        b_valid <= 1'b1;
                        c_valid <= 1'b1;
                        reset1 <= 1'b1;
                        state <= s_1;
                    end 
                    
                    s_1: begin
                        if(result_valid == 1)
                            begin 
                                reset1 <= 1'b0;
                                a_valid <= 1'b0;
                                b_valid <= 1'b0;
                                c_valid <= 1'b0;
                            end
                        else if(result3_valid == 1) state <= s_0; 
                    end
                endcase
                
                // case 2
                case(state2)
                
                    s2_0: begin 
                        if(result_valid == 1)
                            begin
                                result_input2 <= res;
                                D <= Var3;
                                D_valid <= 1'b1;
                                result_input2_valid <= 1'b1;
                                reset2 <= 1'b1;
                                state2 <= s2_1;
                             end    
                    end
                    
                    s2_1:
                        begin
                            if(result2_valid == 1) 
                                begin
                                    reset2 <= 1'b0;
                                    D_valid <= 1'b0;
                                    result_input2_valid <= 1'b0;
                                end 
                            else if(result3_valid == 1) state2 <= s2_0;   
                        end
                endcase
                
                case(state3)
                
                    s3_0: begin
                        if(result2_valid == 1) begin
                            k <= 32'b00111010011010111110110111111100;
                            result_input3 <= result2;
                            E <= Var2;
                            k_valid <= 1'b1;
                            result_input3_valid <= 1'b1;
                            E_valid <= 1'b1;
                            reset3 <= 1'b1;
                            state3 <= s3_1;
                        end
                    end
                    
                    s3_1: begin
                        if(result3_valid == 1) 
                            begin
                                reset3 <= 1'b0;
                                k_valid <= 1'b0;
                                result_input3_valid <= 1'b0;
                                E_valid <= 1'b0;
                                state3 <= s3_0; 
                            end 
                    end
                endcase
            end
        end
    
    assign wr_clk = result3_valid;
        
    calc_wrapper UUT
       (
        //Data
        .clk(clk),
        .aclken(aclken),
        .aresetn(reset1),
        .aclken2(aclken2),
        .reset2(reset2),
        .aclken3(aclken3),
        .reset3(reset3),
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .k(k),
        .result_input2(result_input2),
        .result_input3(result_input3),
        .result(res),
        .result2(result2),
        .result3(result3),
        
        //reg
        .a_valid(a_valid),
        .b_valid(b_valid),
        .c_valid(c_valid),
        .D_valid(D_valid),
        .E_valid(E_valid),
        .k_valid(k_valid),
        .result_input2_valid(result_input2_valid),
        .result_input3_valid(result_input3_valid),
        
        //wire
        .a_ready(a_ready),
        .b_ready(b_ready),
        .c_ready(c_ready),
        .D_ready(D_ready),
        .k_ready(k_ready),
        .E_ready(E_ready),
        .result_input2_ready(result_input2_ready),
        .result_input3_ready(result_input3_ready),
        .result_valid(result_valid),
        .result2_valid(result2_valid),
        .result3_valid(result3_valid)
        );
        
        fifo_generator_0 FIFO
          (
            .rst(reset),
            .wr_clk(wr_clk),
            .rd_clk(clk_out),
            .din(result3),
            .wr_en(1'b1),
            .rd_en(1'b1),
            .dout(data_out),
            .full(full),
            .empty(empty)
          );
endmodule