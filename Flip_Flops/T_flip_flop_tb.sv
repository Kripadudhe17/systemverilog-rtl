// Code your testbench here
// or browse Examples
module TFF_tb;
  bit T;
  logic clk,q,qb,q1,q1b;
  TFF n1(T,q,qb,clk);
  initial begin
    q1=0;
    q1b=1;
    clk='0;
    for(bit i=0;i<=1;i++)
      #35ns T=i;
  end
  always@(posedge clk)
    begin
      case (T)
        1'b0:q1=q1;
        1'b1:q1=~q1;
      endcase
      q1b=~q1;
    end 
  always@(*)
    begin 
      if(q==q1 && qb==q1b)
        $display ("Success:q=%b q1=%b qb=%b q1b=%b T=%b",q,q1,qb,q1b,T);
      else
        $display("Fail:q=%b q1=%b qb=%b q1b=%b T=%b",q,q1,qb,q1b,T);
    end
  always 
    #30ns clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
    #1000 $finish;
end
endmodule
      
 
  
