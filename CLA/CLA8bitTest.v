module CLA8bitTest;
`timescale 1ns/1ps
	reg cin;
	reg [7:0]a,b;
	wire [7:0]s;
	wire cout;
	Cla8bit cla(s,cout,a,b,cin);
	
	initial 
	begin
	a=8'hFF; b=8'h01; cin=1'b0;
	#200
	a=8'hFF; b=8'hFE; cin=1'b0;
	#400
	a=8'hFF; b=8'hFD; cin=1'b1;
	end
	initial
	$monitor($time," a = %b b = %b cin = %b *** s = %b *** cout = %b",a,b,cin,s,cout);

endmodule

