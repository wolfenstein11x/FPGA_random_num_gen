module random_num_gen(
input logic clk, rst, x,
output logic[9:0] random_num,
output logic[6:0] disp_0, disp_1, disp_2
);

logic[9:0] count;
logic[9:0] mux2_out;
logic[9:0] DFF1_out;


always_ff @(posedge clk) begin
  if (!rst)
    count <= 10'h0;
  else
    count <= count + 1'd1;
end


mux2 m(count, 10'h0, x, mux2_out);
DFF_en d1(clk, rst, ~x, mux2_out, DFF1_out);
DFF_en d2(clk, rst, x, DFF1_out, random_num);

// display random number on 6 segment display
dec_to_disp dd0(random_num[3:0], disp_0);
dec_to_disp dd1(random_num[7:4], disp_1);
dec_to_disp dd2({2'b0, random_num[9:8]}, disp_2);


endmodule