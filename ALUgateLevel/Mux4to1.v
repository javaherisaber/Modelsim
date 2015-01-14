module mux4to1(out,in,sel);
	`timescale 1ns/1ps
	output out;
	input [1:0] sel;
	input [3:0] in;
	wire [5:0] w;
	
	
	not n1(w[0],sel[0]);
	not n2(w[1],sel[1]);
	
	and ad1(w[2],in[0],w[1],w[0]);
	and ad2(w[3],in[1],w[1],sel[0]);
	and ad3(w[4],in[2],sel[1],w[0]);
	and ad4(w[5],in[3],sel[1],sel[0]);
	
	or or1(out,w[2],w[3],w[4],w[5]);
	
	endmodule 
