// Code your design here
module TFF(T,q,qb,clk);
  input logic T;
  input logic clk;
  output logic q;
  output logic qb;
  
  always_ff @(posedge(clk))
    begin
      if(T==0)
        q=q;
      else
        q=~q;
      
      qb=~q;
    end
  endmodule
  
  
