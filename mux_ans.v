module mux_ans(
	input wire rst,
	input wire [15:0] a,
	input wire [3:0] muxsel,
	/* synthesis keep */input wire muxWr,
	input wire clk,
	output wire [15:0] b
);
reg [32:0] c;

always @ (posedge clk or posedge muxWr or posedge rst)
begin
	if(rst==1'b1)
		c<=32'h0;
	else
	begin
		if(muxWr==1'b1)
			c[muxsel +: 15 ]<=a;
	end
end
assign b=c[muxsel +: 15 ];

endmodule
