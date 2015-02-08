module jkFlipFlop(q,qbar,j,k,clear,clock);
	`timescale 1ns/1ps
	output q,qbar;
	input j,k,clear,clock;
	wire a,b,c,d,y,ybar,cbar;
	
	assign cbar = ~(clock),
		   a = ~(qbar&j&clock&clear),
		   b = ~(clock&k&q),
		   y = ~(a&ybar),
		   ybar = ~(y&clear&b),
		   c = ~(y&cbar),
		   d = ~(cbar&ybar);
	assign q = ~(c&qbar),
		   qbar = ~(q&clear&d);
endmodule
