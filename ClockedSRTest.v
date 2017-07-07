`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:54:56 07/04/2017
// Design Name:   ClockedSR
// Module Name:   C:/Users/Anikate/Documents/Projects/SynchCounter2/ClockedSRTest.v
// Project Name:  SynchCounter2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ClockedSR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ClockedSRTest;

	// Inputs
	reg S;
	reg R;
	reg clk;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	ClockedSR uut (
		.S(S), 
		.R(R), 
		.clk(clk), 
		.q(q), 
		.qbar(qbar)
	);

	initial begin
		// Initialize Inputs
		S = 0;
		R = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;S=0;R=1;
		#100;S=1;R=0;
		#100;S=0;R=0;
      		
	end
	
	initial begin
	forever #10 clk=~clk;
	end      
endmodule

