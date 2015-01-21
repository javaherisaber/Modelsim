module Factorial;
	function automatic integer factorial;
	input [31:0] oper;
	integer i;
		begin
		if (oper >= 2)
		   factorial = factorial (oper -1) * oper;  
		else
		   factorial = 1 ;
		end
	endfunction

		integer result;
		initial
		begin
			 result = factorial(3); 
			 $display("Factorial of 3 is %0d", result);
			 result = factorial(4); 
			 $display("Factorial of 4 is %0d", result);
			 result = factorial(5); 
			 $display("Factorial of 5 is %0d", result);
			 result = factorial(6); 
			 $display("Factorial of 6 is %0d", result);
		end
endmodule
