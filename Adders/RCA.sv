// Code your design here
module FA(A, B, Cin, S, Cout);
  input  logic A, B;
  input  logic Cin;
  output logic S, Cout;
  assign S    = A ^ B ^ Cin;
  assign Cout = (A & B) | (B & Cin) | (A & Cin);
endmodule


module RCA(A, B, Cin, S, Cout);
  input  logic [3:0] A, B;
  input  logic Cin;
  output logic [3:0] S;
  output logic Cout;
  logic [1:3] C;
  FA n1(A[0], B[0], Cin,  S[0], C[1]);
  FA n2(A[1], B[1], C[1], S[1], C[2]);
  FA n3(A[2], B[2], C[2], S[2], C[3]);
  FA n4(A[3], B[3], C[3], S[3], Cout);
endmodule
