module Cla8bit(s,cout,a,b,cin);
	`timescale 1ns/1ps
	output cout;
	output [7:0] s;
	input cin;
	input [7:0]a,b;
	wire [6:0] carry;
	
	adder ad0(s[0],,a[0],b[0],cin);
	adder ad1(s[1],,a[1],b[1],carry[0]);
	adder ad2(s[2],,a[2],b[2],carry[1]);
	adder ad3(s[3],,a[3],b[3],carry[2]);
	adder ad4(s[4],,a[4],b[4],carry[3]);
	adder ad5(s[5],,a[5],b[5],carry[4]);
	adder ad6(s[6],,a[6],b[6],carry[5]);
	adder ad7(s[7],,a[7],b[7],carry[6]);
	
	Cla8bitGenerator cla({cout,carry},a,b,cin);
	
	endmodule
