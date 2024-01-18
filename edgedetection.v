// posedge
module rising (
    input inp,
    input clk,
    output wire out
);
    reg delay;
    wire inv;
    always @(posedge clk) begin
        delay<= ~inp;
    end
    assign out= delay & inp;
endmodule
// negedge
module falling (
    input inp,
    input clk,
    output wire out
);
    reg delay;
    wire inv;
    always @(posedge clk) begin
        delay<= inp;
    end
    not a1(inv,inp);
    assign out= inv & delay;
endmodule
module bothedge (
    input inp,
    input clk,
    output wire out
);
    reg delay;
    always @(posedge clk) begin
        delay<= inp;
    end
    assign out=inp^delay;
endmodule
