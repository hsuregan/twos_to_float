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
	reg clk;

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

always begin
	#0.5 clk = ~clk;
end


always @(posedge clk) begin
	d = d + 1'b1;
	$display(d);
	if(d == 12'b111111111111) $finish;
end


initial begin
	// Initialize Inputs
	d = 0;

	// Wait 100 ns for global reset to finish
	#1;
	d <= 12'b000000000000;
	clk <= 1'b1;
end
      
endmodule

