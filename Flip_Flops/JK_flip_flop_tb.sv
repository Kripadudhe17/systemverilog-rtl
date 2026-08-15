// Code your testbench here
// or browse Examples
module JKFF_tb;
  bit J,K;
  logic clk,q,qb,q1,q1b;
  JKFF n1(J,K,q,qb,clk);
  initial begin
    q1=0;
    q1b=1;
    clk='0;
    for(bit i=0;i<=2;i++)
      #35ns J=i;
    for(bit j=0;j<=2;j++)
      #35ns K=j;
  end
  always @(posedge clk)
    begin
      case({J,K})
        2'b00:q1=q1;
        2'b01:q1=0;
        2'b10:q1=1;
        2'b11:q1=~q1;
      endcase 
    end
   always @(*)
      begin
        if(q==q1 && qb==q1b)
          $display("Success: q=%b qb=%b q1=%b q1b=%b J=%b K=%b",q,qb,q1,q1b,J,K);
         else
           $display("Fail: q=%b qb=%b q1=%b q1b=%b J=%b K=%b",q,qb,q1,q1b,J,K);
       end 
   always
       #30ns clk=~clk;
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars(0);
     #1000 $finish;
    end
endmodule 
        
 
  
