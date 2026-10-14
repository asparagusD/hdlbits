module top_module (
    input clk,
    input j,
    input k,
    output Q);
    
    wire w;
    assign w = j & ~Q | ~k & Q;
    
    always @(posedge clk)
        begin
           Q = w; 
        end    

endmodule
