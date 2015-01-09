Function and Tasks ::::
Distinctions :
//function cannot have delay --- task can have any type of delay
//function cannot call task and only can call a function  --- task can call task or function
//function must have at least one input and Exactly one output (its name is output) --- task can have zero or more of any type
//task have NO return value

features : 
//taks and function should be used in initial or always block
//a task can change global reg values from upper it's scope

//Automatic task and function :: if we wanna use one task(function) at two places at the same time we should use Automatic type espacially in recursive function

//Mealy machine :: function of current state and inputs
//Moore machine :: function of current state only
