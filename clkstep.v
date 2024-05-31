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
// CREATED		"Wed Mar 20 19:19:42 2024"

module clkstep(
	CLK,
	STEP,
	T1,
	T2
);


input wire	CLK;
input wire	STEP;
output wire	T1;
output wire	T2;

wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_1;
reg	SYNTHESIZED_WIRE_5;
reg	DFF_inst3;
reg	SYNTHESIZED_WIRE_6;

assign	T1 = SYNTHESIZED_WIRE_5;
assign	T2 = SYNTHESIZED_WIRE_6;




always@(posedge SYNTHESIZED_WIRE_4 or negedge STEP)
begin
if (!STEP)
	begin
	SYNTHESIZED_WIRE_5 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge SYNTHESIZED_WIRE_4 or negedge STEP)
begin
if (!STEP)
	begin
	SYNTHESIZED_WIRE_6 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_6 <= SYNTHESIZED_WIRE_5;
	end
end

assign	SYNTHESIZED_WIRE_4 = CLK | DFF_inst3;


always@(posedge SYNTHESIZED_WIRE_4 or negedge STEP)
begin
if (!STEP)
	begin
	DFF_inst3 <= 0;
	end
else
	begin
	DFF_inst3 <= SYNTHESIZED_WIRE_6;
	end
end

assign	SYNTHESIZED_WIRE_1 = ~(SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6);


endmodule
