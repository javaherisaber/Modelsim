module testbench;
	`timescale 1ns/1ps
	reg [3:0]A,B;
	wire A_eq_B,A_gt_B,A_lt_B;
	
	MagnitudeComparator mc(A_gt_B,A_lt_B,A_eq_B,A,B);
	
	initial 
		begin
			A=4'b0010; B=4'b1011;
			#10
			A=4'b1011; B=4'b1011;
			#10
			A=4'b1100; B=4'b1001;
			#10
			A=4'b0011; B=4'b0110;
			#10
			A=4'b0010; B=4'b0010;
		end
	always @(A,B,A_eq_B,A_gt_B,A_lt_B)
		begin
			if(A_eq_B)
			$display($time," A = %b B = %b ** A=B",A,B);
			else if(A_gt_B)
			$display($time," A = %b B = %b ** A>B",A,B);
			else if(A_lt_B)
			$display($time," A = %b B = %b ** A<B",A,B);
		end

endmodule
