`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:33:52 07/04/2017
// Design Name:   SynchCount
// Module Name:   C:/Users/Anikate/Documents/Projects/SynchCounter2/TopTest.v
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

module TopTest;

	// Inputs
	reg count;
	reg clk;
	reg clear;

	// Outputs
	wire q0;
	wire q1;
	wire q2;
	wire q3;

	// Instantiate the Unit Under Test (UUT)
	SynchCount uut (
		.count(count), 
		.clk(clk), 
		.clear(clear), 
		.q0(q0),
		.q1(q1),
		.q2(q2),
		.q3(q3),
	);

	initial begin
		// Initialize Input
		count = 0;
		clk = 0;
		clear = 0;

		// Wait 100 ns for global reset to finish
		#100;
      clear=1;
		count=1;
		// Add stimulus here

	end
   initial begin
	forever #10 clk=~clk;
	end
endmodule

