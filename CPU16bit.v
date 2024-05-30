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
// CREATED		"Thu May 30 19:23:01 2024"

module CPU16bit(
	KEY4,
	CLK_SYSTEM,
	DS_A,
	DS_B,
	DS_E,
	DS_F,
	DS_EN1,
	DS_EN2,
	DS_EN3,
	DS_EN4,
	DS_C,
	DS_D,
	DS_G,
	DS_DP,
	BP1,
	com_out,
	databus,
	muxans,
	state
);


input wire	KEY4;
input wire	CLK_SYSTEM;
output wire	DS_A;
output wire	DS_B;
output wire	DS_E;
output wire	DS_F;
output wire	DS_EN1;
output wire	DS_EN2;
output wire	DS_EN3;
output wire	DS_EN4;
output wire	DS_C;
output wire	DS_D;
output wire	DS_G;
output wire	DS_DP;
output wire	BP1;
output wire	[15:0] com_out;
output wire	[15:0] databus;
output wire	[15:0] muxans;
output wire	[4:0] state;

wire	[6:0] AddressBus;
wire	addrRegWr;
wire	[3:0] aluSel;
wire	CLK;
wire	[15:0] com;
wire	[15:0] DataBus_ALTERA_SYNTHESIZED;
wire	[15:0] instrReg;
wire	instrWr;
wire	ma_rst;
wire	[15:0] mdout;
wire	mdRd;
wire	mdsel;
wire	mdWr;
wire	muxbRd;
wire	[3:0] muxsel;
wire	muxWr;
wire	outRegRd;
wire	outRegWr;
wire	progCntRd;
wire	progCntWr;
wire	ramRd;
wire	ramWr;
wire	regRd;
wire	[2:0] regSel;
wire	regWr;
wire	RST;
wire	[2:0] shiftSel;
wire	STEP;
wire	T1;
wire	T2;
wire	workregWr;
wire	[15:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[15:0] SYNTHESIZED_WIRE_2;
wire	[15:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	[15:0] SYNTHESIZED_WIRE_5;
wire	[15:0] SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	[15:0] SYNTHESIZED_WIRE_10;
wire	[15:0] SYNTHESIZED_WIRE_11;
wire	[15:0] SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;

assign	muxans = SYNTHESIZED_WIRE_10;




addrReg	b2v_addrReg(
	.CLK(T2),
	.rst(RST),
	.load(addrRegWr),
	.d(DataBus_ALTERA_SYNTHESIZED),
	.addrout(AddressBus)
	);

assign	DataBus_ALTERA_SYNTHESIZED[15] = regRd ? SYNTHESIZED_WIRE_0[15] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[14] = regRd ? SYNTHESIZED_WIRE_0[14] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[13] = regRd ? SYNTHESIZED_WIRE_0[13] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[12] = regRd ? SYNTHESIZED_WIRE_0[12] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[11] = regRd ? SYNTHESIZED_WIRE_0[11] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[10] = regRd ? SYNTHESIZED_WIRE_0[10] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[9] = regRd ? SYNTHESIZED_WIRE_0[9] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[8] = regRd ? SYNTHESIZED_WIRE_0[8] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[7] = regRd ? SYNTHESIZED_WIRE_0[7] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[6] = regRd ? SYNTHESIZED_WIRE_0[6] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[5] = regRd ? SYNTHESIZED_WIRE_0[5] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[4] = regRd ? SYNTHESIZED_WIRE_0[4] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[3] = regRd ? SYNTHESIZED_WIRE_0[3] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[2] = regRd ? SYNTHESIZED_WIRE_0[2] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[1] = regRd ? SYNTHESIZED_WIRE_0[1] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[0] = regRd ? SYNTHESIZED_WIRE_0[0] : 1'bz;


buffer	b2v_buffer(
	.CLK(SYNTHESIZED_WIRE_1),
	.rst(RST),
	.a(SYNTHESIZED_WIRE_2),
	.q(SYNTHESIZED_WIRE_3));

assign	DataBus_ALTERA_SYNTHESIZED[15] = outRegRd ? SYNTHESIZED_WIRE_3[15] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[14] = outRegRd ? SYNTHESIZED_WIRE_3[14] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[13] = outRegRd ? SYNTHESIZED_WIRE_3[13] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[12] = outRegRd ? SYNTHESIZED_WIRE_3[12] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[11] = outRegRd ? SYNTHESIZED_WIRE_3[11] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[10] = outRegRd ? SYNTHESIZED_WIRE_3[10] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[9] = outRegRd ? SYNTHESIZED_WIRE_3[9] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[8] = outRegRd ? SYNTHESIZED_WIRE_3[8] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[7] = outRegRd ? SYNTHESIZED_WIRE_3[7] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[6] = outRegRd ? SYNTHESIZED_WIRE_3[6] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[5] = outRegRd ? SYNTHESIZED_WIRE_3[5] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[4] = outRegRd ? SYNTHESIZED_WIRE_3[4] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[3] = outRegRd ? SYNTHESIZED_WIRE_3[3] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[2] = outRegRd ? SYNTHESIZED_WIRE_3[2] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[1] = outRegRd ? SYNTHESIZED_WIRE_3[1] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[0] = outRegRd ? SYNTHESIZED_WIRE_3[0] : 1'bz;


Contrlblock	b2v_inst(
	.clock(STEP),
	.reset(RST),
	.muxFlag(mdout[0]),
	.instrReg(instrReg),
	.regRd(regRd),
	.regWr(regWr),
	.workregWr(workregWr),
	.outRegWr(outRegWr),
	.outRegRd(outRegRd),
	.progCntRd(progCntRd),
	.progCntWr(progCntWr),
	.addrRegWr(addrRegWr),
	.ramRd(ramRd),
	.ramWr(ramWr),
	.instrWr(instrWr),
	.muxbRd(muxbRd),
	.muxWr(muxWr),
	.mdsel(mdsel),
	.mdRd(mdRd),
	.mdWr(mdWr),
	.ma_rst(ma_rst),
	.aluSel(aluSel),
	.muxsel(muxsel),
	.regSel(regSel),
	.shiftSel(shiftSel),
	.stateout(state));


clkdiv	b2v_inst1(
	.clk(CLK),
	.rst(RST),
	.STEP(STEP));

assign	SYNTHESIZED_WIRE_1 = T2 & outRegWr;


REG_AR7	b2v_inst11(
	.CLK(SYNTHESIZED_WIRE_4),
	.data(DataBus_ALTERA_SYNTHESIZED),
	.sel(regSel),
	.com(com),
	.q(SYNTHESIZED_WIRE_0));

assign	SYNTHESIZED_WIRE_4 = T2 & regWr;

assign	SYNTHESIZED_WIRE_13 = mdWr & T1;

assign	DataBus_ALTERA_SYNTHESIZED[15] = mdRd ? mdout[15] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[14] = mdRd ? mdout[14] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[13] = mdRd ? mdout[13] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[12] = mdRd ? mdout[12] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[11] = mdRd ? mdout[11] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[10] = mdRd ? mdout[10] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[9] = mdRd ? mdout[9] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[8] = mdRd ? mdout[8] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[7] = mdRd ? mdout[7] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[6] = mdRd ? mdout[6] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[5] = mdRd ? mdout[5] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[4] = mdRd ? mdout[4] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[3] = mdRd ? mdout[3] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[2] = mdRd ? mdout[2] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[1] = mdRd ? mdout[1] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[0] = mdRd ? mdout[0] : 1'bz;

assign	DataBus_ALTERA_SYNTHESIZED[15] = progCntRd ? SYNTHESIZED_WIRE_5[15] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[14] = progCntRd ? SYNTHESIZED_WIRE_5[14] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[13] = progCntRd ? SYNTHESIZED_WIRE_5[13] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[12] = progCntRd ? SYNTHESIZED_WIRE_5[12] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[11] = progCntRd ? SYNTHESIZED_WIRE_5[11] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[10] = progCntRd ? SYNTHESIZED_WIRE_5[10] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[9] = progCntRd ? SYNTHESIZED_WIRE_5[9] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[8] = progCntRd ? SYNTHESIZED_WIRE_5[8] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[7] = progCntRd ? SYNTHESIZED_WIRE_5[7] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[6] = progCntRd ? SYNTHESIZED_WIRE_5[6] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[5] = progCntRd ? SYNTHESIZED_WIRE_5[5] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[4] = progCntRd ? SYNTHESIZED_WIRE_5[4] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[3] = progCntRd ? SYNTHESIZED_WIRE_5[3] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[2] = progCntRd ? SYNTHESIZED_WIRE_5[2] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[1] = progCntRd ? SYNTHESIZED_WIRE_5[1] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[0] = progCntRd ? SYNTHESIZED_WIRE_5[0] : 1'bz;

assign	DataBus_ALTERA_SYNTHESIZED[15] = ramRd ? SYNTHESIZED_WIRE_6[15] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[14] = ramRd ? SYNTHESIZED_WIRE_6[14] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[13] = ramRd ? SYNTHESIZED_WIRE_6[13] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[12] = ramRd ? SYNTHESIZED_WIRE_6[12] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[11] = ramRd ? SYNTHESIZED_WIRE_6[11] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[10] = ramRd ? SYNTHESIZED_WIRE_6[10] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[9] = ramRd ? SYNTHESIZED_WIRE_6[9] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[8] = ramRd ? SYNTHESIZED_WIRE_6[8] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[7] = ramRd ? SYNTHESIZED_WIRE_6[7] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[6] = ramRd ? SYNTHESIZED_WIRE_6[6] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[5] = ramRd ? SYNTHESIZED_WIRE_6[5] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[4] = ramRd ? SYNTHESIZED_WIRE_6[4] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[3] = ramRd ? SYNTHESIZED_WIRE_6[3] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[2] = ramRd ? SYNTHESIZED_WIRE_6[2] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[1] = ramRd ? SYNTHESIZED_WIRE_6[1] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[0] = ramRd ? SYNTHESIZED_WIRE_6[0] : 1'bz;


mux_ans	b2v_inst17(
	.rst(SYNTHESIZED_WIRE_7),
	.muxWr(SYNTHESIZED_WIRE_8),
	.a(DataBus_ALTERA_SYNTHESIZED),
	.muxsel(muxsel),
	.b(SYNTHESIZED_WIRE_10));


memory_ram	b2v_inst18(
	.clock(T1),
	.wren(ramWr),
	.address(AddressBus),
	.data(DataBus_ALTERA_SYNTHESIZED),
	.q(SYNTHESIZED_WIRE_6));


connection	b2v_inst19(
	.in_1(KEY4),
	.out_1(RST));


instrReg	b2v_inst2(
	.CLK(SYNTHESIZED_WIRE_9),
	.a(DataBus_ALTERA_SYNTHESIZED),
	.instrout(instrReg));

assign	DataBus_ALTERA_SYNTHESIZED[15] = muxbRd ? SYNTHESIZED_WIRE_10[15] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[14] = muxbRd ? SYNTHESIZED_WIRE_10[14] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[13] = muxbRd ? SYNTHESIZED_WIRE_10[13] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[12] = muxbRd ? SYNTHESIZED_WIRE_10[12] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[11] = muxbRd ? SYNTHESIZED_WIRE_10[11] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[10] = muxbRd ? SYNTHESIZED_WIRE_10[10] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[9] = muxbRd ? SYNTHESIZED_WIRE_10[9] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[8] = muxbRd ? SYNTHESIZED_WIRE_10[8] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[7] = muxbRd ? SYNTHESIZED_WIRE_10[7] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[6] = muxbRd ? SYNTHESIZED_WIRE_10[6] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[5] = muxbRd ? SYNTHESIZED_WIRE_10[5] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[4] = muxbRd ? SYNTHESIZED_WIRE_10[4] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[3] = muxbRd ? SYNTHESIZED_WIRE_10[3] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[2] = muxbRd ? SYNTHESIZED_WIRE_10[2] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[1] = muxbRd ? SYNTHESIZED_WIRE_10[1] : 1'bz;
assign	DataBus_ALTERA_SYNTHESIZED[0] = muxbRd ? SYNTHESIZED_WIRE_10[0] : 1'bz;

assign	SYNTHESIZED_WIRE_8 = T1 & muxWr;

assign	SYNTHESIZED_WIRE_7 = ma_rst | RST;


clkstep	b2v_inst3(
	.CLK(CLK),
	.STEP(STEP),
	.T1(T1),
	.T2(T2));


tb	b2v_inst4(
	.CLK(STEP),
	.cnt_dt(com),
	.BP1(BP1),
	.DS_A(DS_A),
	.DS_B(DS_B),
	.DS_E(DS_E),
	.DS_F(DS_F),
	.DS_EN1(DS_EN1),
	.DS_EN2(DS_EN2),
	.DS_EN3(DS_EN3),
	.DS_EN4(DS_EN4),
	.DS_C(DS_C),
	.DS_D(DS_D),
	.DS_G(DS_G),
	.DS_DP(DS_DP));
	defparam	b2v_inst4.EN_1 = 4'b1110;
	defparam	b2v_inst4.EN_2 = 4'b1101;
	defparam	b2v_inst4.EN_3 = 4'b1011;
	defparam	b2v_inst4.EN_4 = 4'b0111;
	defparam	b2v_inst4.EN_A = 4'b0000;
	defparam	b2v_inst4.NUM_0 = 7'b0111111;
	defparam	b2v_inst4.NUM_1 = 7'b0000110;
	defparam	b2v_inst4.NUM_2 = 7'b1011011;
	defparam	b2v_inst4.NUM_3 = 7'b1001111;
	defparam	b2v_inst4.NUM_4 = 7'b1100110;
	defparam	b2v_inst4.NUM_5 = 7'b1101101;
	defparam	b2v_inst4.NUM_6 = 7'b1111101;
	defparam	b2v_inst4.NUM_7 = 7'b0000111;
	defparam	b2v_inst4.NUM_8 = 7'b1111111;
	defparam	b2v_inst4.NUM_9 = 7'b1101111;
	defparam	b2v_inst4.NUM_A = 7'b1110111;
	defparam	b2v_inst4.NUM_B = 7'b1111100;
	defparam	b2v_inst4.NUM_BLK = 7'b0000000;
	defparam	b2v_inst4.NUM_C = 7'b1011000;
	defparam	b2v_inst4.NUM_D = 7'b1011110;
	defparam	b2v_inst4.NUM_E = 7'b1111001;
	defparam	b2v_inst4.NUM_F = 7'b1110001;

assign	SYNTHESIZED_WIRE_9 = T2 & instrWr;


workReg	b2v_inst6(
	.CLK(T1),
	.rst(RST),
	.load(workregWr),
	.d(DataBus_ALTERA_SYNTHESIZED),
	.q(SYNTHESIZED_WIRE_11));


ALU	b2v_inst7(
	.databus(DataBus_ALTERA_SYNTHESIZED),
	.sel(aluSel),
	.workregout(SYNTHESIZED_WIRE_11),
	.aluout(SYNTHESIZED_WIRE_12));
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
	.a(SYNTHESIZED_WIRE_12),
	.sel(shiftSel),
	.y(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst8.rotl = 3;
	defparam	b2v_inst8.rotr = 4;
	defparam	b2v_inst8.sftl = 1;
	defparam	b2v_inst8.sftpass = 0;
	defparam	b2v_inst8.sftr = 2;


mux_div_reg	b2v_inst9(
	.rst(RST),
	.wr(SYNTHESIZED_WIRE_13),
	.sel(mdsel),
	.a(DataBus_ALTERA_SYNTHESIZED),
	.c(mdout));


programReg	b2v_programReg(
	.CLK(T1),
	.rst(RST),
	.load(progCntWr),
	.d(DataBus_ALTERA_SYNTHESIZED),
	.q(SYNTHESIZED_WIRE_5));

assign	CLK = CLK_SYSTEM;
assign	com_out = com;
assign	databus = DataBus_ALTERA_SYNTHESIZED;

endmodule
