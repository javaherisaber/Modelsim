//Question 1

module gatelevel(x,y,a);
	`timescale 1ns/1ps
	output x,y;
	input [3:0] a;
	wire  [6:0] w;
	
	not nt1(w[0],a[0]);
	not nt2(w[1],a[1]);
	not nt3(w[2],a[2]);
	not nt4(w[3],a[3]);
	
	and ad1(w[4],w[3],a[2],w[1],a[0]);
	and ad2(w[5],a[3],a[2],w[1],w[0]);
	and ad3(w[6],w[0],w[1],w[2],w[3]);
	
	or  #(20) or1(x,w[4],w[5]);
	xor #(30) xr1(y,w[5],w[6]);

endmodule 
