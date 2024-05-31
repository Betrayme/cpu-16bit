`timescale 1us/1ns
module testtop ();
    reg clk;
    reg rst;
initial begin
    fork
        #0 clk=0;
        #0 rst=1;
    join
    #5 rst=0;
	 #5 rst=1;
end

always #1
	clk=~clk;
CPU16bit cpu(
   .CLK_SYSTEM(clk),
	.KEY4(rst)
);


endmodule
