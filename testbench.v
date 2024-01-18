`include "oneclockdelay.v"

module tb ();
    reg clk,inp;
    wire out1,out2,out3;
    integer i;
    rising a0(.clk(clk),.inp(inp),.out(out2));
    falling a1(.clk(clk),.inp(inp),.out(out1));
    bothedge a2(.clk(clk),.inp(inp),.out(out3));
    initial begin
        clk=0;
        forever begin
            #1;
            clk=~clk;
        end
    end
    initial begin
        inp=0;
        for (i = 0;i<=15 ;i++ ) begin
            #3.5;    
            inp=~inp;
        end
        $finish();
    end
    initial begin
        $dumpfile("signal.vcd");
        $dumpvars(0,tb);
    end
endmodule
