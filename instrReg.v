module instrReg(
    input wire CLK,
    input wire [15:0] a,
    output reg [15:0] instrout
);
always @(posedge CLK) 
begin
    instrout<=a;    
end
endmodule