// Code your testbench here
// or browse Examples
module DFF_tb;
  bit D;
  logic clk,q,q1;
  DFF n1(D,clk,q);
  initial begin 
    q1=0;
    clk='0;
    for(bit i=0;i<=1;i++)
      #35ns D=i;
  end
  always @(posedge clk)
    begin 
      if(D==0)
           q1=0;
      else
        q1=1;
    end 
  always @(*)
    begin
      if(q==q1)
        $display("Success:q=%b q1=%b D=%b",q,q1,D);
      else
        $display("Fail:q=%b q1=%b D=%b",q,q1,D);
    end 
  always
    #30ns clk=~clk;
   initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
    #1000 $finish;
end
endmodule
        
