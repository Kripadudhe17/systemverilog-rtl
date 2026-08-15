// Code your design here
module DFF(D,clk,q);
  input logic D,clk;
  output logic q;
  always_ff @(posedge(clk))
    begin
  if(D==0)
    q=0;
  else
    q=1;
 end
endmodule
  
    
