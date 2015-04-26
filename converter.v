`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:11:41 04/20/2015 
// Design Name: 
// Module Name:    converter 
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
module converter(
    input [11:0] D,
    output S,
    output [10:0] X
    );
	
	reg [10:0] XX;
	assign S = D[11];
	assign X = XX[10:0];
	
	always @(*) begin
		XX = D[10:0];
		if(S)begin
			XX = ~XX; 
			XX = XX+1;
		end
	end 
	

endmodule
