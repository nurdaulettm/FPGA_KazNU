`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2019 14:19:06
// Design Name: 
// Module Name: i2c_40byte
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


module i2c_40byte(
    input scl,
    inout sda,
    input [3:0] sw,
    output [15:0] led
    );
    //Slave address
    parameter slaveaddress = 7'b0001000;
    
    //Detect start and stop
    reg start = 1'b0;
    always @(negedge sda)
        start = scl;
    
    reg stop = 1'b0;
    always @(posedge sda)
        stop = scl;
    
    //Set cycle state 
    reg incycle = 1'b0;
    always @(posedge start or posedge stop)
        if (start)
            begin
                if (incycle == 1'b0)
                    incycle = 1'b1;
            end
        else if (stop)
            begin
                if (incycle == 1'b1)
                    incycle = 1'b0;    
            end
        
    //Address and incomming data handling
    reg [10:0] bitcount = 0;
    reg [6:0] address = 7'b0000000;
    reg [319:0] datain = 320'b0;
    reg rw = 1'b0;
    reg [10:0] i = 11'd319;
    reg addressmatch = 1'b0;
    
    always @(posedge scl or negedge incycle)
        if (~incycle)    
            begin
                //Reset the bit counter at the end of a sequence
                bitcount = 0;
                i = 319;
            end
        else
            begin
                bitcount = bitcount + 1;
                
                //Get the address
                if (bitcount < 8)
                    address[7 - bitcount] = sda;
                
                if (bitcount == 8)
                    begin
                        rw = sda;
                        addressmatch = (slaveaddress == address) ? 1'b1 : 1'b0;
                    end
                    
                if ((bitcount > 9) & (~rw) & (bitcount % 9 != 0)) begin
                    //Receive data (currently only one byte)
                    datain[i] = sda;
                    i <= i - 1;
                end
            end
        
    //ACK's and out going data
    reg sdadata = 1'bz; 
    always @(negedge scl) 
        //ACK's
        if ((((bitcount + 1) % 9 == 0) & ~rw ) & (addressmatch))
            begin
                sdadata = 1'b0;
            end
        //Nothing (cause nothing tastes like fresca)
        else sdadata = 1'bz;
        
    assign sda = sdadata;
    assign led = (sw == 0) ? datain[319:304] : ((sw == 1) ? datain[303:288] : (
                     (sw == 2) ? datain[255:240] : ((sw == 3) ? datain[239:224] : ( 
                     (sw == 4) ? datain[63:48] : datain[31:16]))));
endmodule
