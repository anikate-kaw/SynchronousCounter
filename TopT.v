`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:59:49 07/04/2017
// Design Name:   SynchCount
// Module Name:   C:/Users/Anikate/Documents/Projects/SynchCounter2/TopT.v
// Project Name:  SynchCounter2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SynchCount
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TopT;

	// Inputs
	reg count;
	reg clk;
	reg clear;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	SynchCount uut (
		.count(count), 
		.clk(clk), 
		.clear(clear), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		count = 0;
		clk = 0;
		clear = 0;

		// Wait 100 ns for global reset to finish
		#100;clear=1;
   end
   always begin
	#10 clk=~clk;
	end
	
	always begin
	#50 count=~count;
	#10 count=~count;
	end
endmodule

