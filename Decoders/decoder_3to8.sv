// Code your design here
module decoder(
    input logic [2:0] S,
    output logic [7:0] D);
always @(*)
begin
    if (S==0)
        D=8'b00000001;
    else if (S==1)
        D=8'b00000010;
    else if (S==2)
        D=8'b00000100;
    else if (S==3)
        D=8'b00001000;
    else if (S==4)
        D=8'b00010000;
    else if (S==5)
        D=8'b00100000;
    else if (S==6)
        D=8'b01000000;
    else if (S==7)
        D=8'b10000000;
    else
        D=8'b00000000;
end
endmodule
