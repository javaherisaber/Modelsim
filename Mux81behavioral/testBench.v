module testbench;
	`timescale 1ns/1ps
	reg [7:0]in1,in2,in3,in4,in5,in6,in7,in8;
	reg [2:0] sel;
	wire [7:0] out;
	
	mux81 mx(out,in1,in2,in3,in4,in5,in6,in7,in8,sel);
	
	initial
		begin
			in1=8'd3; in2=8'd43; in3=8'd28; in4=8'd7; in5=8'd11; in6=8'd23; in7=8'd17; in8=8'd20; sel=3'b001;
			#10
			in1=8'd3; in2=8'd43; in3=8'd28; in4=8'd7; in5=8'd11; in6=8'd23; in7=8'd17; in8=8'd20; sel=3'b010;
			#10
			in1=8'd3; in2=8'd43; in3=8'd28; in4=8'd7; in5=8'd11; in6=8'd23; in7=8'd17; in8=8'd20; sel=3'b100;
			#10
			in1=8'd3; in2=8'd43; in3=8'd28; in4=8'd7; in5=8'd11; in6=8'd23; in7=8'd17; in8=8'd20; sel=3'b110;
		end
	initial 
		$monitor($time," in1 = %d in2 = %d in3 = %d in4 = %d in5 = %d in6 = %d in7 = %d in8 = %d ** out = %d sel = %d",in1,in2,in3,in4,in5,in6,in7,in8,out,sel);
endmodule 