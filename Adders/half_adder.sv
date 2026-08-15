// Code your design here
module HA (
    input  logic A,   
    input  logic B,     
    output logic S,  
    output logic C  
);
  always@(*)
    begin
        S = A ^ B;
        C = A & B;
    end
endmodule
