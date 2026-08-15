// Code your testbench here
// or browse Examples
module RCATB();

  logic [3:0] A, B, S, S1;
  logic Cout, Cout1;
  logic Cin;          
  logic [1:3] C;
  RCA n4(A, B, Cin, S, Cout);
always @(*)
  begin
   #10 {Cout1, S1} = A + B + Cin;

    if ((S == S1) && (Cout == Cout1))
      $display("correct");
    else
      $display("fail");
  end
  initial begin
    Cin = 0;

    for (int i = 0; i < 16; i++)
      begin
      #5 A = i;

      for (int j = 0; j < 16; j++)
        begin
        #5 B = j;    
        end
      end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
    #10000 $finish;
end
endmodule
