-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "06/21/2017 08:30:20"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Topo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW15 : IN std_logic;
	SW14 : IN std_logic;
	SW3 : IN std_logic;
	SW2 : IN std_logic;
	SW1 : IN std_logic;
	SW0 : IN std_logic;
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 7);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END Topo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW3	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW15	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW14	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Topo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW15 : std_logic;
SIGNAL ww_SW14 : std_logic;
SIGNAL ww_SW3 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 7);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst15|auto_generated|counter_comb_bita19~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita19~0_combout\ : std_logic;
SIGNAL \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \inst|inst25|Q[0]~feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst8|Selector1~0_combout\ : std_logic;
SIGNAL \inst8|estado_atual.S2~q\ : std_logic;
SIGNAL \inst8|Selector0~0_combout\ : std_logic;
SIGNAL \inst8|estado_atual.S0~q\ : std_logic;
SIGNAL \inst8|proximo_estado.S1~0_combout\ : std_logic;
SIGNAL \inst8|estado_atual.S1~q\ : std_logic;
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \inst|inst12|estado_atual.S7~feeder_combout\ : std_logic;
SIGNAL \inst|inst12|estado_atual.S7~q\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \inst|inst12|estado_atual.S8~feeder_combout\ : std_logic;
SIGNAL \inst|inst12|estado_atual.S8~q\ : std_logic;
SIGNAL \inst|inst12|estado_atual.S9~feeder_combout\ : std_logic;
SIGNAL \inst|inst12|estado_atual.S9~q\ : std_logic;
SIGNAL \inst|inst12|estado_atual.S0~feeder_combout\ : std_logic;
SIGNAL \inst|inst12|estado_atual.S0~q\ : std_logic;
SIGNAL \SW15~input_o\ : std_logic;
SIGNAL \inst|inst12|Selector0~2_combout\ : std_logic;
SIGNAL \inst|inst12|Selector1~0_combout\ : std_logic;
SIGNAL \inst|inst12|estado_atual.S2~q\ : std_logic;
SIGNAL \inst|inst12|Selector2~0_combout\ : std_logic;
SIGNAL \inst|inst12|estado_atual.S3~q\ : std_logic;
SIGNAL \inst|inst12|Selector3~0_combout\ : std_logic;
SIGNAL \inst|inst12|estado_atual.S4~q\ : std_logic;
SIGNAL \inst|inst12|Selector0~0_combout\ : std_logic;
SIGNAL \SW14~input_o\ : std_logic;
SIGNAL \inst|inst12|Selector5~0_combout\ : std_logic;
SIGNAL \inst|inst12|Selector4~0_combout\ : std_logic;
SIGNAL \inst|inst12|estado_atual.S5~q\ : std_logic;
SIGNAL \inst|inst~6_combout\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \inst|inst25|Q[1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst~5_combout\ : std_logic;
SIGNAL \inst|inst~7_combout\ : std_logic;
SIGNAL \inst|inst12|Selector0~1_combout\ : std_logic;
SIGNAL \inst|inst12|Selector0~3_combout\ : std_logic;
SIGNAL \inst|inst12|estado_atual.S1~q\ : std_logic;
SIGNAL \inst|inst~1_combout\ : std_logic;
SIGNAL \inst|inst~3_combout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst~2_combout\ : std_logic;
SIGNAL \inst|inst~4_combout\ : std_logic;
SIGNAL \inst|inst12|Selector5~1_combout\ : std_logic;
SIGNAL \inst|inst12|Selector5~2_combout\ : std_logic;
SIGNAL \inst|inst12|estado_atual.S6~q\ : std_logic;
SIGNAL \inst|inst12|CLR456~combout\ : std_logic;
SIGNAL \inst6|inst35~combout\ : std_logic;
SIGNAL \inst6|inst31~0_combout\ : std_logic;
SIGNAL \inst6|inst26~0_combout\ : std_logic;
SIGNAL \inst6|inst22~0_combout\ : std_logic;
SIGNAL \inst6|inst17~0_combout\ : std_logic;
SIGNAL \inst6|inst13~0_combout\ : std_logic;
SIGNAL \inst6|inst8~0_combout\ : std_logic;
SIGNAL \inst5|inst35~combout\ : std_logic;
SIGNAL \inst5|inst31~0_combout\ : std_logic;
SIGNAL \inst5|inst26~0_combout\ : std_logic;
SIGNAL \inst5|inst22~0_combout\ : std_logic;
SIGNAL \inst5|inst17~0_combout\ : std_logic;
SIGNAL \inst5|inst13~0_combout\ : std_logic;
SIGNAL \inst5|inst8~0_combout\ : std_logic;
SIGNAL \inst4|inst35~combout\ : std_logic;
SIGNAL \inst4|inst31~0_combout\ : std_logic;
SIGNAL \inst4|inst26~0_combout\ : std_logic;
SIGNAL \inst4|inst22~0_combout\ : std_logic;
SIGNAL \inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst4|inst13~0_combout\ : std_logic;
SIGNAL \inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst7|inst35~0_combout\ : std_logic;
SIGNAL \inst7|inst31~0_combout\ : std_logic;
SIGNAL \inst7|inst26~0_combout\ : std_logic;
SIGNAL \inst7|inst22~0_combout\ : std_logic;
SIGNAL \inst7|inst17~0_combout\ : std_logic;
SIGNAL \inst7|inst13~0_combout\ : std_logic;
SIGNAL \inst7|inst8~0_combout\ : std_logic;
SIGNAL \inst3|inst35~combout\ : std_logic;
SIGNAL \inst3|inst31~0_combout\ : std_logic;
SIGNAL \inst3|inst26~0_combout\ : std_logic;
SIGNAL \inst3|inst22~0_combout\ : std_logic;
SIGNAL \inst3|inst17~0_combout\ : std_logic;
SIGNAL \inst3|inst13~0_combout\ : std_logic;
SIGNAL \inst3|inst8~0_combout\ : std_logic;
SIGNAL \inst2|inst35~combout\ : std_logic;
SIGNAL \inst2|inst31~0_combout\ : std_logic;
SIGNAL \inst2|inst26~0_combout\ : std_logic;
SIGNAL \inst2|inst22~0_combout\ : std_logic;
SIGNAL \inst2|inst17~0_combout\ : std_logic;
SIGNAL \inst2|inst13~0_combout\ : std_logic;
SIGNAL \inst2|inst8~0_combout\ : std_logic;
SIGNAL \inst1|inst35~combout\ : std_logic;
SIGNAL \inst1|inst31~0_combout\ : std_logic;
SIGNAL \inst1|inst26~0_combout\ : std_logic;
SIGNAL \inst1|inst22~0_combout\ : std_logic;
SIGNAL \inst1|inst17~0_combout\ : std_logic;
SIGNAL \inst1|inst13~0_combout\ : std_logic;
SIGNAL \inst1|inst8~0_combout\ : std_logic;
SIGNAL \inst|inst11~combout\ : std_logic;
SIGNAL \inst|inst20|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst25|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst23|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst21|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst24|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst22|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|auto_generated|counter_reg_bit\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|inst12|ALT_INV_estado_atual.S1~q\ : std_logic;
SIGNAL \inst|inst12|ALT_INV_CLR456~combout\ : std_logic;

BEGIN

HEX0 <= ww_HEX0;
ww_CLOCK <= CLOCK;
ww_KEY <= KEY;
ww_SW15 <= SW15;
ww_SW14 <= SW14;
ww_SW3 <= SW3;
ww_SW2 <= SW2;
ww_SW1 <= SW1;
ww_SW0 <= SW0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst15|auto_generated|counter_comb_bita19~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst15|auto_generated|counter_comb_bita19~0_combout\);
\inst|inst12|ALT_INV_estado_atual.S1~q\ <= NOT \inst|inst12|estado_atual.S1~q\;
\inst|inst12|ALT_INV_CLR456~combout\ <= NOT \inst|inst12|CLR456~combout\;

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst35~combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst31~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst26~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst22~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst17~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst13~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst8~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst35~combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst31~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst26~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst22~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst17~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst13~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst8~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst35~combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst31~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst26~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst22~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst17~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst13~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst8~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst35~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst31~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst26~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst22~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst17~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst13~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst8~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst35~combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst31~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst26~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst22~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst17~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst13~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst8~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst35~combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst31~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst26~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst22~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst17~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst13~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst8~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst35~combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst31~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst26~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst22~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst17~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst13~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst~7_combout\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst11~combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: LCCOMB_X1_Y36_N12
\inst15|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita0~combout\ = \inst15|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst15|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst15|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst15|auto_generated|counter_comb_bita0~combout\,
	cout => \inst15|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X1_Y36_N10
\inst15|auto_generated|counter_reg_bit[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_reg_bit[0]~feeder_combout\ = \inst15|auto_generated|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|auto_generated|counter_comb_bita0~combout\,
	combout => \inst15|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X1_Y36_N11
\inst15|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_reg_bit[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X1_Y36_N14
\inst15|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita1~combout\ = (\inst15|auto_generated|counter_reg_bit\(1) & (!\inst15|auto_generated|counter_comb_bita0~COUT\)) # (!\inst15|auto_generated|counter_reg_bit\(1) & ((\inst15|auto_generated|counter_comb_bita0~COUT\) # 
-- (GND)))
-- \inst15|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst15|auto_generated|counter_comb_bita0~COUT\) # (!\inst15|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita1~combout\,
	cout => \inst15|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X1_Y36_N6
\inst15|auto_generated|counter_reg_bit[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_reg_bit[1]~feeder_combout\ = \inst15|auto_generated|counter_comb_bita1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|auto_generated|counter_comb_bita1~combout\,
	combout => \inst15|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: FF_X1_Y36_N7
\inst15|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_reg_bit[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X1_Y36_N16
\inst15|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita2~combout\ = (\inst15|auto_generated|counter_reg_bit\(2) & (\inst15|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\inst15|auto_generated|counter_reg_bit\(2) & 
-- (!\inst15|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst15|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst15|auto_generated|counter_reg_bit\(2) & !\inst15|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita2~combout\,
	cout => \inst15|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X1_Y36_N17
\inst15|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X1_Y36_N18
\inst15|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita3~combout\ = (\inst15|auto_generated|counter_reg_bit\(3) & (!\inst15|auto_generated|counter_comb_bita2~COUT\)) # (!\inst15|auto_generated|counter_reg_bit\(3) & ((\inst15|auto_generated|counter_comb_bita2~COUT\) # 
-- (GND)))
-- \inst15|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst15|auto_generated|counter_comb_bita2~COUT\) # (!\inst15|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita3~combout\,
	cout => \inst15|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X1_Y36_N19
\inst15|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X1_Y36_N20
\inst15|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita4~combout\ = (\inst15|auto_generated|counter_reg_bit\(4) & (\inst15|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\inst15|auto_generated|counter_reg_bit\(4) & 
-- (!\inst15|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst15|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst15|auto_generated|counter_reg_bit\(4) & !\inst15|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita4~combout\,
	cout => \inst15|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X1_Y36_N21
\inst15|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X1_Y36_N22
\inst15|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita5~combout\ = (\inst15|auto_generated|counter_reg_bit\(5) & (!\inst15|auto_generated|counter_comb_bita4~COUT\)) # (!\inst15|auto_generated|counter_reg_bit\(5) & ((\inst15|auto_generated|counter_comb_bita4~COUT\) # 
-- (GND)))
-- \inst15|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst15|auto_generated|counter_comb_bita4~COUT\) # (!\inst15|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita5~combout\,
	cout => \inst15|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X1_Y36_N23
\inst15|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X1_Y36_N24
\inst15|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita6~combout\ = (\inst15|auto_generated|counter_reg_bit\(6) & (\inst15|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\inst15|auto_generated|counter_reg_bit\(6) & 
-- (!\inst15|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst15|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst15|auto_generated|counter_reg_bit\(6) & !\inst15|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita6~combout\,
	cout => \inst15|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X1_Y36_N25
\inst15|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X1_Y36_N26
\inst15|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita7~combout\ = (\inst15|auto_generated|counter_reg_bit\(7) & (!\inst15|auto_generated|counter_comb_bita6~COUT\)) # (!\inst15|auto_generated|counter_reg_bit\(7) & ((\inst15|auto_generated|counter_comb_bita6~COUT\) # 
-- (GND)))
-- \inst15|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst15|auto_generated|counter_comb_bita6~COUT\) # (!\inst15|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita7~combout\,
	cout => \inst15|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X1_Y36_N27
\inst15|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X1_Y36_N28
\inst15|auto_generated|counter_comb_bita8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita8~combout\ = (\inst15|auto_generated|counter_reg_bit\(8) & (\inst15|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\inst15|auto_generated|counter_reg_bit\(8) & 
-- (!\inst15|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst15|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst15|auto_generated|counter_reg_bit\(8) & !\inst15|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita8~combout\,
	cout => \inst15|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X1_Y36_N29
\inst15|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X1_Y36_N30
\inst15|auto_generated|counter_comb_bita9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita9~combout\ = (\inst15|auto_generated|counter_reg_bit\(9) & (!\inst15|auto_generated|counter_comb_bita8~COUT\)) # (!\inst15|auto_generated|counter_reg_bit\(9) & ((\inst15|auto_generated|counter_comb_bita8~COUT\) # 
-- (GND)))
-- \inst15|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst15|auto_generated|counter_comb_bita8~COUT\) # (!\inst15|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita9~combout\,
	cout => \inst15|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X1_Y36_N31
\inst15|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X1_Y35_N0
\inst15|auto_generated|counter_comb_bita10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita10~combout\ = (\inst15|auto_generated|counter_reg_bit\(10) & (\inst15|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\inst15|auto_generated|counter_reg_bit\(10) & 
-- (!\inst15|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst15|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst15|auto_generated|counter_reg_bit\(10) & !\inst15|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita10~combout\,
	cout => \inst15|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X1_Y35_N1
\inst15|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X1_Y35_N2
\inst15|auto_generated|counter_comb_bita11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita11~combout\ = (\inst15|auto_generated|counter_reg_bit\(11) & (!\inst15|auto_generated|counter_comb_bita10~COUT\)) # (!\inst15|auto_generated|counter_reg_bit\(11) & ((\inst15|auto_generated|counter_comb_bita10~COUT\) 
-- # (GND)))
-- \inst15|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst15|auto_generated|counter_comb_bita10~COUT\) # (!\inst15|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita11~combout\,
	cout => \inst15|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X1_Y35_N3
\inst15|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X1_Y35_N4
\inst15|auto_generated|counter_comb_bita12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita12~combout\ = (\inst15|auto_generated|counter_reg_bit\(12) & (\inst15|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\inst15|auto_generated|counter_reg_bit\(12) & 
-- (!\inst15|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst15|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst15|auto_generated|counter_reg_bit\(12) & !\inst15|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita12~combout\,
	cout => \inst15|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X1_Y35_N5
\inst15|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X1_Y35_N6
\inst15|auto_generated|counter_comb_bita13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita13~combout\ = (\inst15|auto_generated|counter_reg_bit\(13) & (!\inst15|auto_generated|counter_comb_bita12~COUT\)) # (!\inst15|auto_generated|counter_reg_bit\(13) & ((\inst15|auto_generated|counter_comb_bita12~COUT\) 
-- # (GND)))
-- \inst15|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst15|auto_generated|counter_comb_bita12~COUT\) # (!\inst15|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita13~combout\,
	cout => \inst15|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X1_Y35_N7
\inst15|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X1_Y35_N8
\inst15|auto_generated|counter_comb_bita14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita14~combout\ = (\inst15|auto_generated|counter_reg_bit\(14) & (\inst15|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # (!\inst15|auto_generated|counter_reg_bit\(14) & 
-- (!\inst15|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst15|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst15|auto_generated|counter_reg_bit\(14) & !\inst15|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita14~combout\,
	cout => \inst15|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X1_Y35_N9
\inst15|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X1_Y35_N10
\inst15|auto_generated|counter_comb_bita15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita15~combout\ = (\inst15|auto_generated|counter_reg_bit\(15) & (!\inst15|auto_generated|counter_comb_bita14~COUT\)) # (!\inst15|auto_generated|counter_reg_bit\(15) & ((\inst15|auto_generated|counter_comb_bita14~COUT\) 
-- # (GND)))
-- \inst15|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst15|auto_generated|counter_comb_bita14~COUT\) # (!\inst15|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita15~combout\,
	cout => \inst15|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X1_Y35_N11
\inst15|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(15));

-- Location: LCCOMB_X1_Y35_N12
\inst15|auto_generated|counter_comb_bita16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita16~combout\ = (\inst15|auto_generated|counter_reg_bit\(16) & (\inst15|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # (!\inst15|auto_generated|counter_reg_bit\(16) & 
-- (!\inst15|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst15|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst15|auto_generated|counter_reg_bit\(16) & !\inst15|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita16~combout\,
	cout => \inst15|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X1_Y35_N13
\inst15|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(16));

-- Location: LCCOMB_X1_Y35_N14
\inst15|auto_generated|counter_comb_bita17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita17~combout\ = (\inst15|auto_generated|counter_reg_bit\(17) & (!\inst15|auto_generated|counter_comb_bita16~COUT\)) # (!\inst15|auto_generated|counter_reg_bit\(17) & ((\inst15|auto_generated|counter_comb_bita16~COUT\) 
-- # (GND)))
-- \inst15|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst15|auto_generated|counter_comb_bita16~COUT\) # (!\inst15|auto_generated|counter_reg_bit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|auto_generated|counter_reg_bit\(17),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita17~combout\,
	cout => \inst15|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X1_Y35_N15
\inst15|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(17));

-- Location: LCCOMB_X1_Y35_N16
\inst15|auto_generated|counter_comb_bita18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita18~combout\ = (\inst15|auto_generated|counter_reg_bit\(18) & (\inst15|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # (!\inst15|auto_generated|counter_reg_bit\(18) & 
-- (!\inst15|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \inst15|auto_generated|counter_comb_bita18~COUT\ = CARRY((\inst15|auto_generated|counter_reg_bit\(18) & !\inst15|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|auto_generated|counter_reg_bit\(18),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita18~combout\,
	cout => \inst15|auto_generated|counter_comb_bita18~COUT\);

-- Location: FF_X1_Y35_N17
\inst15|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(18));

-- Location: LCCOMB_X1_Y35_N18
\inst15|auto_generated|counter_comb_bita19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita19~combout\ = (\inst15|auto_generated|counter_reg_bit\(19) & (!\inst15|auto_generated|counter_comb_bita18~COUT\)) # (!\inst15|auto_generated|counter_reg_bit\(19) & ((\inst15|auto_generated|counter_comb_bita18~COUT\) 
-- # (GND)))
-- \inst15|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\inst15|auto_generated|counter_comb_bita18~COUT\) # (!\inst15|auto_generated|counter_reg_bit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|auto_generated|counter_reg_bit\(19),
	datad => VCC,
	cin => \inst15|auto_generated|counter_comb_bita18~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita19~combout\,
	cout => \inst15|auto_generated|counter_comb_bita19~COUT\);

-- Location: FF_X1_Y35_N19
\inst15|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst15|auto_generated|counter_comb_bita19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|auto_generated|counter_reg_bit\(19));

-- Location: LCCOMB_X1_Y35_N20
\inst15|auto_generated|counter_comb_bita19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|auto_generated|counter_comb_bita19~0_combout\ = !\inst15|auto_generated|counter_comb_bita19~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst15|auto_generated|counter_comb_bita19~COUT\,
	combout => \inst15|auto_generated|counter_comb_bita19~0_combout\);

-- Location: CLKCTRL_G2
\inst15|auto_generated|counter_comb_bita19~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: LCCOMB_X113_Y16_N18
\inst|inst25|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst25|Q[0]~feeder_combout\ = \SW0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW0~input_o\,
	combout => \inst|inst25|Q[0]~feeder_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X109_Y16_N12
\inst8|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Selector1~0_combout\ = (\inst8|estado_atual.S1~q\) # ((\inst8|estado_atual.S2~q\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|estado_atual.S1~q\,
	datac => \inst8|estado_atual.S2~q\,
	datad => \KEY[0]~input_o\,
	combout => \inst8|Selector1~0_combout\);

-- Location: FF_X109_Y16_N13
\inst8|estado_atual.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst8|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|estado_atual.S2~q\);

-- Location: LCCOMB_X109_Y16_N30
\inst8|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Selector0~0_combout\ = (\KEY[0]~input_o\) # ((!\inst8|estado_atual.S2~q\ & \inst8|estado_atual.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|estado_atual.S2~q\,
	datac => \inst8|estado_atual.S0~q\,
	datad => \KEY[0]~input_o\,
	combout => \inst8|Selector0~0_combout\);

-- Location: FF_X109_Y16_N31
\inst8|estado_atual.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst8|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|estado_atual.S0~q\);

-- Location: LCCOMB_X109_Y16_N14
\inst8|proximo_estado.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|proximo_estado.S1~0_combout\ = (!\inst8|estado_atual.S0~q\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|estado_atual.S0~q\,
	datad => \KEY[0]~input_o\,
	combout => \inst8|proximo_estado.S1~0_combout\);

-- Location: FF_X109_Y16_N15
\inst8|estado_atual.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst8|proximo_estado.S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|estado_atual.S1~q\);

-- Location: IOIBUF_X115_Y13_N8
\SW3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

-- Location: LCCOMB_X109_Y16_N10
\inst|inst12|estado_atual.S7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|estado_atual.S7~feeder_combout\ = \inst|inst12|estado_atual.S6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst12|estado_atual.S6~q\,
	combout => \inst|inst12|estado_atual.S7~feeder_combout\);

-- Location: FF_X109_Y16_N11
\inst|inst12|estado_atual.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst|inst12|estado_atual.S7~feeder_combout\,
	ena => \inst8|estado_atual.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12|estado_atual.S7~q\);

-- Location: FF_X112_Y16_N27
\inst|inst21|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW3~input_o\,
	clrn => \inst|inst12|ALT_INV_CLR456~combout\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst21|Q\(3));

-- Location: IOIBUF_X115_Y15_N8
\SW2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: FF_X112_Y16_N21
\inst|inst21|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW2~input_o\,
	clrn => \inst|inst12|ALT_INV_CLR456~combout\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst21|Q\(2));

-- Location: LCCOMB_X109_Y16_N28
\inst|inst12|estado_atual.S8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|estado_atual.S8~feeder_combout\ = \inst|inst12|estado_atual.S7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst12|estado_atual.S7~q\,
	combout => \inst|inst12|estado_atual.S8~feeder_combout\);

-- Location: FF_X109_Y16_N29
\inst|inst12|estado_atual.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst|inst12|estado_atual.S8~feeder_combout\,
	ena => \inst8|estado_atual.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12|estado_atual.S8~q\);

-- Location: LCCOMB_X109_Y16_N26
\inst|inst12|estado_atual.S9~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|estado_atual.S9~feeder_combout\ = \inst|inst12|estado_atual.S8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst12|estado_atual.S8~q\,
	combout => \inst|inst12|estado_atual.S9~feeder_combout\);

-- Location: FF_X109_Y16_N27
\inst|inst12|estado_atual.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst|inst12|estado_atual.S9~feeder_combout\,
	ena => \inst8|estado_atual.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12|estado_atual.S9~q\);

-- Location: LCCOMB_X111_Y16_N6
\inst|inst12|estado_atual.S0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|estado_atual.S0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|inst12|estado_atual.S0~feeder_combout\);

-- Location: FF_X111_Y16_N7
\inst|inst12|estado_atual.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst|inst12|estado_atual.S0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12|estado_atual.S0~q\);

-- Location: IOIBUF_X115_Y6_N15
\SW15~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW15,
	o => \SW15~input_o\);

-- Location: LCCOMB_X111_Y16_N26
\inst|inst12|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|Selector0~2_combout\ = (\inst|inst12|estado_atual.S0~q\ & (((!\SW15~input_o\ & \inst8|estado_atual.S1~q\)) # (!\inst|inst12|estado_atual.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12|estado_atual.S0~q\,
	datab => \SW15~input_o\,
	datac => \inst|inst12|estado_atual.S1~q\,
	datad => \inst8|estado_atual.S1~q\,
	combout => \inst|inst12|Selector0~2_combout\);

-- Location: LCCOMB_X109_Y16_N16
\inst|inst12|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|Selector1~0_combout\ = (!\SW15~input_o\ & \inst|inst12|estado_atual.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW15~input_o\,
	datad => \inst|inst12|estado_atual.S1~q\,
	combout => \inst|inst12|Selector1~0_combout\);

-- Location: FF_X109_Y16_N17
\inst|inst12|estado_atual.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst|inst12|Selector1~0_combout\,
	ena => \inst8|estado_atual.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12|estado_atual.S2~q\);

-- Location: LCCOMB_X109_Y16_N18
\inst|inst12|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|Selector2~0_combout\ = (!\SW15~input_o\ & \inst|inst12|estado_atual.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW15~input_o\,
	datad => \inst|inst12|estado_atual.S2~q\,
	combout => \inst|inst12|Selector2~0_combout\);

-- Location: FF_X109_Y16_N19
\inst|inst12|estado_atual.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst|inst12|Selector2~0_combout\,
	ena => \inst8|estado_atual.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12|estado_atual.S3~q\);

-- Location: LCCOMB_X109_Y16_N8
\inst|inst12|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|Selector3~0_combout\ = (!\SW15~input_o\ & \inst|inst12|estado_atual.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW15~input_o\,
	datad => \inst|inst12|estado_atual.S3~q\,
	combout => \inst|inst12|Selector3~0_combout\);

-- Location: FF_X109_Y16_N9
\inst|inst12|estado_atual.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst|inst12|Selector3~0_combout\,
	ena => \inst8|estado_atual.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12|estado_atual.S4~q\);

-- Location: LCCOMB_X109_Y16_N24
\inst|inst12|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|Selector0~0_combout\ = (\SW15~input_o\ & ((\inst|inst12|estado_atual.S2~q\) # ((\inst|inst12|estado_atual.S4~q\) # (\inst|inst12|estado_atual.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW15~input_o\,
	datab => \inst|inst12|estado_atual.S2~q\,
	datac => \inst|inst12|estado_atual.S4~q\,
	datad => \inst|inst12|estado_atual.S3~q\,
	combout => \inst|inst12|Selector0~0_combout\);

-- Location: IOIBUF_X115_Y10_N8
\SW14~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW14,
	o => \SW14~input_o\);

-- Location: LCCOMB_X111_Y16_N22
\inst|inst12|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|Selector5~0_combout\ = (!\SW15~input_o\ & \SW14~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW15~input_o\,
	datad => \SW14~input_o\,
	combout => \inst|inst12|Selector5~0_combout\);

-- Location: LCCOMB_X109_Y16_N20
\inst|inst12|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|Selector4~0_combout\ = (\inst|inst12|estado_atual.S4~q\ & !\SW15~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst12|estado_atual.S4~q\,
	datac => \SW15~input_o\,
	combout => \inst|inst12|Selector4~0_combout\);

-- Location: FF_X109_Y16_N21
\inst|inst12|estado_atual.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst|inst12|Selector4~0_combout\,
	ena => \inst8|estado_atual.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12|estado_atual.S5~q\);

-- Location: FF_X111_Y16_N23
\inst|inst24|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW3~input_o\,
	clrn => \inst|inst12|ALT_INV_estado_atual.S1~q\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst24|Q\(3));

-- Location: FF_X111_Y16_N15
\inst|inst24|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW2~input_o\,
	clrn => \inst|inst12|ALT_INV_estado_atual.S1~q\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst24|Q\(2));

-- Location: FF_X113_Y16_N23
\inst|inst25|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW3~input_o\,
	clrn => \inst|inst12|ALT_INV_CLR456~combout\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst25|Q\(3));

-- Location: FF_X113_Y16_N17
\inst|inst25|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW2~input_o\,
	clrn => \inst|inst12|ALT_INV_CLR456~combout\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst25|Q\(2));

-- Location: LCCOMB_X111_Y16_N30
\inst|inst~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~6_combout\ = (\inst|inst24|Q\(3) & (\inst|inst25|Q\(3) & (\inst|inst24|Q\(2) $ (!\inst|inst25|Q\(2))))) # (!\inst|inst24|Q\(3) & (!\inst|inst25|Q\(3) & (\inst|inst24|Q\(2) $ (!\inst|inst25|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst24|Q\(3),
	datab => \inst|inst24|Q\(2),
	datac => \inst|inst25|Q\(3),
	datad => \inst|inst25|Q\(2),
	combout => \inst|inst~6_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: FF_X111_Y16_N13
\inst|inst24|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW1~input_o\,
	clrn => \inst|inst12|ALT_INV_estado_atual.S1~q\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst24|Q\(1));

-- Location: LCCOMB_X113_Y16_N12
\inst|inst25|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst25|Q[1]~feeder_combout\ = \SW1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW1~input_o\,
	combout => \inst|inst25|Q[1]~feeder_combout\);

-- Location: FF_X113_Y16_N13
\inst|inst25|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst|inst25|Q[1]~feeder_combout\,
	clrn => \inst|inst12|ALT_INV_CLR456~combout\,
	ena => \inst|inst12|estado_atual.S9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst25|Q\(1));

-- Location: FF_X111_Y16_N9
\inst|inst24|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW0~input_o\,
	clrn => \inst|inst12|ALT_INV_estado_atual.S1~q\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst24|Q\(0));

-- Location: LCCOMB_X111_Y16_N8
\inst|inst~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~5_combout\ = (\inst|inst24|Q\(1) & (\inst|inst25|Q\(1) & (\inst|inst24|Q\(0) $ (!\inst|inst25|Q\(0))))) # (!\inst|inst24|Q\(1) & (!\inst|inst25|Q\(1) & (\inst|inst24|Q\(0) $ (!\inst|inst25|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst24|Q\(1),
	datab => \inst|inst25|Q\(1),
	datac => \inst|inst24|Q\(0),
	datad => \inst|inst25|Q\(0),
	combout => \inst|inst~5_combout\);

-- Location: LCCOMB_X111_Y16_N20
\inst|inst~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~7_combout\ = (\inst|inst~6_combout\ & (\inst|inst12|estado_atual.S5~q\ & (\inst|inst~5_combout\ & \inst|inst~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~6_combout\,
	datab => \inst|inst12|estado_atual.S5~q\,
	datac => \inst|inst~5_combout\,
	datad => \inst|inst~4_combout\,
	combout => \inst|inst~7_combout\);

-- Location: LCCOMB_X111_Y16_N24
\inst|inst12|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|Selector0~1_combout\ = (\inst|inst12|Selector0~0_combout\) # ((\inst|inst12|estado_atual.S5~q\ & ((!\inst|inst~7_combout\) # (!\inst|inst12|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12|Selector0~0_combout\,
	datab => \inst|inst12|Selector5~0_combout\,
	datac => \inst|inst12|estado_atual.S5~q\,
	datad => \inst|inst~7_combout\,
	combout => \inst|inst12|Selector0~1_combout\);

-- Location: LCCOMB_X111_Y16_N16
\inst|inst12|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|Selector0~3_combout\ = ((\inst8|estado_atual.S1~q\ & ((\inst|inst12|estado_atual.S9~q\) # (\inst|inst12|Selector0~1_combout\)))) # (!\inst|inst12|Selector0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12|estado_atual.S9~q\,
	datab => \inst8|estado_atual.S1~q\,
	datac => \inst|inst12|Selector0~2_combout\,
	datad => \inst|inst12|Selector0~1_combout\,
	combout => \inst|inst12|Selector0~3_combout\);

-- Location: FF_X111_Y16_N17
\inst|inst12|estado_atual.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst|inst12|Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12|estado_atual.S1~q\);

-- Location: FF_X112_Y16_N9
\inst|inst20|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW3~input_o\,
	clrn => \inst|inst12|ALT_INV_estado_atual.S1~q\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst20|Q\(3));

-- Location: FF_X112_Y16_N7
\inst|inst20|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW2~input_o\,
	clrn => \inst|inst12|ALT_INV_estado_atual.S1~q\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst20|Q\(2));

-- Location: LCCOMB_X112_Y16_N30
\inst|inst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~1_combout\ = (\inst|inst21|Q\(3) & (\inst|inst20|Q\(3) & (\inst|inst21|Q\(2) $ (!\inst|inst20|Q\(2))))) # (!\inst|inst21|Q\(3) & (!\inst|inst20|Q\(3) & (\inst|inst21|Q\(2) $ (!\inst|inst20|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|Q\(3),
	datab => \inst|inst21|Q\(2),
	datac => \inst|inst20|Q\(3),
	datad => \inst|inst20|Q\(2),
	combout => \inst|inst~1_combout\);

-- Location: FF_X110_Y16_N31
\inst|inst23|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW3~input_o\,
	clrn => \inst|inst12|ALT_INV_CLR456~combout\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst23|Q\(3));

-- Location: FF_X110_Y16_N17
\inst|inst23|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW2~input_o\,
	clrn => \inst|inst12|ALT_INV_CLR456~combout\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst23|Q\(2));

-- Location: FF_X110_Y16_N23
\inst|inst22|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW2~input_o\,
	clrn => \inst|inst12|ALT_INV_estado_atual.S1~q\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst22|Q\(2));

-- Location: FF_X110_Y16_N1
\inst|inst22|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW3~input_o\,
	clrn => \inst|inst12|ALT_INV_estado_atual.S1~q\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst22|Q\(3));

-- Location: LCCOMB_X110_Y16_N6
\inst|inst~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~3_combout\ = (\inst|inst23|Q\(3) & (\inst|inst22|Q\(3) & (\inst|inst23|Q\(2) $ (!\inst|inst22|Q\(2))))) # (!\inst|inst23|Q\(3) & (!\inst|inst22|Q\(3) & (\inst|inst23|Q\(2) $ (!\inst|inst22|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|Q\(3),
	datab => \inst|inst23|Q\(2),
	datac => \inst|inst22|Q\(2),
	datad => \inst|inst22|Q\(3),
	combout => \inst|inst~3_combout\);

-- Location: FF_X112_Y16_N11
\inst|inst21|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW0~input_o\,
	clrn => \inst|inst12|ALT_INV_CLR456~combout\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst21|Q\(0));

-- Location: FF_X112_Y16_N5
\inst|inst21|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW1~input_o\,
	clrn => \inst|inst12|ALT_INV_CLR456~combout\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst21|Q\(1));

-- Location: FF_X112_Y16_N15
\inst|inst20|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW1~input_o\,
	clrn => \inst|inst12|ALT_INV_estado_atual.S1~q\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst20|Q\(1));

-- Location: FF_X112_Y16_N29
\inst|inst20|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW0~input_o\,
	clrn => \inst|inst12|ALT_INV_estado_atual.S1~q\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst20|Q\(0));

-- Location: LCCOMB_X112_Y16_N12
\inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = (\inst|inst21|Q\(0) & (\inst|inst20|Q\(0) & (\inst|inst21|Q\(1) $ (!\inst|inst20|Q\(1))))) # (!\inst|inst21|Q\(0) & (!\inst|inst20|Q\(0) & (\inst|inst21|Q\(1) $ (!\inst|inst20|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|Q\(0),
	datab => \inst|inst21|Q\(1),
	datac => \inst|inst20|Q\(1),
	datad => \inst|inst20|Q\(0),
	combout => \inst|inst~0_combout\);

-- Location: FF_X110_Y16_N25
\inst|inst23|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW1~input_o\,
	clrn => \inst|inst12|ALT_INV_CLR456~combout\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst23|Q\(1));

-- Location: FF_X110_Y16_N15
\inst|inst22|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW1~input_o\,
	clrn => \inst|inst12|ALT_INV_estado_atual.S1~q\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst22|Q\(1));

-- Location: FF_X110_Y16_N27
\inst|inst23|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW0~input_o\,
	clrn => \inst|inst12|ALT_INV_CLR456~combout\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst23|Q\(0));

-- Location: FF_X110_Y16_N13
\inst|inst22|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	asdata => \SW0~input_o\,
	clrn => \inst|inst12|ALT_INV_estado_atual.S1~q\,
	sload => VCC,
	ena => \inst|inst12|estado_atual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst22|Q\(0));

-- Location: LCCOMB_X110_Y16_N28
\inst|inst~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~2_combout\ = (\inst|inst23|Q\(1) & (\inst|inst22|Q\(1) & (\inst|inst23|Q\(0) $ (!\inst|inst22|Q\(0))))) # (!\inst|inst23|Q\(1) & (!\inst|inst22|Q\(1) & (\inst|inst23|Q\(0) $ (!\inst|inst22|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|Q\(1),
	datab => \inst|inst22|Q\(1),
	datac => \inst|inst23|Q\(0),
	datad => \inst|inst22|Q\(0),
	combout => \inst|inst~2_combout\);

-- Location: LCCOMB_X111_Y16_N0
\inst|inst~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~4_combout\ = (\inst|inst~1_combout\ & (\inst|inst~3_combout\ & (\inst|inst~0_combout\ & \inst|inst~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~1_combout\,
	datab => \inst|inst~3_combout\,
	datac => \inst|inst~0_combout\,
	datad => \inst|inst~2_combout\,
	combout => \inst|inst~4_combout\);

-- Location: LCCOMB_X111_Y16_N18
\inst|inst12|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|Selector5~1_combout\ = (\inst|inst~6_combout\ & (\inst|inst12|Selector5~0_combout\ & (\inst|inst~5_combout\ & \inst|inst12|estado_atual.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~6_combout\,
	datab => \inst|inst12|Selector5~0_combout\,
	datac => \inst|inst~5_combout\,
	datad => \inst|inst12|estado_atual.S5~q\,
	combout => \inst|inst12|Selector5~1_combout\);

-- Location: LCCOMB_X111_Y16_N4
\inst|inst12|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|Selector5~2_combout\ = (\inst8|estado_atual.S1~q\ & (\inst|inst~4_combout\ & ((\inst|inst12|Selector5~1_combout\)))) # (!\inst8|estado_atual.S1~q\ & (((\inst|inst12|estado_atual.S6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|estado_atual.S1~q\,
	datab => \inst|inst~4_combout\,
	datac => \inst|inst12|estado_atual.S6~q\,
	datad => \inst|inst12|Selector5~1_combout\,
	combout => \inst|inst12|Selector5~2_combout\);

-- Location: FF_X111_Y16_N5
\inst|inst12|estado_atual.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst|inst12|Selector5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12|estado_atual.S6~q\);

-- Location: LCCOMB_X111_Y16_N14
\inst|inst12|CLR456\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12|CLR456~combout\ = (\inst|inst12|estado_atual.S6~q\) # (!\inst|inst12|estado_atual.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst12|estado_atual.S6~q\,
	datad => \inst|inst12|estado_atual.S0~q\,
	combout => \inst|inst12|CLR456~combout\);

-- Location: FF_X113_Y16_N19
\inst|inst25|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|auto_generated|counter_comb_bita19~0clkctrl_outclk\,
	d => \inst|inst25|Q[0]~feeder_combout\,
	clrn => \inst|inst12|ALT_INV_CLR456~combout\,
	ena => \inst|inst12|estado_atual.S9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst25|Q\(0));

-- Location: LCCOMB_X114_Y16_N4
\inst6|inst35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst35~combout\ = (\inst|inst25|Q\(0) & (!\inst|inst25|Q\(3) & (\inst|inst25|Q\(2) $ (!\inst|inst25|Q\(1))))) # (!\inst|inst25|Q\(0) & (!\inst|inst25|Q\(1) & (\inst|inst25|Q\(3) $ (!\inst|inst25|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|Q\(0),
	datab => \inst|inst25|Q\(3),
	datac => \inst|inst25|Q\(2),
	datad => \inst|inst25|Q\(1),
	combout => \inst6|inst35~combout\);

-- Location: LCCOMB_X114_Y16_N18
\inst6|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31~0_combout\ = (\inst|inst25|Q\(0) & (\inst|inst25|Q\(3) $ (((\inst|inst25|Q\(1)) # (!\inst|inst25|Q\(2)))))) # (!\inst|inst25|Q\(0) & (!\inst|inst25|Q\(3) & (!\inst|inst25|Q\(2) & \inst|inst25|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|Q\(0),
	datab => \inst|inst25|Q\(3),
	datac => \inst|inst25|Q\(2),
	datad => \inst|inst25|Q\(1),
	combout => \inst6|inst31~0_combout\);

-- Location: LCCOMB_X114_Y16_N0
\inst6|inst26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst26~0_combout\ = (\inst|inst25|Q\(1) & (\inst|inst25|Q\(0) & (!\inst|inst25|Q\(3)))) # (!\inst|inst25|Q\(1) & ((\inst|inst25|Q\(2) & ((!\inst|inst25|Q\(3)))) # (!\inst|inst25|Q\(2) & (\inst|inst25|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|Q\(0),
	datab => \inst|inst25|Q\(3),
	datac => \inst|inst25|Q\(2),
	datad => \inst|inst25|Q\(1),
	combout => \inst6|inst26~0_combout\);

-- Location: LCCOMB_X114_Y16_N22
\inst6|inst22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst22~0_combout\ = (\inst|inst25|Q\(0) & ((\inst|inst25|Q\(2) $ (!\inst|inst25|Q\(1))))) # (!\inst|inst25|Q\(0) & ((\inst|inst25|Q\(3) & (!\inst|inst25|Q\(2) & \inst|inst25|Q\(1))) # (!\inst|inst25|Q\(3) & (\inst|inst25|Q\(2) & 
-- !\inst|inst25|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|Q\(0),
	datab => \inst|inst25|Q\(3),
	datac => \inst|inst25|Q\(2),
	datad => \inst|inst25|Q\(1),
	combout => \inst6|inst22~0_combout\);

-- Location: LCCOMB_X111_Y16_N28
\inst6|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst17~0_combout\ = (\inst|inst25|Q\(2) & (\inst|inst25|Q\(3) & ((\inst|inst25|Q\(1)) # (!\inst|inst25|Q\(0))))) # (!\inst|inst25|Q\(2) & (!\inst|inst25|Q\(0) & (!\inst|inst25|Q\(3) & \inst|inst25|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|Q\(0),
	datab => \inst|inst25|Q\(2),
	datac => \inst|inst25|Q\(3),
	datad => \inst|inst25|Q\(1),
	combout => \inst6|inst17~0_combout\);

-- Location: LCCOMB_X111_Y16_N2
\inst6|inst13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst13~0_combout\ = (\inst|inst25|Q\(3) & ((\inst|inst25|Q\(0) & ((\inst|inst25|Q\(1)))) # (!\inst|inst25|Q\(0) & (\inst|inst25|Q\(2))))) # (!\inst|inst25|Q\(3) & (\inst|inst25|Q\(2) & (\inst|inst25|Q\(0) $ (\inst|inst25|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|Q\(0),
	datab => \inst|inst25|Q\(2),
	datac => \inst|inst25|Q\(3),
	datad => \inst|inst25|Q\(1),
	combout => \inst6|inst13~0_combout\);

-- Location: LCCOMB_X113_Y16_N0
\inst6|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst8~0_combout\ = (\inst|inst25|Q\(3) & (\inst|inst25|Q\(0) & (\inst|inst25|Q\(1) $ (\inst|inst25|Q\(2))))) # (!\inst|inst25|Q\(3) & (!\inst|inst25|Q\(1) & (\inst|inst25|Q\(0) $ (\inst|inst25|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|Q\(1),
	datab => \inst|inst25|Q\(0),
	datac => \inst|inst25|Q\(3),
	datad => \inst|inst25|Q\(2),
	combout => \inst6|inst8~0_combout\);

-- Location: LCCOMB_X110_Y16_N20
\inst5|inst35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst35~combout\ = (\inst|inst23|Q\(0) & (!\inst|inst23|Q\(3) & (\inst|inst23|Q\(1) $ (!\inst|inst23|Q\(2))))) # (!\inst|inst23|Q\(0) & (!\inst|inst23|Q\(1) & (\inst|inst23|Q\(3) $ (!\inst|inst23|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|Q\(0),
	datab => \inst|inst23|Q\(3),
	datac => \inst|inst23|Q\(1),
	datad => \inst|inst23|Q\(2),
	combout => \inst5|inst35~combout\);

-- Location: LCCOMB_X110_Y16_N2
\inst5|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst31~0_combout\ = (\inst|inst23|Q\(0) & (\inst|inst23|Q\(3) $ (((\inst|inst23|Q\(1)) # (!\inst|inst23|Q\(2)))))) # (!\inst|inst23|Q\(0) & (!\inst|inst23|Q\(3) & (\inst|inst23|Q\(1) & !\inst|inst23|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|Q\(0),
	datab => \inst|inst23|Q\(3),
	datac => \inst|inst23|Q\(1),
	datad => \inst|inst23|Q\(2),
	combout => \inst5|inst31~0_combout\);

-- Location: LCCOMB_X110_Y16_N8
\inst5|inst26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst26~0_combout\ = (\inst|inst23|Q\(1) & (\inst|inst23|Q\(0) & (!\inst|inst23|Q\(3)))) # (!\inst|inst23|Q\(1) & ((\inst|inst23|Q\(2) & ((!\inst|inst23|Q\(3)))) # (!\inst|inst23|Q\(2) & (\inst|inst23|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|Q\(0),
	datab => \inst|inst23|Q\(3),
	datac => \inst|inst23|Q\(1),
	datad => \inst|inst23|Q\(2),
	combout => \inst5|inst26~0_combout\);

-- Location: LCCOMB_X110_Y16_N16
\inst5|inst22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst22~0_combout\ = (\inst|inst23|Q\(0) & (\inst|inst23|Q\(1) $ ((!\inst|inst23|Q\(2))))) # (!\inst|inst23|Q\(0) & ((\inst|inst23|Q\(1) & (!\inst|inst23|Q\(2) & \inst|inst23|Q\(3))) # (!\inst|inst23|Q\(1) & (\inst|inst23|Q\(2) & 
-- !\inst|inst23|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|Q\(1),
	datab => \inst|inst23|Q\(0),
	datac => \inst|inst23|Q\(2),
	datad => \inst|inst23|Q\(3),
	combout => \inst5|inst22~0_combout\);

-- Location: LCCOMB_X110_Y16_N26
\inst5|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst17~0_combout\ = (\inst|inst23|Q\(2) & (\inst|inst23|Q\(3) & ((\inst|inst23|Q\(1)) # (!\inst|inst23|Q\(0))))) # (!\inst|inst23|Q\(2) & (\inst|inst23|Q\(1) & (!\inst|inst23|Q\(0) & !\inst|inst23|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|Q\(1),
	datab => \inst|inst23|Q\(2),
	datac => \inst|inst23|Q\(0),
	datad => \inst|inst23|Q\(3),
	combout => \inst5|inst17~0_combout\);

-- Location: LCCOMB_X110_Y16_N24
\inst5|inst13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst13~0_combout\ = (\inst|inst23|Q\(3) & ((\inst|inst23|Q\(0) & (\inst|inst23|Q\(1))) # (!\inst|inst23|Q\(0) & ((\inst|inst23|Q\(2)))))) # (!\inst|inst23|Q\(3) & (\inst|inst23|Q\(2) & (\inst|inst23|Q\(0) $ (\inst|inst23|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|Q\(0),
	datab => \inst|inst23|Q\(3),
	datac => \inst|inst23|Q\(1),
	datad => \inst|inst23|Q\(2),
	combout => \inst5|inst13~0_combout\);

-- Location: LCCOMB_X110_Y16_N30
\inst5|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8~0_combout\ = (\inst|inst23|Q\(3) & (\inst|inst23|Q\(0) & (\inst|inst23|Q\(1) $ (\inst|inst23|Q\(2))))) # (!\inst|inst23|Q\(3) & (!\inst|inst23|Q\(1) & (\inst|inst23|Q\(0) $ (\inst|inst23|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|Q\(1),
	datab => \inst|inst23|Q\(0),
	datac => \inst|inst23|Q\(3),
	datad => \inst|inst23|Q\(2),
	combout => \inst5|inst8~0_combout\);

-- Location: LCCOMB_X112_Y16_N0
\inst4|inst35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst35~combout\ = (\inst|inst21|Q\(0) & (!\inst|inst21|Q\(3) & (\inst|inst21|Q\(2) $ (!\inst|inst21|Q\(1))))) # (!\inst|inst21|Q\(0) & (!\inst|inst21|Q\(1) & (\inst|inst21|Q\(2) $ (!\inst|inst21|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|Q\(2),
	datab => \inst|inst21|Q\(0),
	datac => \inst|inst21|Q\(1),
	datad => \inst|inst21|Q\(3),
	combout => \inst4|inst35~combout\);

-- Location: LCCOMB_X112_Y16_N18
\inst4|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst31~0_combout\ = (\inst|inst21|Q\(2) & (\inst|inst21|Q\(0) & (\inst|inst21|Q\(1) $ (\inst|inst21|Q\(3))))) # (!\inst|inst21|Q\(2) & (!\inst|inst21|Q\(3) & ((\inst|inst21|Q\(0)) # (\inst|inst21|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|Q\(2),
	datab => \inst|inst21|Q\(0),
	datac => \inst|inst21|Q\(1),
	datad => \inst|inst21|Q\(3),
	combout => \inst4|inst31~0_combout\);

-- Location: LCCOMB_X112_Y16_N24
\inst4|inst26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst26~0_combout\ = (\inst|inst21|Q\(1) & (((\inst|inst21|Q\(0) & !\inst|inst21|Q\(3))))) # (!\inst|inst21|Q\(1) & ((\inst|inst21|Q\(2) & ((!\inst|inst21|Q\(3)))) # (!\inst|inst21|Q\(2) & (\inst|inst21|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|Q\(2),
	datab => \inst|inst21|Q\(0),
	datac => \inst|inst21|Q\(1),
	datad => \inst|inst21|Q\(3),
	combout => \inst4|inst26~0_combout\);

-- Location: LCCOMB_X112_Y16_N20
\inst4|inst22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst22~0_combout\ = (\inst|inst21|Q\(0) & ((\inst|inst21|Q\(1) $ (!\inst|inst21|Q\(2))))) # (!\inst|inst21|Q\(0) & ((\inst|inst21|Q\(3) & (\inst|inst21|Q\(1) & !\inst|inst21|Q\(2))) # (!\inst|inst21|Q\(3) & (!\inst|inst21|Q\(1) & 
-- \inst|inst21|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|Q\(3),
	datab => \inst|inst21|Q\(1),
	datac => \inst|inst21|Q\(2),
	datad => \inst|inst21|Q\(0),
	combout => \inst4|inst22~0_combout\);

-- Location: LCCOMB_X112_Y16_N10
\inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst17~0_combout\ = (\inst|inst21|Q\(2) & (\inst|inst21|Q\(3) & ((\inst|inst21|Q\(1)) # (!\inst|inst21|Q\(0))))) # (!\inst|inst21|Q\(2) & (\inst|inst21|Q\(1) & (!\inst|inst21|Q\(0) & !\inst|inst21|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|Q\(2),
	datab => \inst|inst21|Q\(1),
	datac => \inst|inst21|Q\(0),
	datad => \inst|inst21|Q\(3),
	combout => \inst4|inst17~0_combout\);

-- Location: LCCOMB_X112_Y16_N4
\inst4|inst13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst13~0_combout\ = (\inst|inst21|Q\(1) & ((\inst|inst21|Q\(0) & ((\inst|inst21|Q\(3)))) # (!\inst|inst21|Q\(0) & (\inst|inst21|Q\(2))))) # (!\inst|inst21|Q\(1) & (\inst|inst21|Q\(2) & (\inst|inst21|Q\(0) $ (\inst|inst21|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|Q\(2),
	datab => \inst|inst21|Q\(0),
	datac => \inst|inst21|Q\(1),
	datad => \inst|inst21|Q\(3),
	combout => \inst4|inst13~0_combout\);

-- Location: LCCOMB_X112_Y16_N26
\inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst8~0_combout\ = (\inst|inst21|Q\(2) & (!\inst|inst21|Q\(1) & (\inst|inst21|Q\(0) $ (!\inst|inst21|Q\(3))))) # (!\inst|inst21|Q\(2) & (\inst|inst21|Q\(0) & (\inst|inst21|Q\(3) $ (!\inst|inst21|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|Q\(2),
	datab => \inst|inst21|Q\(0),
	datac => \inst|inst21|Q\(3),
	datad => \inst|inst21|Q\(1),
	combout => \inst4|inst8~0_combout\);

-- Location: LCCOMB_X113_Y16_N26
\inst7|inst35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst35~0_combout\ = (\SW0~input_o\ & (!\SW3~input_o\ & (\SW1~input_o\ $ (!\SW2~input_o\)))) # (!\SW0~input_o\ & (!\SW1~input_o\ & (\SW2~input_o\ $ (!\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW2~input_o\,
	datac => \SW3~input_o\,
	datad => \SW0~input_o\,
	combout => \inst7|inst35~0_combout\);

-- Location: LCCOMB_X113_Y16_N28
\inst7|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31~0_combout\ = (\SW1~input_o\ & (!\SW3~input_o\ & ((\SW0~input_o\) # (!\SW2~input_o\)))) # (!\SW1~input_o\ & (\SW0~input_o\ & (\SW2~input_o\ $ (!\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW2~input_o\,
	datac => \SW3~input_o\,
	datad => \SW0~input_o\,
	combout => \inst7|inst31~0_combout\);

-- Location: LCCOMB_X113_Y16_N10
\inst7|inst26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst26~0_combout\ = (\SW1~input_o\ & (((!\SW3~input_o\ & \SW0~input_o\)))) # (!\SW1~input_o\ & ((\SW2~input_o\ & (!\SW3~input_o\)) # (!\SW2~input_o\ & ((\SW0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW2~input_o\,
	datac => \SW3~input_o\,
	datad => \SW0~input_o\,
	combout => \inst7|inst26~0_combout\);

-- Location: LCCOMB_X113_Y16_N20
\inst7|inst22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst22~0_combout\ = (\SW0~input_o\ & (\SW1~input_o\ $ ((!\SW2~input_o\)))) # (!\SW0~input_o\ & ((\SW1~input_o\ & (!\SW2~input_o\ & \SW3~input_o\)) # (!\SW1~input_o\ & (\SW2~input_o\ & !\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW2~input_o\,
	datac => \SW3~input_o\,
	datad => \SW0~input_o\,
	combout => \inst7|inst22~0_combout\);

-- Location: LCCOMB_X111_Y16_N12
\inst7|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst17~0_combout\ = (\SW2~input_o\ & (\SW3~input_o\ & ((\SW1~input_o\) # (!\SW0~input_o\)))) # (!\SW2~input_o\ & (!\SW0~input_o\ & (\SW1~input_o\ & !\SW3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \SW0~input_o\,
	datac => \SW1~input_o\,
	datad => \SW3~input_o\,
	combout => \inst7|inst17~0_combout\);

-- Location: LCCOMB_X114_Y16_N16
\inst7|inst13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst13~0_combout\ = (\SW3~input_o\ & ((\SW0~input_o\ & ((\SW1~input_o\))) # (!\SW0~input_o\ & (\SW2~input_o\)))) # (!\SW3~input_o\ & (\SW2~input_o\ & (\SW0~input_o\ $ (\SW1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \SW3~input_o\,
	datac => \SW0~input_o\,
	datad => \SW1~input_o\,
	combout => \inst7|inst13~0_combout\);

-- Location: LCCOMB_X114_Y16_N10
\inst7|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst8~0_combout\ = (\SW2~input_o\ & (!\SW1~input_o\ & (\SW3~input_o\ $ (!\SW0~input_o\)))) # (!\SW2~input_o\ & (\SW0~input_o\ & (\SW3~input_o\ $ (!\SW1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \SW3~input_o\,
	datac => \SW0~input_o\,
	datad => \SW1~input_o\,
	combout => \inst7|inst8~0_combout\);

-- Location: LCCOMB_X99_Y16_N24
\inst3|inst35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst35~combout\ = (\inst|inst24|Q\(0) & (!\inst|inst24|Q\(3) & (\inst|inst24|Q\(2) $ (!\inst|inst24|Q\(1))))) # (!\inst|inst24|Q\(0) & (!\inst|inst24|Q\(1) & (\inst|inst24|Q\(3) $ (!\inst|inst24|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst24|Q\(3),
	datab => \inst|inst24|Q\(0),
	datac => \inst|inst24|Q\(2),
	datad => \inst|inst24|Q\(1),
	combout => \inst3|inst35~combout\);

-- Location: LCCOMB_X99_Y16_N26
\inst3|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst31~0_combout\ = (\inst|inst24|Q\(0) & (\inst|inst24|Q\(3) $ (((\inst|inst24|Q\(1)) # (!\inst|inst24|Q\(2)))))) # (!\inst|inst24|Q\(0) & (!\inst|inst24|Q\(3) & (!\inst|inst24|Q\(2) & \inst|inst24|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst24|Q\(3),
	datab => \inst|inst24|Q\(0),
	datac => \inst|inst24|Q\(2),
	datad => \inst|inst24|Q\(1),
	combout => \inst3|inst31~0_combout\);

-- Location: LCCOMB_X99_Y16_N12
\inst3|inst26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst26~0_combout\ = (\inst|inst24|Q\(1) & (!\inst|inst24|Q\(3) & (\inst|inst24|Q\(0)))) # (!\inst|inst24|Q\(1) & ((\inst|inst24|Q\(2) & (!\inst|inst24|Q\(3))) # (!\inst|inst24|Q\(2) & ((\inst|inst24|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst24|Q\(3),
	datab => \inst|inst24|Q\(0),
	datac => \inst|inst24|Q\(2),
	datad => \inst|inst24|Q\(1),
	combout => \inst3|inst26~0_combout\);

-- Location: LCCOMB_X99_Y16_N10
\inst3|inst22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst22~0_combout\ = (\inst|inst24|Q\(0) & ((\inst|inst24|Q\(2) $ (!\inst|inst24|Q\(1))))) # (!\inst|inst24|Q\(0) & ((\inst|inst24|Q\(3) & (!\inst|inst24|Q\(2) & \inst|inst24|Q\(1))) # (!\inst|inst24|Q\(3) & (\inst|inst24|Q\(2) & 
-- !\inst|inst24|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst24|Q\(3),
	datab => \inst|inst24|Q\(0),
	datac => \inst|inst24|Q\(2),
	datad => \inst|inst24|Q\(1),
	combout => \inst3|inst22~0_combout\);

-- Location: LCCOMB_X99_Y16_N4
\inst3|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst17~0_combout\ = (\inst|inst24|Q\(3) & (\inst|inst24|Q\(2) & ((\inst|inst24|Q\(1)) # (!\inst|inst24|Q\(0))))) # (!\inst|inst24|Q\(3) & (!\inst|inst24|Q\(0) & (!\inst|inst24|Q\(2) & \inst|inst24|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst24|Q\(3),
	datab => \inst|inst24|Q\(0),
	datac => \inst|inst24|Q\(2),
	datad => \inst|inst24|Q\(1),
	combout => \inst3|inst17~0_combout\);

-- Location: LCCOMB_X99_Y16_N14
\inst3|inst13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst13~0_combout\ = (\inst|inst24|Q\(3) & ((\inst|inst24|Q\(0) & ((\inst|inst24|Q\(1)))) # (!\inst|inst24|Q\(0) & (\inst|inst24|Q\(2))))) # (!\inst|inst24|Q\(3) & (\inst|inst24|Q\(2) & (\inst|inst24|Q\(0) $ (\inst|inst24|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst24|Q\(3),
	datab => \inst|inst24|Q\(0),
	datac => \inst|inst24|Q\(2),
	datad => \inst|inst24|Q\(1),
	combout => \inst3|inst13~0_combout\);

-- Location: LCCOMB_X99_Y16_N20
\inst3|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst8~0_combout\ = (\inst|inst24|Q\(3) & (\inst|inst24|Q\(0) & (\inst|inst24|Q\(2) $ (\inst|inst24|Q\(1))))) # (!\inst|inst24|Q\(3) & (!\inst|inst24|Q\(1) & (\inst|inst24|Q\(0) $ (\inst|inst24|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst24|Q\(3),
	datab => \inst|inst24|Q\(0),
	datac => \inst|inst24|Q\(2),
	datad => \inst|inst24|Q\(1),
	combout => \inst3|inst8~0_combout\);

-- Location: LCCOMB_X110_Y16_N14
\inst2|inst35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst35~combout\ = (\inst|inst22|Q\(0) & (!\inst|inst22|Q\(3) & (\inst|inst22|Q\(1) $ (!\inst|inst22|Q\(2))))) # (!\inst|inst22|Q\(0) & (!\inst|inst22|Q\(1) & (\inst|inst22|Q\(3) $ (!\inst|inst22|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst22|Q\(3),
	datab => \inst|inst22|Q\(0),
	datac => \inst|inst22|Q\(1),
	datad => \inst|inst22|Q\(2),
	combout => \inst2|inst35~combout\);

-- Location: LCCOMB_X110_Y16_N22
\inst2|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst31~0_combout\ = (\inst|inst22|Q\(0) & (\inst|inst22|Q\(3) $ (((\inst|inst22|Q\(1)) # (!\inst|inst22|Q\(2)))))) # (!\inst|inst22|Q\(0) & (!\inst|inst22|Q\(3) & (!\inst|inst22|Q\(2) & \inst|inst22|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst22|Q\(3),
	datab => \inst|inst22|Q\(0),
	datac => \inst|inst22|Q\(2),
	datad => \inst|inst22|Q\(1),
	combout => \inst2|inst31~0_combout\);

-- Location: LCCOMB_X110_Y16_N18
\inst2|inst26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst26~0_combout\ = (\inst|inst22|Q\(1) & (\inst|inst22|Q\(0) & (!\inst|inst22|Q\(3)))) # (!\inst|inst22|Q\(1) & ((\inst|inst22|Q\(2) & ((!\inst|inst22|Q\(3)))) # (!\inst|inst22|Q\(2) & (\inst|inst22|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst22|Q\(1),
	datab => \inst|inst22|Q\(0),
	datac => \inst|inst22|Q\(3),
	datad => \inst|inst22|Q\(2),
	combout => \inst2|inst26~0_combout\);

-- Location: LCCOMB_X110_Y16_N4
\inst2|inst22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst22~0_combout\ = (\inst|inst22|Q\(0) & (\inst|inst22|Q\(1) $ (((!\inst|inst22|Q\(2)))))) # (!\inst|inst22|Q\(0) & ((\inst|inst22|Q\(1) & (\inst|inst22|Q\(3) & !\inst|inst22|Q\(2))) # (!\inst|inst22|Q\(1) & (!\inst|inst22|Q\(3) & 
-- \inst|inst22|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst22|Q\(1),
	datab => \inst|inst22|Q\(0),
	datac => \inst|inst22|Q\(3),
	datad => \inst|inst22|Q\(2),
	combout => \inst2|inst22~0_combout\);

-- Location: LCCOMB_X110_Y16_N10
\inst2|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst17~0_combout\ = (\inst|inst22|Q\(3) & (\inst|inst22|Q\(2) & ((\inst|inst22|Q\(1)) # (!\inst|inst22|Q\(0))))) # (!\inst|inst22|Q\(3) & (\inst|inst22|Q\(1) & (!\inst|inst22|Q\(0) & !\inst|inst22|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst22|Q\(1),
	datab => \inst|inst22|Q\(0),
	datac => \inst|inst22|Q\(3),
	datad => \inst|inst22|Q\(2),
	combout => \inst2|inst17~0_combout\);

-- Location: LCCOMB_X110_Y16_N0
\inst2|inst13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst13~0_combout\ = (\inst|inst22|Q\(1) & ((\inst|inst22|Q\(0) & (\inst|inst22|Q\(3))) # (!\inst|inst22|Q\(0) & ((\inst|inst22|Q\(2)))))) # (!\inst|inst22|Q\(1) & (\inst|inst22|Q\(2) & (\inst|inst22|Q\(0) $ (\inst|inst22|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst22|Q\(1),
	datab => \inst|inst22|Q\(0),
	datac => \inst|inst22|Q\(3),
	datad => \inst|inst22|Q\(2),
	combout => \inst2|inst13~0_combout\);

-- Location: LCCOMB_X110_Y16_N12
\inst2|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst8~0_combout\ = (\inst|inst22|Q\(3) & (\inst|inst22|Q\(0) & (\inst|inst22|Q\(2) $ (\inst|inst22|Q\(1))))) # (!\inst|inst22|Q\(3) & (!\inst|inst22|Q\(1) & (\inst|inst22|Q\(2) $ (\inst|inst22|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst22|Q\(3),
	datab => \inst|inst22|Q\(2),
	datac => \inst|inst22|Q\(0),
	datad => \inst|inst22|Q\(1),
	combout => \inst2|inst8~0_combout\);

-- Location: LCCOMB_X112_Y16_N14
\inst1|inst35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst35~combout\ = (\inst|inst20|Q\(0) & (!\inst|inst20|Q\(3) & (\inst|inst20|Q\(2) $ (!\inst|inst20|Q\(1))))) # (!\inst|inst20|Q\(0) & (!\inst|inst20|Q\(1) & (\inst|inst20|Q\(2) $ (!\inst|inst20|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|Q\(0),
	datab => \inst|inst20|Q\(2),
	datac => \inst|inst20|Q\(1),
	datad => \inst|inst20|Q\(3),
	combout => \inst1|inst35~combout\);

-- Location: LCCOMB_X112_Y16_N8
\inst1|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst31~0_combout\ = (\inst|inst20|Q\(0) & (\inst|inst20|Q\(3) $ (((\inst|inst20|Q\(1)) # (!\inst|inst20|Q\(2)))))) # (!\inst|inst20|Q\(0) & (\inst|inst20|Q\(1) & (!\inst|inst20|Q\(3) & !\inst|inst20|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|Q\(0),
	datab => \inst|inst20|Q\(1),
	datac => \inst|inst20|Q\(3),
	datad => \inst|inst20|Q\(2),
	combout => \inst1|inst31~0_combout\);

-- Location: LCCOMB_X112_Y16_N2
\inst1|inst26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst26~0_combout\ = (\inst|inst20|Q\(1) & (((\inst|inst20|Q\(0) & !\inst|inst20|Q\(3))))) # (!\inst|inst20|Q\(1) & ((\inst|inst20|Q\(2) & ((!\inst|inst20|Q\(3)))) # (!\inst|inst20|Q\(2) & (\inst|inst20|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|Q\(2),
	datab => \inst|inst20|Q\(1),
	datac => \inst|inst20|Q\(0),
	datad => \inst|inst20|Q\(3),
	combout => \inst1|inst26~0_combout\);

-- Location: LCCOMB_X112_Y16_N16
\inst1|inst22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst22~0_combout\ = (\inst|inst20|Q\(0) & (\inst|inst20|Q\(2) $ ((!\inst|inst20|Q\(1))))) # (!\inst|inst20|Q\(0) & ((\inst|inst20|Q\(2) & (!\inst|inst20|Q\(1) & !\inst|inst20|Q\(3))) # (!\inst|inst20|Q\(2) & (\inst|inst20|Q\(1) & 
-- \inst|inst20|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|Q\(2),
	datab => \inst|inst20|Q\(1),
	datac => \inst|inst20|Q\(0),
	datad => \inst|inst20|Q\(3),
	combout => \inst1|inst22~0_combout\);

-- Location: LCCOMB_X112_Y16_N22
\inst1|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst17~0_combout\ = (\inst|inst20|Q\(2) & (\inst|inst20|Q\(3) & ((\inst|inst20|Q\(1)) # (!\inst|inst20|Q\(0))))) # (!\inst|inst20|Q\(2) & (!\inst|inst20|Q\(0) & (\inst|inst20|Q\(1) & !\inst|inst20|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|Q\(0),
	datab => \inst|inst20|Q\(1),
	datac => \inst|inst20|Q\(2),
	datad => \inst|inst20|Q\(3),
	combout => \inst1|inst17~0_combout\);

-- Location: LCCOMB_X112_Y16_N28
\inst1|inst13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst13~0_combout\ = (\inst|inst20|Q\(3) & ((\inst|inst20|Q\(0) & ((\inst|inst20|Q\(1)))) # (!\inst|inst20|Q\(0) & (\inst|inst20|Q\(2))))) # (!\inst|inst20|Q\(3) & (\inst|inst20|Q\(2) & (\inst|inst20|Q\(0) $ (\inst|inst20|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|Q\(3),
	datab => \inst|inst20|Q\(2),
	datac => \inst|inst20|Q\(0),
	datad => \inst|inst20|Q\(1),
	combout => \inst1|inst13~0_combout\);

-- Location: LCCOMB_X112_Y16_N6
\inst1|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst8~0_combout\ = (\inst|inst20|Q\(2) & (!\inst|inst20|Q\(1) & (\inst|inst20|Q\(0) $ (!\inst|inst20|Q\(3))))) # (!\inst|inst20|Q\(2) & (\inst|inst20|Q\(0) & (\inst|inst20|Q\(1) $ (!\inst|inst20|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|Q\(0),
	datab => \inst|inst20|Q\(1),
	datac => \inst|inst20|Q\(2),
	datad => \inst|inst20|Q\(3),
	combout => \inst1|inst8~0_combout\);

-- Location: LCCOMB_X111_Y16_N10
\inst|inst11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst11~combout\ = (\inst|inst12|estado_atual.S5~q\ & (((!\inst|inst~4_combout\) # (!\inst|inst~5_combout\)) # (!\inst|inst~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~6_combout\,
	datab => \inst|inst~5_combout\,
	datac => \inst|inst~4_combout\,
	datad => \inst|inst12|estado_atual.S5~q\,
	combout => \inst|inst11~combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


