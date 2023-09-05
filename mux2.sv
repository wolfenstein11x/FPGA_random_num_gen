module mux2
#(parameter n=10)
(input logic[n-1:0] a, b,
 input logic sel,
 output logic[n-1:0] y);

assign y = sel ? b : a;


endmodule