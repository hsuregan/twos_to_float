`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:47:04 04/22/2015
// Design Name:   top_module
// Module Name:   C:/Users/152/Desktop/Regan/Lab2/top_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_tb;

	// Inputs
	reg [11:0] d;

	// Outputs
	wire s;
	wire [2:0] e;
	wire [3:0] f;

	// Instantiate the Unit Under Test (UUT)
	top_module uut (
		.d(d), 
		.s(s), 
		.e(e), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
      d = 12'b000000011111;
		
		#50;
		d = 12'b000000101100;
		#50;
		d = 12'b000000101101;
		#50;
		d = 12'b000000101110;
		#50;
		d = 12'b000000101111;
		#50;
		d = 12'b000100101100;
		#50;
		d = 12'b001010001100;
		
		#50;
		d = 12'b000000101010;
		#50;
		d = 12'b000000111011;
		#50;
		d = 12'b000000101010;
		#50;
		d = 12'b000000111011;
		
		#50;
		d = 12'b000000101111;
		#50;
		d = 12'b000100101100;
		#50;
		d = 12'b001010001100;
		
		// Add stimulus here

	end
      
endmodule

