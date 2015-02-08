module JKupcounter4bit(q,clock,clear,count_enable);
	`timescale 1ns/1ps
	output [3:0] q;
	input clock,clear,count_enable;
	wire [2:0] w;
	
	assign w[0] = count_enable & q[0],
		   w[1] = w[0] & q[1],
		   w[2] = w[1] & q[2];
		   
	jkFlipFlop jk0(q[0], ,count_enable,count_enable,clear,clock);
	jkFlipFlop jk1(q[1], ,w[0],w[0],clear,clock);
	jkFlipFlop jk2(q[2], ,w[1],w[1],clear,clock);
	jkFlipFlop jk3(q[3], ,w[2],w[2],clear,clock);
	
endmodule 