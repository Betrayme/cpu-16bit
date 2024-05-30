module clkdiv(
	input wire clk,
	input wire rst,
	output reg STEP
);
//产生的STEP周期为clk的4倍
reg [1:0]cnt;
always @ (posedge clk or posedge rst)
begin
	if(rst==1'b1)
		cnt<=2'h0;
	else
		cnt<=cnt+2'h1;
end 
always @(posedge clk)	//必须用同步分频器，当用异步分频器时即cnt电平触发，即使cnt值不变由于DRAM扫描，也会进入always语句，导致STEP被不停取反
begin
	if(rst==1'b1)
		STEP<=1'b0;
	else if(cnt==2'h0)
		STEP<=~STEP;
	else
		STEP<=STEP;
end
endmodule

