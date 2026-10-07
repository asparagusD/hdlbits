module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire [15:0] w1, w2;
    wire w3;
    
    add16 dut1(a[15:0], b[15:0], 0, w1, w3);
    add16 dut2(a[31:16], b[31:16], w3, w2);
    
    assign sum = {w2, w1};

endmodule
