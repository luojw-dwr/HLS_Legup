// megafunction wizard: %LPM_MULT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_mult 

// ============================================================
// File Name: tiger_multu.v
// Megafunction Name(s):
// 			lpm_mult
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 9.1 Build 222 10/21/2009 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2009 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module tiger_multu (
	clock,
	dataa,
	datab,
	result);

	input	  clock;
	input	[31:0]  dataa;
	input	[31:0]  datab;
	output	[63:0]  result;

	wire [63:0] sub_wire0;
	wire [63:0] result = sub_wire0[63:0];

	wire clock_wire;

	assign clock_wire = clock;

	lpm_mult	lpm_mult_component (
				.dataa (dataa),
				.datab (datab),
				.clock (clock_wire),
				.result (sub_wire0),
				.aclr (1'b0),
				.clken (1'b1),
				.sum (1'b0));
	defparam
		lpm_mult_component.lpm_hint = "MAXIMIZE_SPEED=9",
		lpm_mult_component.lpm_pipeline = 4,
		lpm_mult_component.lpm_representation = "UNSIGNED",
		lpm_mult_component.lpm_type = "LPM_MULT",
		lpm_mult_component.lpm_widtha = 32,
		lpm_mult_component.lpm_widthb = 32,
		lpm_mult_component.lpm_widthp = 64;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: AutoSizeResult NUMERIC "1"
// Retrieval info: PRIVATE: B_isConstant NUMERIC "0"
// Retrieval info: PRIVATE: ConstantB NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix IV"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "4"
// Retrieval info: PRIVATE: Latency NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: SignedMult NUMERIC "0"
// Retrieval info: PRIVATE: USE_MULT NUMERIC "1"
// Retrieval info: PRIVATE: ValidConstant NUMERIC "0"
// Retrieval info: PRIVATE: WidthA NUMERIC "32"
// Retrieval info: PRIVATE: WidthB NUMERIC "32"
// Retrieval info: PRIVATE: WidthP NUMERIC "64"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: optimize NUMERIC "1"
// Retrieval info: CONSTANT: LPM_HINT STRING "MAXIMIZE_SPEED=9"
// Retrieval info: CONSTANT: LPM_PIPELINE NUMERIC "4"
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MULT"
// Retrieval info: CONSTANT: LPM_WIDTHA NUMERIC "32"
// Retrieval info: CONSTANT: LPM_WIDTHB NUMERIC "32"
// Retrieval info: CONSTANT: LPM_WIDTHP NUMERIC "64"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
// Retrieval info: USED_PORT: dataa 0 0 32 0 INPUT NODEFVAL dataa[31..0]
// Retrieval info: USED_PORT: datab 0 0 32 0 INPUT NODEFVAL datab[31..0]
// Retrieval info: USED_PORT: result 0 0 64 0 OUTPUT NODEFVAL result[63..0]
// Retrieval info: CONNECT: @dataa 0 0 32 0 dataa 0 0 32 0
// Retrieval info: CONNECT: result 0 0 64 0 @result 0 0 64 0
// Retrieval info: CONNECT: @datab 0 0 32 0 datab 0 0 32 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL tiger_multu.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL tiger_multu.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL tiger_multu.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL tiger_multu.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL tiger_multu_inst.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL tiger_multu_bb.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL tiger_multu_waveforms.html FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL tiger_multu_wave*.jpg FALSE
// Retrieval info: LIB_FILE: lpm
