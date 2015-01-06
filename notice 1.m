//keyword :: integer count;
//keyword :: real    delta;
//Array multidimension :: reg [4:0] port_id[0:7];   اولین آکولاد برای وکتور و دومین آکولاد برای آرایه است
//Array assign 1       :: port_id[3] = 0;           این مقدار در آرایه 3 قرار میگیرد
//Array assign 2	   :: port_id[][] = ...         آکولاد اول برای آرایه و آکولاد دوم برای وکتور است

//Notice 1 :: ورودی و خروجی نمیتوانند آرایه_وکتور باشند
//System task :: $stop    --> stop simulation , usefull for debugging
//system task :: $finish  --> terminate simulation
//Notice 2 :: input and inout cannot declare as reg

//Delay Rising time   :: (0-x-z) to 1
//Delay Falling time  ::  1 to (0-x-z)
//Delay Turn Off time ::  (1_0_x) to z
//Delay definition    :: and #(10,20,30) ad1(out,in1,in2);    -->   #(Rising,Falling,Turn off)
//Delay definition 2  :: and #(10,20)                         --> it choose minimum for Turn Off

//Continuous Assignment :: assign out=in1&in2;
//Continuous Assignment :: left hand side must be NET
//Continuous Assignment :: right hand side could be reg,net or even function calls
//implicit Continuous Assignment :: wire out=in1&in2;
//implicit Net Declaration :: assign out = in1&in2;         -->out will be wire by defualt
//Regular Assignment Delay :: assign #10 out = in1 & in2;   --> out will have value after 10 ns