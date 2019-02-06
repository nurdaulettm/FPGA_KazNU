`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2019 10:46:32
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
    input sw,
    output [15:0] led
    );
    //Slave address
    parameter slaveaddress = 7'b0001000;
    
    //Sample registers to send to requesting device
    reg[2:0] valuecnt = 3'b011; //Count of bytes to be sent, send read value twice
    
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
    reg[12:0] bitcount = 0;
    reg[6:0] address = 7'b0000000;
    reg[319:0] datain = 320'b0;
    reg rw = 1'b0;
    reg[12:0] i = 0;
    reg addressmatch = 1'b0;
    always @(posedge scl or negedge incycle)
        if (~incycle)    
            begin
                //Reset the bit counter at the end of a sequence
                bitcount = 0;
                i = 0;
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
                    datain[319 - i] = sda;
                    i = i + 1;
                end
            end
        
    //ACK's and out going data
    reg sdadata = 1'bz; 
    reg [2:0] currvalue = 0;
    always @(negedge scl) 
        //ACK's
        if ((((bitcount + 1) % 9 == 0) & ~rw ) & (addressmatch))
            begin
                sdadata = 1'b0;
                currvalue = 0;
            end
        //Data
        else if ((bitcount >= 9) & (rw) & (addressmatch) & (currvalue < valuecnt))
            begin
                //Send Data  
                if (((bitcount - 9) - (currvalue * 9)) == 8)
                    begin
                        //Release SDA so master can ACK/NAK
                        sdadata = 1'bz;
                        currvalue = currvalue + 1;
                    end
                else sdadata = datain[7 - ((bitcount - 9) - (currvalue * 9))]; //Modify this to send actual data, currently echoing incomming data valuecnt times
            end
        //Nothing (cause nothing tastes like fresca)
        else sdadata = 1'bz;
        
    assign sda = sdadata;
    assign led = (sw == 1) ? datain[319:304] : datain[303:288];
endmodule