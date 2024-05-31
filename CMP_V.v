module CMP_V(
	input wire [15:0]a,
	input wire [15:0]b,
	input wire [2:0]sel,
	output reg compout
);
localparam eq=0,neq=1,gt=2,gte=3,lt=4,lte=5;
always @(a or b or sel)
	case(sel)
		eq:if(a==b) compout<=1;else compout<=0;	
		neq:if(a!=b)compout<=1;else compout<=0;
		gt:if(a>b)compout<=1;else compout<=0;
		gte:if(a>=b)compout<=1;else compout<=0;
		lt:if(a<b)compout<=1;else compout<=0;
		lte:if(a<=b)compout<=1;else compout<=0;
		default:compout<=0;
	endcase
endmodule
