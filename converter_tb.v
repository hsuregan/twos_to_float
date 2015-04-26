`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:48:08 04/27/2015
// Design Name:   converter
// Module Name:   C:/Users/Alex/Documents/CSM152A/Lab2/converter_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: converter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module converter_tb;

	// Inputs
	reg [11:0] D;

	// Outputs
	wire S;
	wire [10:0] X;

	// Instantiate the Unit Under Test (UUT)
	converter uut (
		.D(D), 
		.S(S), 
		.X(X)
	);

	initial begin
		// Initialize Inputs
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		D = 12'b001111111111;
		#50;
		D = 12'b111111110001;
        
		// Add stimulus here

	end
      
endmodule

