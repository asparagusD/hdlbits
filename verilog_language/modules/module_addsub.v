module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] w4;
    wire [15:0] w1, w2;
    wire w3;
    
    assign w4 = b ^ {32{sub}};
    
    add16 dut1(a[15:0], w4[15:0], sub, w1, w3);
    add16 dut2(a[31:16], w4[31:16], w3, w2);
    
    assign sum = {w2, w1};

endmodule
