module REG_AR7(
    input wire CLK,
    input wire [15:0] data,
    input wire [2:0] sel,
    output wire [15:0] q,
	 output wire [15:0] com
);
reg [15:0] ramdata[7:0];
always @(posedge CLK)
begin
ramdata[sel]<=data;
end
assign q=ramdata[sel];
assign com=ramdata[3'd0];
endmodule
