`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:53:05 04/22/2015
// Design Name:   extractor
// Module Name:   C:/Users/152/Desktop/Regan/Lab2/extractor_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: extractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module extractor_tb;

	// Inputs
	reg [10:0] X;

	// Outputs
	wire [2:0] exponent;
	wire [3:0] significand;
	wire fifth;

	// Instantiate the Unit Under Test (UUT)
	extractor uut (
		.X(X), 
		.exponent(exponent), 
		.significand(significand), 
		.fifth(fifth)
	);

	initial begin
		// Initialize Inputs
		X = 0;

		// Wait 100 ns for global reset to finish
		#100;
      X=11'b00000101100;
		
		// Add stimulus here

	end
      
endmodule

