module buffer(
    input wire CLK,
    input wire en,
    input wire rst,
    input wire [15:0] a,
    output reg [15:0] q,
//测试
	 output wire [15:0] test_buffer
);
//测试
assign test_buffer=val;
//
reg [15:0] val;
always @(posedge CLK or posedge rst) 
if(rst==1'b1) val<=16'h0000; else val<=a;
always @(en or val)
if(en==1'b1) q<=val;  else q<=16'bZZZZZZZZZZZZZZZZ;
endmodule