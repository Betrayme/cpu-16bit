// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Full Version"
// CREATED		"Mon Mar 18 18:06:55 2024"

//已知的waring:12241 

module CPU16bit(
	CLK,
	STEP,
	RST,
	DataBus
);


input wire	CLK;
input wire	STEP;
input wire	RST;
output wire	[15:0] DataBus;

wire	[6:0] AddressBus;
wire	[15:0] DataBus_ALTERA_SYNTHESIZED;
wire	[15:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[2:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	[15:0] SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	[15:0] SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	[15:0] SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	[3:0] SYNTHESIZED_WIRE_17;
wire	[15:0] SYNTHESIZED_WIRE_18;
wire	[15:0] SYNTHESIZED_WIRE_19;
wire	[2:0] SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	[15:0] SYNTHESIZED_WIRE_23;
wire T1;
wire T2;





Contrlblock	b2v_inst(
	.clock(STEP),
	.reset(RST),
	.instrReg(SYNTHESIZED_WIRE_0),
	.regRd(SYNTHESIZED_WIRE_6),
	.regWr(SYNTHESIZED_WIRE_4),
	.workregWr(SYNTHESIZED_WIRE_16),
	.outRegWr(SYNTHESIZED_WIRE_1),
	.outRegRd(SYNTHESIZED_WIRE_22),
	.progCntRd(SYNTHESIZED_WIRE_9),
	.progCntWr(SYNTHESIZED_WIRE_7),
	.addrRegWr(SYNTHESIZED_WIRE_12),
	.ramRd(SYNTHESIZED_WIRE_11),
	.ramWr(SYNTHESIZED_WIRE_13),
	.instrWr(SYNTHESIZED_WIRE_15),
	.aluSel(SYNTHESIZED_WIRE_17),
	.regSel(SYNTHESIZED_WIRE_3),
	.shiftSel(SYNTHESIZED_WIRE_20)
);
	
	defparam	b2v_inst.adds1 = 8;
	defparam	b2v_inst.adds2 = 9;
	defparam	b2v_inst.adds3 = 10;
	defparam	b2v_inst.alupass = 4'b0000;
	defparam	b2v_inst.andOp = 4'b0001;
	defparam	b2v_inst.dec = 4'b1000;
	defparam	b2v_inst.execute = 3;
	defparam	b2v_inst.inc = 4'b0111;
	defparam	b2v_inst.incPC1 = 4;
	defparam	b2v_inst.incPC2 = 5;
	defparam	b2v_inst.incPC3 = 6;
	defparam	b2v_inst.notOp = 4'b0011;
	defparam	b2v_inst.orOp = 4'b0010;
	defparam	b2v_inst.plus = 4'b0101;
	defparam	b2v_inst.reset1 = 0;
	defparam	b2v_inst.reset2 = 1;
	defparam	b2v_inst.reset3 = 2;
	defparam	b2v_inst.rotl = 3'b011;
	defparam	b2v_inst.rotr = 3'b100;
	defparam	b2v_inst.sftl = 3'b001;
	defparam	b2v_inst.sftpass = 3'b000;
	defparam	b2v_inst.sftr = 3'b010;
	defparam	b2v_inst.sub = 4'b0110;
	defparam	b2v_inst.xorOp = 4'b0100;
	defparam	b2v_inst.zero = 4'b1001;

assign	SYNTHESIZED_WIRE_21 = T2 & SYNTHESIZED_WIRE_1;


REG_AR7	b2v_inst11(
	.CLK(SYNTHESIZED_WIRE_2),
	.data(DataBus_ALTERA_SYNTHESIZED),
	.sel(SYNTHESIZED_WIRE_3),
	.q(SYNTHESIZED_WIRE_5));

assign	SYNTHESIZED_WIRE_2 = T2 & SYNTHESIZED_WIRE_4;

assign	DataBus_ALTERA_SYNTHESIZED[15] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[15] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[14] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[14] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[13] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[13] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[12] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[12] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[11] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[11] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[10] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[10] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[9] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[9] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[8] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[8] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[7] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[7] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[6] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[6] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[5] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[5] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[4] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[4] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[3] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[3] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[2] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[2] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[1] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_6 ? SYNTHESIZED_WIRE_5[0] : 1'bz;


programReg	b2v_inst14(
	.CLK(T1),
	.rst(RST),
	.load(SYNTHESIZED_WIRE_7),
	.d(DataBus_ALTERA_SYNTHESIZED),
	.q(SYNTHESIZED_WIRE_8)
);

assign	DataBus_ALTERA_SYNTHESIZED[15] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[15] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[14] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[14] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[13] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[13] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[12] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[12] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[11] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[11] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[10] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[10] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[9] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[9] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[8] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[8] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[7] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[7] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[6] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[6] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[5] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[5] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[4] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[4] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[3] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[3] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[2] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[2] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[1] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_8[0] : 1'bz;

assign	DataBus_ALTERA_SYNTHESIZED[15] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[15] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[14] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[14] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[13] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[13] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[12] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[12] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[11] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[11] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[10] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[10] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[9] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[9] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[8] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[8] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[7] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[7] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[6] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[6] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[5] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[5] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[4] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[4] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[3] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[3] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[2] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[2] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[1] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_11 ? SYNTHESIZED_WIRE_10[0] : 1'bz;


addrReg	b2v_inst17(
	.CLK(T2),
	.rst(RST),
	.load(SYNTHESIZED_WIRE_12),
	.d(DataBus_ALTERA_SYNTHESIZED),
	.addrout(AddressBus)
	);


memory_ram	b2v_inst18(
	.clock(T1),
	.wren(SYNTHESIZED_WIRE_13),
	.address(AddressBus),
	.data(DataBus_ALTERA_SYNTHESIZED),
	.q(SYNTHESIZED_WIRE_10));


instrReg	b2v_inst2(
	.CLK(SYNTHESIZED_WIRE_14),
	.a(DataBus_ALTERA_SYNTHESIZED),
	.instrout(SYNTHESIZED_WIRE_0));


clkstep	b2v_inst3(
	.CLK(CLK),
	.STEP(STEP),
	.T1(T1),
	.T2(T2)
);

assign	SYNTHESIZED_WIRE_14 = T2 & SYNTHESIZED_WIRE_15;


workReg	b2v_inst6(
	.CLK(T1),
	.rst(RST),
	.load(SYNTHESIZED_WIRE_16),
	.d(DataBus_ALTERA_SYNTHESIZED),
	.q(SYNTHESIZED_WIRE_18));


ALU	b2v_inst7(
	.databus(DataBus_ALTERA_SYNTHESIZED),
	.sel(SYNTHESIZED_WIRE_17),
	.workregout(SYNTHESIZED_WIRE_18),
	.aluout(SYNTHESIZED_WIRE_19)
	);
	defparam	b2v_inst7.alupass = 0;
	defparam	b2v_inst7.andOp = 1;
	defparam	b2v_inst7.dec = 8;
	defparam	b2v_inst7.inc = 7;
	defparam	b2v_inst7.notOp = 3;
	defparam	b2v_inst7.orOp = 2;
	defparam	b2v_inst7.plus = 5;
	defparam	b2v_inst7.sub = 6;
	defparam	b2v_inst7.xorOp = 4;
	defparam	b2v_inst7.zero = 9;


shiftReg	b2v_inst8(
	.a(SYNTHESIZED_WIRE_19),
	.sel(SYNTHESIZED_WIRE_20),
	.y(SYNTHESIZED_WIRE_23)
	);
	defparam	b2v_inst8.rotl = 3;
	defparam	b2v_inst8.rotr = 4;
	defparam	b2v_inst8.sftl = 1;
	defparam	b2v_inst8.sftpass = 0;
	defparam	b2v_inst8.sftr = 2;


buffer	b2v_inst9(
	.CLK(SYNTHESIZED_WIRE_21),
	.en(SYNTHESIZED_WIRE_22),
	.rst(RST),
	.a(SYNTHESIZED_WIRE_23),
	.q(DataBus_ALTERA_SYNTHESIZED)
	);

assign	DataBus = DataBus_ALTERA_SYNTHESIZED;

endmodule
