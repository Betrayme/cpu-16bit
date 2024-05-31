module shiftReg(
    input wire [2:0] sel,
    input wire [15:0] a,
    output reg [15:0] y
//测试
	//output wire [15:0] test_shiftReg
//
);
//测试
	//assign test_shiftReg=y;
//

parameter sftpass=0,sftl=1,sftr=2,rotl=3,rotr=4;
always @(a or sel) 
	case (sel)
		sftpass:y<=a;
		sftl: y<={a[14:0],1'b0};
		sftr: y<={1'b0,a[15:1]};
		rotl: y<={a[14:0],a[15]};
		rotr: y<={a[0],a[15:1]};
		default: y<=0;
	endcase
endmodule