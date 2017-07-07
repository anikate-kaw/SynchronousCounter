`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:44 07/04/2017 
// Design Name: 
// Module Name:    SynchCount 
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
module SynchCount( count, clk, clear, q
    );
input count, clk, clear;
output [3:0] q;
MasterSlaveJK JK1(clear, count, count, clk, q[0],);
MasterSlaveJK JK2(clear, count&q[0], count&q[0], clk, q[1],);
MasterSlaveJK JK3(clear, count&q[1]&q[0], count&q[1]&q[0], clk, q[2],);
MasterSlaveJK JK4(clear, count&q[1]&q[2]&q[0], count&q[1]&q[2]&q[0], clk, q[3],);

endmodule
