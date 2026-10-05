`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire first_and, second_and;
    
    assign first_and = a & b;
    assign second_and = c & d;
    assign out = first_and | second_and;
    assign out_n = ~out;

endmodule
