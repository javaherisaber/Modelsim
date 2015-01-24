module fullSubtractor(d,bout,a,b,bin);
output d,bout;
input a,b,bin;
wire [4:0] w;

xor x1(w[0],a,b);
not n1(w[1],a);
and ad1(w[2],b,w[1]);
xor x2(d,w[0],bin);
not n2(w[3],w[0]);
and ad2(w[4],w[3],bin);
or  o1(bout,w[4],w[2]);

endmodule

module fourbitSubtractor(d,bout,a,b,bin);
output [3:0] d;
output bout;
input [3:0] a,b;
input bin;
wire [2:0] w;

fullSubtractor f1(d[0],w[0],a[0],b[0],bin);
fullSubtractor f2(d[1],w[1],a[1],b[1],w[0]);
fullSubtractor f3(d[2],w[2],a[2],b[2],w[1]);
fullSubtractor f4(d[3],bout,a[3],b[3],w[2]);

endmodule

module test;
  reg [3:0] a;
  reg [3:0] b;
  reg bin;
  wire [3:0] d;
  wire bout;
  
  fourbitSubtractor fbs(d,bout,a,b,bin);
  
  initial 
    
begin
  
  $monitor($time," a = %b b = %b bin = %b d = %b bout = %b",a,b,bin,d,bout);
  a=4'b1111; b=4'b0001; bin=1'b0;
  #120
  a=4'b0010; b=4'b1000; bin=1'b1;
  #240
  a=4'b1110; b=4'b1010; bin=1'b0;

  end
endmodule

