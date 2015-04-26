`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:32:14 04/20/2015 
// Design Name: 
// Module Name:    priority_encoder 
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
module priority_encoder(
    input [10:0] in,
    output [2:0] out
    );
	reg [2:0] output1;
	assign out = output1;
	
	always @(*)
	begin
		if(in[10] == 1) output1 = 1;
		else if(in[9] == 1) output1 =2;
		else if(in[8] == 1) output1 =3;
		else if(in[7] == 1) output1 =4;
		else if(in[6] == 1) output1 =5;
		else if(in[5] == 1) output1 =6;
		else if(in[4] == 1) output1 =7;
		else output1 = 8;
	end

endmodule
