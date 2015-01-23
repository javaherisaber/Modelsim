//Question 3

//section a
//
//  	   a	b	c
//place 1 :1    11  0
//place 2 :2    11  21

//section b
module register8bit(q,d,rst,pst,clk);
	`timescale 1ns/1ps
	output reg [7:0] q;
	input [7:0] d;
	input rst,pst,clk;
always @(posedge clk)
		if(~rst && ~pst)
		q = d;
always @(posedge pst)
		if(~rst && pst)
		q = 8'b11111111;
always @(posedge clk )
		if(rst && ~pst)
		q = 8'b0;

endmodule
	
module register8bitTest;
	`timescale 1ns/1ps
	reg [7:0] d;
	wire [7:0] q;
	reg rst,pst,clk;
	register8bit rs8(q,d,rst,pst,clk);
	
	always
	begin
	#50 clk = ~clk;
	end
	
	initial 
	begin
		pst = 1'b0;
		clk = 1'b0;
		rst = 1'b0;
	end
		
	initial 
		begin
			d=8'h20;
			#55  d=8'h13;
			#100 d=8'h27;
			#100 d=8'hA5;
			#100 pst = 1'b1;
			#100 rst = 1'b1; pst = 1'b0;
		end
		
	initial 
		$monitor($time,"q : %h d : %h *** rst = %b pst = %b",q,d,rst,pst);
endmodule 