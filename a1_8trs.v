

module a1_8trs(
		input	key,
		input	clk,
		output reg clk_8
);


reg	[4:0]times;
reg state;
parameter 	IDEL 	= 3'd0;
parameter	clk_out = 3'd1;
			
	
	
initial state = IDEL;
initial	times	= 1'b0;	

always@(clk)
	begin
		case(state)
		IDEL:begin	
				if(key == 1)begin	
				state = clk_out;
				clk_8 = 1'b0;
				end	
				else  
				begin
					clk_8 = 1'b0;
					state = IDEL;
				end
			end
		clk_out:begin	
					times = times + 1'b1;
					if(times <= 5'd16)
						begin
							state = clk_out;
							clk_8 = clk;
						end
					else
						begin
							clk_8 <= 1'b0;
							state = IDEL;
							times	= 1'b0;
						end
					
				end
		default:	state = IDEL;
		endcase
	end
	
endmodule

	
	