`timescale 100 ns/100 ns

module CPU16bit_test();
//仿真模块输出
reg RST;
reg CLK_1us;
reg STEP_4us;
//仿真模块输入

//初始化
initial
	begin
		# 0 begin
				RST=1'b0;
				CLK_1us=1'b0;
				STEP_4us=1'b0;
			 end
		# 10 RST=1'b1;
		# 2  RST=1'b0;
	end
always # 10
	CLK_1us=~CLK_1us;
always # 40
   STEP_4us=~STEP_4us;

//例化
CPU16bit CPU16bit(
	.CLK(CLK_1us),
	.STEP(STEP_4us),
	.RST(RST)
);

clkstep clkstep(
	.CLK(CLK_1us),
	.STEP(STEP_4us)
);

endmodule

