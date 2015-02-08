module testbench;
	`timescale 1ns/1ps
	reg count_enable,clear,clock;
	wire [3:0] q;
	
	JKupcounter4bit jk4bit(q,clock,clear,count_enable);
	
	initial 
		begin
			count_enable=1'b0; clear=1'b0;  clock=1'b1;
			#10
			count_enable=1'b0; clear=1'b0;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b1; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b0; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b0; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b0; clear=1'b0;  clock=1'b1;
			#10
			count_enable=1'b0; clear=1'b1;  clock=1'b0;
			#10
			count_enable=1'b0; clear=1'b1;  clock=1'b1;
			#10
			count_enable=1'b0; clear=1'b1;  clock=1'b0;
		end
	initial
			$monitor($time," q = %b ** clock = %b clear = %b count_enable = %b",q,clock,clear,count_enable);

endmodule

