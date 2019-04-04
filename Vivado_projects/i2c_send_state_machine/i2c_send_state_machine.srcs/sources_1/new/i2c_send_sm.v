`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2019 15:13:55
// Design Name: 
// Module Name: i2c_send_sm
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


module i2c_send_sm(
    input clk,
    input reset,
    inout sda,
    output scl
    );
       
    // выходной заниженный clk для отправки данных i2c
    reg [30:0] q = 31'd0;
    reg read_clk = 1'b0;
    
    always @(posedge clk, posedge reset) begin 
        if(reset) begin
            q <= 0;
            read_clk <= 0;
        end    
        else begin
            //if(q == 2) begin
            if(q == 499) begin
                q <= 0;
                read_clk <= ~read_clk;
            end
            else
                q <= q + 1;
        end
    end
    
    //variables for i2c send implementation
    reg [39:0] data = 40'b10000000_11000000_11100000_11110000_11111000;
    reg [6:0] address = 7'b0001001;
    reg sdadata = 1'b1;   
    reg scl_enable = 1'b0;
    reg sda_enable = 1'b1;
    reg enable = 1'b0;
    reg [7:0] i = 0;
    
    reg [3:0] state = 0;
    reg [3:0] next_state, return_state;
    localparam STATE_INIT = 0, STATE_1 = 1, STATE_ADDRESS = 2, STATE_RW = 3, 
               STATE_ACK = 4, STATE_SEND_DATA = 5, STATE_ACK2 = 6, STATE_STOP = 7, STATE_LAST = 8; 
    
    always @(posedge read_clk or posedge reset) begin
        if (reset) begin
            sdadata <= 1'b1;
            address <= 7'b0001001;
            state <= 0;
            enable <= 1'b0;
            data <= 40'b10000000_11000000_11100000_11110000_11111000;
            i <= 0;
        end
        else begin
            data <= 40'b10000000_11000000_11100000_11110000_11111000;
            address <= 7'b0001001;
            case(state)
                STATE_INIT: begin
                    sdadata = 1'b1;
                    scl_enable = 1'b0;
                    enable = 1'b0;
                    state <= STATE_1;    
                end
                
                STATE_1: begin
                    sdadata = 1'b0;
                    scl_enable = 1'b1;
                    i = 0;
                    address = 7'b0001001;
                    state <= STATE_ADDRESS;
                end
                
                STATE_ADDRESS: begin
                    sdadata = address[6-i];
                    i <= i + 1;
                    if(i == 6) begin
                        state <= STATE_RW;
                    end
                end
                
                STATE_RW: begin
                    sdadata = 1'b0;
                    enable = 1'b1;
                    state <= STATE_ACK; 
                end
                
                STATE_ACK: begin
                    if(sdadata == 1'b0) begin
                        i = 0;
                        enable = 1'b0;
                        state <= STATE_SEND_DATA;
                    end
                    else begin
                        enable = 1'b0;
                        state <= STATE_INIT;
                    end
                end
                
                STATE_SEND_DATA: begin
                    sdadata = data[39-i];
                    i <= i + 1;
                    if(i == 7) begin
                        enable = 1'b1;
                        state <= STATE_ACK2;
                    end
                end
                
                STATE_ACK2: begin
                    if(sdadata == 1'b0) begin
                        enable = 1'b0;
                        state <= STATE_STOP;
                    end
                    else begin
                        enable = 1'b0;
                        i = 0;
                        state <= STATE_SEND_DATA;
                    end
                end
                
                STATE_STOP: begin
                    sdadata = 1'b0;
                    scl_enable = 1'b0;
                    state <= STATE_LAST;
                end
                
                STATE_LAST: begin
                    scl_enable = 1'b0;
                    sdadata = 1'b1;
                    state <= STATE_INIT;
                end
                
                default: begin
                    address <= 7'b0001001;
                    sdadata <= 1'b1; 
                    enable <= 1'b0;
                    i <= 0;
                    state <= 0;
                end
            endcase
        end
    end
    
    always @(negedge read_clk, posedge reset) begin
        if(reset) begin
            sda_enable = 1'b1;
        end
        else begin
            if(enable)
                sda_enable = 1'b0;
            else 
                sda_enable = 1'b1;
        end
    end
    
    assign scl = (scl_enable) ? read_clk : 1'b1;
    assign sda = (sda_enable) ? sdadata : 1'bz;
endmodule