module REG_AR7(
    input wire CLK,
    input wire [15:0] data,
    input wire [2:0] sel,
    output wire [15:0] q
);
reg [15:0] ramdata[7:0];
always @(posedge CLK) 
ramdata[sel]<=data;
assign q=ramdata[sel];
endmodule