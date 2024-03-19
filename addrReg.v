module addrReg(
    input wire CLK,
    input wire rst,
    input wire load,
    input wire [15:0] d,
    output reg [15:0] q,
	 output wire [6:0] addrout
);
always @(posedge CLK or posedge rst) begin
    if(rst==1'b1)
	 begin 
	 q<=16'h0000;
	 end
    else begin
        if(load==1'b1)
        q<=d;
    end
end
assign addrout=q[6:0];
endmodule
