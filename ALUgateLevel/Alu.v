module alu1bit(s,cout,a,b,cin,sel);
	`timescale 1ns/1ps
	output s,cout;
	input [3:0] sel;
	input cin,a,b;
	wire [5:0] w;
	
	not nt1(w[0],b);
	
	mux4to1 mx1(w[1],{1'b1,1'b0,w[0],b},sel[1:0]);
	and ad1(w[2],a,b);
	or or1(w[3],a,b);
	xor x1(w[4],a,b);
	FullAdder fa(w[5],cout,a,w[1],cin);
	mux4to1 mx2(s,{w[5],w[4],w[3],w[2]},sel[3:2]);
	
	endmodule 