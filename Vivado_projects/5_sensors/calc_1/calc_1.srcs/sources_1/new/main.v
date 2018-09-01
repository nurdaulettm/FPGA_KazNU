`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2018 16:36:05
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
    
    parameter N = 5;
    
    //входные порты вычисл. блоков
    reg [31:0] A, B, C, D, E, k, result_1_input, result_2_input;
    
    //выходные порты вычисл. блоков
    wire [31:0] result_1, result_2, result_3;
    
    //enable, resets and valid flags
    reg a_valid, b_valid, c_valid, d_valid, e_valid, k_valid, result_1_input_valid, result_2_input_valid, reset_1, clken_1, reset_2, clken_2, reset_3, clken_3;
    
    // result_valid and ready wires
    wire a_ready, b_ready, c_ready, k_ready, d_ready, e_ready, result_1_input_ready, result_2_input_ready, result_1_valid, result_2_valid, result_3_valid;
    //переменные для вычисления
    reg [31:0] Var1, Var2, Var3;
    
    //деление(снижение) частоты для read_clock
    reg [30:0] count = 0;
    reg read_clk = 0;
    
    //Proverka
    //comp_result
    wire [7:0] comp_result[1:N-2];
    wire comp_result_valid[1:N-2];
    
    reg [31:0] resultTemp[1:N-2];
    reg [31:0] resultTempOld[1:N-2];
    
    //reg 
    reg proverka_reset;
        
    //FIFO
    reg wr_en, rd_en;
    wire full, empty;
    reg[31:0] data_in;
    
    //FSM
    reg start_flag;
    
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
    
    //peremennye
    reg [31:0] TempOld [N-1:0];
    reg [31:0] Temp [N-1:0];
    reg [31:0] TempFirst [N-1:0];
    
    initial begin
        TempOld[0] = 32'b00111111100000000000000000000000;    //1 
        TempOld[1] = 32'b00111110010011001100110011001101;    //0.2 
        TempOld[2] = 32'b00111110010011001100110011001101;    //0.2
        TempOld[3] = 32'b00111110010011001100110011001101;    //0.2
        TempOld[4] = 32'b00111111100000000000000000000000;    //1 
        
        TempFirst[0] = 32'b00111111100000000000000000000000;    //1 
        TempFirst[1] = 32'b00111110010011001100110011001101;    //0.2 
        TempFirst[2] = 32'b00111110010011001100110011001101;    //0.2
        TempFirst[3] = 32'b00111110010011001100110011001101;    //0.2
        TempFirst[4] = 32'b00111111100000000000000000000000;    //1 
        
        clken_1 = 1'b0; clken_2 = 1'b0; clken_3 = 1'b0; 
        reset_1 = 1'b0; reset_2 = 1'b0; reset_3 = 1'b0;
        a_valid = 1'b0; b_valid = 1'b0; c_valid = 1'b0; d_valid = 1'b0; e_valid = 1'b0; k_valid = 1'b0; 
        result_1_input_valid = 1'b0; result_2_input_valid = 1'b0;
        
        A = 32'b11000000000000000000000000000000;       //-2
        k = 32'b00111010011010111110110111111100;       //0.0009
        
        proverka_reset = 1'b1;
        start_flag = 1'b1; 
        wr_en <= 1'b0;
        rd_en <= 1'b0;
    end
    
    //Основное вычисление
    integer j, t, y;
    reg [10:0] i = 1;
    reg [20:0] q = 0;
    
    //управление
    always @(posedge result_3_valid, posedge reset) 
        begin
            if(reset) 
                begin
                    for (j=0; j<N; j=j+1) 
                        begin
                            TempOld[j] <= TempFirst[j];
                        end
                    Var1 <= TempFirst[0];     
                    Var2 <= TempFirst[1];
                    Var3 <= TempFirst[2];
                    i <= 1;
                    q <= 0;
                end
            else begin
                if(i == N - 2)
                    begin
                        Temp[i] <= result_3;
                        Var1 <= Temp[0]; 
                        Var2 <= Temp[1];
                        Var3 <= Temp[2];
                        for (t=0; t<N-2; t=t+1) 
                            begin
                                TempOld[t] <= Temp[t];
                            end
                        TempOld[N - 2] <= result_3;
                        TempOld[N - 1] <= Temp[N-1];
                        proverka_reset <= 1'b1;
                        i <= 1;
                    end    
                else 
                    begin
                        Temp[i] <= result_3;
                        Var1 <= TempOld[i];
                        Var2 <= TempOld[i + 1];
                        Var3 <= TempOld[i + 2];
                        proverka_reset <= 1'b0;
                        i <= i + 1;
                    end 
                q <= q + 1;
            end
        end    
    
    reg [10:0] round_count = 0;
    reg fifo_flag = 1'b0;
    
    //Proverka 
    always @(posedge clk)
        begin
            if(proverka_reset == 1) begin
                for(j = 1; j < N - 1; j=j+1) begin
                    if((&comp_result_valid[j] == 1'b1) && (|comp_result[j] == 1'b1))
                        begin
                            fifo_flag <= 1'b1;
                            start_flag <= 1'b0;
                        end
                    else
                        begin
                            fifo_flag <= 1'b0;
                            start_flag <= 1'b1;
                        end
                end
            end
        end
    
    reg [4:0] h = 0;
    //Write to FIFO
    always @(posedge clk)
        begin
            if(fifo_flag && (h < N))
                begin
                    data_in <= Temp[h];
                    h <= h + 1;
                    wr_en <= 1'b1;
                end
            else
                begin
                    h <= 0;
                    wr_en <= 1'b0;
                end
        end
    
    //FSM 
    parameter s_0 = 0, s_1 = 1, s_start = 3;
    parameter s2_0 = 0, s2_1 = 1, s2_2 = 2;
    parameter s3_0 = 0, s3_1 = 1, s3_2 = 2;
    reg [3:0] state = 3;
    reg [3:0] state2 = 0;
    reg [3:0] state3 = 0;
    
    //блоки вычисления 
    always@(posedge clk, posedge reset)
        begin
            if(reset)
                begin
                    //valid to 0
                    state <= s_start;
                    state2 <= s2_0;
                    state3 <= s3_0;
                    clken_1 <= 1'b0; clken_2 <= 1'b0; clken_3 <= 1'b0;
                end
            else begin
                if(q < N * N)
                    begin
                        clken_1 <= 1'b1; clken_2 <= 1'b1; clken_3 <= 1'b1;
                        
                        case(state) 
                            s_start: begin
                                if(start_flag == 1'b1)
                                    state <= s_0;
                            end
                            
                            s_0: begin
                                A <= 32'b11000000000000000000000000000000;
                                B <= Var2;
                                C <= Var1;
                                a_valid <= 1'b1;
                                b_valid <= 1'b1;
                                c_valid <= 1'b1;
                                reset_1 <= 1'b1;
                                state <= s_1;
                            end 
                            
                            s_1: begin
                                if(result_1_valid == 1)
                                    begin 
                                        reset_1 <= 1'b0;
                                        a_valid <= 1'b0;
                                        b_valid <= 1'b0;
                                        c_valid <= 1'b0;
                                    end
                                else if(result_3_valid == 1) state <= s_0; 
                            end
                        endcase
                        
                        // case 2
                        case(state2)
                        
                            s2_0: begin 
                                if(result_1_valid == 1)
                                    begin
                                        result_1_input <= result_1;
                                        D <= Var3;
                                        d_valid <= 1'b1;
                                        result_1_input_valid <= 1'b1;
                                        reset_2 <= 1'b1;
                                        state2 <= s2_1;
                                     end    
                            end
                            
                            s2_1:
                                begin
                                    if(result_2_valid == 1) 
                                        begin
                                            reset_2 <= 1'b0;
                                            d_valid <= 1'b0;
                                            result_2_input_valid <= 1'b0;
                                        end 
                                    else if(result_3_valid == 1) state2 <= s2_0;   
                                end
                        endcase
                        
                        case(state3)
                        
                            s3_0: begin
                                if(result_2_valid == 1) begin
                                    k <= 32'b00111010011010111110110111111100;
                                    result_2_input <= result_2;
                                    E <= Var2;
                                    k_valid <= 1'b1;
                                    result_2_input_valid <= 1'b1;
                                    e_valid <= 1'b1;
                                    reset_3 <= 1'b1;
                                    state3 <= s3_1;
                                end
                            end
                            
                            s3_1: begin
                                if(result_3_valid == 1) 
                                    begin
                                        reset_3 <= 1'b0;
                                        k_valid <= 1'b0;
                                        result_2_input_valid <= 1'b0;
                                        e_valid <= 1'b0;
                                        state3 <= s3_0; 
                                    end 
                            end
                        endcase
                    end
                else
                    begin
                        clken_1 <= 1'b0; clken_2 <= 1'b0; clken_3 <= 1'b0;
                    end
            end
        end
    
    calculation calculation_1
       (.A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .a_ready(a_ready),
        .a_valid(a_valid),
        .b_ready(b_ready),
        .b_valid(b_valid),
        .c_ready(c_ready),
        .c_valid(c_valid),
        .clk(clk),
        .clken_1(clken_1),
        .clken_2(clken_2),
        .clken_3(clken_3),
        .d_ready(d_ready),
        .d_valid(d_valid),
        .e_ready(e_ready),
        .e_valid(e_valid),
        .k(k),
        .k_ready(k_ready),
        .k_valid(k_valid),
        .reset_1(reset_1),
        .reset_2(reset_2),
        .reset_3(reset_3),
        .result_1(result_1),
        .result_1_input(result_1_input),
        .result_1_input_ready(result_1_input_ready),
        .result_1_input_valid(result_1_input_valid),
        .result_1_valid(result_1_valid),
        .result_2(result_2),
        .result_2_input(result_2_input),
        .result_2_input_ready(result_2_input_ready),
        .result_2_input_valid(result_2_input_valid),
        .result_2_valid(result_2_valid),
        .result_3(result_3),
        .result_3_valid(result_3_valid)
        );
        
    genvar z;  
    generate
        begin
            for(z = 1; z < N-1; z = z + 1)
                begin
                    proverka Proverka(
                        .clk(clk),
                        .reset(proverka_reset),
                        .Temp(Temp[z]),
                        .TempOld(TempOld[z]),
                        .comp_result(comp_result[z]),
                        .comp_result_valid(comp_result_valid[z])
                    );
                end
        end
    endgenerate
    
    fifo_generator_0 FIFO
    (
      .rst(reset),
      .wr_clk(clk),
      .rd_clk(clk_out),
      .din(data_in),
      .wr_en(wr_en),
      .rd_en(1'b1),
      .dout(data_out),
      .full(full),
      .empty(empty)
    );
endmodule
