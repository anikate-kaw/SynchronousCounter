`timescale 1ns / 1ps
include "ClockedSR.v";
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:26 07/04/2017 
// Design Name: 
// Module Name:    MasterSlaveJK 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MasterSlaveJK(input rst,input J, input K, input clk, output q, output qbar
    );
wire x,y;
wire a,b;

assign a=!rst?0:J&qbar, b=!rst?1:K&q;

ClockedSR SR1(a, b, clk, x, y);
ClockedSR SR2(x, y, ~clk, q, qbar);

endmodule
