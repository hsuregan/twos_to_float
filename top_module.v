`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:41 04/22/2015 
// Design Name: 
// Module Name:    top_module 
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
module top_module(
    input [11:0] d,
    output s,
    output [2:0] e,
    output [3:0] f
    );

//change to output later
wire [10:0] X;
wire [2:0] exponent;

wire [3:0] significand;
reg [3:0] sigout;


wire fifth;
assign e = exponent;
assign f = sigout;

converter module1(.D(d), .S(s), .X(X));
extractor module2(.X(X), .exponent(exponent), .significand(significand), .fifth(fifth));


always @(*) begin
	sigout = significand;
	if(fifth == 1) 
	begin
	sigout = sigout + 1;
	$display("fifth bit is 1");
	end
	$display("sigout:");
	$display(sigout);
end
/*
always @(sigout) begin
	if(fifth == 1) 
	begin
		sigout = sigout + 1;
		$display("fifth bit is 1");
	end
end
*/


 

	 
	 


endmodule
