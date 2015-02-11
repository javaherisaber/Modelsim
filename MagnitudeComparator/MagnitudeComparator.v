module MagnitudeComparator(A_gt_B,A_lt_B,A_eq_B,a,b);
	`timescale 1ns/1ps
	output A_eq_B,A_gt_B,A_lt_B;
	input [3:0] a,b;
	wire [3:0] x;
	
	assign x[0] = (a[0]&&b[0])||((!a[0])&&(!b[0]));
	assign x[1] = (a[1]&&b[1])||((!a[1])&&(!b[1]));
	assign x[2] = (a[2]&&b[2])||((!a[2])&&(!b[2]));
	assign x[3] = (a[3]&&b[3])||((!a[3])&&(!b[3]));
	
	assign A_gt_B = (a[3]&&(!b[3]))||(x[3]&&a[2]&&(!b[2]))
				  ||(x[3]&&x[2]&&a[1]&&(!b[1]))
				  ||(x[3]&&x[2]&&x[1]&&a[0]&&(!b[0]));
	assign A_lt_B = ((!a[3])&&b[3])||(x[3]&&(!a[2])&&b[2])
				  ||(x[3]&&x[2]&&(!a[1])&&b[1])
				  ||(x[3]&&x[2]&&x[1]&&(!a[0])&&b[0]);
	assign A_eq_B = x[3]&&x[2]&&x[1]&&x[0];
	
endmodule
