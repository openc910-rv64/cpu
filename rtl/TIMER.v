module TIMER(input input_clk,rst_b, output reg count);

always@(posedge input_clk or negedge rst_b)
begin
  if (!rst_b)
    count <= 64'b0;
  else
    count <= count + 1'b1;
end

endmodule

