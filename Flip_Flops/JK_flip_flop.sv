// Code your design here
module JKFF(J,K,q,qb,clk);
  input logic J,K,clk;
  output logic q,qb;
  
  always_ff @(posedge(clk))
    begin
      if(J==0 && K==0)
        q=q;
      else if(J==0 && K==1)
        q=0;
      else if(J==1 && K==0)
        q=1;
      else
        q=~q;
      
      qb=~q;
    end 
endmodule
