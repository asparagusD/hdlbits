module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire [15:0] w1, w2, w4, w5;
    wire w3;
    
    add16 dut1(a[31:16], b[31:16], 0, w1);
    add16 dut2(a[31:16], b[31:16], 1, w2);
    add16 dut3(a[15:0], b[15:0], 0, w4, w3);
    
    always@(*)
        begin
            case (w3)
                1'b0: w5 = w1;
                1'b1: w5 = w2;
                
                default: w5 = 1'b0;
            endcase    
        end
    
    assign sum = {w5, w4};

endmodule
