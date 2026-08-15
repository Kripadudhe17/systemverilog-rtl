// Code your design here
module decoder(S,D);
  input logic [1:0] S;
  output logic [3:0] D;
  assign D[0] = ~S[1] & ~S[0];
  assign D[1] = ~S[1] &  S[0];
  assign D[2] =  S[1] & ~S[0];
  assign D[3] =  S[1] &  S[0];
endmodule
