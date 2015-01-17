module CMPclaRippleTest;
	`timescale 1ns/1ps
	reg cin;
	reg [7:0]a,b;
	wire [7:0]sCla,sRipple;
	wire coutCla,coutRipple;
	Cla8bit cla(sCla,coutCla,a,b,cin);
	adder8bit ripple(sRipple,coutRipple,a,b,cin);
	
	initial 
	begin
	a=8'hFF; b=8'h01; cin=1'b0;
	#200
	a=8'hFF; b=8'hFE; cin=1'b0;
	#400
	a=8'hFF; b=8'hFD; cin=1'b1;
	end
	initial
	$monitor($time," a = %b b = %b cin = %b *** s_CLA = %b *** cout_CLA = %b *** s_Ripple = %b *** cout_Ripple = %b",a,b,cin,sCla,coutCla,sRipple,coutRipple);

endmodule
