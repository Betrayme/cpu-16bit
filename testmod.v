module testmod(
	input wire signal,
	output reg [15:0] sig_out
);

always @ (posedge signal)
begin
	if(signal==1'b1)
		sig_out<=16'h0;
end
endmodule
