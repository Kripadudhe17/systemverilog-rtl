// Code your testbench here
// or browse Examples
module HATB;

  logic A;
  logic B;
  logic S;
  logic C;
  HA uut (
    .A(A),
    .B(B),
    .S(S),
    .C(C)
  );

  initial begin
    $monitor("Time=%0t | A=%b B=%b | S=%b C=%b", $time, A, B, S, C);
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    $finish;
  end
   initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
    #10000 $finish;
end
endmodule
