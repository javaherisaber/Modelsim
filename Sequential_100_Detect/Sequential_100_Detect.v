module Sequential_100_Detector_moore(f,i,clk,reset);
	`timescale 1ns/1ps
	input i,clk,reset;
	output reg f;
	reg [2:1] pres_st,next_st;
	
	always @(posedge clk) // this block for trigger Register
		if(reset) pres_st <= 2'b00;
		else pres_st <= next_st;
	
	always @(pres_st or i) //this block for compute next state
		next_st = comp_next_state(pres_st,i);
	
	always @(pres_st) //this block for compute output
		if(pres_st==2'b11) f=1'b1; else f=1'b0;
		
	function [1:0] comp_next_state;
	input [1:0]  state;
	input i;
	if (state == 2'b0) comp_next_state= i? 2'b1 : 2'b0;
	else if (state == 2'b01) comp_next_state= i? 2'b1 : 2'b10;
	else if (state == 2'b10) comp_next_state= i? 2'b1 : 2'b11;
	else if (state == 2'b11) comp_next_state= i? 2'b1 : 2'b0;
endfunction

endmodule 

module Sequential_100_Detector_mealy(f,i,clk,reset);
   input i, clk,reset; 
   output reg f;
   reg[2:1] pres_st, next_st;
   always @(posedge clk) // this block for trigger Register
       if(reset) pres_st <= 2'b00;
       else pres_st <= next_st;

   always @ (pres_st or i) //this block for compute output
       if (pres_st == 2'b10 && i==1'b0) f = 1'b1;
       else f = 1'b0;
	always @(pres_st or i) //this block for compute output
	case (pres_st)
    2'b00 : next_st = i ? 2'b01 : 2'b00;
    2'b01 : next_st = i ? 2'b01 : 2'b10;
    2'b10 : next_st = i ? 2'b01 : 2'b00;
    default: next_st = 2'b00;
	endcase
endmodule


module test_moore;
	
	reg i,clk,reset;
	wire f;
	Sequential_100_Detector_moore ins(f,i,clk,reset);
	always
	begin
	#50 clk = ~clk;
	end
	
	initial 
	begin
		clk = 1'b0;
		reset = 1'b1;
		#60 reset =1'b0;
	end
		
	initial 
		begin
			#120 i=1'b1;
			#40 i=1'b0;
			#40 i=1'b0;
			#40 i=1'b0;
			#40 i=1'b0;
		end
	initial 
		$monitor($time,"input : %b output : %b",i,f);
endmodule

module test_mealy;
	
	reg i,clk,reset;
	wire f;
	Sequential_100_Detector_mealy ins(f,i,clk,reset);
	always
	begin
	#50 clk = ~clk;
	end
	
	initial 
	begin
		clk = 1'b0;
		reset = 1'b1;
		#60 reset =1'b0;
	end
		
	initial 
		begin
			#120 i=1'b1;
			#40 i=1'b0;
			#40 i=1'b0;
			#40 i=1'b0;
			#40 i=1'b0;
		end
	initial 
		$monitor($time,"input : %b output : %b",i,f);
endmodule
			

