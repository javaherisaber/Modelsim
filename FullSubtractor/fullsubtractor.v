module fullSubtractor(B,D,x,y,z);
	`timescale 1ns/1ps
	output B,D;
	input x,y,z;
	
	assign D = (((!x)&&(!y)&&(z))||
			   ((!x)&&(y)&&(!z))||
			   ((x)&&(!y)&&(!z))||
			   ((x)&&(y)&&(z)));
	assign B = ( ((!x)&&(y))||
			   ((!x)&&(z))||
			   ((y)&&(z)) );
	endmodule
