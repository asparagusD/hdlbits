module top_module (
    input clk,
    input x,
    output z
); 
    wire [5:0] w;
    
    assign w[0] = x ^ w[3];
    assign w[1] = x & ~w[4];
    assign w[2] = x | ~w[5];
    
    always @(posedge clk)
        begin
            w[3] = w[0];
            w[4] = w[1];
            w[5] = w[2];
        end
    
    assign z = ~(w[3] | w[4] | w[5]);

endmodule
