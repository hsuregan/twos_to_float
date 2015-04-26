`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:02 04/20/2015 
// Design Name: 
// Module Name:    extractor 
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
module extractor(
    input [10:0] X,
    output [2:0] exponent,
    output [3:0] significand,
    output fifth
    );

wire [3:0] nZeroes;
reg [3:0] nZeroesReg;
reg [2:0] exp;
reg [3:0] sigout;
reg fifthbit;
assign significand = sigout;
assign exponent = exp;
assign fifth = fifthbit;
priority_encoder UUT(.in(X), .out(nZeroes));

integer i;
integer count;
reg check;

always @(*) begin
	$display("nZeroes:");
	$display(nZeroes);
	exp = 8 - nZeroes;
	nZeroesReg = nZeroes; // Next time for loop
	$display("nZeroesReg:");
	$display(nZeroesReg);
	
	$display("exponent:");
	$display(exp);
	check = 0;
	count = 3;
	if(nZeroesReg < 8)
	begin
		fifthbit = X[7-nZeroesReg];
		for(i = 11-nZeroesReg; (i >= (7-nZeroesReg))&&(i >= 0) ; i = i -1)
		begin
			if(X[i] == 0) begin
				
				check = 1;
			end
			if(count >=0)
			begin
				sigout[count] = X[i];
				count = count -1;
			end
		end
		if(check == 0)
		begin
			$display("all five bits are 1s");
			exp = exp + 1;
			sigout = 7;
		end
	end
	
	else //nZeroesReg = 8
	begin
	fifthbit = 0;
		for(i = 11-nZeroesReg; (i >= (8-nZeroesReg))&&(i >= 0) ; i = i -1)
		begin
			if(count >=0)
			begin
				sigout[count] = X[i];
				count = count -1;
			end
		end
	end
	
	//if(X[11-nZeroesReg:7-nZeroesReg] == 31)
		//$display("hello");
	//if(X[11-nZeroesReg:7-nZeroesReg] == 5'b11111)
		//nZeroesReg = nZeroesReg -1;
end




endmodule
