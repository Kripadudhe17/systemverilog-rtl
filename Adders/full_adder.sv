// Code your design here
module fadut(a,b,s,ca);
  input logic a,b; 
  output logic s,ca;
  assign s=a^b;
  assign ca=a&b;
endmodule
