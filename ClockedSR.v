`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:46:12 07/04/2017 
// Design Name: 
// Module Name:    ClockedSR 
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
module ClockedSR( input S, input R, input clk, output q, output qbar
    );
wire a,b;

assign a = S&clk, b=R&clk;
		//This does not follow the "preferred" convention.Flip Sand R to achieve that.
assign q = ~(a|qbar), qbar = ~(b|q);
 

endmodule
