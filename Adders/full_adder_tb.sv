// Code your testbench here
// or browse Examples
module fatb();
logic a,b,s,ca,s1,ca1; 
fadut n1 (a,b,s,ca);
//assign (call) ab
always@(*)
begin
{ca1,s1} =a+b;
if(s==s1 && ca==ca1)
  $display("Success: a=%b b=%b s=%b s1=%b ca=%b ca1=%b",&a,&b,&s,&s1,&ca,&ca1);
else
  $display("Fail: a=%b b=%b s=%b s1=%b ca=%b ca1=%b",&a,&b,&s,&s1,&ca,&ca1);
end
initial 
begin
  for (int i=0;i<4;i=i+1)
    #5 {a,b}=i;
end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #100 $finish;
 end
endmodule

