module programReg(
    input wire CLK,
    input wire rst,
    input wire load,
    input wire [15:0] d,
    output reg [15:0] q
);

always @(posedge CLK or posedge rst) begin
    if(rst==1'b1) q<=16'h0000; 
    else begin
        if(load==1'b1)
        q<=d;
    end
end
endmodule
