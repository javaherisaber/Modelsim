module Alu8bit(s,cout,a,b,cin,sel);
	`timescale 1ns/1ps
	output [7:0] s;
	output cout;
	input [7:0]a,b;
	input [3:0]sel;
	input cin;
	wire [6:0]w;
	
	alu1bit ab1(s[0],w[0],a[0],b[0],cin,sel);
	alu1bit ab2(s[1],w[1],a[1],b[1],w[0],sel);
	alu1bit ab3(s[2],w[2],a[2],b[2],w[1],sel);
	alu1bit ab4(s[3],w[3],a[3],b[3],w[2],sel);
	alu1bit ab5(s[4],w[4],a[4],b[4],w[3],sel);
	alu1bit ab6(s[5],w[5],a[5],b[5],w[4],sel);
	alu1bit ab7(s[6],w[6],a[6],b[6],w[5],sel);
	alu1bit ab8(s[7],cout,a[7],b[7],w[6],sel);
	
	endmodule
