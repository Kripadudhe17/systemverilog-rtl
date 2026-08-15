// Code your testbench here
// or browse Examples
module decoderTB();
  logic [1:0]S;
  logic [3:0]D1;
  logic [3:0]D;
  decoder n1(S,D);
  always @(S)
    begin
      if (S==0)
        D1=1;
      else if (S==1)
        D1=2;
      else if (S==2)
        D1=4;
      else 
        D1=8;
  
      if (D==D1)
        $display ("Success");
        else
          $display ("Fail");
      end
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
    #1000 $finish;
  end
  initial begin 
    for(int i=0; i<4; i++)
      #5 S=i;
  end
endmodule    
