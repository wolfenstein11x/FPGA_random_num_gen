module tb();

logic clk, rst, x;
logic[7:0] random_num;

random_num_gen dut(clk, rst, x, random_num);

always begin
clk = 0; #5; clk = 1; #5;
end

initial begin
rst = 0;  x = 1;  #11;
rst = 1; x = 1; #27;
x = 0; #10; x = 1; #34;
x = 0; #10; x = 1; #25;
x = 0; #10; x = 1; #50;
x = 0; #10; x = 1; #40;
$stop;
end







endmodule
