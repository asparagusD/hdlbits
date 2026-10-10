module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    genvar i;
    wire [98:0] w;
    
    bcd_fadd bcd_init(.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(w[0]));
    bcd_fadd bcd_final(.a(a[399:396]), .b(b[399:396]), .cin(w[98]), .sum(sum[399:396]), .cout(cout)); 
    
    generate
        for (i=4; i<396; i=i+4)
            begin : gen_bcd_adders
                bcd_fadd bcd_loop(.a(a[(i+3):i]), .b(b[(i+3):i]), .cin(w[(i/4)-1]), .sum(sum[(i+3):i]), .cout(w[i/4])); 
                
                
            end    
        
    endgenerate 
    
           

endmodule
