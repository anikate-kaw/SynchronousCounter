`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:33:33 07/04/2017
// Design Name:   MasterSlaveJK
// Module Name:   C:/Users/Anikate/Documents/Projects/SynchCounter2/JKTest.v
// Project Name:  SynchCounter2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MasterSlaveJK
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JKTest;

	// Inputs
	reg rst;
	reg J;
	reg K;
	reg clk;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	MasterSlaveJK uut (
		.rst(rst), 
		.J(J), 
		.K(K), 
		.clk(clk), 
		.q(q), 
		.qbar(qbar)
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		J = 0;
		K = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100; rst=1;J=1;K=0;
		#100; J=1;K=1;
		#100; J=0;K=1;
		#100;J=0;K=0;
        
		// Add stimulus here

	end
  initial begin
	forever #10 clk=~clk;
	end
endmodule

