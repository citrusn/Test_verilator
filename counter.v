module counter(
  input wire rst,
  input wire clk,
  output reg [7:0]q
);

 

always @(posedge clk or posedge rst)
  if(rst)
    q <= 0;
  else
    q <= q+1;

endmodule