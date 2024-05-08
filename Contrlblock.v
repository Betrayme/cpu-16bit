/*------------16位指令------------*/
/*---------前5位为机器码---------*/
/*单字指令(16bit)*/
//操作码5b'00001 	//ADD R3 R1 R2 把R1、R2内容相加结果放在R3中 低九位的没三位从高到低分别是R3、sR1、R2
//操作码5b'00010	//MOV  R1 R2 把R2的内容复制到R1中 低六位的没三位从高到低分别是R1、R2
/*---------------------------------*/

/*双字指令(32bit)*/
//操作码5'b00011   	//LD R1 #xxxxH 将立即数放到寄存器R1中第一个16位字低三位放R1,第二个字十六位放立即数
//操作码5'b00100    //LDR R1 #xxxxH将存储器RAM/ROM中对应地址的数存入R1中
//操作码5'b00101	//LJUMP #xxxxH将立即数加载到PC中进行绝对跳转
/*---------------------------------*/

/*-----------全局宏定义值-----------*/
`define ENABLE 1'b1 
`define DISABLE 1'b0 


/*---------------------------------*/

module Contrlblock(
//说明部分
   (* keep="true" *)input  wire clock,					//时钟和复位信号
	input  wire reset,			
	input  wire [15:0] instrReg,			//指令寄存器

	output reg [2:0] regSel,			//寄存器阵列地址
	output reg regRd,					//寄存器阵列读使能
	output reg regWr,					//寄存器阵列写使能,T2有效

	output reg [3:0] aluSel,			//alu工作方式选择

	output reg workregWr,				//工作寄存器写使能,T1有效
	
 	output reg [2:0] shiftSel,

	output reg outRegWr,				//输出寄存器(缓冲器)写使能,T2有效
	output reg outRegRd,				//输出寄存器读使能

	output reg progCntRd,				//程序计数器读使能
	output reg progCntWr,				//程序计数器写使能,T1有效

	output reg addrRegWr,				//地址寄存器写使能,T2有效

	output reg ramRd,					//ram读使能,T1有效
	output reg ramWr,					//ram写使能,T1有效
	
	output reg instrWr				//指令寄存器写使能,T2有效
);

//shiftSel值
localparam sftpass=3'd0,sftl=3'd1,sftr=3'd2,rotl=3'd3,rotr=3'd4;
//aluSel值
localparam alupass=4'd0,andOp=4'd1,orOp=4'd2,notOp=4'd3,xorOp=4'd4,plus=4'd5,sub=4'd6,inc=4'd7,dec=4'd8,zero=4'd9;
//CMP_V值
localparam eq=0,neq=1,gt=2,gte=3,lt=4,lte=5;

//状态值 要修改状态值还要修改顶层设计中的调用参数值!
localparam reset1=0;
localparam reset2=1;
localparam reset3=2;
localparam execute=3;
localparam incPC1=4;
localparam incPC2=5;
localparam incPC3=6;
localparam adds1=7;
localparam adds2=8;
localparam adds3=9;
localparam ld1=10;
localparam ld2=11;
localparam ld3=12;
localparam ljump1=13;
localparam ljump2=14;
localparam ljump3=15;
localparam ljump4=16;
localparam ljump5=17;
localparam ljump6=18;

reg [4:0] current_state;
reg [4:0] next_state;

//主控组合过程
always @ (current_state or instrReg)						//waring(10240)可忽略
begin
	//每个状态前各标志位清零
	regRd<=`DISABLE;	regWr<=`DISABLE; workregWr<=`DISABLE;	outRegWr<=`DISABLE;
	outRegRd<=`DISABLE; progCntRd<=`DISABLE; progCntWr<=`DISABLE; addrRegWr<=`DISABLE;
	ramRd<=`DISABLE; ramWr<=`DISABLE; instrWr<=`DISABLE;

	case(current_state)

	//复位
	reset1:
	begin
		//STEP
		aluSel<=zero;
		shiftSel<=sftpass;
		//T2
		outRegWr<=`ENABLE;
		next_state<=reset2;
	end
	reset2:
	begin
		//STEP
		outRegRd<=`ENABLE;
		//T1
		progCntRd<=`ENABLE;
		//T2,PC的值不需要再输入到总线上,因为总线数据已经是0
		addrRegWr<=`ENABLE;
		next_state<=reset3;
	end
	reset3:
	begin
		//T1
		ramRd<=`ENABLE;
		//T2
		instrWr<=`ENABLE;
		next_state<=execute;
	end

	//程序计数器递增
	incPC1:
	begin
		//STEP
		progCntRd<=`ENABLE;
		aluSel<=inc;						
		shiftSel<=sftpass;						
		//T2
		outRegWr<=`ENABLE;					
		next_state<=incPC2;
	end
	incPC2:
	begin
		//STEP
		outRegRd<=`ENABLE;
		//T1
		progCntWr<=`ENABLE;
		//T2
		addrRegWr<=`ENABLE;		
		next_state<=incPC3;
	end
	incPC3:
	begin
		//STEP
		outRegRd<=`DISABLE;
		//T1
		ramRd<=`ENABLE;
		//T2
		instrWr<=`ENABLE;					
		next_state<=execute;
	end


	//指令识别
	execute:
	begin
		case(instrReg[15:11])					//waring(10235)可以忽略
		5'b00001:	next_state=adds1;
		5'b00011:   next_state=ld1;
		5'b00101:	next_state=ljump1;
		default:	next_state=incPC1;
		endcase
	end

	//单字加法
	adds1:
	begin
		//STEP 										
		regSel<=instrReg[5:3];					//waring(10235)可以忽略
		regRd<=`ENABLE;
		//T1
		workregWr<=`ENABLE;				
		//T2
		next_state<=adds2;
	end
	adds2:
	begin
		//STEP
		regSel<=instrReg[2:0];					//waring(10235)可以忽略
		regRd<=`ENABLE;
		aluSel<=plus;					
		shiftSel<=sftpass;					
		//T2
		outRegWr<=`ENABLE;					
		next_state<=adds3;
	end	
	adds3:
	begin
		//STEP
		outRegRd<=`ENABLE;
		regSel<=instrReg[8:6];					//waring(10235)可以忽略
		//T2
		regWr<=`ENABLE;
		next_state<=incPC1;
	end

	//将立即数送入寄存器阵列
	ld1:
	begin
		//STEP
		progCntRd<=`ENABLE;
		aluSel<=inc;
		shiftSel<=sftpass;
		//T2
		outRegWr<=`ENABLE;
		next_state<=ld2;
	end
	ld2:
	begin
		//STEP
		outRegRd<=`ENABLE;
		//T1
		progCntWr<=`ENABLE;
		//T2
		addrRegWr<=`ENABLE;
		next_state<=ld3;
	end
	ld3:
	begin
		//T1
		ramRd<=`ENABLE;
		regSel<=instrReg[2:0];
		//T2
		regWr<=`ENABLE;
		next_state<=incPC1;
	end
	
	//长跳转指令
	ljump1:
	begin
		//STEP
		progCntRd<=`ENABLE;
		aluSel<=inc;
		shiftSel<=sftpass;
		//T2
		outRegWr<=`ENABLE;
		next_state<=ljump2;
	end
	ljump2:
	begin
		//STEP
		outRegRd<=`ENABLE;	//隐含progCntRd<=`DISABLE;
		next_state<=ljump3;
	end
	ljump3:
	begin
		//STEP
		outRegRd<=`ENABLE;
		//T1
		progCntWr<=`ENABLE;
		//T2
		addrRegWr<=`ENABLE;
		next_state<=ljump4;
	end
	ljump4:
	begin
		//T1	
		ramRd<=`ENABLE;
		next_state<=ljump5;
	end
	ljump5:
	begin
		//保持
		ramRd<=`ENABLE;
		//T1
		progCntWr<=`ENABLE;
		//T2
		addrRegWr<=`ENABLE;
		next_state<=ljump6;
	end
	ljump6:
	begin
		//T1
		ramRd<=`ENABLE;
		//T2
		instrWr<=`ENABLE;
		next_state<=execute;
	end
	
	default:	next_state<=incPC1;	
	endcase
end

//主控时序过程
always @ (posedge clock or posedge reset)
if(reset==1) current_state<=reset1; else current_state<=next_state;
endmodule