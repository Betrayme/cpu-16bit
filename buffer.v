module buffer(
    input wire CLK,
    input wire rst,
    input wire [15:0] a,
    output reg [15:0] q
);

always @(posedge CLK or posedge rst) 
if(rst==1'b1) q<=16'h0000; else q<=a;
endmodule