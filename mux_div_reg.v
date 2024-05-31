module mux_div_reg(
	input wire [15:0] a,
	input wire rst,
	/*synthesis keep*/input wire /*synthesis keep*/wr,
	input wire sel,
	output reg [15:0] c
);
 reg [15:0] reg_0 ;
 reg [15:0] reg_1 ;

always @ (posedge rst or posedge wr)
begin
	if(rst==1'b1)
	begin
		reg_0<=16'h0000;
		reg_1<=16'h0000;
	end
	else
	begin
		case(sel)
			1'b0:
			begin
				reg_0<=a;
				reg_1<=reg_1;
			end
			1'b1:
			begin
				reg_1<=a;
				reg_0<=reg_0;
			end
			default:
			begin
				reg_0<=reg_0;
				reg_1<=reg_1;
			end
		endcase
	end
end

always @(*)
case(sel)
1'b0:
	c<=reg_0;
1'b1:
	c<=reg_1;
default:
	c<=c;
endcase
endmodule
