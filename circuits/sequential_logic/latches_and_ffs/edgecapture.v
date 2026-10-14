module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0] q;
    wire [31:0] nedge;
    
    
    always @(posedge clk)
        begin
           q <= in; 
        end
    
    assign nedge = q & ~in;
    
    always @(posedge clk)
        begin
            if (reset)
                out <= 32'b0;
            else
                begin
                   out <= out | nedge; 
                    
                end    
        end    
        
    
      
        
            

endmodule
