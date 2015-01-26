module testbench;
	`timescale 1ns/1ps
	reg x,y,z;
	wire B,D;
	
	fullSubtractor a(B,D,x,y,z);
	
	initial 
		begin
			x=1'b0; y=1'b0; z=1'b0;
			#10
			x=1'b0; y=1'b0; z=1'b1;
			#10
			x=1'b0; y=1'b1; z=1'b0;
			#10
			x=1'b0; y=1'b1; z=1'b1;
			#10
			x=1'b1; y=1'b0; z=1'b0;
			#10
			x=1'b1; y=1'b0; z=1'b1;
			#10
			x=1'b1; y=1'b1; z=1'b0;
			#10
			x=1'b1; y=1'b1; z=1'b1;
		end
	initial
		$monitor($time," x = %b y = %b z = %b *** B = %b  D = %b",x,y,z,B,D);

endmodule