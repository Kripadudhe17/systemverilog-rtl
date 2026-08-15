// Code your testbench here
// or browse Examples
module decoderTB();

logic [2:0] S;
logic [7:0] D,D1;

decoder n1(.S(S),.D(D));

always @(*)
begin
    if (S==0)
        D1=8'b00000001;
    else if (S==1)
        D1=8'b00000010;
    else if (S==2)
        D1=8'b00000100;
    else if (S==3)
        D1=8'b00001000;
    else if (S==4)
        D1=8'b00010000;
    else if (S==5)
        D1=8'b00100000;
    else if (S==6)
        D1=8'b01000000;
    else if (S==7)
        D1=8'b10000000;
    else
        D1=8'b00000000;

    if (D==D1)
        $display("Success : S=%b D=%b D1=%b",S,D,D1);
    else
        $display("Fail : S=%b D=%b D1=%b",S,D,D1);
end

initial
begin
    for(int i=0;i<8;i=i+1)
        #5 S=i;
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #100 $finish;
end

endmodule
