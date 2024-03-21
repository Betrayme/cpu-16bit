module ALU(
    input wire [15:0] databus,
    input wire [15:0] workregout,
    input wire [3:0] sel,
    output reg [15:0] aluout
);
parameter alupass=0 ;
parameter andOp=1;
parameter orOp=2;
parameter notOp=3;
parameter xorOp=4;
parameter plus=5;
parameter sub=6;
parameter inc=7;
parameter dec=8;
parameter zero=9;

always @(databus or workregout or sel) 
case (sel)
    alupass: aluout<=databus;
    andOp: aluout<=databus&workregout;
    orOp: aluout<=databus|workregout;
    xorOp: aluout<=databus^workregout;
    notOp: aluout<=~databus;
    plus: aluout<=databus+workregout;
    sub: aluout<=databus-workregout;
    inc: aluout<=databus+16'd1;
    dec: aluout<=databus-16'd1;
    zero: aluout<=0;
    default:
    aluout<=0; 
endcase
endmodule