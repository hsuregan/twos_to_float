`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:00:01 04/27/2015
// Design Name:   priority_encoder
// Module Name:   C:/Users/Alex/Documents/CSM152A/Lab2/pe_tv.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: priority_encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pe_tv;

	// Inputs
	reg [10:0] in;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	priority_encoder uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in=11'b00000001100;
		
        
		// Add stimulus here

	end
      
endmodule

