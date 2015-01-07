//in Relational,Arithmetic,Equality,Logical oparands :: if any operand is Z or X the results are UNKNOWM(X)
//case equality :: in1 === in2 (triple =) it include's check for Z and X
//case inequality :: in1 !== in2 (double =) it include's check for Z and X

//this is Logic shift      :: <<  >>   example--: in1=4'b0101  in1>>2(result=0001)  in1<<1 (result=1010)
//this is Arithmetic shift :: <<< >>>  example--: in1=4'b1101  in1>>>1(result=1110) in1<<<1 (result=1010)
//Replication is this :: {{}} it repeat bits like this --> $displayb({4{a}});
//in the behavioral design :: left hand of statement SHOULD be reg 

//Delay can be these :: number,reg,Parameter,arithmetic with parameter
//Zero Delay is :: for control race condition
//intra assignment is :: act like a temperary variable it take the right hand first and in the determined time will paste the temperary variable in the left hand side
//keyword :: event recieved;    this event will activate with this code : -> recieved;    
usage : always @(recieved)

//in sensitivity list we can act :: @(in1 or in2 or in3)    @(in1,in2,in3)
//for Combination Circuits :: we SHOULD mention all inputs in the sensitivity list --> ALL of it 
//Blocking Assignment for :: Combination Circuits
//nonBlocking Assignment for :: syncronous Circuits
//fork join :: all of instructions in fork join block will be executed simultaneously
//a nested fork join :: inside fork join is simultaneous and after and befor it are sequential 
//Asyncronous input :: do not have any deal with Clock
//keyword :: repeat(40) begin #5 clk = ~clk; end   --> it repeat 40 times this statement
//keyword :: forever #10 clk = ~clk;     --> this statement will be done forever
//Notice  :: forever SHOULD be used Only in initial block
//other loops :: while and for are exactly like C language

