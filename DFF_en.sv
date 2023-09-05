module DFF_en
#(parameter n=10)
(input logic clk, rst, en, 
 input logic[n-1:0] d,
 output logic[n-1:0] q);

always_ff @(posedge clk) begin
  if (!rst)
    q <= 0;
  else if (en)
    q <= d;
  else
    q <= q;
end

endmodule