-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "08/25/2014 12:11:26"

-- 
-- Device: Altera EP2C70F896I8 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	if_complete IS
    PORT (
	stall : IN std_logic;
	stop : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	pc : IN std_logic_vector(31 DOWNTO 0);
	ir_out : OUT std_logic_vector(31 DOWNTO 0);
	pc_out : OUT std_logic_vector(31 DOWNTO 0);
	brnch : IN std_logic;
	jmp_addr : IN std_logic_vector(31 DOWNTO 0);
	mem_addr : OUT std_logic_vector(31 DOWNTO 0);
	mem_data : INOUT std_logic_vector(31 DOWNTO 0);
	mem_read : OUT std_logic;
	wait_mem : OUT std_logic;
	req : OUT std_logic;
	ack : IN std_logic;
	pc_mod : IN std_logic
	);
END if_complete;

-- Design Ports Information
-- mem_addr[0]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[1]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[2]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[3]	=>  Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[4]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[5]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[6]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[7]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[8]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[9]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[10]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[11]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[12]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[13]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[14]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[15]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[16]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[17]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[18]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[19]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[20]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[21]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[22]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[23]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[24]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[25]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[26]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[27]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[28]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[29]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[30]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[31]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[0]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[1]	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[2]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[3]	=>  Location: PIN_G29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[4]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[5]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[6]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[7]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[8]	=>  Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[9]	=>  Location: PIN_P27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[10]	=>  Location: PIN_N29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[11]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[12]	=>  Location: PIN_K27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[13]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[14]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[15]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[16]	=>  Location: PIN_P28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[17]	=>  Location: PIN_M28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[18]	=>  Location: PIN_L30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[19]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[20]	=>  Location: PIN_N28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[21]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[22]	=>  Location: PIN_L29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[23]	=>  Location: PIN_L28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[24]	=>  Location: PIN_M29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[25]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[26]	=>  Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[27]	=>  Location: PIN_J30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[28]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[29]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[30]	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_data[31]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[0]	=>  Location: PIN_D29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[1]	=>  Location: PIN_C29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[2]	=>  Location: PIN_E29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[3]	=>  Location: PIN_F27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[4]	=>  Location: PIN_C30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[5]	=>  Location: PIN_G28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[6]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[7]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[8]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[9]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[10]	=>  Location: PIN_V27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[11]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[12]	=>  Location: PIN_E30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[13]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[14]	=>  Location: PIN_D28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[15]	=>  Location: PIN_U30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[16]	=>  Location: PIN_W30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[17]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[18]	=>  Location: PIN_W29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[19]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[20]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[21]	=>  Location: PIN_U29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[22]	=>  Location: PIN_R26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[23]	=>  Location: PIN_W28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[24]	=>  Location: PIN_M30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[25]	=>  Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[26]	=>  Location: PIN_V28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[27]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[28]	=>  Location: PIN_H30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[29]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[30]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ir_out[31]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[0]	=>  Location: PIN_G27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[1]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[2]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[3]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[4]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[5]	=>  Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[6]	=>  Location: PIN_E28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[7]	=>  Location: PIN_T28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[8]	=>  Location: PIN_H28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[9]	=>  Location: PIN_C27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[10]	=>  Location: PIN_H29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[11]	=>  Location: PIN_H27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[12]	=>  Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[13]	=>  Location: PIN_Y29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[14]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[15]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[16]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[17]	=>  Location: PIN_F29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[18]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[19]	=>  Location: PIN_Y30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[20]	=>  Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[21]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[22]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[23]	=>  Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[24]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[25]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[26]	=>  Location: PIN_AK20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[27]	=>  Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[28]	=>  Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[29]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[30]	=>  Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[31]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_read	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wait_mem	=>  Location: PIN_K28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- req	=>  Location: PIN_V29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[0]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[0]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- brnch	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- stall	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc_mod	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- stop	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[1]	=>  Location: PIN_F30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[1]	=>  Location: PIN_J29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[2]	=>  Location: PIN_T29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[2]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[3]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[4]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[4]	=>  Location: PIN_C26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[5]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[5]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[6]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[6]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[7]	=>  Location: PIN_T26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[7]	=>  Location: PIN_B28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[8]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[8]	=>  Location: PIN_M27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[9]	=>  Location: PIN_A28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[9]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[10]	=>  Location: PIN_A24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[10]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[11]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[11]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[12]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[12]	=>  Location: PIN_B27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[13]	=>  Location: PIN_A26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[13]	=>  Location: PIN_D24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[14]	=>  Location: PIN_A25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[14]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[15]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[15]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[16]	=>  Location: PIN_M26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[16]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[17]	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[17]	=>  Location: PIN_B26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[18]	=>  Location: PIN_R23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[18]	=>  Location: PIN_K30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[19]	=>  Location: PIN_K29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[19]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[20]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[20]	=>  Location: PIN_R27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[21]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[21]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[22]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[22]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[23]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[23]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[24]	=>  Location: PIN_T27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[24]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[25]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[25]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[26]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[26]	=>  Location: PIN_P29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[27]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[27]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[28]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[28]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[29]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[29]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[30]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[30]	=>  Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc[31]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- jmp_addr[31]	=>  Location: PIN_P30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ack	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF if_complete IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_stall : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ir_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pc_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_brnch : std_logic;
SIGNAL ww_jmp_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_mem_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_mem_read : std_logic;
SIGNAL ww_wait_mem : std_logic;
SIGNAL ww_req : std_logic;
SIGNAL ww_ack : std_logic;
SIGNAL ww_pc_mod : std_logic;
SIGNAL \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instr_cache|tag~187_regout\ : std_logic;
SIGNAL \instr_cache|tag~291_regout\ : std_logic;
SIGNAL \instr_cache|tag~83_regout\ : std_logic;
SIGNAL \instr_cache|tag~447_combout\ : std_logic;
SIGNAL \instr_cache|tag~448_combout\ : std_logic;
SIGNAL \instr_cache|tag~449_combout\ : std_logic;
SIGNAL \instr_cache|tag~450_combout\ : std_logic;
SIGNAL \instr_cache|tag~395_regout\ : std_logic;
SIGNAL \instr_cache|tag~451_combout\ : std_logic;
SIGNAL \instr_cache|tag~265_regout\ : std_logic;
SIGNAL \cache_addr[5]~5_combout\ : std_logic;
SIGNAL \instr_cache|tag~161_regout\ : std_logic;
SIGNAL \instr_cache|tag~57_regout\ : std_logic;
SIGNAL \instr_cache|tag~452_combout\ : std_logic;
SIGNAL \instr_cache|tag~369_regout\ : std_logic;
SIGNAL \instr_cache|tag~453_combout\ : std_logic;
SIGNAL \cache_addr[2]~7_combout\ : std_logic;
SIGNAL \instr_cache|tag~135_regout\ : std_logic;
SIGNAL \instr_cache|tag~239_regout\ : std_logic;
SIGNAL \instr_cache|tag~31_regout\ : std_logic;
SIGNAL \instr_cache|tag~454_combout\ : std_logic;
SIGNAL \instr_cache|tag~343_regout\ : std_logic;
SIGNAL \instr_cache|tag~455_combout\ : std_logic;
SIGNAL \instr_cache|tag~456_combout\ : std_logic;
SIGNAL \instr_cache|tag~317_regout\ : std_logic;
SIGNAL \instr_cache|tag~213_regout\ : std_logic;
SIGNAL \instr_cache|tag~109_regout\ : std_logic;
SIGNAL \instr_cache|tag~457_combout\ : std_logic;
SIGNAL \instr_cache|tag~421_regout\ : std_logic;
SIGNAL \instr_cache|tag~458_combout\ : std_logic;
SIGNAL \instr_cache|tag~459_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~0_combout\ : std_logic;
SIGNAL \instr_cache|tag~292_regout\ : std_logic;
SIGNAL \instr_cache|tag~266_regout\ : std_logic;
SIGNAL \instr_cache|tag~240_regout\ : std_logic;
SIGNAL \instr_cache|tag~460_combout\ : std_logic;
SIGNAL \instr_cache|tag~318_regout\ : std_logic;
SIGNAL \instr_cache|tag~461_combout\ : std_logic;
SIGNAL \instr_cache|tag~162_regout\ : std_logic;
SIGNAL \instr_cache|tag~188_regout\ : std_logic;
SIGNAL \instr_cache|tag~136_regout\ : std_logic;
SIGNAL \instr_cache|tag~462_combout\ : std_logic;
SIGNAL \instr_cache|tag~214_regout\ : std_logic;
SIGNAL \instr_cache|tag~463_combout\ : std_logic;
SIGNAL \instr_cache|tag~84_regout\ : std_logic;
SIGNAL \instr_cache|tag~58_regout\ : std_logic;
SIGNAL \instr_cache|tag~32_regout\ : std_logic;
SIGNAL \instr_cache|tag~464_combout\ : std_logic;
SIGNAL \instr_cache|tag~110_regout\ : std_logic;
SIGNAL \instr_cache|tag~465_combout\ : std_logic;
SIGNAL \instr_cache|tag~466_combout\ : std_logic;
SIGNAL \instr_cache|tag~370_regout\ : std_logic;
SIGNAL \instr_cache|tag~396_regout\ : std_logic;
SIGNAL \instr_cache|tag~344_regout\ : std_logic;
SIGNAL \instr_cache|tag~467_combout\ : std_logic;
SIGNAL \instr_cache|tag~422_regout\ : std_logic;
SIGNAL \instr_cache|tag~468_combout\ : std_logic;
SIGNAL \instr_cache|tag~469_combout\ : std_logic;
SIGNAL \cache_addr[7]~9_combout\ : std_logic;
SIGNAL \instr_cache|Mux0~0_combout\ : std_logic;
SIGNAL \instr_cache|Mux0~1_combout\ : std_logic;
SIGNAL \instr_cache|Mux0~2_combout\ : std_logic;
SIGNAL \instr_cache|Mux0~3_combout\ : std_logic;
SIGNAL \instr_cache|Mux0~4_combout\ : std_logic;
SIGNAL \instr_cache|Mux0~5_combout\ : std_logic;
SIGNAL \instr_cache|Mux0~6_combout\ : std_logic;
SIGNAL \instr_cache|Mux0~7_combout\ : std_logic;
SIGNAL \instr_cache|Mux0~8_combout\ : std_logic;
SIGNAL \instr_cache|Mux0~9_combout\ : std_logic;
SIGNAL \instr_cache|process_1~0_combout\ : std_logic;
SIGNAL \instr_cache|tag~163_regout\ : std_logic;
SIGNAL \instr_cache|tag~267_regout\ : std_logic;
SIGNAL \instr_cache|tag~59_regout\ : std_logic;
SIGNAL \instr_cache|tag~470_combout\ : std_logic;
SIGNAL \instr_cache|tag~371_regout\ : std_logic;
SIGNAL \instr_cache|tag~471_combout\ : std_logic;
SIGNAL \instr_cache|tag~293_regout\ : std_logic;
SIGNAL \instr_cache|tag~189_regout\ : std_logic;
SIGNAL \instr_cache|tag~85_regout\ : std_logic;
SIGNAL \instr_cache|tag~472_combout\ : std_logic;
SIGNAL \instr_cache|tag~397_regout\ : std_logic;
SIGNAL \instr_cache|tag~473_combout\ : std_logic;
SIGNAL \instr_cache|tag~241_regout\ : std_logic;
SIGNAL \instr_cache|tag~137_regout\ : std_logic;
SIGNAL \instr_cache|tag~33_regout\ : std_logic;
SIGNAL \instr_cache|tag~474_combout\ : std_logic;
SIGNAL \instr_cache|tag~345_regout\ : std_logic;
SIGNAL \instr_cache|tag~475_combout\ : std_logic;
SIGNAL \instr_cache|tag~476_combout\ : std_logic;
SIGNAL \instr_cache|tag~215_regout\ : std_logic;
SIGNAL \instr_cache|tag~319_regout\ : std_logic;
SIGNAL \instr_cache|tag~111_regout\ : std_logic;
SIGNAL \instr_cache|tag~477_combout\ : std_logic;
SIGNAL \instr_cache|tag~423_regout\ : std_logic;
SIGNAL \instr_cache|tag~478_combout\ : std_logic;
SIGNAL \instr_cache|tag~479_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~1_combout\ : std_logic;
SIGNAL \instr_cache|tag~190_regout\ : std_logic;
SIGNAL \instr_cache|tag~164_regout\ : std_logic;
SIGNAL \instr_cache|tag~138_regout\ : std_logic;
SIGNAL \instr_cache|tag~480_combout\ : std_logic;
SIGNAL \instr_cache|tag~216_regout\ : std_logic;
SIGNAL \instr_cache|tag~481_combout\ : std_logic;
SIGNAL \instr_cache|tag~268_regout\ : std_logic;
SIGNAL \instr_cache|tag~294_regout\ : std_logic;
SIGNAL \instr_cache|tag~242_regout\ : std_logic;
SIGNAL \instr_cache|tag~482_combout\ : std_logic;
SIGNAL \instr_cache|tag~320_regout\ : std_logic;
SIGNAL \instr_cache|tag~483_combout\ : std_logic;
SIGNAL \instr_cache|tag~60_regout\ : std_logic;
SIGNAL \instr_cache|tag~86_regout\ : std_logic;
SIGNAL \instr_cache|tag~34_regout\ : std_logic;
SIGNAL \instr_cache|tag~484_combout\ : std_logic;
SIGNAL \instr_cache|tag~112_regout\ : std_logic;
SIGNAL \instr_cache|tag~485_combout\ : std_logic;
SIGNAL \instr_cache|tag~486_combout\ : std_logic;
SIGNAL \instr_cache|tag~398_regout\ : std_logic;
SIGNAL \instr_cache|tag~372_regout\ : std_logic;
SIGNAL \instr_cache|tag~346_regout\ : std_logic;
SIGNAL \instr_cache|tag~487_combout\ : std_logic;
SIGNAL \instr_cache|tag~424_regout\ : std_logic;
SIGNAL \instr_cache|tag~488_combout\ : std_logic;
SIGNAL \instr_cache|tag~489_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~2_combout\ : std_logic;
SIGNAL \instr_cache|tag~191_regout\ : std_logic;
SIGNAL \instr_cache|tag~295_regout\ : std_logic;
SIGNAL \instr_cache|tag~87_regout\ : std_logic;
SIGNAL \instr_cache|tag~490_combout\ : std_logic;
SIGNAL \instr_cache|tag~399_regout\ : std_logic;
SIGNAL \instr_cache|tag~491_combout\ : std_logic;
SIGNAL \instr_cache|tag~269_regout\ : std_logic;
SIGNAL \instr_cache|tag~165_regout\ : std_logic;
SIGNAL \instr_cache|tag~61_regout\ : std_logic;
SIGNAL \instr_cache|tag~492_combout\ : std_logic;
SIGNAL \instr_cache|tag~373_regout\ : std_logic;
SIGNAL \instr_cache|tag~493_combout\ : std_logic;
SIGNAL \instr_cache|tag~139_regout\ : std_logic;
SIGNAL \instr_cache|tag~243_regout\ : std_logic;
SIGNAL \instr_cache|tag~35_regout\ : std_logic;
SIGNAL \instr_cache|tag~494_combout\ : std_logic;
SIGNAL \instr_cache|tag~347_regout\ : std_logic;
SIGNAL \instr_cache|tag~495_combout\ : std_logic;
SIGNAL \instr_cache|tag~496_combout\ : std_logic;
SIGNAL \instr_cache|tag~321_regout\ : std_logic;
SIGNAL \instr_cache|tag~217_regout\ : std_logic;
SIGNAL \instr_cache|tag~113_regout\ : std_logic;
SIGNAL \instr_cache|tag~497_combout\ : std_logic;
SIGNAL \instr_cache|tag~425_regout\ : std_logic;
SIGNAL \instr_cache|tag~498_combout\ : std_logic;
SIGNAL \instr_cache|tag~499_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~3_combout\ : std_logic;
SIGNAL \instr_cache|tag~296_regout\ : std_logic;
SIGNAL \instr_cache|tag~270_regout\ : std_logic;
SIGNAL \instr_cache|tag~244_regout\ : std_logic;
SIGNAL \instr_cache|tag~500_combout\ : std_logic;
SIGNAL \instr_cache|tag~322_regout\ : std_logic;
SIGNAL \instr_cache|tag~501_combout\ : std_logic;
SIGNAL \instr_cache|tag~166_regout\ : std_logic;
SIGNAL \instr_cache|tag~192_regout\ : std_logic;
SIGNAL \instr_cache|tag~140_regout\ : std_logic;
SIGNAL \instr_cache|tag~502_combout\ : std_logic;
SIGNAL \instr_cache|tag~218_regout\ : std_logic;
SIGNAL \instr_cache|tag~503_combout\ : std_logic;
SIGNAL \instr_cache|tag~88_regout\ : std_logic;
SIGNAL \instr_cache|tag~62_regout\ : std_logic;
SIGNAL \instr_cache|tag~36_regout\ : std_logic;
SIGNAL \instr_cache|tag~504_combout\ : std_logic;
SIGNAL \instr_cache|tag~114_regout\ : std_logic;
SIGNAL \instr_cache|tag~505_combout\ : std_logic;
SIGNAL \instr_cache|tag~506_combout\ : std_logic;
SIGNAL \instr_cache|tag~374_regout\ : std_logic;
SIGNAL \instr_cache|tag~400_regout\ : std_logic;
SIGNAL \instr_cache|tag~348_regout\ : std_logic;
SIGNAL \instr_cache|tag~507_combout\ : std_logic;
SIGNAL \instr_cache|tag~426_regout\ : std_logic;
SIGNAL \instr_cache|tag~508_combout\ : std_logic;
SIGNAL \instr_cache|tag~509_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~4_combout\ : std_logic;
SIGNAL \instr_cache|tag~167_regout\ : std_logic;
SIGNAL \instr_cache|tag~271_regout\ : std_logic;
SIGNAL \instr_cache|tag~63_regout\ : std_logic;
SIGNAL \instr_cache|tag~510_combout\ : std_logic;
SIGNAL \instr_cache|tag~375_regout\ : std_logic;
SIGNAL \instr_cache|tag~511_combout\ : std_logic;
SIGNAL \instr_cache|tag~297_regout\ : std_logic;
SIGNAL \instr_cache|tag~193_regout\ : std_logic;
SIGNAL \instr_cache|tag~89_regout\ : std_logic;
SIGNAL \instr_cache|tag~512_combout\ : std_logic;
SIGNAL \instr_cache|tag~401_regout\ : std_logic;
SIGNAL \instr_cache|tag~513_combout\ : std_logic;
SIGNAL \instr_cache|tag~245_regout\ : std_logic;
SIGNAL \instr_cache|tag~141_regout\ : std_logic;
SIGNAL \instr_cache|tag~37_regout\ : std_logic;
SIGNAL \instr_cache|tag~514_combout\ : std_logic;
SIGNAL \instr_cache|tag~349_regout\ : std_logic;
SIGNAL \instr_cache|tag~515_combout\ : std_logic;
SIGNAL \instr_cache|tag~516_combout\ : std_logic;
SIGNAL \instr_cache|tag~219_regout\ : std_logic;
SIGNAL \instr_cache|tag~323_regout\ : std_logic;
SIGNAL \instr_cache|tag~115_regout\ : std_logic;
SIGNAL \instr_cache|tag~517_combout\ : std_logic;
SIGNAL \instr_cache|tag~427_regout\ : std_logic;
SIGNAL \instr_cache|tag~518_combout\ : std_logic;
SIGNAL \instr_cache|tag~519_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~5_combout\ : std_logic;
SIGNAL \instr_cache|tag~194_regout\ : std_logic;
SIGNAL \instr_cache|tag~168_regout\ : std_logic;
SIGNAL \instr_cache|tag~142_regout\ : std_logic;
SIGNAL \instr_cache|tag~520_combout\ : std_logic;
SIGNAL \instr_cache|tag~220_regout\ : std_logic;
SIGNAL \instr_cache|tag~521_combout\ : std_logic;
SIGNAL \instr_cache|tag~272_regout\ : std_logic;
SIGNAL \instr_cache|tag~298_regout\ : std_logic;
SIGNAL \instr_cache|tag~246_regout\ : std_logic;
SIGNAL \instr_cache|tag~522_combout\ : std_logic;
SIGNAL \instr_cache|tag~324_regout\ : std_logic;
SIGNAL \instr_cache|tag~523_combout\ : std_logic;
SIGNAL \instr_cache|tag~64_regout\ : std_logic;
SIGNAL \instr_cache|tag~90_regout\ : std_logic;
SIGNAL \instr_cache|tag~38_regout\ : std_logic;
SIGNAL \instr_cache|tag~524_combout\ : std_logic;
SIGNAL \instr_cache|tag~116_regout\ : std_logic;
SIGNAL \instr_cache|tag~525_combout\ : std_logic;
SIGNAL \instr_cache|tag~526_combout\ : std_logic;
SIGNAL \instr_cache|tag~402_regout\ : std_logic;
SIGNAL \instr_cache|tag~376_regout\ : std_logic;
SIGNAL \instr_cache|tag~350_regout\ : std_logic;
SIGNAL \instr_cache|tag~527_combout\ : std_logic;
SIGNAL \instr_cache|tag~428_regout\ : std_logic;
SIGNAL \instr_cache|tag~528_combout\ : std_logic;
SIGNAL \instr_cache|tag~529_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~6_combout\ : std_logic;
SIGNAL \instr_cache|process_1~1_combout\ : std_logic;
SIGNAL \instr_cache|process_1~2_combout\ : std_logic;
SIGNAL \instr_cache|tag~299_regout\ : std_logic;
SIGNAL \instr_cache|tag~403_regout\ : std_logic;
SIGNAL \instr_cache|tag~65_regout\ : std_logic;
SIGNAL \instr_cache|tag~143_regout\ : std_logic;
SIGNAL \instr_cache|tag~221_regout\ : std_logic;
SIGNAL \instr_cache|tag~300_regout\ : std_logic;
SIGNAL \instr_cache|tag~274_regout\ : std_logic;
SIGNAL \instr_cache|tag~248_regout\ : std_logic;
SIGNAL \instr_cache|tag~540_combout\ : std_logic;
SIGNAL \instr_cache|tag~326_regout\ : std_logic;
SIGNAL \instr_cache|tag~541_combout\ : std_logic;
SIGNAL \instr_cache|tag~40_regout\ : std_logic;
SIGNAL \instr_cache|tag~118_regout\ : std_logic;
SIGNAL \instr_cache|tag~352_regout\ : std_logic;
SIGNAL \instr_cache|tag~430_regout\ : std_logic;
SIGNAL \instr_cache|tag~171_regout\ : std_logic;
SIGNAL \instr_cache|tag~275_regout\ : std_logic;
SIGNAL \instr_cache|tag~67_regout\ : std_logic;
SIGNAL \instr_cache|tag~550_combout\ : std_logic;
SIGNAL \instr_cache|tag~379_regout\ : std_logic;
SIGNAL \instr_cache|tag~551_combout\ : std_logic;
SIGNAL \instr_cache|tag~301_regout\ : std_logic;
SIGNAL \instr_cache|tag~197_regout\ : std_logic;
SIGNAL \instr_cache|tag~93_regout\ : std_logic;
SIGNAL \instr_cache|tag~552_combout\ : std_logic;
SIGNAL \instr_cache|tag~405_regout\ : std_logic;
SIGNAL \instr_cache|tag~553_combout\ : std_logic;
SIGNAL \instr_cache|tag~249_regout\ : std_logic;
SIGNAL \instr_cache|tag~145_regout\ : std_logic;
SIGNAL \instr_cache|tag~41_regout\ : std_logic;
SIGNAL \instr_cache|tag~554_combout\ : std_logic;
SIGNAL \instr_cache|tag~353_regout\ : std_logic;
SIGNAL \instr_cache|tag~555_combout\ : std_logic;
SIGNAL \instr_cache|tag~556_combout\ : std_logic;
SIGNAL \instr_cache|tag~223_regout\ : std_logic;
SIGNAL \instr_cache|tag~327_regout\ : std_logic;
SIGNAL \instr_cache|tag~119_regout\ : std_logic;
SIGNAL \instr_cache|tag~557_combout\ : std_logic;
SIGNAL \instr_cache|tag~431_regout\ : std_logic;
SIGNAL \instr_cache|tag~558_combout\ : std_logic;
SIGNAL \instr_cache|tag~559_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~9_combout\ : std_logic;
SIGNAL \instr_cache|tag~146_regout\ : std_logic;
SIGNAL \instr_cache|tag~94_regout\ : std_logic;
SIGNAL \instr_cache|tag~120_regout\ : std_logic;
SIGNAL \instr_cache|tag~380_regout\ : std_logic;
SIGNAL \instr_cache|tag~199_regout\ : std_logic;
SIGNAL \instr_cache|tag~303_regout\ : std_logic;
SIGNAL \instr_cache|tag~95_regout\ : std_logic;
SIGNAL \instr_cache|tag~570_combout\ : std_logic;
SIGNAL \instr_cache|tag~407_regout\ : std_logic;
SIGNAL \instr_cache|tag~571_combout\ : std_logic;
SIGNAL \instr_cache|tag~277_regout\ : std_logic;
SIGNAL \instr_cache|tag~173_regout\ : std_logic;
SIGNAL \instr_cache|tag~69_regout\ : std_logic;
SIGNAL \instr_cache|tag~572_combout\ : std_logic;
SIGNAL \instr_cache|tag~381_regout\ : std_logic;
SIGNAL \instr_cache|tag~573_combout\ : std_logic;
SIGNAL \instr_cache|tag~147_regout\ : std_logic;
SIGNAL \instr_cache|tag~251_regout\ : std_logic;
SIGNAL \instr_cache|tag~43_regout\ : std_logic;
SIGNAL \instr_cache|tag~574_combout\ : std_logic;
SIGNAL \instr_cache|tag~355_regout\ : std_logic;
SIGNAL \instr_cache|tag~575_combout\ : std_logic;
SIGNAL \instr_cache|tag~576_combout\ : std_logic;
SIGNAL \instr_cache|tag~329_regout\ : std_logic;
SIGNAL \instr_cache|tag~225_regout\ : std_logic;
SIGNAL \instr_cache|tag~121_regout\ : std_logic;
SIGNAL \instr_cache|tag~577_combout\ : std_logic;
SIGNAL \instr_cache|tag~433_regout\ : std_logic;
SIGNAL \instr_cache|tag~578_combout\ : std_logic;
SIGNAL \instr_cache|tag~579_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~11_combout\ : std_logic;
SIGNAL \instr_cache|tag~252_regout\ : std_logic;
SIGNAL \instr_cache|tag~174_regout\ : std_logic;
SIGNAL \instr_cache|tag~200_regout\ : std_logic;
SIGNAL \instr_cache|tag~70_regout\ : std_logic;
SIGNAL \instr_cache|tag~382_regout\ : std_logic;
SIGNAL \instr_cache|tag~408_regout\ : std_logic;
SIGNAL \instr_cache|tag~356_regout\ : std_logic;
SIGNAL \instr_cache|tag~587_combout\ : std_logic;
SIGNAL \instr_cache|tag~434_regout\ : std_logic;
SIGNAL \instr_cache|tag~588_combout\ : std_logic;
SIGNAL \instr_cache|tag~71_regout\ : std_logic;
SIGNAL \instr_cache|tag~383_regout\ : std_logic;
SIGNAL \instr_cache|tag~201_regout\ : std_logic;
SIGNAL \instr_cache|tag~409_regout\ : std_logic;
SIGNAL \instr_cache|tag~253_regout\ : std_logic;
SIGNAL \instr_cache|tag~227_regout\ : std_logic;
SIGNAL \instr_cache|tag~331_regout\ : std_logic;
SIGNAL \instr_cache|tag~123_regout\ : std_logic;
SIGNAL \instr_cache|tag~597_combout\ : std_logic;
SIGNAL \instr_cache|tag~435_regout\ : std_logic;
SIGNAL \instr_cache|tag~598_combout\ : std_logic;
SIGNAL \instr_cache|tag~150_regout\ : std_logic;
SIGNAL \instr_cache|tag~306_regout\ : std_logic;
SIGNAL \instr_cache|tag~332_regout\ : std_logic;
SIGNAL \instr_cache|tag~98_regout\ : std_logic;
SIGNAL \instr_cache|tag~124_regout\ : std_logic;
SIGNAL \instr_cache|tag~358_regout\ : std_logic;
SIGNAL \instr_cache|tag~307_regout\ : std_logic;
SIGNAL \instr_cache|tag~411_regout\ : std_logic;
SIGNAL \instr_cache|tag~281_regout\ : std_logic;
SIGNAL \instr_cache|tag~177_regout\ : std_logic;
SIGNAL \instr_cache|tag~282_regout\ : std_logic;
SIGNAL \instr_cache|tag~334_regout\ : std_logic;
SIGNAL \instr_cache|tag~178_regout\ : std_logic;
SIGNAL \instr_cache|tag~204_regout\ : std_logic;
SIGNAL \instr_cache|tag~100_regout\ : std_logic;
SIGNAL \instr_cache|tag~74_regout\ : std_logic;
SIGNAL \instr_cache|tag~412_regout\ : std_logic;
SIGNAL \instr_cache|tag~438_regout\ : std_logic;
SIGNAL \instr_cache|tag~179_regout\ : std_logic;
SIGNAL \instr_cache|tag~283_regout\ : std_logic;
SIGNAL \instr_cache|tag~75_regout\ : std_logic;
SIGNAL \instr_cache|tag~630_combout\ : std_logic;
SIGNAL \instr_cache|tag~387_regout\ : std_logic;
SIGNAL \instr_cache|tag~631_combout\ : std_logic;
SIGNAL \instr_cache|tag~205_regout\ : std_logic;
SIGNAL \instr_cache|tag~413_regout\ : std_logic;
SIGNAL \instr_cache|tag~49_regout\ : std_logic;
SIGNAL \instr_cache|tag~361_regout\ : std_logic;
SIGNAL \instr_cache|tag~206_regout\ : std_logic;
SIGNAL \instr_cache|tag~180_regout\ : std_logic;
SIGNAL \instr_cache|tag~154_regout\ : std_logic;
SIGNAL \instr_cache|tag~640_combout\ : std_logic;
SIGNAL \instr_cache|tag~232_regout\ : std_logic;
SIGNAL \instr_cache|tag~641_combout\ : std_logic;
SIGNAL \instr_cache|tag~284_regout\ : std_logic;
SIGNAL \instr_cache|tag~310_regout\ : std_logic;
SIGNAL \instr_cache|tag~258_regout\ : std_logic;
SIGNAL \instr_cache|tag~642_combout\ : std_logic;
SIGNAL \instr_cache|tag~336_regout\ : std_logic;
SIGNAL \instr_cache|tag~643_combout\ : std_logic;
SIGNAL \instr_cache|tag~76_regout\ : std_logic;
SIGNAL \instr_cache|tag~102_regout\ : std_logic;
SIGNAL \instr_cache|tag~50_regout\ : std_logic;
SIGNAL \instr_cache|tag~644_combout\ : std_logic;
SIGNAL \instr_cache|tag~128_regout\ : std_logic;
SIGNAL \instr_cache|tag~645_combout\ : std_logic;
SIGNAL \instr_cache|tag~646_combout\ : std_logic;
SIGNAL \instr_cache|tag~414_regout\ : std_logic;
SIGNAL \instr_cache|tag~388_regout\ : std_logic;
SIGNAL \instr_cache|tag~362_regout\ : std_logic;
SIGNAL \instr_cache|tag~647_combout\ : std_logic;
SIGNAL \instr_cache|tag~440_regout\ : std_logic;
SIGNAL \instr_cache|tag~648_combout\ : std_logic;
SIGNAL \instr_cache|tag~649_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~18_combout\ : std_logic;
SIGNAL \instr_cache|tag~311_regout\ : std_logic;
SIGNAL \instr_cache|tag~415_regout\ : std_logic;
SIGNAL \instr_cache|tag~285_regout\ : std_logic;
SIGNAL \instr_cache|tag~181_regout\ : std_logic;
SIGNAL \instr_cache|tag~259_regout\ : std_logic;
SIGNAL \instr_cache|tag~337_regout\ : std_logic;
SIGNAL \instr_cache|tag~233_regout\ : std_logic;
SIGNAL \instr_cache|tag~129_regout\ : std_logic;
SIGNAL \instr_cache|tag~657_combout\ : std_logic;
SIGNAL \instr_cache|tag~441_regout\ : std_logic;
SIGNAL \instr_cache|tag~658_combout\ : std_logic;
SIGNAL \instr_cache|tag~338_regout\ : std_logic;
SIGNAL \instr_cache|tag~156_regout\ : std_logic;
SIGNAL \instr_cache|tag~104_regout\ : std_logic;
SIGNAL \instr_cache|tag~416_regout\ : std_logic;
SIGNAL \instr_cache|tag~183_regout\ : std_logic;
SIGNAL \instr_cache|tag~287_regout\ : std_logic;
SIGNAL \instr_cache|tag~79_regout\ : std_logic;
SIGNAL \instr_cache|tag~670_combout\ : std_logic;
SIGNAL \instr_cache|tag~391_regout\ : std_logic;
SIGNAL \instr_cache|tag~671_combout\ : std_logic;
SIGNAL \instr_cache|tag~313_regout\ : std_logic;
SIGNAL \instr_cache|tag~209_regout\ : std_logic;
SIGNAL \instr_cache|tag~105_regout\ : std_logic;
SIGNAL \instr_cache|tag~672_combout\ : std_logic;
SIGNAL \instr_cache|tag~417_regout\ : std_logic;
SIGNAL \instr_cache|tag~673_combout\ : std_logic;
SIGNAL \instr_cache|tag~261_regout\ : std_logic;
SIGNAL \instr_cache|tag~157_regout\ : std_logic;
SIGNAL \instr_cache|tag~53_regout\ : std_logic;
SIGNAL \instr_cache|tag~674_combout\ : std_logic;
SIGNAL \instr_cache|tag~365_regout\ : std_logic;
SIGNAL \instr_cache|tag~675_combout\ : std_logic;
SIGNAL \instr_cache|tag~676_combout\ : std_logic;
SIGNAL \instr_cache|tag~235_regout\ : std_logic;
SIGNAL \instr_cache|tag~339_regout\ : std_logic;
SIGNAL \instr_cache|tag~131_regout\ : std_logic;
SIGNAL \instr_cache|tag~677_combout\ : std_logic;
SIGNAL \instr_cache|tag~443_regout\ : std_logic;
SIGNAL \instr_cache|tag~678_combout\ : std_logic;
SIGNAL \instr_cache|tag~679_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~21_combout\ : std_logic;
SIGNAL \instr_cache|tag~210_regout\ : std_logic;
SIGNAL \instr_cache|tag~184_regout\ : std_logic;
SIGNAL \instr_cache|tag~158_regout\ : std_logic;
SIGNAL \instr_cache|tag~680_combout\ : std_logic;
SIGNAL \instr_cache|tag~236_regout\ : std_logic;
SIGNAL \instr_cache|tag~681_combout\ : std_logic;
SIGNAL \instr_cache|tag~288_regout\ : std_logic;
SIGNAL \instr_cache|tag~106_regout\ : std_logic;
SIGNAL \instr_cache|tag~392_regout\ : std_logic;
SIGNAL \instr_cache|tag~211_regout\ : std_logic;
SIGNAL \instr_cache|tag~315_regout\ : std_logic;
SIGNAL \instr_cache|tag~107_regout\ : std_logic;
SIGNAL \instr_cache|tag~690_combout\ : std_logic;
SIGNAL \instr_cache|tag~419_regout\ : std_logic;
SIGNAL \instr_cache|tag~691_combout\ : std_logic;
SIGNAL \instr_cache|tag~289_regout\ : std_logic;
SIGNAL \instr_cache|tag~185_regout\ : std_logic;
SIGNAL \instr_cache|tag~81_regout\ : std_logic;
SIGNAL \instr_cache|tag~692_combout\ : std_logic;
SIGNAL \instr_cache|tag~393_regout\ : std_logic;
SIGNAL \instr_cache|tag~693_combout\ : std_logic;
SIGNAL \instr_cache|tag~159_regout\ : std_logic;
SIGNAL \instr_cache|tag~263_regout\ : std_logic;
SIGNAL \instr_cache|tag~55_regout\ : std_logic;
SIGNAL \instr_cache|tag~694_combout\ : std_logic;
SIGNAL \instr_cache|tag~367_regout\ : std_logic;
SIGNAL \instr_cache|tag~695_combout\ : std_logic;
SIGNAL \instr_cache|tag~696_combout\ : std_logic;
SIGNAL \instr_cache|tag~341_regout\ : std_logic;
SIGNAL \instr_cache|tag~237_regout\ : std_logic;
SIGNAL \instr_cache|tag~133_regout\ : std_logic;
SIGNAL \instr_cache|tag~697_combout\ : std_logic;
SIGNAL \instr_cache|tag~445_regout\ : std_logic;
SIGNAL \instr_cache|tag~698_combout\ : std_logic;
SIGNAL \instr_cache|tag~699_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~23_combout\ : std_logic;
SIGNAL \instr_cache|tag~264_regout\ : std_logic;
SIGNAL \instr_cache|tag~342_regout\ : std_logic;
SIGNAL \instr_cache|tag~160_regout\ : std_logic;
SIGNAL \instr_cache|tag~108_regout\ : std_logic;
SIGNAL \instr_cache|tag~82_regout\ : std_logic;
SIGNAL \instr_cache|tag~394_regout\ : std_logic;
SIGNAL \instr_cache|tag~420_regout\ : std_logic;
SIGNAL \instr_cache|tag~368_regout\ : std_logic;
SIGNAL \instr_cache|tag~707_combout\ : std_logic;
SIGNAL \instr_cache|tag~446_regout\ : std_logic;
SIGNAL \instr_cache|tag~708_combout\ : std_logic;
SIGNAL \instr_cache|Selector108~3_combout\ : std_logic;
SIGNAL \instr_cache|Selector108~4_combout\ : std_logic;
SIGNAL \instr_cache|Add2~0_combout\ : std_logic;
SIGNAL \instr_cache|current_state.ACK_WAIT_RM~regout\ : std_logic;
SIGNAL \instr_cache|Selector106~1_combout\ : std_logic;
SIGNAL \instr_cache|Selector142~0_combout\ : std_logic;
SIGNAL \instr_cache|tag~724_combout\ : std_logic;
SIGNAL \instr_cache|tag~726_combout\ : std_logic;
SIGNAL \instr_cache|tag~738_combout\ : std_logic;
SIGNAL \instr_cache|valid[6]~0_combout\ : std_logic;
SIGNAL \instr_cache|valid[5]~1_combout\ : std_logic;
SIGNAL \instr_cache|valid[4]~2_combout\ : std_logic;
SIGNAL \instr_cache|valid[7]~3_combout\ : std_logic;
SIGNAL \instr_cache|valid[9]~4_combout\ : std_logic;
SIGNAL \instr_cache|valid[10]~5_combout\ : std_logic;
SIGNAL \instr_cache|valid[8]~6_combout\ : std_logic;
SIGNAL \instr_cache|valid[11]~7_combout\ : std_logic;
SIGNAL \instr_cache|valid[1]~8_combout\ : std_logic;
SIGNAL \instr_cache|valid[2]~9_combout\ : std_logic;
SIGNAL \instr_cache|valid[0]~10_combout\ : std_logic;
SIGNAL \instr_cache|valid[3]~11_combout\ : std_logic;
SIGNAL \instr_cache|valid[14]~12_combout\ : std_logic;
SIGNAL \instr_cache|valid[13]~13_combout\ : std_logic;
SIGNAL \instr_cache|valid[12]~14_combout\ : std_logic;
SIGNAL \instr_cache|valid[15]~15_combout\ : std_logic;
SIGNAL \instr_cache|Selector149~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector20~0_combout\ : std_logic;
SIGNAL \pc_mod~combout\ : std_logic;
SIGNAL \instr_cache|tag~395feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~265feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~58feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~397feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~345feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~371feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~319feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~85feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~111feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~138feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~320feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~34feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~242feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~217feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~36feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~166feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~192feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~400feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~401feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~219feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~427feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~402feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~64feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~168feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~299feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~221feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~65feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~143feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~352feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~249feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~275feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~197feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~67feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~120feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~94feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~303feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~95feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~251feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~355feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~173feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~381feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~199feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~174feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~408feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~200feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~356feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~227feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~331feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~71feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~201feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~409feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~435feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~253feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~281feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~100feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~412feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~282feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~205feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~414feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~284feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~76feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~259feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~233feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~441feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~156feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~105feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~184feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~288feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~55feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~133feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~211feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~263feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~341feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~420feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~368feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~264feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~160feeder_combout\ : std_logic;
SIGNAL \instr_cache|valid[8]~feeder_combout\ : std_logic;
SIGNAL \mem_data[0]~0\ : std_logic;
SIGNAL \mem_data[1]~1\ : std_logic;
SIGNAL \mem_data[2]~2\ : std_logic;
SIGNAL \mem_data[3]~3\ : std_logic;
SIGNAL \mem_data[4]~4\ : std_logic;
SIGNAL \mem_data[5]~5\ : std_logic;
SIGNAL \mem_data[6]~6\ : std_logic;
SIGNAL \mem_data[7]~7\ : std_logic;
SIGNAL \mem_data[8]~8\ : std_logic;
SIGNAL \mem_data[9]~9\ : std_logic;
SIGNAL \mem_data[10]~10\ : std_logic;
SIGNAL \mem_data[11]~11\ : std_logic;
SIGNAL \mem_data[12]~12\ : std_logic;
SIGNAL \mem_data[13]~13\ : std_logic;
SIGNAL \mem_data[14]~14\ : std_logic;
SIGNAL \mem_data[15]~15\ : std_logic;
SIGNAL \mem_data[16]~16\ : std_logic;
SIGNAL \mem_data[17]~17\ : std_logic;
SIGNAL \mem_data[18]~18\ : std_logic;
SIGNAL \mem_data[19]~19\ : std_logic;
SIGNAL \mem_data[20]~20\ : std_logic;
SIGNAL \mem_data[21]~21\ : std_logic;
SIGNAL \mem_data[22]~22\ : std_logic;
SIGNAL \mem_data[23]~23\ : std_logic;
SIGNAL \mem_data[24]~24\ : std_logic;
SIGNAL \mem_data[25]~25\ : std_logic;
SIGNAL \mem_data[26]~26\ : std_logic;
SIGNAL \mem_data[27]~27\ : std_logic;
SIGNAL \mem_data[28]~28\ : std_logic;
SIGNAL \mem_data[29]~29\ : std_logic;
SIGNAL \mem_data[30]~30\ : std_logic;
SIGNAL \mem_data[31]~31\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \instr_cache|Selector0~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector21~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \instr_cache|mem_wait_for[3]~0_combout\ : std_logic;
SIGNAL \instr_cache|Add1~1_combout\ : std_logic;
SIGNAL \instr_cache|Selector19~1_combout\ : std_logic;
SIGNAL \instr_cache|Add1~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector19~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector18~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector145~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector144~1_combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \instr_cache|current_state.WAITING_STATE~regout\ : std_logic;
SIGNAL \instr_cache|Selector145~1_combout\ : std_logic;
SIGNAL \instr_cache|current_state.READ_DBUS_STATE~regout\ : std_logic;
SIGNAL \instr_cache|next_state.EXECUTE_STATE~0_combout\ : std_logic;
SIGNAL \instr_cache|current_state.EXECUTE_STATE~regout\ : std_logic;
SIGNAL \instr_cache|words_counter[1]~1_combout\ : std_logic;
SIGNAL \instr_cache|Selector144~0_combout\ : std_logic;
SIGNAL \ack~combout\ : std_logic;
SIGNAL \instr_cache|Selector143~0_combout\ : std_logic;
SIGNAL \stop~combout\ : std_logic;
SIGNAL \stall~combout\ : std_logic;
SIGNAL \instr_cache|Selector153~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector142~1_combout\ : std_logic;
SIGNAL \instr_cache|current_state.IDLE_STATE~regout\ : std_logic;
SIGNAL \instr_cache|cpu_rd_reg~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector153~1_combout\ : std_logic;
SIGNAL \instr_cache|wait_mem~regout\ : std_logic;
SIGNAL \instr_cache|req~0_combout\ : std_logic;
SIGNAL \cache_addr[31]~0_combout\ : std_logic;
SIGNAL \cache_addr[4]~1_combout\ : std_logic;
SIGNAL \brnch~combout\ : std_logic;
SIGNAL \cache_addr[4]~2_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \instr_cache|tag~710_combout\ : std_logic;
SIGNAL \instr_cache|tag~711_combout\ : std_logic;
SIGNAL \instr_cache|tag~195_regout\ : std_logic;
SIGNAL \instr_cache|tag~714_combout\ : std_logic;
SIGNAL \instr_cache|tag~715_combout\ : std_logic;
SIGNAL \instr_cache|tag~91_regout\ : std_logic;
SIGNAL \cache_addr[5]~6_combout\ : std_logic;
SIGNAL \instr_cache|tag~530_combout\ : std_logic;
SIGNAL \instr_cache|tag~531_combout\ : std_logic;
SIGNAL \instr_cache|tag~429feeder_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \instr_cache|tag~740_combout\ : std_logic;
SIGNAL \instr_cache|tag~741_combout\ : std_logic;
SIGNAL \instr_cache|tag~429_regout\ : std_logic;
SIGNAL \instr_cache|tag~734_combout\ : std_logic;
SIGNAL \instr_cache|tag~735_combout\ : std_logic;
SIGNAL \instr_cache|tag~325_regout\ : std_logic;
SIGNAL \instr_cache|tag~739_combout\ : std_logic;
SIGNAL \instr_cache|tag~117_regout\ : std_logic;
SIGNAL \instr_cache|tag~537_combout\ : std_logic;
SIGNAL \instr_cache|tag~538_combout\ : std_logic;
SIGNAL \cache_addr[3]~3_combout\ : std_logic;
SIGNAL \cache_addr[3]~4_combout\ : std_logic;
SIGNAL \instr_cache|tag~732_combout\ : std_logic;
SIGNAL \instr_cache|tag~733_combout\ : std_logic;
SIGNAL \instr_cache|tag~351_regout\ : std_logic;
SIGNAL \instr_cache|tag~728_combout\ : std_logic;
SIGNAL \instr_cache|tag~729_combout\ : std_logic;
SIGNAL \instr_cache|tag~247_regout\ : std_logic;
SIGNAL \instr_cache|tag~39feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~730_combout\ : std_logic;
SIGNAL \instr_cache|tag~731_combout\ : std_logic;
SIGNAL \instr_cache|tag~39_regout\ : std_logic;
SIGNAL \instr_cache|tag~534_combout\ : std_logic;
SIGNAL \instr_cache|tag~535_combout\ : std_logic;
SIGNAL \instr_cache|tag~273feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~718_combout\ : std_logic;
SIGNAL \instr_cache|tag~719_combout\ : std_logic;
SIGNAL \instr_cache|tag~273_regout\ : std_logic;
SIGNAL \instr_cache|tag~725_combout\ : std_logic;
SIGNAL \instr_cache|tag~377_regout\ : std_logic;
SIGNAL \instr_cache|tag~720_combout\ : std_logic;
SIGNAL \instr_cache|tag~721_combout\ : std_logic;
SIGNAL \instr_cache|tag~169_regout\ : std_logic;
SIGNAL \instr_cache|tag~532_combout\ : std_logic;
SIGNAL \instr_cache|tag~533_combout\ : std_logic;
SIGNAL \instr_cache|tag~536_combout\ : std_logic;
SIGNAL \instr_cache|tag~539_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~7_combout\ : std_logic;
SIGNAL \cache_addr[2]~8_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \instr_cache|tag~378_regout\ : std_logic;
SIGNAL \instr_cache|tag~404feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~716_combout\ : std_logic;
SIGNAL \instr_cache|tag~717_combout\ : std_logic;
SIGNAL \instr_cache|tag~404_regout\ : std_logic;
SIGNAL \instr_cache|tag~547_combout\ : std_logic;
SIGNAL \instr_cache|tag~548_combout\ : std_logic;
SIGNAL \instr_cache|tag~170_regout\ : std_logic;
SIGNAL \instr_cache|tag~736_combout\ : std_logic;
SIGNAL \instr_cache|tag~737_combout\ : std_logic;
SIGNAL \instr_cache|tag~222_regout\ : std_logic;
SIGNAL \instr_cache|tag~727_combout\ : std_logic;
SIGNAL \instr_cache|tag~144_regout\ : std_logic;
SIGNAL \instr_cache|tag~196_regout\ : std_logic;
SIGNAL \instr_cache|tag~542_combout\ : std_logic;
SIGNAL \instr_cache|tag~543_combout\ : std_logic;
SIGNAL \instr_cache|tag~92_regout\ : std_logic;
SIGNAL \instr_cache|tag~722_combout\ : std_logic;
SIGNAL \instr_cache|tag~723_combout\ : std_logic;
SIGNAL \instr_cache|tag~66_regout\ : std_logic;
SIGNAL \instr_cache|tag~544_combout\ : std_logic;
SIGNAL \instr_cache|tag~545_combout\ : std_logic;
SIGNAL \instr_cache|tag~546_combout\ : std_logic;
SIGNAL \instr_cache|tag~549_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~8_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \instr_cache|tag~224_regout\ : std_logic;
SIGNAL \instr_cache|tag~198_regout\ : std_logic;
SIGNAL \instr_cache|tag~172_regout\ : std_logic;
SIGNAL \instr_cache|tag~560_combout\ : std_logic;
SIGNAL \instr_cache|tag~561_combout\ : std_logic;
SIGNAL \instr_cache|tag~432feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~432_regout\ : std_logic;
SIGNAL \instr_cache|tag~406_regout\ : std_logic;
SIGNAL \instr_cache|tag~354_regout\ : std_logic;
SIGNAL \instr_cache|tag~567_combout\ : std_logic;
SIGNAL \instr_cache|tag~568_combout\ : std_logic;
SIGNAL \instr_cache|tag~276_regout\ : std_logic;
SIGNAL \instr_cache|tag~328_regout\ : std_logic;
SIGNAL \instr_cache|tag~302feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~712_combout\ : std_logic;
SIGNAL \instr_cache|tag~713_combout\ : std_logic;
SIGNAL \instr_cache|tag~302_regout\ : std_logic;
SIGNAL \instr_cache|tag~250_regout\ : std_logic;
SIGNAL \instr_cache|tag~562_combout\ : std_logic;
SIGNAL \instr_cache|tag~563_combout\ : std_logic;
SIGNAL \instr_cache|tag~68_regout\ : std_logic;
SIGNAL \instr_cache|tag~42_regout\ : std_logic;
SIGNAL \instr_cache|tag~564_combout\ : std_logic;
SIGNAL \instr_cache|tag~565_combout\ : std_logic;
SIGNAL \instr_cache|tag~566_combout\ : std_logic;
SIGNAL \instr_cache|tag~569_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~10_combout\ : std_logic;
SIGNAL \instr_cache|process_1~3_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \instr_cache|tag~305_regout\ : std_logic;
SIGNAL \instr_cache|tag~97_regout\ : std_logic;
SIGNAL \instr_cache|tag~592_combout\ : std_logic;
SIGNAL \instr_cache|tag~593_combout\ : std_logic;
SIGNAL \instr_cache|tag~357_regout\ : std_logic;
SIGNAL \instr_cache|tag~149_regout\ : std_logic;
SIGNAL \instr_cache|tag~45_regout\ : std_logic;
SIGNAL \instr_cache|tag~594_combout\ : std_logic;
SIGNAL \instr_cache|tag~595_combout\ : std_logic;
SIGNAL \instr_cache|tag~596_combout\ : std_logic;
SIGNAL \instr_cache|tag~175_regout\ : std_logic;
SIGNAL \instr_cache|tag~279_regout\ : std_logic;
SIGNAL \instr_cache|tag~590_combout\ : std_logic;
SIGNAL \instr_cache|tag~591_combout\ : std_logic;
SIGNAL \instr_cache|tag~599_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~13_combout\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \instr_cache|tag~96feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~96_regout\ : std_logic;
SIGNAL \instr_cache|tag~122_regout\ : std_logic;
SIGNAL \instr_cache|tag~44_regout\ : std_logic;
SIGNAL \instr_cache|tag~584_combout\ : std_logic;
SIGNAL \instr_cache|tag~585_combout\ : std_logic;
SIGNAL \instr_cache|tag~226_regout\ : std_logic;
SIGNAL \instr_cache|tag~148_regout\ : std_logic;
SIGNAL \instr_cache|tag~582_combout\ : std_logic;
SIGNAL \instr_cache|tag~583_combout\ : std_logic;
SIGNAL \instr_cache|tag~586_combout\ : std_logic;
SIGNAL \instr_cache|tag~330_regout\ : std_logic;
SIGNAL \instr_cache|tag~304_regout\ : std_logic;
SIGNAL \instr_cache|tag~278_regout\ : std_logic;
SIGNAL \instr_cache|tag~580_combout\ : std_logic;
SIGNAL \instr_cache|tag~581_combout\ : std_logic;
SIGNAL \instr_cache|tag~589_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~12_combout\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \instr_cache|tag~410feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~410_regout\ : std_logic;
SIGNAL \instr_cache|tag~436_regout\ : std_logic;
SIGNAL \instr_cache|tag~384_regout\ : std_logic;
SIGNAL \instr_cache|tag~607_combout\ : std_logic;
SIGNAL \instr_cache|tag~608_combout\ : std_logic;
SIGNAL \instr_cache|tag~202_regout\ : std_logic;
SIGNAL \instr_cache|tag~228_regout\ : std_logic;
SIGNAL \instr_cache|tag~176_regout\ : std_logic;
SIGNAL \instr_cache|tag~600_combout\ : std_logic;
SIGNAL \instr_cache|tag~601_combout\ : std_logic;
SIGNAL \instr_cache|tag~280_regout\ : std_logic;
SIGNAL \instr_cache|tag~254_regout\ : std_logic;
SIGNAL \instr_cache|tag~602_combout\ : std_logic;
SIGNAL \instr_cache|tag~603_combout\ : std_logic;
SIGNAL \instr_cache|tag~72_regout\ : std_logic;
SIGNAL \instr_cache|tag~46_regout\ : std_logic;
SIGNAL \instr_cache|tag~604_combout\ : std_logic;
SIGNAL \instr_cache|tag~605_combout\ : std_logic;
SIGNAL \instr_cache|tag~606_combout\ : std_logic;
SIGNAL \instr_cache|tag~609_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~14_combout\ : std_logic;
SIGNAL \instr_cache|process_1~4_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \instr_cache|cpu_addr_reg[23]~feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~386_regout\ : std_logic;
SIGNAL \instr_cache|tag~360_regout\ : std_logic;
SIGNAL \instr_cache|tag~627_combout\ : std_logic;
SIGNAL \instr_cache|tag~628_combout\ : std_logic;
SIGNAL \instr_cache|tag~308_regout\ : std_logic;
SIGNAL \instr_cache|tag~256_regout\ : std_logic;
SIGNAL \instr_cache|tag~620_combout\ : std_logic;
SIGNAL \instr_cache|tag~621_combout\ : std_logic;
SIGNAL \instr_cache|tag~230_regout\ : std_logic;
SIGNAL \instr_cache|tag~152_regout\ : std_logic;
SIGNAL \instr_cache|tag~622_combout\ : std_logic;
SIGNAL \instr_cache|tag~623_combout\ : std_logic;
SIGNAL \instr_cache|tag~126_regout\ : std_logic;
SIGNAL \instr_cache|tag~48_regout\ : std_logic;
SIGNAL \instr_cache|tag~624_combout\ : std_logic;
SIGNAL \instr_cache|tag~625_combout\ : std_logic;
SIGNAL \instr_cache|tag~626_combout\ : std_logic;
SIGNAL \instr_cache|tag~629_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~16_combout\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \instr_cache|tag~437_regout\ : std_logic;
SIGNAL \instr_cache|tag~333_regout\ : std_logic;
SIGNAL \instr_cache|tag~229_regout\ : std_logic;
SIGNAL \instr_cache|tag~125_regout\ : std_logic;
SIGNAL \instr_cache|tag~617_combout\ : std_logic;
SIGNAL \instr_cache|tag~618_combout\ : std_logic;
SIGNAL \instr_cache|tag~385_regout\ : std_logic;
SIGNAL \instr_cache|tag~73_regout\ : std_logic;
SIGNAL \instr_cache|tag~612_combout\ : std_logic;
SIGNAL \instr_cache|tag~613_combout\ : std_logic;
SIGNAL \instr_cache|tag~151_regout\ : std_logic;
SIGNAL \instr_cache|tag~359_regout\ : std_logic;
SIGNAL \instr_cache|tag~255feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~255_regout\ : std_logic;
SIGNAL \instr_cache|tag~47_regout\ : std_logic;
SIGNAL \instr_cache|tag~614_combout\ : std_logic;
SIGNAL \instr_cache|tag~615_combout\ : std_logic;
SIGNAL \instr_cache|tag~616_combout\ : std_logic;
SIGNAL \instr_cache|tag~203_regout\ : std_logic;
SIGNAL \instr_cache|tag~99_regout\ : std_logic;
SIGNAL \instr_cache|tag~610_combout\ : std_logic;
SIGNAL \instr_cache|tag~611_combout\ : std_logic;
SIGNAL \instr_cache|tag~619_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~15_combout\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \instr_cache|cpu_addr_reg[24]~feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~231_regout\ : std_logic;
SIGNAL \instr_cache|tag~439_regout\ : std_logic;
SIGNAL \instr_cache|tag~127feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~127_regout\ : std_logic;
SIGNAL \instr_cache|tag~335_regout\ : std_logic;
SIGNAL \instr_cache|tag~637_combout\ : std_logic;
SIGNAL \instr_cache|tag~638_combout\ : std_logic;
SIGNAL \instr_cache|tag~309_regout\ : std_logic;
SIGNAL \instr_cache|tag~101_regout\ : std_logic;
SIGNAL \instr_cache|tag~632_combout\ : std_logic;
SIGNAL \instr_cache|tag~633_combout\ : std_logic;
SIGNAL \instr_cache|tag~257_regout\ : std_logic;
SIGNAL \instr_cache|tag~153_regout\ : std_logic;
SIGNAL \instr_cache|tag~634_combout\ : std_logic;
SIGNAL \instr_cache|tag~635_combout\ : std_logic;
SIGNAL \instr_cache|tag~636_combout\ : std_logic;
SIGNAL \instr_cache|tag~639_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~17_combout\ : std_logic;
SIGNAL \instr_cache|process_1~5_combout\ : std_logic;
SIGNAL \Add0~124_combout\ : std_logic;
SIGNAL \instr_cache|tag~290_regout\ : std_logic;
SIGNAL \instr_cache|tag~700_combout\ : std_logic;
SIGNAL \instr_cache|tag~316_regout\ : std_logic;
SIGNAL \instr_cache|tag~701_combout\ : std_logic;
SIGNAL \instr_cache|tag~134_regout\ : std_logic;
SIGNAL \instr_cache|tag~56_regout\ : std_logic;
SIGNAL \instr_cache|tag~704_combout\ : std_logic;
SIGNAL \instr_cache|tag~705_combout\ : std_logic;
SIGNAL \instr_cache|tag~238_regout\ : std_logic;
SIGNAL \instr_cache|tag~186_regout\ : std_logic;
SIGNAL \instr_cache|tag~212_regout\ : std_logic;
SIGNAL \instr_cache|tag~702_combout\ : std_logic;
SIGNAL \instr_cache|tag~703_combout\ : std_logic;
SIGNAL \instr_cache|tag~706_combout\ : std_logic;
SIGNAL \instr_cache|tag~709_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~24_combout\ : std_logic;
SIGNAL \Add0~108_combout\ : std_logic;
SIGNAL \instr_cache|tag~442_regout\ : std_logic;
SIGNAL \instr_cache|tag~390_regout\ : std_logic;
SIGNAL \instr_cache|tag~364_regout\ : std_logic;
SIGNAL \instr_cache|tag~667_combout\ : std_logic;
SIGNAL \instr_cache|tag~668_combout\ : std_logic;
SIGNAL \instr_cache|tag~312_regout\ : std_logic;
SIGNAL \instr_cache|tag~286_regout\ : std_logic;
SIGNAL \instr_cache|tag~260_regout\ : std_logic;
SIGNAL \instr_cache|tag~660_combout\ : std_logic;
SIGNAL \instr_cache|tag~661_combout\ : std_logic;
SIGNAL \instr_cache|tag~130_regout\ : std_logic;
SIGNAL \instr_cache|tag~78_regout\ : std_logic;
SIGNAL \instr_cache|tag~52_regout\ : std_logic;
SIGNAL \instr_cache|tag~664_combout\ : std_logic;
SIGNAL \instr_cache|tag~665_combout\ : std_logic;
SIGNAL \instr_cache|tag~182_regout\ : std_logic;
SIGNAL \instr_cache|tag~234_regout\ : std_logic;
SIGNAL \instr_cache|tag~208_regout\ : std_logic;
SIGNAL \instr_cache|tag~662_combout\ : std_logic;
SIGNAL \instr_cache|tag~663_combout\ : std_logic;
SIGNAL \instr_cache|tag~666_combout\ : std_logic;
SIGNAL \instr_cache|tag~669_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~20_combout\ : std_logic;
SIGNAL \Add0~116_combout\ : std_logic;
SIGNAL \instr_cache|cpu_addr_reg[29]~feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~80_regout\ : std_logic;
SIGNAL \instr_cache|tag~132_regout\ : std_logic;
SIGNAL \instr_cache|tag~54_regout\ : std_logic;
SIGNAL \instr_cache|tag~684_combout\ : std_logic;
SIGNAL \instr_cache|tag~685_combout\ : std_logic;
SIGNAL \instr_cache|tag~340_regout\ : std_logic;
SIGNAL \instr_cache|tag~314feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~314_regout\ : std_logic;
SIGNAL \instr_cache|tag~262_regout\ : std_logic;
SIGNAL \instr_cache|tag~682_combout\ : std_logic;
SIGNAL \instr_cache|tag~683_combout\ : std_logic;
SIGNAL \instr_cache|tag~686_combout\ : std_logic;
SIGNAL \instr_cache|tag~444feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~444_regout\ : std_logic;
SIGNAL \instr_cache|tag~418_regout\ : std_logic;
SIGNAL \instr_cache|tag~366_regout\ : std_logic;
SIGNAL \instr_cache|tag~687_combout\ : std_logic;
SIGNAL \instr_cache|tag~688_combout\ : std_logic;
SIGNAL \instr_cache|tag~689_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~22_combout\ : std_logic;
SIGNAL \Add0~104_combout\ : std_logic;
SIGNAL \instr_cache|cpu_addr_reg[26]~feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~207_regout\ : std_logic;
SIGNAL \instr_cache|tag~103_regout\ : std_logic;
SIGNAL \instr_cache|tag~650_combout\ : std_logic;
SIGNAL \instr_cache|tag~651_combout\ : std_logic;
SIGNAL \instr_cache|tag~389_regout\ : std_logic;
SIGNAL \instr_cache|tag~77_regout\ : std_logic;
SIGNAL \instr_cache|tag~652_combout\ : std_logic;
SIGNAL \instr_cache|tag~653_combout\ : std_logic;
SIGNAL \instr_cache|tag~363feeder_combout\ : std_logic;
SIGNAL \instr_cache|tag~363_regout\ : std_logic;
SIGNAL \instr_cache|tag~155_regout\ : std_logic;
SIGNAL \instr_cache|tag~51_regout\ : std_logic;
SIGNAL \instr_cache|tag~654_combout\ : std_logic;
SIGNAL \instr_cache|tag~655_combout\ : std_logic;
SIGNAL \instr_cache|tag~656_combout\ : std_logic;
SIGNAL \instr_cache|tag~659_combout\ : std_logic;
SIGNAL \instr_cache|Equal0~19_combout\ : std_logic;
SIGNAL \instr_cache|process_1~6_combout\ : std_logic;
SIGNAL \instr_cache|process_1~7_combout\ : std_logic;
SIGNAL \instr_cache|process_1~8_combout\ : std_logic;
SIGNAL \instr_cache|Selector143~1_combout\ : std_logic;
SIGNAL \instr_cache|current_state.READ_MEM_STATE~regout\ : std_logic;
SIGNAL \instr_cache|current_state.STOPED_STATE~0_combout\ : std_logic;
SIGNAL \instr_cache|current_state.STOPED_STATE~regout\ : std_logic;
SIGNAL \instr_cache|words_counter[0]~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector1~0_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \instr_cache|cpu_addr_reg[7]~feeder_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \instr_cache|cpu_addr_reg[12]~feeder_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~112_combout\ : std_logic;
SIGNAL \instr_cache|cpu_addr_reg[28]~feeder_combout\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \instr_cache|Selector140~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector109~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector107~2_combout\ : std_logic;
SIGNAL \instr_cache|Selector108~2_combout\ : std_logic;
SIGNAL \instr_cache|Selector108~5_combout\ : std_logic;
SIGNAL \instr_cache|Selector108~6_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \instr_cache|cpu_rd_reg~1_combout\ : std_logic;
SIGNAL \instr_cache|cpu_rd_reg~regout\ : std_logic;
SIGNAL \instr_cache|Selector107~4_combout\ : std_logic;
SIGNAL \instr_cache|Selector107~5_combout\ : std_logic;
SIGNAL \instr_cache|Selector107~3_combout\ : std_logic;
SIGNAL \instr_cache|Selector107~6_combout\ : std_logic;
SIGNAL \instr_cache|Selector107~7_combout\ : std_logic;
SIGNAL \instr_cache|Selector106~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector106~2_combout\ : std_logic;
SIGNAL \instr_cache|Selector106~3_combout\ : std_logic;
SIGNAL \instr_cache|Selector105~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector104~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector103~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector110~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector111~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector112~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector113~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector114~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector115~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector116~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector117~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector118~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector119~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector120~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector121~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector122~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector123~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector124~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector125~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector126~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector127~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector128~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector129~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector130~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector131~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector132~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector133~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector134~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector135~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector136~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector137~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector138~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector139~0_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[0]~0_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[1]~1_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[2]~2_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[3]~3_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[4]~4_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[5]~5_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[6]~6_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[7]~7_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[8]~8_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[9]~9_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[10]~10_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[11]~11_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[12]~12_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[13]~13_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[14]~14_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[15]~15_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[16]~16_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[17]~17_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[18]~18_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[19]~19_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[20]~20_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[21]~21_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[22]~22_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[23]~23_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[24]~24_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[25]~25_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[26]~26_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[27]~27_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[28]~28_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[29]~29_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[30]~30_combout\ : std_logic;
SIGNAL \instr_cache|data|data_out[31]~31_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[0]~0_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[0]~65_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[1]~1_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[1]~66_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[2]~2_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[2]~67_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[3]~3_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[3]~68_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[0]~64_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[4]~4_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[4]~69_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[5]~5_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[5]~70_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[6]~6_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[6]~71_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[7]~7_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[7]~72_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[8]~8_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[8]~73_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[9]~9_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[9]~74_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[10]~10_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[10]~75_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[11]~11_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[11]~76_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[12]~12_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[12]~77_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[13]~13_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[13]~78_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[14]~14_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[14]~79_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[15]~15_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[15]~80_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[16]~16_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[16]~81_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[17]~17_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[17]~82_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[18]~18_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[18]~83_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[19]~19_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[19]~84_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[20]~20_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[20]~85_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[21]~21_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[21]~86_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[22]~22_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[22]~87_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[23]~23_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[23]~88_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[24]~24_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[24]~89_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[25]~25_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[25]~90_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[26]~26_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[26]~91_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[27]~27_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[27]~92_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[28]~28_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[28]~93_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[29]~29_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[29]~94_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[30]~30_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[30]~95_combout\ : std_logic;
SIGNAL \instr_cache|data_out_reg[31]~31_combout\ : std_logic;
SIGNAL \instr_cache|cpu_data_out[31]~96_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~79_combout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~91_combout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_combout\ : std_logic;
SIGNAL \Add0~99_combout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_combout\ : std_logic;
SIGNAL \Add0~103_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107_combout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_combout\ : std_logic;
SIGNAL \Add0~111_combout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_combout\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_combout\ : std_logic;
SIGNAL \Add0~119_combout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_combout\ : std_logic;
SIGNAL \Add0~123_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~127_combout\ : std_logic;
SIGNAL \instr_cache|Selector152~0_combout\ : std_logic;
SIGNAL \instr_cache|Selector152~1_combout\ : std_logic;
SIGNAL \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \pc~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \jmp_addr~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instr_cache|words_counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \instr_cache|data_out_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instr_cache|mem_wait_for\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instr_cache|valid\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instr_cache|cpu_addr_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instr_cache|data|mem_reg_0__31__bypass\ : std_logic_vector(0 TO 32);

BEGIN

ww_stall <= stall;
ww_stop <= stop;
ww_clk <= clk;
ww_reset <= reset;
ww_pc <= pc;
ir_out <= ww_ir_out;
pc_out <= ww_pc_out;
ww_brnch <= brnch;
ww_jmp_addr <= jmp_addr;
mem_addr <= ww_mem_addr;
mem_read <= ww_mem_read;
wait_mem <= ww_wait_mem;
req <= ww_req;
ww_ack <= ack;
ww_pc_mod <= pc_mod;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\instr_cache|Selector140~0_combout\ & \instr_cache|Selector139~0_combout\ & \instr_cache|Selector138~0_combout\ & \instr_cache|Selector137~0_combout\ & 
\instr_cache|Selector136~0_combout\ & \instr_cache|Selector135~0_combout\ & \instr_cache|Selector134~0_combout\ & \instr_cache|Selector133~0_combout\ & \instr_cache|Selector132~0_combout\ & \instr_cache|Selector131~0_combout\ & 
\instr_cache|Selector130~0_combout\ & \instr_cache|Selector129~0_combout\ & \instr_cache|Selector128~0_combout\ & \instr_cache|Selector127~0_combout\ & \instr_cache|Selector126~0_combout\ & \instr_cache|Selector125~0_combout\ & 
\instr_cache|Selector124~0_combout\ & \instr_cache|Selector123~0_combout\ & \instr_cache|Selector122~0_combout\ & \instr_cache|Selector121~0_combout\ & \instr_cache|Selector120~0_combout\ & \instr_cache|Selector119~0_combout\ & 
\instr_cache|Selector118~0_combout\ & \instr_cache|Selector117~0_combout\ & \instr_cache|Selector116~0_combout\ & \instr_cache|Selector115~0_combout\ & \instr_cache|Selector114~0_combout\ & \instr_cache|Selector113~0_combout\ & 
\instr_cache|Selector112~0_combout\ & \instr_cache|Selector111~0_combout\ & \instr_cache|Selector110~0_combout\ & \instr_cache|Selector109~0_combout\);

\instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\instr_cache|Selector103~0_combout\ & \instr_cache|Selector104~0_combout\ & \instr_cache|Selector105~0_combout\ & \instr_cache|Selector106~3_combout\ & 
\instr_cache|Selector107~7_combout\ & \instr_cache|Selector108~6_combout\);

\instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\instr_cache|Selector103~0_combout\ & \instr_cache|Selector104~0_combout\ & \instr_cache|Selector105~0_combout\ & \instr_cache|Selector106~3_combout\ & 
\instr_cache|Selector107~7_combout\ & \instr_cache|Selector108~6_combout\);

\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(0) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(1) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(2) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(3) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(4) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(5) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(6) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(7) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(8) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(9) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(10) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(11) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(12) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(13) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(14) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(15) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(16) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(17) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(18) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(19) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(20) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(21) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(22) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(23) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(24) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(25) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(26) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(27) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(28) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(29) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(30) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(31) <= \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

-- Location: LCFF_X59_Y34_N25
\instr_cache|tag~187\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(6),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~187_regout\);

-- Location: LCFF_X58_Y37_N17
\instr_cache|tag~291\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(6),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~291_regout\);

-- Location: LCFF_X59_Y38_N21
\instr_cache|tag~83\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(6),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~83_regout\);

-- Location: LCCOMB_X60_Y38_N30
\instr_cache|tag~447\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~447_combout\ = (\brnch~combout\ & (!\stop~combout\ & \instr_cache|req~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datab => \stop~combout\,
	datad => \instr_cache|req~0_combout\,
	combout => \instr_cache|tag~447_combout\);

-- Location: LCCOMB_X60_Y38_N8
\instr_cache|tag~448\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~448_combout\ = (\instr_cache|tag~447_combout\ & ((\jmp_addr~combout\(5)))) # (!\instr_cache|tag~447_combout\ & (\pc~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(5),
	datab => \jmp_addr~combout\(5),
	datad => \instr_cache|tag~447_combout\,
	combout => \instr_cache|tag~448_combout\);

-- Location: LCCOMB_X60_Y38_N2
\instr_cache|tag~449\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~449_combout\ = (\instr_cache|tag~447_combout\ & ((\jmp_addr~combout\(4)))) # (!\instr_cache|tag~447_combout\ & (\pc~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(4),
	datac => \jmp_addr~combout\(4),
	datad => \instr_cache|tag~447_combout\,
	combout => \instr_cache|tag~449_combout\);

-- Location: LCCOMB_X59_Y38_N20
\instr_cache|tag~450\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~450_combout\ = (\instr_cache|tag~448_combout\ & ((\instr_cache|tag~291_regout\) # ((\instr_cache|tag~449_combout\)))) # (!\instr_cache|tag~448_combout\ & (((\instr_cache|tag~83_regout\ & !\instr_cache|tag~449_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~291_regout\,
	datab => \instr_cache|tag~448_combout\,
	datac => \instr_cache|tag~83_regout\,
	datad => \instr_cache|tag~449_combout\,
	combout => \instr_cache|tag~450_combout\);

-- Location: LCFF_X59_Y35_N5
\instr_cache|tag~395\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~395feeder_combout\,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~395_regout\);

-- Location: LCCOMB_X59_Y34_N24
\instr_cache|tag~451\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~451_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~450_combout\ & (\instr_cache|tag~395_regout\)) # (!\instr_cache|tag~450_combout\ & ((\instr_cache|tag~187_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~450_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~395_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~187_regout\,
	datad => \instr_cache|tag~450_combout\,
	combout => \instr_cache|tag~451_combout\);

-- Location: LCFF_X60_Y33_N1
\instr_cache|tag~265\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~265feeder_combout\,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~265_regout\);

-- Location: LCCOMB_X60_Y37_N30
\cache_addr[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cache_addr[5]~5_combout\ = (\stop~combout\ & (\pc~combout\(5))) # (!\stop~combout\ & ((\jmp_addr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(5),
	datab => \stop~combout\,
	datad => \jmp_addr~combout\(5),
	combout => \cache_addr[5]~5_combout\);

-- Location: LCFF_X63_Y38_N25
\instr_cache|tag~161\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(6),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~161_regout\);

-- Location: LCFF_X63_Y38_N7
\instr_cache|tag~57\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(6),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~57_regout\);

-- Location: LCCOMB_X63_Y38_N24
\instr_cache|tag~452\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~452_combout\ = (\instr_cache|tag~449_combout\ & (((\instr_cache|tag~161_regout\) # (\instr_cache|tag~448_combout\)))) # (!\instr_cache|tag~449_combout\ & (\instr_cache|tag~57_regout\ & ((!\instr_cache|tag~448_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~57_regout\,
	datab => \instr_cache|tag~449_combout\,
	datac => \instr_cache|tag~161_regout\,
	datad => \instr_cache|tag~448_combout\,
	combout => \instr_cache|tag~452_combout\);

-- Location: LCFF_X62_Y34_N17
\instr_cache|tag~369\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(6),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~369_regout\);

-- Location: LCCOMB_X62_Y34_N16
\instr_cache|tag~453\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~453_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~452_combout\ & ((\instr_cache|tag~369_regout\))) # (!\instr_cache|tag~452_combout\ & (\instr_cache|tag~265_regout\)))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~452_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~265_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~369_regout\,
	datad => \instr_cache|tag~452_combout\,
	combout => \instr_cache|tag~453_combout\);

-- Location: LCCOMB_X61_Y34_N2
\cache_addr[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cache_addr[2]~7_combout\ = (\stop~combout\ & (\pc~combout\(2))) # (!\stop~combout\ & ((\jmp_addr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datab => \pc~combout\(2),
	datad => \jmp_addr~combout\(2),
	combout => \cache_addr[2]~7_combout\);

-- Location: LCFF_X60_Y38_N7
\instr_cache|tag~135\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(6),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~135_regout\);

-- Location: LCFF_X60_Y36_N29
\instr_cache|tag~239\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(6),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~239_regout\);

-- Location: LCFF_X60_Y38_N13
\instr_cache|tag~31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(6),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~31_regout\);

-- Location: LCCOMB_X60_Y38_N12
\instr_cache|tag~454\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~454_combout\ = (\instr_cache|tag~448_combout\ & ((\instr_cache|tag~239_regout\) # ((\instr_cache|tag~449_combout\)))) # (!\instr_cache|tag~448_combout\ & (((\instr_cache|tag~31_regout\ & !\instr_cache|tag~449_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~239_regout\,
	datab => \instr_cache|tag~448_combout\,
	datac => \instr_cache|tag~31_regout\,
	datad => \instr_cache|tag~449_combout\,
	combout => \instr_cache|tag~454_combout\);

-- Location: LCFF_X61_Y39_N21
\instr_cache|tag~343\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(6),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~343_regout\);

-- Location: LCCOMB_X60_Y38_N6
\instr_cache|tag~455\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~455_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~454_combout\ & (\instr_cache|tag~343_regout\)) # (!\instr_cache|tag~454_combout\ & ((\instr_cache|tag~135_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~454_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~343_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~135_regout\,
	datad => \instr_cache|tag~454_combout\,
	combout => \instr_cache|tag~455_combout\);

-- Location: LCCOMB_X62_Y34_N10
\instr_cache|tag~456\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~456_combout\ = (\cache_addr[2]~8_combout\ & ((\cache_addr[3]~4_combout\) # ((\instr_cache|tag~453_combout\)))) # (!\cache_addr[2]~8_combout\ & (!\cache_addr[3]~4_combout\ & ((\instr_cache|tag~455_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~453_combout\,
	datad => \instr_cache|tag~455_combout\,
	combout => \instr_cache|tag~456_combout\);

-- Location: LCFF_X58_Y37_N19
\instr_cache|tag~317\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(6),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~317_regout\);

-- Location: LCFF_X62_Y38_N29
\instr_cache|tag~213\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(6),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~213_regout\);

-- Location: LCFF_X59_Y38_N27
\instr_cache|tag~109\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(6),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~109_regout\);

-- Location: LCCOMB_X59_Y38_N26
\instr_cache|tag~457\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~457_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~213_regout\) # ((\cache_addr[5]~6_combout\)))) # (!\cache_addr[4]~2_combout\ & (((\instr_cache|tag~109_regout\ & !\cache_addr[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~213_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~109_regout\,
	datad => \cache_addr[5]~6_combout\,
	combout => \instr_cache|tag~457_combout\);

-- Location: LCFF_X62_Y35_N17
\instr_cache|tag~421\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(6),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~421_regout\);

-- Location: LCCOMB_X62_Y35_N16
\instr_cache|tag~458\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~458_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~457_combout\ & ((\instr_cache|tag~421_regout\))) # (!\instr_cache|tag~457_combout\ & (\instr_cache|tag~317_regout\)))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~457_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~317_regout\,
	datac => \instr_cache|tag~421_regout\,
	datad => \instr_cache|tag~457_combout\,
	combout => \instr_cache|tag~458_combout\);

-- Location: LCCOMB_X62_Y34_N0
\instr_cache|tag~459\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~459_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~456_combout\ & (\instr_cache|tag~458_combout\)) # (!\instr_cache|tag~456_combout\ & ((\instr_cache|tag~451_combout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~456_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~458_combout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~451_combout\,
	datad => \instr_cache|tag~456_combout\,
	combout => \instr_cache|tag~459_combout\);

-- Location: LCCOMB_X62_Y34_N18
\instr_cache|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~0_combout\ = \instr_cache|tag~459_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(6))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[31]~0_combout\,
	datab => \jmp_addr~combout\(6),
	datac => \pc~combout\(6),
	datad => \instr_cache|tag~459_combout\,
	combout => \instr_cache|Equal0~0_combout\);

-- Location: LCFF_X59_Y37_N5
\instr_cache|tag~292\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~292_regout\);

-- Location: LCFF_X59_Y37_N31
\instr_cache|tag~266\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~266_regout\);

-- Location: LCFF_X57_Y37_N29
\instr_cache|tag~240\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~240_regout\);

-- Location: LCCOMB_X59_Y37_N30
\instr_cache|tag~460\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~460_combout\ = (\cache_addr[2]~8_combout\ & (((\instr_cache|tag~266_regout\) # (\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|tag~240_regout\ & ((!\cache_addr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~240_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~266_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~460_combout\);

-- Location: LCFF_X58_Y37_N9
\instr_cache|tag~318\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~318_regout\);

-- Location: LCCOMB_X59_Y37_N4
\instr_cache|tag~461\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~461_combout\ = (\instr_cache|tag~460_combout\ & ((\instr_cache|tag~318_regout\) # ((!\cache_addr[3]~4_combout\)))) # (!\instr_cache|tag~460_combout\ & (((\instr_cache|tag~292_regout\ & \cache_addr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~318_regout\,
	datab => \instr_cache|tag~460_combout\,
	datac => \instr_cache|tag~292_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~461_combout\);

-- Location: LCFF_X61_Y39_N3
\instr_cache|tag~162\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~162_regout\);

-- Location: LCFF_X62_Y38_N15
\instr_cache|tag~188\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~188_regout\);

-- Location: LCFF_X61_Y40_N25
\instr_cache|tag~136\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~136_regout\);

-- Location: LCCOMB_X61_Y40_N24
\instr_cache|tag~462\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~462_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~188_regout\) # ((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (((\instr_cache|tag~136_regout\ & !\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~188_regout\,
	datac => \instr_cache|tag~136_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~462_combout\);

-- Location: LCFF_X60_Y37_N25
\instr_cache|tag~214\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~214_regout\);

-- Location: LCCOMB_X61_Y39_N2
\instr_cache|tag~463\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~463_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~462_combout\ & (\instr_cache|tag~214_regout\)) # (!\instr_cache|tag~462_combout\ & ((\instr_cache|tag~162_regout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~462_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|tag~214_regout\,
	datac => \instr_cache|tag~162_regout\,
	datad => \instr_cache|tag~462_combout\,
	combout => \instr_cache|tag~463_combout\);

-- Location: LCFF_X59_Y38_N1
\instr_cache|tag~84\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~84_regout\);

-- Location: LCFF_X58_Y38_N1
\instr_cache|tag~58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~58feeder_combout\,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~58_regout\);

-- Location: LCFF_X60_Y38_N27
\instr_cache|tag~32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~32_regout\);

-- Location: LCCOMB_X60_Y38_N26
\instr_cache|tag~464\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~464_combout\ = (\cache_addr[3]~4_combout\ & (\cache_addr[2]~8_combout\)) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & ((\instr_cache|tag~58_regout\))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|tag~32_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~32_regout\,
	datad => \instr_cache|tag~58_regout\,
	combout => \instr_cache|tag~464_combout\);

-- Location: LCFF_X59_Y38_N23
\instr_cache|tag~110\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~110_regout\);

-- Location: LCCOMB_X59_Y38_N0
\instr_cache|tag~465\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~465_combout\ = (\instr_cache|tag~464_combout\ & ((\instr_cache|tag~110_regout\) # ((!\cache_addr[3]~4_combout\)))) # (!\instr_cache|tag~464_combout\ & (((\instr_cache|tag~84_regout\ & \cache_addr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~464_combout\,
	datab => \instr_cache|tag~110_regout\,
	datac => \instr_cache|tag~84_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~465_combout\);

-- Location: LCCOMB_X61_Y34_N12
\instr_cache|tag~466\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~466_combout\ = (\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\) # ((\instr_cache|tag~463_combout\)))) # (!\cache_addr[4]~2_combout\ & (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~465_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~465_combout\,
	datad => \instr_cache|tag~463_combout\,
	combout => \instr_cache|tag~466_combout\);

-- Location: LCFF_X60_Y34_N15
\instr_cache|tag~370\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~370_regout\);

-- Location: LCFF_X59_Y35_N19
\instr_cache|tag~396\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~396_regout\);

-- Location: LCFF_X58_Y35_N13
\instr_cache|tag~344\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~344_regout\);

-- Location: LCCOMB_X59_Y35_N18
\instr_cache|tag~467\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~467_combout\ = (\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\) # ((\instr_cache|tag~396_regout\)))) # (!\cache_addr[3]~4_combout\ & (!\cache_addr[2]~8_combout\ & ((\instr_cache|tag~344_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~396_regout\,
	datad => \instr_cache|tag~344_regout\,
	combout => \instr_cache|tag~467_combout\);

-- Location: LCFF_X60_Y37_N9
\instr_cache|tag~422\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(7),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~422_regout\);

-- Location: LCCOMB_X60_Y34_N14
\instr_cache|tag~468\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~468_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~467_combout\ & (\instr_cache|tag~422_regout\)) # (!\instr_cache|tag~467_combout\ & ((\instr_cache|tag~370_regout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~467_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~422_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~370_regout\,
	datad => \instr_cache|tag~467_combout\,
	combout => \instr_cache|tag~468_combout\);

-- Location: LCCOMB_X61_Y34_N6
\instr_cache|tag~469\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~469_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~466_combout\ & (\instr_cache|tag~468_combout\)) # (!\instr_cache|tag~466_combout\ & ((\instr_cache|tag~461_combout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~466_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~468_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~461_combout\,
	datad => \instr_cache|tag~466_combout\,
	combout => \instr_cache|tag~469_combout\);

-- Location: LCCOMB_X61_Y34_N28
\cache_addr[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cache_addr[7]~9_combout\ = (\cache_addr[31]~0_combout\ & ((\jmp_addr~combout\(7)))) # (!\cache_addr[31]~0_combout\ & (\pc~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(7),
	datab => \jmp_addr~combout\(7),
	datad => \cache_addr[31]~0_combout\,
	combout => \cache_addr[7]~9_combout\);

-- Location: LCFF_X62_Y40_N21
\instr_cache|valid[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[6]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(6));

-- Location: LCFF_X63_Y37_N17
\instr_cache|valid[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[5]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(5));

-- Location: LCFF_X61_Y40_N23
\instr_cache|valid[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[4]~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(4));

-- Location: LCCOMB_X61_Y36_N16
\instr_cache|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Mux0~0_combout\ = (\cache_addr[2]~8_combout\ & (((\instr_cache|valid\(5)) # (\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|valid\(4) & ((!\cache_addr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|valid\(4),
	datac => \instr_cache|valid\(5),
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|Mux0~0_combout\);

-- Location: LCFF_X62_Y40_N11
\instr_cache|valid[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[7]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(7));

-- Location: LCCOMB_X61_Y36_N6
\instr_cache|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Mux0~1_combout\ = (\instr_cache|Mux0~0_combout\ & (((\instr_cache|valid\(7)) # (!\cache_addr[3]~4_combout\)))) # (!\instr_cache|Mux0~0_combout\ & (\instr_cache|valid\(6) & ((\cache_addr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Mux0~0_combout\,
	datab => \instr_cache|valid\(6),
	datac => \instr_cache|valid\(7),
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|Mux0~1_combout\);

-- Location: LCFF_X61_Y40_N5
\instr_cache|valid[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[9]~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(9));

-- Location: LCFF_X61_Y40_N15
\instr_cache|valid[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[10]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(10));

-- Location: LCFF_X61_Y40_N29
\instr_cache|valid[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[8]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(8));

-- Location: LCCOMB_X61_Y40_N26
\instr_cache|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Mux0~2_combout\ = (\cache_addr[3]~4_combout\ & (((\instr_cache|valid\(10)) # (\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (\instr_cache|valid\(8) & ((!\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|valid\(8),
	datac => \instr_cache|valid\(10),
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|Mux0~2_combout\);

-- Location: LCFF_X62_Y40_N9
\instr_cache|valid[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[11]~7_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(11));

-- Location: LCCOMB_X61_Y40_N8
\instr_cache|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Mux0~3_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|Mux0~2_combout\ & ((\instr_cache|valid\(11)))) # (!\instr_cache|Mux0~2_combout\ & (\instr_cache|valid\(9))))) # (!\cache_addr[2]~8_combout\ & (((\instr_cache|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|valid\(9),
	datac => \instr_cache|valid\(11),
	datad => \instr_cache|Mux0~2_combout\,
	combout => \instr_cache|Mux0~3_combout\);

-- Location: LCFF_X62_Y40_N27
\instr_cache|valid[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[1]~8_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(1));

-- Location: LCFF_X62_Y40_N29
\instr_cache|valid[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[2]~9_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(2));

-- Location: LCFF_X65_Y36_N9
\instr_cache|valid[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[0]~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(0));

-- Location: LCCOMB_X61_Y36_N20
\instr_cache|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Mux0~4_combout\ = (\cache_addr[2]~8_combout\ & (((\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & ((\cache_addr[3]~4_combout\ & (\instr_cache|valid\(2))) # (!\cache_addr[3]~4_combout\ & ((\instr_cache|valid\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|valid\(2),
	datac => \instr_cache|valid\(0),
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|Mux0~4_combout\);

-- Location: LCFF_X61_Y40_N3
\instr_cache|valid[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[3]~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(3));

-- Location: LCCOMB_X61_Y36_N10
\instr_cache|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Mux0~5_combout\ = (\instr_cache|Mux0~4_combout\ & (((\instr_cache|valid\(3)) # (!\cache_addr[2]~8_combout\)))) # (!\instr_cache|Mux0~4_combout\ & (\instr_cache|valid\(1) & ((\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|valid\(1),
	datab => \instr_cache|valid\(3),
	datac => \instr_cache|Mux0~4_combout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|Mux0~5_combout\);

-- Location: LCCOMB_X61_Y36_N4
\instr_cache|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Mux0~6_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\) # (\instr_cache|Mux0~3_combout\)))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|Mux0~5_combout\ & (!\cache_addr[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Mux0~5_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \cache_addr[4]~2_combout\,
	datad => \instr_cache|Mux0~3_combout\,
	combout => \instr_cache|Mux0~6_combout\);

-- Location: LCFF_X62_Y40_N15
\instr_cache|valid[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[14]~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(14));

-- Location: LCFF_X62_Y40_N5
\instr_cache|valid[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[13]~13_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(13));

-- Location: LCFF_X65_Y36_N27
\instr_cache|valid[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[12]~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(12));

-- Location: LCCOMB_X62_Y36_N20
\instr_cache|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Mux0~7_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & ((\instr_cache|valid\(13)))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|valid\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|valid\(12),
	datac => \instr_cache|valid\(13),
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|Mux0~7_combout\);

-- Location: LCFF_X62_Y40_N7
\instr_cache|valid[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|valid[15]~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|valid\(15));

-- Location: LCCOMB_X61_Y36_N26
\instr_cache|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Mux0~8_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|Mux0~7_combout\ & (\instr_cache|valid\(15))) # (!\instr_cache|Mux0~7_combout\ & ((\instr_cache|valid\(14)))))) # (!\cache_addr[3]~4_combout\ & (((\instr_cache|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|valid\(15),
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|valid\(14),
	datad => \instr_cache|Mux0~7_combout\,
	combout => \instr_cache|Mux0~8_combout\);

-- Location: LCCOMB_X61_Y36_N24
\instr_cache|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Mux0~9_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|Mux0~6_combout\ & ((\instr_cache|Mux0~8_combout\))) # (!\instr_cache|Mux0~6_combout\ & (\instr_cache|Mux0~1_combout\)))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Mux0~1_combout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|Mux0~6_combout\,
	datad => \instr_cache|Mux0~8_combout\,
	combout => \instr_cache|Mux0~9_combout\);

-- Location: LCCOMB_X62_Y34_N24
\instr_cache|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|process_1~0_combout\ = ((\instr_cache|Equal0~0_combout\) # (\cache_addr[7]~9_combout\ $ (\instr_cache|tag~469_combout\))) # (!\instr_cache|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Mux0~9_combout\,
	datab => \cache_addr[7]~9_combout\,
	datac => \instr_cache|tag~469_combout\,
	datad => \instr_cache|Equal0~0_combout\,
	combout => \instr_cache|process_1~0_combout\);

-- Location: LCFF_X57_Y38_N13
\instr_cache|tag~163\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(8),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~163_regout\);

-- Location: LCFF_X58_Y38_N31
\instr_cache|tag~267\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(8),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~267_regout\);

-- Location: LCFF_X58_Y38_N5
\instr_cache|tag~59\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(8),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~59_regout\);

-- Location: LCCOMB_X57_Y38_N26
\instr_cache|tag~470\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~470_combout\ = (\cache_addr[5]~6_combout\ & (((\instr_cache|tag~267_regout\) # (\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~59_regout\ & ((!\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~59_regout\,
	datab => \instr_cache|tag~267_regout\,
	datac => \cache_addr[5]~6_combout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~470_combout\);

-- Location: LCFF_X58_Y36_N5
\instr_cache|tag~371\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~371feeder_combout\,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~371_regout\);

-- Location: LCCOMB_X57_Y38_N12
\instr_cache|tag~471\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~471_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~470_combout\ & (\instr_cache|tag~371_regout\)) # (!\instr_cache|tag~470_combout\ & ((\instr_cache|tag~163_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~470_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~371_regout\,
	datac => \instr_cache|tag~163_regout\,
	datad => \instr_cache|tag~470_combout\,
	combout => \instr_cache|tag~471_combout\);

-- Location: LCFF_X59_Y34_N27
\instr_cache|tag~293\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(8),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~293_regout\);

-- Location: LCFF_X59_Y34_N1
\instr_cache|tag~189\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(8),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~189_regout\);

-- Location: LCFF_X59_Y38_N5
\instr_cache|tag~85\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~85feeder_combout\,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~85_regout\);

-- Location: LCCOMB_X59_Y34_N0
\instr_cache|tag~472\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~472_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & ((\instr_cache|tag~189_regout\))) # (!\cache_addr[4]~2_combout\ & (\instr_cache|tag~85_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~85_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~189_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~472_combout\);

-- Location: LCFF_X58_Y35_N19
\instr_cache|tag~397\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~397feeder_combout\,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~397_regout\);

-- Location: LCCOMB_X59_Y34_N26
\instr_cache|tag~473\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~473_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~472_combout\ & (\instr_cache|tag~397_regout\)) # (!\instr_cache|tag~472_combout\ & ((\instr_cache|tag~293_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~472_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~397_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~293_regout\,
	datad => \instr_cache|tag~472_combout\,
	combout => \instr_cache|tag~473_combout\);

-- Location: LCFF_X60_Y36_N11
\instr_cache|tag~241\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(8),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~241_regout\);

-- Location: LCFF_X61_Y37_N21
\instr_cache|tag~137\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(8),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~137_regout\);

-- Location: LCFF_X61_Y37_N31
\instr_cache|tag~33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(8),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~33_regout\);

-- Location: LCCOMB_X61_Y37_N20
\instr_cache|tag~474\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~474_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & ((\instr_cache|tag~137_regout\))) # (!\cache_addr[4]~2_combout\ & (\instr_cache|tag~33_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~33_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~137_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~474_combout\);

-- Location: LCFF_X61_Y39_N13
\instr_cache|tag~345\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~345feeder_combout\,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~345_regout\);

-- Location: LCCOMB_X60_Y36_N10
\instr_cache|tag~475\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~475_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~474_combout\ & (\instr_cache|tag~345_regout\)) # (!\instr_cache|tag~474_combout\ & ((\instr_cache|tag~241_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~474_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~345_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~241_regout\,
	datad => \instr_cache|tag~474_combout\,
	combout => \instr_cache|tag~475_combout\);

-- Location: LCCOMB_X60_Y36_N4
\instr_cache|tag~476\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~476_combout\ = (\cache_addr[2]~8_combout\ & (\cache_addr[3]~4_combout\)) # (!\cache_addr[2]~8_combout\ & ((\cache_addr[3]~4_combout\ & (\instr_cache|tag~473_combout\)) # (!\cache_addr[3]~4_combout\ & ((\instr_cache|tag~475_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~473_combout\,
	datad => \instr_cache|tag~475_combout\,
	combout => \instr_cache|tag~476_combout\);

-- Location: LCFF_X57_Y36_N1
\instr_cache|tag~215\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(8),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~215_regout\);

-- Location: LCFF_X58_Y36_N31
\instr_cache|tag~319\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~319feeder_combout\,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~319_regout\);

-- Location: LCFF_X59_Y38_N3
\instr_cache|tag~111\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~111feeder_combout\,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~111_regout\);

-- Location: LCCOMB_X57_Y36_N30
\instr_cache|tag~477\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~477_combout\ = (\cache_addr[5]~6_combout\ & (((\instr_cache|tag~319_regout\) # (\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~111_regout\ & ((!\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~111_regout\,
	datab => \instr_cache|tag~319_regout\,
	datac => \cache_addr[5]~6_combout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~477_combout\);

-- Location: LCFF_X57_Y36_N13
\instr_cache|tag~423\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(8),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~423_regout\);

-- Location: LCCOMB_X57_Y36_N0
\instr_cache|tag~478\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~478_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~477_combout\ & (\instr_cache|tag~423_regout\)) # (!\instr_cache|tag~477_combout\ & ((\instr_cache|tag~215_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~477_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~423_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~215_regout\,
	datad => \instr_cache|tag~477_combout\,
	combout => \instr_cache|tag~478_combout\);

-- Location: LCCOMB_X61_Y36_N22
\instr_cache|tag~479\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~479_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~476_combout\ & (\instr_cache|tag~478_combout\)) # (!\instr_cache|tag~476_combout\ & ((\instr_cache|tag~471_combout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~476_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|tag~478_combout\,
	datac => \instr_cache|tag~476_combout\,
	datad => \instr_cache|tag~471_combout\,
	combout => \instr_cache|tag~479_combout\);

-- Location: LCCOMB_X61_Y36_N8
\instr_cache|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~1_combout\ = \instr_cache|tag~479_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(8))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(8),
	datab => \cache_addr[31]~0_combout\,
	datac => \pc~combout\(8),
	datad => \instr_cache|tag~479_combout\,
	combout => \instr_cache|Equal0~1_combout\);

-- Location: LCFF_X62_Y38_N9
\instr_cache|tag~190\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(9),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~190_regout\);

-- Location: LCFF_X63_Y38_N29
\instr_cache|tag~164\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(9),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~164_regout\);

-- Location: LCFF_X63_Y39_N13
\instr_cache|tag~138\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~138feeder_combout\,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~138_regout\);

-- Location: LCCOMB_X63_Y38_N28
\instr_cache|tag~480\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~480_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & ((\instr_cache|tag~164_regout\))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|tag~138_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~138_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~164_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~480_combout\);

-- Location: LCFF_X62_Y38_N23
\instr_cache|tag~216\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(9),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~216_regout\);

-- Location: LCCOMB_X62_Y38_N22
\instr_cache|tag~481\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~481_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~480_combout\ & ((\instr_cache|tag~216_regout\))) # (!\instr_cache|tag~480_combout\ & (\instr_cache|tag~190_regout\)))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~480_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~190_regout\,
	datac => \instr_cache|tag~216_regout\,
	datad => \instr_cache|tag~480_combout\,
	combout => \instr_cache|tag~481_combout\);

-- Location: LCFF_X59_Y37_N29
\instr_cache|tag~268\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(9),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~268_regout\);

-- Location: LCFF_X59_Y37_N27
\instr_cache|tag~294\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(9),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~294_regout\);

-- Location: LCFF_X57_Y37_N27
\instr_cache|tag~242\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~242feeder_combout\,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~242_regout\);

-- Location: LCCOMB_X59_Y37_N26
\instr_cache|tag~482\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~482_combout\ = (\cache_addr[3]~4_combout\ & (((\instr_cache|tag~294_regout\) # (\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (\instr_cache|tag~242_regout\ & ((!\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~242_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~294_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~482_combout\);

-- Location: LCFF_X58_Y37_N15
\instr_cache|tag~320\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~320feeder_combout\,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~320_regout\);

-- Location: LCCOMB_X59_Y37_N28
\instr_cache|tag~483\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~483_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~482_combout\ & (\instr_cache|tag~320_regout\)) # (!\instr_cache|tag~482_combout\ & ((\instr_cache|tag~268_regout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~482_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~320_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~268_regout\,
	datad => \instr_cache|tag~482_combout\,
	combout => \instr_cache|tag~483_combout\);

-- Location: LCFF_X63_Y38_N27
\instr_cache|tag~60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(9),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~60_regout\);

-- Location: LCFF_X59_Y38_N29
\instr_cache|tag~86\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(9),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~86_regout\);

-- Location: LCFF_X56_Y38_N21
\instr_cache|tag~34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~34feeder_combout\,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~34_regout\);

-- Location: LCCOMB_X59_Y38_N28
\instr_cache|tag~484\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~484_combout\ = (\cache_addr[2]~8_combout\ & (((\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & ((\cache_addr[3]~4_combout\ & ((\instr_cache|tag~86_regout\))) # (!\cache_addr[3]~4_combout\ & (\instr_cache|tag~34_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~34_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~86_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~484_combout\);

-- Location: LCFF_X59_Y38_N7
\instr_cache|tag~112\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(9),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~112_regout\);

-- Location: LCCOMB_X63_Y38_N26
\instr_cache|tag~485\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~485_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~484_combout\ & (\instr_cache|tag~112_regout\)) # (!\instr_cache|tag~484_combout\ & ((\instr_cache|tag~60_regout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~484_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~112_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~60_regout\,
	datad => \instr_cache|tag~484_combout\,
	combout => \instr_cache|tag~485_combout\);

-- Location: LCCOMB_X63_Y37_N30
\instr_cache|tag~486\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~486_combout\ = (\cache_addr[4]~2_combout\ & (((\cache_addr[5]~6_combout\)))) # (!\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\ & ((\instr_cache|tag~483_combout\))) # (!\cache_addr[5]~6_combout\ & 
-- (\instr_cache|tag~485_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~485_combout\,
	datac => \cache_addr[5]~6_combout\,
	datad => \instr_cache|tag~483_combout\,
	combout => \instr_cache|tag~486_combout\);

-- Location: LCFF_X63_Y37_N1
\instr_cache|tag~398\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(9),
	sload => VCC,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~398_regout\);

-- Location: LCFF_X63_Y33_N25
\instr_cache|tag~372\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(9),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~372_regout\);

-- Location: LCFF_X63_Y33_N31
\instr_cache|tag~346\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(9),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~346_regout\);

-- Location: LCCOMB_X63_Y33_N24
\instr_cache|tag~487\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~487_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & ((\instr_cache|tag~372_regout\))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|tag~346_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~346_regout\,
	datac => \instr_cache|tag~372_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~487_combout\);

-- Location: LCFF_X62_Y33_N5
\instr_cache|tag~424\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(9),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~424_regout\);

-- Location: LCCOMB_X63_Y37_N0
\instr_cache|tag~488\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~488_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~487_combout\ & (\instr_cache|tag~424_regout\)) # (!\instr_cache|tag~487_combout\ & ((\instr_cache|tag~398_regout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~487_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~424_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~398_regout\,
	datad => \instr_cache|tag~487_combout\,
	combout => \instr_cache|tag~488_combout\);

-- Location: LCCOMB_X63_Y37_N2
\instr_cache|tag~489\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~489_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~486_combout\ & (\instr_cache|tag~488_combout\)) # (!\instr_cache|tag~486_combout\ & ((\instr_cache|tag~481_combout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~486_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~488_combout\,
	datac => \instr_cache|tag~481_combout\,
	datad => \instr_cache|tag~486_combout\,
	combout => \instr_cache|tag~489_combout\);

-- Location: LCCOMB_X63_Y37_N28
\instr_cache|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~2_combout\ = \instr_cache|tag~489_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(9))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[31]~0_combout\,
	datab => \jmp_addr~combout\(9),
	datac => \pc~combout\(9),
	datad => \instr_cache|tag~489_combout\,
	combout => \instr_cache|Equal0~2_combout\);

-- Location: LCFF_X62_Y40_N13
\instr_cache|tag~191\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~191_regout\);

-- Location: LCFF_X58_Y37_N1
\instr_cache|tag~295\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~295_regout\);

-- Location: LCFF_X59_Y38_N17
\instr_cache|tag~87\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~87_regout\);

-- Location: LCCOMB_X59_Y38_N16
\instr_cache|tag~490\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~490_combout\ = (\cache_addr[4]~2_combout\ & (((\cache_addr[5]~6_combout\)))) # (!\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\ & (\instr_cache|tag~295_regout\)) # (!\cache_addr[5]~6_combout\ & ((\instr_cache|tag~87_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~295_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~87_regout\,
	datad => \cache_addr[5]~6_combout\,
	combout => \instr_cache|tag~490_combout\);

-- Location: LCFF_X63_Y37_N7
\instr_cache|tag~399\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~399_regout\);

-- Location: LCCOMB_X63_Y37_N6
\instr_cache|tag~491\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~491_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~490_combout\ & ((\instr_cache|tag~399_regout\))) # (!\instr_cache|tag~490_combout\ & (\instr_cache|tag~191_regout\)))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~490_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~191_regout\,
	datac => \instr_cache|tag~399_regout\,
	datad => \instr_cache|tag~490_combout\,
	combout => \instr_cache|tag~491_combout\);

-- Location: LCFF_X63_Y36_N5
\instr_cache|tag~269\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~269_regout\);

-- Location: LCFF_X63_Y38_N17
\instr_cache|tag~165\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~165_regout\);

-- Location: LCFF_X62_Y37_N1
\instr_cache|tag~61\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~61_regout\);

-- Location: LCCOMB_X62_Y37_N0
\instr_cache|tag~492\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~492_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~165_regout\)) # (!\cache_addr[4]~2_combout\ & ((\instr_cache|tag~61_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~165_regout\,
	datac => \instr_cache|tag~61_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~492_combout\);

-- Location: LCFF_X62_Y37_N31
\instr_cache|tag~373\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~373_regout\);

-- Location: LCCOMB_X62_Y37_N30
\instr_cache|tag~493\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~493_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~492_combout\ & ((\instr_cache|tag~373_regout\))) # (!\instr_cache|tag~492_combout\ & (\instr_cache|tag~269_regout\)))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~492_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~269_regout\,
	datac => \instr_cache|tag~373_regout\,
	datad => \instr_cache|tag~492_combout\,
	combout => \instr_cache|tag~493_combout\);

-- Location: LCFF_X63_Y39_N11
\instr_cache|tag~139\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~139_regout\);

-- Location: LCFF_X62_Y36_N19
\instr_cache|tag~243\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~243_regout\);

-- Location: LCFF_X63_Y39_N29
\instr_cache|tag~35\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~35_regout\);

-- Location: LCCOMB_X62_Y36_N18
\instr_cache|tag~494\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~494_combout\ = (\cache_addr[5]~6_combout\ & (((\instr_cache|tag~243_regout\) # (\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~35_regout\ & ((!\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~35_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~243_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~494_combout\);

-- Location: LCFF_X62_Y36_N25
\instr_cache|tag~347\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~347_regout\);

-- Location: LCCOMB_X62_Y36_N24
\instr_cache|tag~495\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~495_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~494_combout\ & ((\instr_cache|tag~347_regout\))) # (!\instr_cache|tag~494_combout\ & (\instr_cache|tag~139_regout\)))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~494_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~139_regout\,
	datac => \instr_cache|tag~347_regout\,
	datad => \instr_cache|tag~494_combout\,
	combout => \instr_cache|tag~495_combout\);

-- Location: LCCOMB_X63_Y37_N12
\instr_cache|tag~496\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~496_combout\ = (\cache_addr[2]~8_combout\ & ((\cache_addr[3]~4_combout\) # ((\instr_cache|tag~493_combout\)))) # (!\cache_addr[2]~8_combout\ & (!\cache_addr[3]~4_combout\ & ((\instr_cache|tag~495_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~493_combout\,
	datad => \instr_cache|tag~495_combout\,
	combout => \instr_cache|tag~496_combout\);

-- Location: LCFF_X58_Y37_N11
\instr_cache|tag~321\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~321_regout\);

-- Location: LCFF_X62_Y38_N13
\instr_cache|tag~217\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~217feeder_combout\,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~217_regout\);

-- Location: LCFF_X59_Y38_N19
\instr_cache|tag~113\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~113_regout\);

-- Location: LCCOMB_X59_Y38_N18
\instr_cache|tag~497\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~497_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~217_regout\) # ((\cache_addr[5]~6_combout\)))) # (!\cache_addr[4]~2_combout\ & (((\instr_cache|tag~113_regout\ & !\cache_addr[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~217_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~113_regout\,
	datad => \cache_addr[5]~6_combout\,
	combout => \instr_cache|tag~497_combout\);

-- Location: LCFF_X59_Y40_N29
\instr_cache|tag~425\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(10),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~425_regout\);

-- Location: LCCOMB_X58_Y37_N10
\instr_cache|tag~498\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~498_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~497_combout\ & (\instr_cache|tag~425_regout\)) # (!\instr_cache|tag~497_combout\ & ((\instr_cache|tag~321_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~497_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~425_regout\,
	datac => \instr_cache|tag~321_regout\,
	datad => \instr_cache|tag~497_combout\,
	combout => \instr_cache|tag~498_combout\);

-- Location: LCCOMB_X63_Y37_N22
\instr_cache|tag~499\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~499_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~496_combout\ & ((\instr_cache|tag~498_combout\))) # (!\instr_cache|tag~496_combout\ & (\instr_cache|tag~491_combout\)))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~496_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~491_combout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~498_combout\,
	datad => \instr_cache|tag~496_combout\,
	combout => \instr_cache|tag~499_combout\);

-- Location: LCCOMB_X63_Y37_N24
\instr_cache|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~3_combout\ = \instr_cache|tag~499_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(10))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(10),
	datab => \pc~combout\(10),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~499_combout\,
	combout => \instr_cache|Equal0~3_combout\);

-- Location: LCFF_X58_Y37_N25
\instr_cache|tag~296\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(11),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~296_regout\);

-- Location: LCFF_X56_Y37_N29
\instr_cache|tag~270\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(11),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~270_regout\);

-- Location: LCFF_X57_Y37_N17
\instr_cache|tag~244\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(11),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~244_regout\);

-- Location: LCCOMB_X57_Y37_N16
\instr_cache|tag~500\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~500_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & (\instr_cache|tag~270_regout\)) # (!\cache_addr[2]~8_combout\ & ((\instr_cache|tag~244_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~270_regout\,
	datac => \instr_cache|tag~244_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~500_combout\);

-- Location: LCFF_X58_Y37_N3
\instr_cache|tag~322\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(11),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~322_regout\);

-- Location: LCCOMB_X58_Y37_N24
\instr_cache|tag~501\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~501_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~500_combout\ & (\instr_cache|tag~322_regout\)) # (!\instr_cache|tag~500_combout\ & ((\instr_cache|tag~296_regout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~500_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~322_regout\,
	datac => \instr_cache|tag~296_regout\,
	datad => \instr_cache|tag~500_combout\,
	combout => \instr_cache|tag~501_combout\);

-- Location: LCFF_X57_Y35_N1
\instr_cache|tag~166\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~166feeder_combout\,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~166_regout\);

-- Location: LCFF_X59_Y35_N1
\instr_cache|tag~192\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~192feeder_combout\,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~192_regout\);

-- Location: LCFF_X60_Y35_N29
\instr_cache|tag~140\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(11),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~140_regout\);

-- Location: LCCOMB_X60_Y35_N28
\instr_cache|tag~502\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~502_combout\ = (\cache_addr[2]~8_combout\ & (((\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & ((\cache_addr[3]~4_combout\ & (\instr_cache|tag~192_regout\)) # (!\cache_addr[3]~4_combout\ & ((\instr_cache|tag~140_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~192_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~140_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~502_combout\);

-- Location: LCFF_X60_Y35_N27
\instr_cache|tag~218\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(11),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~218_regout\);

-- Location: LCCOMB_X60_Y35_N26
\instr_cache|tag~503\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~503_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~502_combout\ & ((\instr_cache|tag~218_regout\))) # (!\instr_cache|tag~502_combout\ & (\instr_cache|tag~166_regout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~502_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~166_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~218_regout\,
	datad => \instr_cache|tag~502_combout\,
	combout => \instr_cache|tag~503_combout\);

-- Location: LCFF_X62_Y39_N17
\instr_cache|tag~88\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(11),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~88_regout\);

-- Location: LCFF_X60_Y39_N25
\instr_cache|tag~62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(11),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~62_regout\);

-- Location: LCFF_X63_Y39_N23
\instr_cache|tag~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~36feeder_combout\,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~36_regout\);

-- Location: LCCOMB_X60_Y39_N24
\instr_cache|tag~504\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~504_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & ((\instr_cache|tag~62_regout\))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|tag~36_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~36_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~62_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~504_combout\);

-- Location: LCFF_X62_Y39_N27
\instr_cache|tag~114\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(11),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~114_regout\);

-- Location: LCCOMB_X62_Y39_N26
\instr_cache|tag~505\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~505_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~504_combout\ & ((\instr_cache|tag~114_regout\))) # (!\instr_cache|tag~504_combout\ & (\instr_cache|tag~88_regout\)))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~504_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~88_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~114_regout\,
	datad => \instr_cache|tag~504_combout\,
	combout => \instr_cache|tag~505_combout\);

-- Location: LCCOMB_X62_Y37_N12
\instr_cache|tag~506\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~506_combout\ = (\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\) # ((\instr_cache|tag~503_combout\)))) # (!\cache_addr[4]~2_combout\ & (!\cache_addr[5]~6_combout\ & ((\instr_cache|tag~505_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~503_combout\,
	datad => \instr_cache|tag~505_combout\,
	combout => \instr_cache|tag~506_combout\);

-- Location: LCFF_X62_Y37_N3
\instr_cache|tag~374\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(11),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~374_regout\);

-- Location: LCFF_X58_Y39_N25
\instr_cache|tag~400\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~400feeder_combout\,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~400_regout\);

-- Location: LCFF_X61_Y39_N15
\instr_cache|tag~348\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(11),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~348_regout\);

-- Location: LCCOMB_X61_Y39_N14
\instr_cache|tag~507\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~507_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~400_regout\) # ((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (((\instr_cache|tag~348_regout\ & !\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~400_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~348_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~507_combout\);

-- Location: LCFF_X60_Y37_N31
\instr_cache|tag~426\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(11),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~426_regout\);

-- Location: LCCOMB_X62_Y37_N2
\instr_cache|tag~508\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~508_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~507_combout\ & (\instr_cache|tag~426_regout\)) # (!\instr_cache|tag~507_combout\ & ((\instr_cache|tag~374_regout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~507_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|tag~426_regout\,
	datac => \instr_cache|tag~374_regout\,
	datad => \instr_cache|tag~507_combout\,
	combout => \instr_cache|tag~508_combout\);

-- Location: LCCOMB_X62_Y37_N28
\instr_cache|tag~509\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~509_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~506_combout\ & (\instr_cache|tag~508_combout\)) # (!\instr_cache|tag~506_combout\ & ((\instr_cache|tag~501_combout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~506_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~508_combout\,
	datac => \instr_cache|tag~501_combout\,
	datad => \instr_cache|tag~506_combout\,
	combout => \instr_cache|tag~509_combout\);

-- Location: LCCOMB_X62_Y37_N14
\instr_cache|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~4_combout\ = \instr_cache|tag~509_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(11))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(11),
	datab => \pc~combout\(11),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~509_combout\,
	combout => \instr_cache|Equal0~4_combout\);

-- Location: LCFF_X61_Y39_N17
\instr_cache|tag~167\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(12),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~167_regout\);

-- Location: LCFF_X59_Y37_N9
\instr_cache|tag~271\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(12),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~271_regout\);

-- Location: LCFF_X62_Y37_N25
\instr_cache|tag~63\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(12),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~63_regout\);

-- Location: LCCOMB_X62_Y37_N24
\instr_cache|tag~510\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~510_combout\ = (\cache_addr[4]~2_combout\ & (((\cache_addr[5]~6_combout\)))) # (!\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\ & (\instr_cache|tag~271_regout\)) # (!\cache_addr[5]~6_combout\ & ((\instr_cache|tag~63_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~271_regout\,
	datac => \instr_cache|tag~63_regout\,
	datad => \cache_addr[5]~6_combout\,
	combout => \instr_cache|tag~510_combout\);

-- Location: LCFF_X62_Y37_N19
\instr_cache|tag~375\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(12),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~375_regout\);

-- Location: LCCOMB_X62_Y37_N18
\instr_cache|tag~511\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~511_combout\ = (\instr_cache|tag~510_combout\ & (((\instr_cache|tag~375_regout\) # (!\cache_addr[4]~2_combout\)))) # (!\instr_cache|tag~510_combout\ & (\instr_cache|tag~167_regout\ & ((\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~510_combout\,
	datab => \instr_cache|tag~167_regout\,
	datac => \instr_cache|tag~375_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~511_combout\);

-- Location: LCFF_X59_Y37_N11
\instr_cache|tag~297\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(12),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~297_regout\);

-- Location: LCFF_X59_Y35_N27
\instr_cache|tag~193\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(12),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~193_regout\);

-- Location: LCFF_X59_Y38_N9
\instr_cache|tag~89\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(12),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~89_regout\);

-- Location: LCCOMB_X59_Y38_N8
\instr_cache|tag~512\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~512_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~193_regout\) # ((\cache_addr[5]~6_combout\)))) # (!\cache_addr[4]~2_combout\ & (((\instr_cache|tag~89_regout\ & !\cache_addr[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~193_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~89_regout\,
	datad => \cache_addr[5]~6_combout\,
	combout => \instr_cache|tag~512_combout\);

-- Location: LCFF_X58_Y39_N19
\instr_cache|tag~401\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~401feeder_combout\,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~401_regout\);

-- Location: LCCOMB_X59_Y37_N10
\instr_cache|tag~513\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~513_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~512_combout\ & (\instr_cache|tag~401_regout\)) # (!\instr_cache|tag~512_combout\ & ((\instr_cache|tag~297_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~512_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~401_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~297_regout\,
	datad => \instr_cache|tag~512_combout\,
	combout => \instr_cache|tag~513_combout\);

-- Location: LCFF_X60_Y36_N19
\instr_cache|tag~245\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(12),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~245_regout\);

-- Location: LCFF_X60_Y38_N15
\instr_cache|tag~141\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(12),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~141_regout\);

-- Location: LCFF_X60_Y38_N21
\instr_cache|tag~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(12),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~37_regout\);

-- Location: LCCOMB_X60_Y38_N20
\instr_cache|tag~514\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~514_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~141_regout\)) # (!\cache_addr[4]~2_combout\ & ((\instr_cache|tag~37_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~141_regout\,
	datac => \instr_cache|tag~37_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~514_combout\);

-- Location: LCFF_X61_Y39_N27
\instr_cache|tag~349\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(12),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~349_regout\);

-- Location: LCCOMB_X61_Y39_N26
\instr_cache|tag~515\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~515_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~514_combout\ & ((\instr_cache|tag~349_regout\))) # (!\instr_cache|tag~514_combout\ & (\instr_cache|tag~245_regout\)))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~514_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~245_regout\,
	datac => \instr_cache|tag~349_regout\,
	datad => \instr_cache|tag~514_combout\,
	combout => \instr_cache|tag~515_combout\);

-- Location: LCCOMB_X62_Y37_N20
\instr_cache|tag~516\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~516_combout\ = (\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\) # ((\instr_cache|tag~513_combout\)))) # (!\cache_addr[3]~4_combout\ & (!\cache_addr[2]~8_combout\ & (\instr_cache|tag~515_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~515_combout\,
	datad => \instr_cache|tag~513_combout\,
	combout => \instr_cache|tag~516_combout\);

-- Location: LCFF_X60_Y37_N15
\instr_cache|tag~219\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~219feeder_combout\,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~219_regout\);

-- Location: LCFF_X60_Y36_N1
\instr_cache|tag~323\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(12),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~323_regout\);

-- Location: LCFF_X59_Y38_N31
\instr_cache|tag~115\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(12),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~115_regout\);

-- Location: LCCOMB_X60_Y36_N0
\instr_cache|tag~517\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~517_combout\ = (\cache_addr[4]~2_combout\ & (((\cache_addr[5]~6_combout\)))) # (!\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\ & ((\instr_cache|tag~323_regout\))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~115_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~115_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~323_regout\,
	datad => \cache_addr[5]~6_combout\,
	combout => \instr_cache|tag~517_combout\);

-- Location: LCFF_X60_Y37_N17
\instr_cache|tag~427\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~427feeder_combout\,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~427_regout\);

-- Location: LCCOMB_X61_Y37_N4
\instr_cache|tag~518\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~518_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~517_combout\ & ((\instr_cache|tag~427_regout\))) # (!\instr_cache|tag~517_combout\ & (\instr_cache|tag~219_regout\)))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~517_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~219_regout\,
	datab => \instr_cache|tag~427_regout\,
	datac => \cache_addr[4]~2_combout\,
	datad => \instr_cache|tag~517_combout\,
	combout => \instr_cache|tag~518_combout\);

-- Location: LCCOMB_X62_Y37_N10
\instr_cache|tag~519\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~519_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~516_combout\ & (\instr_cache|tag~518_combout\)) # (!\instr_cache|tag~516_combout\ & ((\instr_cache|tag~511_combout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~516_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|tag~518_combout\,
	datac => \instr_cache|tag~516_combout\,
	datad => \instr_cache|tag~511_combout\,
	combout => \instr_cache|tag~519_combout\);

-- Location: LCCOMB_X62_Y37_N16
\instr_cache|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~5_combout\ = \instr_cache|tag~519_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(12))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(12),
	datab => \pc~combout\(12),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~519_combout\,
	combout => \instr_cache|Equal0~5_combout\);

-- Location: LCFF_X59_Y35_N9
\instr_cache|tag~194\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(13),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~194_regout\);

-- Location: LCFF_X57_Y35_N23
\instr_cache|tag~168\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~168feeder_combout\,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~168_regout\);

-- Location: LCFF_X60_Y35_N13
\instr_cache|tag~142\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(13),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~142_regout\);

-- Location: LCCOMB_X60_Y35_N12
\instr_cache|tag~520\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~520_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & (\instr_cache|tag~168_regout\)) # (!\cache_addr[2]~8_combout\ & ((\instr_cache|tag~142_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~168_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~142_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~520_combout\);

-- Location: LCFF_X60_Y35_N23
\instr_cache|tag~220\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(13),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~220_regout\);

-- Location: LCCOMB_X60_Y35_N22
\instr_cache|tag~521\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~521_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~520_combout\ & ((\instr_cache|tag~220_regout\))) # (!\instr_cache|tag~520_combout\ & (\instr_cache|tag~194_regout\)))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~520_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~194_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~220_regout\,
	datad => \instr_cache|tag~520_combout\,
	combout => \instr_cache|tag~521_combout\);

-- Location: LCFF_X59_Y37_N1
\instr_cache|tag~272\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(13),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~272_regout\);

-- Location: LCFF_X58_Y37_N29
\instr_cache|tag~298\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(13),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~298_regout\);

-- Location: LCFF_X57_Y37_N31
\instr_cache|tag~246\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(13),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~246_regout\);

-- Location: LCCOMB_X58_Y37_N28
\instr_cache|tag~522\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~522_combout\ = (\cache_addr[3]~4_combout\ & (((\instr_cache|tag~298_regout\) # (\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (\instr_cache|tag~246_regout\ & ((!\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~246_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~298_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~522_combout\);

-- Location: LCFF_X58_Y37_N23
\instr_cache|tag~324\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(13),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~324_regout\);

-- Location: LCCOMB_X58_Y37_N22
\instr_cache|tag~523\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~523_combout\ = (\instr_cache|tag~522_combout\ & (((\instr_cache|tag~324_regout\) # (!\cache_addr[2]~8_combout\)))) # (!\instr_cache|tag~522_combout\ & (\instr_cache|tag~272_regout\ & ((\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~272_regout\,
	datab => \instr_cache|tag~522_combout\,
	datac => \instr_cache|tag~324_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~523_combout\);

-- Location: LCFF_X58_Y38_N15
\instr_cache|tag~64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~64feeder_combout\,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~64_regout\);

-- Location: LCFF_X59_Y38_N13
\instr_cache|tag~90\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(13),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~90_regout\);

-- Location: LCFF_X58_Y40_N9
\instr_cache|tag~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(13),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~38_regout\);

-- Location: LCCOMB_X59_Y38_N12
\instr_cache|tag~524\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~524_combout\ = (\cache_addr[3]~4_combout\ & (((\instr_cache|tag~90_regout\) # (\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (\instr_cache|tag~38_regout\ & ((!\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~38_regout\,
	datac => \instr_cache|tag~90_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~524_combout\);

-- Location: LCFF_X59_Y38_N11
\instr_cache|tag~116\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(13),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~116_regout\);

-- Location: LCCOMB_X59_Y38_N10
\instr_cache|tag~525\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~525_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~524_combout\ & ((\instr_cache|tag~116_regout\))) # (!\instr_cache|tag~524_combout\ & (\instr_cache|tag~64_regout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~524_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~64_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~116_regout\,
	datad => \instr_cache|tag~524_combout\,
	combout => \instr_cache|tag~525_combout\);

-- Location: LCCOMB_X61_Y37_N14
\instr_cache|tag~526\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~526_combout\ = (\cache_addr[4]~2_combout\ & (\cache_addr[5]~6_combout\)) # (!\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\ & (\instr_cache|tag~523_combout\)) # (!\cache_addr[5]~6_combout\ & ((\instr_cache|tag~525_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~523_combout\,
	datad => \instr_cache|tag~525_combout\,
	combout => \instr_cache|tag~526_combout\);

-- Location: LCFF_X59_Y33_N13
\instr_cache|tag~402\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~402feeder_combout\,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~402_regout\);

-- Location: LCFF_X61_Y33_N1
\instr_cache|tag~376\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(13),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~376_regout\);

-- Location: LCFF_X61_Y33_N31
\instr_cache|tag~350\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(13),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~350_regout\);

-- Location: LCCOMB_X61_Y33_N0
\instr_cache|tag~527\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~527_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & ((\instr_cache|tag~376_regout\))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|tag~350_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~350_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~376_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~527_combout\);

-- Location: LCFF_X62_Y33_N9
\instr_cache|tag~428\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(13),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~428_regout\);

-- Location: LCCOMB_X61_Y33_N8
\instr_cache|tag~528\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~528_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~527_combout\ & ((\instr_cache|tag~428_regout\))) # (!\instr_cache|tag~527_combout\ & (\instr_cache|tag~402_regout\)))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~527_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~402_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~428_regout\,
	datad => \instr_cache|tag~527_combout\,
	combout => \instr_cache|tag~528_combout\);

-- Location: LCCOMB_X61_Y37_N28
\instr_cache|tag~529\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~529_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~526_combout\ & ((\instr_cache|tag~528_combout\))) # (!\instr_cache|tag~526_combout\ & (\instr_cache|tag~521_combout\)))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~526_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~521_combout\,
	datac => \instr_cache|tag~526_combout\,
	datad => \instr_cache|tag~528_combout\,
	combout => \instr_cache|tag~529_combout\);

-- Location: LCCOMB_X62_Y37_N22
\instr_cache|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~6_combout\ = \instr_cache|tag~529_combout\ $ (((\cache_addr[31]~0_combout\ & ((\jmp_addr~combout\(13)))) # (!\cache_addr[31]~0_combout\ & (\pc~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(13),
	datab => \jmp_addr~combout\(13),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~529_combout\,
	combout => \instr_cache|Equal0~6_combout\);

-- Location: LCCOMB_X62_Y37_N8
\instr_cache|process_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|process_1~1_combout\ = (\instr_cache|Equal0~5_combout\) # ((\instr_cache|Equal0~6_combout\) # ((\instr_cache|Equal0~4_combout\) # (\instr_cache|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Equal0~5_combout\,
	datab => \instr_cache|Equal0~6_combout\,
	datac => \instr_cache|Equal0~4_combout\,
	datad => \instr_cache|Equal0~3_combout\,
	combout => \instr_cache|process_1~1_combout\);

-- Location: LCCOMB_X62_Y34_N6
\instr_cache|process_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|process_1~2_combout\ = (\instr_cache|Equal0~2_combout\) # ((\instr_cache|Equal0~1_combout\) # ((\instr_cache|process_1~0_combout\) # (\instr_cache|process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Equal0~2_combout\,
	datab => \instr_cache|Equal0~1_combout\,
	datac => \instr_cache|process_1~0_combout\,
	datad => \instr_cache|process_1~1_combout\,
	combout => \instr_cache|process_1~2_combout\);

-- Location: LCFF_X59_Y37_N3
\instr_cache|tag~299\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~299feeder_combout\,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~299_regout\);

-- Location: LCFF_X58_Y39_N5
\instr_cache|tag~403\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(14),
	sload => VCC,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~403_regout\);

-- Location: LCFF_X58_Y38_N27
\instr_cache|tag~65\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~65feeder_combout\,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~65_regout\);

-- Location: LCFF_X63_Y39_N5
\instr_cache|tag~143\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~143feeder_combout\,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~143_regout\);

-- Location: LCFF_X60_Y35_N25
\instr_cache|tag~221\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~221feeder_combout\,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~221_regout\);

-- Location: LCFF_X59_Y37_N17
\instr_cache|tag~300\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(15),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~300_regout\);

-- Location: LCFF_X60_Y39_N15
\instr_cache|tag~274\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(15),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~274_regout\);

-- Location: LCFF_X59_Y36_N13
\instr_cache|tag~248\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(15),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~248_regout\);

-- Location: LCCOMB_X59_Y36_N12
\instr_cache|tag~540\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~540_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & (\instr_cache|tag~274_regout\)) # (!\cache_addr[2]~8_combout\ & ((\instr_cache|tag~248_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~274_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~248_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~540_combout\);

-- Location: LCFF_X59_Y36_N15
\instr_cache|tag~326\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(15),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~326_regout\);

-- Location: LCCOMB_X59_Y36_N14
\instr_cache|tag~541\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~541_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~540_combout\ & ((\instr_cache|tag~326_regout\))) # (!\instr_cache|tag~540_combout\ & (\instr_cache|tag~300_regout\)))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~540_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~300_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~326_regout\,
	datad => \instr_cache|tag~540_combout\,
	combout => \instr_cache|tag~541_combout\);

-- Location: LCFF_X63_Y39_N27
\instr_cache|tag~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(15),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~40_regout\);

-- Location: LCFF_X62_Y39_N7
\instr_cache|tag~118\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(15),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~118_regout\);

-- Location: LCFF_X58_Y35_N11
\instr_cache|tag~352\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~352feeder_combout\,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~352_regout\);

-- Location: LCFF_X57_Y36_N15
\instr_cache|tag~430\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(15),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~430_regout\);

-- Location: LCFF_X58_Y39_N23
\instr_cache|tag~171\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(16),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~171_regout\);

-- Location: LCFF_X60_Y39_N3
\instr_cache|tag~275\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~275feeder_combout\,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~275_regout\);

-- Location: LCFF_X57_Y39_N13
\instr_cache|tag~67\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~67feeder_combout\,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~67_regout\);

-- Location: LCCOMB_X58_Y39_N0
\instr_cache|tag~550\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~550_combout\ = (\cache_addr[5]~6_combout\ & (((\instr_cache|tag~275_regout\) # (\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~67_regout\ & ((!\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~67_regout\,
	datab => \instr_cache|tag~275_regout\,
	datac => \cache_addr[5]~6_combout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~550_combout\);

-- Location: LCFF_X58_Y36_N11
\instr_cache|tag~379\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(16),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~379_regout\);

-- Location: LCCOMB_X58_Y39_N22
\instr_cache|tag~551\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~551_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~550_combout\ & (\instr_cache|tag~379_regout\)) # (!\instr_cache|tag~550_combout\ & ((\instr_cache|tag~171_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~379_regout\,
	datac => \instr_cache|tag~171_regout\,
	datad => \instr_cache|tag~550_combout\,
	combout => \instr_cache|tag~551_combout\);

-- Location: LCFF_X59_Y39_N9
\instr_cache|tag~301\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(16),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~301_regout\);

-- Location: LCFF_X57_Y39_N11
\instr_cache|tag~197\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~197feeder_combout\,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~197_regout\);

-- Location: LCFF_X59_Y39_N19
\instr_cache|tag~93\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(16),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~93_regout\);

-- Location: LCCOMB_X59_Y39_N18
\instr_cache|tag~552\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~552_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~197_regout\)) # (!\cache_addr[4]~2_combout\ & ((\instr_cache|tag~93_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~197_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~93_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~552_combout\);

-- Location: LCFF_X58_Y39_N11
\instr_cache|tag~405\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(16),
	sload => VCC,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~405_regout\);

-- Location: LCCOMB_X59_Y39_N8
\instr_cache|tag~553\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~553_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~552_combout\ & (\instr_cache|tag~405_regout\)) # (!\instr_cache|tag~552_combout\ & ((\instr_cache|tag~301_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~552_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~405_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~301_regout\,
	datad => \instr_cache|tag~552_combout\,
	combout => \instr_cache|tag~553_combout\);

-- Location: LCFF_X59_Y36_N9
\instr_cache|tag~249\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~249feeder_combout\,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~249_regout\);

-- Location: LCFF_X60_Y38_N9
\instr_cache|tag~145\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(16),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~145_regout\);

-- Location: LCFF_X60_Y38_N23
\instr_cache|tag~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(16),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~41_regout\);

-- Location: LCCOMB_X60_Y38_N22
\instr_cache|tag~554\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~554_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~145_regout\) # ((\cache_addr[5]~6_combout\)))) # (!\cache_addr[4]~2_combout\ & (((\instr_cache|tag~41_regout\ & !\cache_addr[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~145_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~41_regout\,
	datad => \cache_addr[5]~6_combout\,
	combout => \instr_cache|tag~554_combout\);

-- Location: LCFF_X60_Y34_N17
\instr_cache|tag~353\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(16),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~353_regout\);

-- Location: LCCOMB_X60_Y34_N16
\instr_cache|tag~555\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~555_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~554_combout\ & ((\instr_cache|tag~353_regout\))) # (!\instr_cache|tag~554_combout\ & (\instr_cache|tag~249_regout\)))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~554_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~249_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~353_regout\,
	datad => \instr_cache|tag~554_combout\,
	combout => \instr_cache|tag~555_combout\);

-- Location: LCCOMB_X59_Y36_N26
\instr_cache|tag~556\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~556_combout\ = (\cache_addr[2]~8_combout\ & (\cache_addr[3]~4_combout\)) # (!\cache_addr[2]~8_combout\ & ((\cache_addr[3]~4_combout\ & ((\instr_cache|tag~553_combout\))) # (!\cache_addr[3]~4_combout\ & (\instr_cache|tag~555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~555_combout\,
	datad => \instr_cache|tag~553_combout\,
	combout => \instr_cache|tag~556_combout\);

-- Location: LCFF_X59_Y40_N3
\instr_cache|tag~223\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(16),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~223_regout\);

-- Location: LCFF_X60_Y40_N25
\instr_cache|tag~327\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(16),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~327_regout\);

-- Location: LCFF_X60_Y40_N7
\instr_cache|tag~119\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(16),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~119_regout\);

-- Location: LCCOMB_X59_Y40_N0
\instr_cache|tag~557\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~557_combout\ = (\cache_addr[5]~6_combout\ & (((\instr_cache|tag~327_regout\) # (\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~119_regout\ & ((!\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~119_regout\,
	datab => \instr_cache|tag~327_regout\,
	datac => \cache_addr[5]~6_combout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~557_combout\);

-- Location: LCFF_X59_Y40_N11
\instr_cache|tag~431\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(16),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~431_regout\);

-- Location: LCCOMB_X59_Y40_N2
\instr_cache|tag~558\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~558_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~557_combout\ & (\instr_cache|tag~431_regout\)) # (!\instr_cache|tag~557_combout\ & ((\instr_cache|tag~223_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~557_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~431_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~223_regout\,
	datad => \instr_cache|tag~557_combout\,
	combout => \instr_cache|tag~558_combout\);

-- Location: LCCOMB_X59_Y36_N28
\instr_cache|tag~559\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~559_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~556_combout\ & ((\instr_cache|tag~558_combout\))) # (!\instr_cache|tag~556_combout\ & (\instr_cache|tag~551_combout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~556_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|tag~551_combout\,
	datac => \instr_cache|tag~558_combout\,
	datad => \instr_cache|tag~556_combout\,
	combout => \instr_cache|tag~559_combout\);

-- Location: LCCOMB_X59_Y36_N30
\instr_cache|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~9_combout\ = \instr_cache|tag~559_combout\ $ (((\cache_addr[31]~0_combout\ & ((\jmp_addr~combout\(16)))) # (!\cache_addr[31]~0_combout\ & (\pc~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(16),
	datab => \jmp_addr~combout\(16),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~559_combout\,
	combout => \instr_cache|Equal0~9_combout\);

-- Location: LCFF_X63_Y39_N17
\instr_cache|tag~146\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(17),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~146_regout\);

-- Location: LCFF_X59_Y39_N23
\instr_cache|tag~94\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~94feeder_combout\,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~94_regout\);

-- Location: LCFF_X61_Y35_N5
\instr_cache|tag~120\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~120feeder_combout\,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~120_regout\);

-- Location: LCFF_X58_Y36_N13
\instr_cache|tag~380\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(17),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~380_regout\);

-- Location: LCFF_X57_Y39_N17
\instr_cache|tag~199\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~199feeder_combout\,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~199_regout\);

-- Location: LCFF_X59_Y39_N1
\instr_cache|tag~303\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~303feeder_combout\,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~303_regout\);

-- Location: LCFF_X59_Y39_N27
\instr_cache|tag~95\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~95feeder_combout\,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~95_regout\);

-- Location: LCCOMB_X58_Y39_N12
\instr_cache|tag~570\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~570_combout\ = (\cache_addr[5]~6_combout\ & (((\instr_cache|tag~303_regout\) # (\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~95_regout\ & ((!\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~95_regout\,
	datab => \instr_cache|tag~303_regout\,
	datac => \cache_addr[5]~6_combout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~570_combout\);

-- Location: LCFF_X58_Y39_N31
\instr_cache|tag~407\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(18),
	sload => VCC,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~407_regout\);

-- Location: LCCOMB_X58_Y39_N30
\instr_cache|tag~571\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~571_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~570_combout\ & ((\instr_cache|tag~407_regout\))) # (!\instr_cache|tag~570_combout\ & (\instr_cache|tag~199_regout\)))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~570_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~199_regout\,
	datac => \instr_cache|tag~407_regout\,
	datad => \instr_cache|tag~570_combout\,
	combout => \instr_cache|tag~571_combout\);

-- Location: LCFF_X58_Y38_N17
\instr_cache|tag~277\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(18),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~277_regout\);

-- Location: LCFF_X57_Y38_N11
\instr_cache|tag~173\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~173feeder_combout\,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~173_regout\);

-- Location: LCFF_X58_Y38_N3
\instr_cache|tag~69\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(18),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~69_regout\);

-- Location: LCCOMB_X58_Y38_N2
\instr_cache|tag~572\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~572_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~173_regout\)) # (!\cache_addr[4]~2_combout\ & ((\instr_cache|tag~69_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~173_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~69_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~572_combout\);

-- Location: LCFF_X58_Y36_N27
\instr_cache|tag~381\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~381feeder_combout\,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~381_regout\);

-- Location: LCCOMB_X58_Y38_N16
\instr_cache|tag~573\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~573_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~572_combout\ & (\instr_cache|tag~381_regout\)) # (!\instr_cache|tag~572_combout\ & ((\instr_cache|tag~277_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~572_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~381_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~277_regout\,
	datad => \instr_cache|tag~572_combout\,
	combout => \instr_cache|tag~573_combout\);

-- Location: LCFF_X61_Y37_N25
\instr_cache|tag~147\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(18),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~147_regout\);

-- Location: LCFF_X57_Y37_N9
\instr_cache|tag~251\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~251feeder_combout\,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~251_regout\);

-- Location: LCFF_X61_Y37_N19
\instr_cache|tag~43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(18),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~43_regout\);

-- Location: LCCOMB_X61_Y37_N18
\instr_cache|tag~574\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~574_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~251_regout\) # ((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (((\instr_cache|tag~43_regout\ & !\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~251_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~43_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~574_combout\);

-- Location: LCFF_X57_Y37_N7
\instr_cache|tag~355\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~355feeder_combout\,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~355_regout\);

-- Location: LCCOMB_X61_Y37_N24
\instr_cache|tag~575\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~575_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~574_combout\ & (\instr_cache|tag~355_regout\)) # (!\instr_cache|tag~574_combout\ & ((\instr_cache|tag~147_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~574_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~355_regout\,
	datac => \instr_cache|tag~147_regout\,
	datad => \instr_cache|tag~574_combout\,
	combout => \instr_cache|tag~575_combout\);

-- Location: LCCOMB_X62_Y35_N0
\instr_cache|tag~576\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~576_combout\ = (\cache_addr[3]~4_combout\ & (\cache_addr[2]~8_combout\)) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & (\instr_cache|tag~573_combout\)) # (!\cache_addr[2]~8_combout\ & ((\instr_cache|tag~575_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~573_combout\,
	datad => \instr_cache|tag~575_combout\,
	combout => \instr_cache|tag~576_combout\);

-- Location: LCFF_X59_Y36_N17
\instr_cache|tag~329\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(18),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~329_regout\);

-- Location: LCFF_X63_Y35_N31
\instr_cache|tag~225\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(18),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~225_regout\);

-- Location: LCFF_X62_Y39_N29
\instr_cache|tag~121\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(18),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~121_regout\);

-- Location: LCCOMB_X62_Y35_N22
\instr_cache|tag~577\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~577_combout\ = (\cache_addr[4]~2_combout\ & (((\instr_cache|tag~225_regout\) # (\cache_addr[5]~6_combout\)))) # (!\cache_addr[4]~2_combout\ & (\instr_cache|tag~121_regout\ & ((!\cache_addr[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~121_regout\,
	datab => \instr_cache|tag~225_regout\,
	datac => \cache_addr[4]~2_combout\,
	datad => \cache_addr[5]~6_combout\,
	combout => \instr_cache|tag~577_combout\);

-- Location: LCFF_X62_Y35_N29
\instr_cache|tag~433\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(18),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~433_regout\);

-- Location: LCCOMB_X62_Y35_N28
\instr_cache|tag~578\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~578_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~577_combout\ & ((\instr_cache|tag~433_regout\))) # (!\instr_cache|tag~577_combout\ & (\instr_cache|tag~329_regout\)))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~577_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~329_regout\,
	datac => \instr_cache|tag~433_regout\,
	datad => \instr_cache|tag~577_combout\,
	combout => \instr_cache|tag~578_combout\);

-- Location: LCCOMB_X62_Y35_N18
\instr_cache|tag~579\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~579_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~576_combout\ & (\instr_cache|tag~578_combout\)) # (!\instr_cache|tag~576_combout\ & ((\instr_cache|tag~571_combout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~576_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~578_combout\,
	datac => \instr_cache|tag~571_combout\,
	datad => \instr_cache|tag~576_combout\,
	combout => \instr_cache|tag~579_combout\);

-- Location: LCCOMB_X62_Y35_N4
\instr_cache|Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~11_combout\ = \instr_cache|tag~579_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(18))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(18),
	datab => \pc~combout\(18),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~579_combout\,
	combout => \instr_cache|Equal0~11_combout\);

-- Location: LCFF_X57_Y37_N25
\instr_cache|tag~252\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(19),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~252_regout\);

-- Location: LCFF_X57_Y38_N9
\instr_cache|tag~174\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~174feeder_combout\,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~174_regout\);

-- Location: LCFF_X59_Y35_N21
\instr_cache|tag~200\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~200feeder_combout\,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~200_regout\);

-- Location: LCFF_X58_Y38_N13
\instr_cache|tag~70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(19),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~70_regout\);

-- Location: LCFF_X58_Y36_N3
\instr_cache|tag~382\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(19),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~382_regout\);

-- Location: LCFF_X59_Y35_N3
\instr_cache|tag~408\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~408feeder_combout\,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~408_regout\);

-- Location: LCFF_X58_Y35_N27
\instr_cache|tag~356\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~356feeder_combout\,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~356_regout\);

-- Location: LCCOMB_X62_Y35_N12
\instr_cache|tag~587\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~587_combout\ = (\cache_addr[3]~4_combout\ & (((\instr_cache|tag~408_regout\) # (\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (\instr_cache|tag~356_regout\ & ((!\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~356_regout\,
	datac => \instr_cache|tag~408_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~587_combout\);

-- Location: LCFF_X62_Y35_N7
\instr_cache|tag~434\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(19),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~434_regout\);

-- Location: LCCOMB_X62_Y35_N6
\instr_cache|tag~588\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~588_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~587_combout\ & ((\instr_cache|tag~434_regout\))) # (!\instr_cache|tag~587_combout\ & (\instr_cache|tag~382_regout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~587_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~382_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~434_regout\,
	datad => \instr_cache|tag~587_combout\,
	combout => \instr_cache|tag~588_combout\);

-- Location: LCFF_X57_Y39_N15
\instr_cache|tag~71\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~71feeder_combout\,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~71_regout\);

-- Location: LCFF_X57_Y35_N21
\instr_cache|tag~383\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(20),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~383_regout\);

-- Location: LCFF_X57_Y39_N5
\instr_cache|tag~201\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~201feeder_combout\,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~201_regout\);

-- Location: LCFF_X58_Y39_N9
\instr_cache|tag~409\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~409feeder_combout\,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~409_regout\);

-- Location: LCFF_X59_Y36_N23
\instr_cache|tag~253\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~253feeder_combout\,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~253_regout\);

-- Location: LCFF_X60_Y35_N7
\instr_cache|tag~227\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~227feeder_combout\,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~227_regout\);

-- Location: LCFF_X60_Y36_N3
\instr_cache|tag~331\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~331feeder_combout\,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~331_regout\);

-- Location: LCFF_X61_Y35_N11
\instr_cache|tag~123\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(20),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~123_regout\);

-- Location: LCCOMB_X61_Y35_N10
\instr_cache|tag~597\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~597_combout\ = (\cache_addr[4]~2_combout\ & (\cache_addr[5]~6_combout\)) # (!\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\ & ((\instr_cache|tag~331_regout\))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~123_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~123_regout\,
	datad => \instr_cache|tag~331_regout\,
	combout => \instr_cache|tag~597_combout\);

-- Location: LCFF_X62_Y35_N21
\instr_cache|tag~435\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~435feeder_combout\,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~435_regout\);

-- Location: LCCOMB_X61_Y35_N12
\instr_cache|tag~598\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~598_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~597_combout\ & (\instr_cache|tag~435_regout\)) # (!\instr_cache|tag~597_combout\ & ((\instr_cache|tag~227_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~597_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~435_regout\,
	datac => \instr_cache|tag~227_regout\,
	datad => \instr_cache|tag~597_combout\,
	combout => \instr_cache|tag~598_combout\);

-- Location: LCFF_X61_Y40_N17
\instr_cache|tag~150\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~150_regout\);

-- Location: LCFF_X58_Y37_N21
\instr_cache|tag~306\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~306_regout\);

-- Location: LCFF_X58_Y37_N31
\instr_cache|tag~332\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~332_regout\);

-- Location: LCFF_X56_Y39_N31
\instr_cache|tag~98\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~98_regout\);

-- Location: LCFF_X60_Y40_N17
\instr_cache|tag~124\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~124_regout\);

-- Location: LCFF_X60_Y34_N11
\instr_cache|tag~358\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~358_regout\);

-- Location: LCFF_X59_Y39_N25
\instr_cache|tag~307\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(22),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~307_regout\);

-- Location: LCFF_X59_Y35_N25
\instr_cache|tag~411\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(22),
	sload => VCC,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~411_regout\);

-- Location: LCFF_X57_Y33_N13
\instr_cache|tag~281\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~281feeder_combout\,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~281_regout\);

-- Location: LCFF_X57_Y35_N27
\instr_cache|tag~177\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(22),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~177_regout\);

-- Location: LCFF_X59_Y37_N15
\instr_cache|tag~282\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~282feeder_combout\,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~282_regout\);

-- Location: LCFF_X59_Y36_N5
\instr_cache|tag~334\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(23),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~334_regout\);

-- Location: LCFF_X57_Y38_N31
\instr_cache|tag~178\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(23),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~178_regout\);

-- Location: LCFF_X59_Y34_N17
\instr_cache|tag~204\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(23),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~204_regout\);

-- Location: LCFF_X56_Y35_N13
\instr_cache|tag~100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~100feeder_combout\,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~100_regout\);

-- Location: LCFF_X57_Y39_N7
\instr_cache|tag~74\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(23),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~74_regout\);

-- Location: LCFF_X59_Y35_N15
\instr_cache|tag~412\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~412feeder_combout\,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~412_regout\);

-- Location: LCFF_X61_Y34_N3
\instr_cache|tag~438\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(23),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~438_regout\);

-- Location: LCFF_X57_Y35_N13
\instr_cache|tag~179\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(24),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~179_regout\);

-- Location: LCFF_X58_Y38_N21
\instr_cache|tag~283\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(24),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~283_regout\);

-- Location: LCFF_X58_Y38_N19
\instr_cache|tag~75\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(24),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~75_regout\);

-- Location: LCCOMB_X58_Y38_N20
\instr_cache|tag~630\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~630_combout\ = (\cache_addr[5]~6_combout\ & (((\instr_cache|tag~283_regout\) # (\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~75_regout\ & ((!\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~75_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~283_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~630_combout\);

-- Location: LCFF_X57_Y35_N7
\instr_cache|tag~387\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(24),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~387_regout\);

-- Location: LCCOMB_X57_Y35_N6
\instr_cache|tag~631\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~631_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~630_combout\ & ((\instr_cache|tag~387_regout\))) # (!\instr_cache|tag~630_combout\ & (\instr_cache|tag~179_regout\)))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~630_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~179_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~387_regout\,
	datad => \instr_cache|tag~630_combout\,
	combout => \instr_cache|tag~631_combout\);

-- Location: LCFF_X57_Y39_N1
\instr_cache|tag~205\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~205feeder_combout\,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~205_regout\);

-- Location: LCFF_X58_Y39_N21
\instr_cache|tag~413\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(24),
	sload => VCC,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~413_regout\);

-- Location: LCFF_X61_Y37_N1
\instr_cache|tag~49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(24),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~49_regout\);

-- Location: LCFF_X57_Y37_N13
\instr_cache|tag~361\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(24),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~361_regout\);

-- Location: LCFF_X59_Y34_N11
\instr_cache|tag~206\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(25),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~206_regout\);

-- Location: LCFF_X61_Y39_N7
\instr_cache|tag~180\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(25),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~180_regout\);

-- Location: LCFF_X60_Y35_N9
\instr_cache|tag~154\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(25),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~154_regout\);

-- Location: LCCOMB_X60_Y35_N8
\instr_cache|tag~640\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~640_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~180_regout\) # ((\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & (((\instr_cache|tag~154_regout\ & !\cache_addr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~180_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~154_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~640_combout\);

-- Location: LCFF_X60_Y35_N19
\instr_cache|tag~232\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(25),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~232_regout\);

-- Location: LCCOMB_X59_Y34_N10
\instr_cache|tag~641\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~641_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~640_combout\ & (\instr_cache|tag~232_regout\)) # (!\instr_cache|tag~640_combout\ & ((\instr_cache|tag~206_regout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~640_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~232_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~206_regout\,
	datad => \instr_cache|tag~640_combout\,
	combout => \instr_cache|tag~641_combout\);

-- Location: LCFF_X60_Y39_N27
\instr_cache|tag~284\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~284feeder_combout\,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~284_regout\);

-- Location: LCFF_X58_Y37_N5
\instr_cache|tag~310\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(25),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~310_regout\);

-- Location: LCFF_X59_Y36_N3
\instr_cache|tag~258\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(25),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~258_regout\);

-- Location: LCCOMB_X59_Y36_N2
\instr_cache|tag~642\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~642_combout\ = (\cache_addr[2]~8_combout\ & (((\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & ((\cache_addr[3]~4_combout\ & (\instr_cache|tag~310_regout\)) # (!\cache_addr[3]~4_combout\ & ((\instr_cache|tag~258_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~310_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~258_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~642_combout\);

-- Location: LCFF_X59_Y36_N25
\instr_cache|tag~336\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(25),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~336_regout\);

-- Location: LCCOMB_X59_Y36_N24
\instr_cache|tag~643\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~643_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~642_combout\ & ((\instr_cache|tag~336_regout\))) # (!\instr_cache|tag~642_combout\ & (\instr_cache|tag~284_regout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~642_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~284_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~336_regout\,
	datad => \instr_cache|tag~642_combout\,
	combout => \instr_cache|tag~643_combout\);

-- Location: LCFF_X60_Y39_N21
\instr_cache|tag~76\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~76feeder_combout\,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~76_regout\);

-- Location: LCFF_X56_Y35_N7
\instr_cache|tag~102\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(25),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~102_regout\);

-- Location: LCFF_X61_Y35_N27
\instr_cache|tag~50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(25),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~50_regout\);

-- Location: LCCOMB_X61_Y35_N26
\instr_cache|tag~644\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~644_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~102_regout\) # ((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (((\instr_cache|tag~50_regout\ & !\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~102_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~50_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~644_combout\);

-- Location: LCFF_X61_Y35_N17
\instr_cache|tag~128\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(25),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~128_regout\);

-- Location: LCCOMB_X61_Y35_N16
\instr_cache|tag~645\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~645_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~644_combout\ & ((\instr_cache|tag~128_regout\))) # (!\instr_cache|tag~644_combout\ & (\instr_cache|tag~76_regout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~644_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~76_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~128_regout\,
	datad => \instr_cache|tag~644_combout\,
	combout => \instr_cache|tag~645_combout\);

-- Location: LCCOMB_X58_Y34_N18
\instr_cache|tag~646\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~646_combout\ = (\cache_addr[4]~2_combout\ & (\cache_addr[5]~6_combout\)) # (!\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\ & ((\instr_cache|tag~643_combout\))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~645_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~645_combout\,
	datad => \instr_cache|tag~643_combout\,
	combout => \instr_cache|tag~646_combout\);

-- Location: LCFF_X58_Y35_N17
\instr_cache|tag~414\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~414feeder_combout\,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~414_regout\);

-- Location: LCFF_X60_Y34_N21
\instr_cache|tag~388\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(25),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~388_regout\);

-- Location: LCFF_X60_Y34_N23
\instr_cache|tag~362\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(25),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~362_regout\);

-- Location: LCCOMB_X60_Y34_N22
\instr_cache|tag~647\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~647_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~388_regout\) # ((\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & (((\instr_cache|tag~362_regout\ & !\cache_addr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~388_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~362_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~647_combout\);

-- Location: LCFF_X61_Y34_N11
\instr_cache|tag~440\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(25),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~440_regout\);

-- Location: LCCOMB_X58_Y34_N24
\instr_cache|tag~648\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~648_combout\ = (\instr_cache|tag~647_combout\ & (((\instr_cache|tag~440_regout\) # (!\cache_addr[3]~4_combout\)))) # (!\instr_cache|tag~647_combout\ & (\instr_cache|tag~414_regout\ & ((\cache_addr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~414_regout\,
	datab => \instr_cache|tag~440_regout\,
	datac => \instr_cache|tag~647_combout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~648_combout\);

-- Location: LCCOMB_X58_Y34_N30
\instr_cache|tag~649\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~649_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~646_combout\ & (\instr_cache|tag~648_combout\)) # (!\instr_cache|tag~646_combout\ & ((\instr_cache|tag~641_combout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~646_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~648_combout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~641_combout\,
	datad => \instr_cache|tag~646_combout\,
	combout => \instr_cache|tag~649_combout\);

-- Location: LCCOMB_X58_Y34_N16
\instr_cache|Equal0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~18_combout\ = \instr_cache|tag~649_combout\ $ (((\cache_addr[31]~0_combout\ & ((\jmp_addr~combout\(25)))) # (!\cache_addr[31]~0_combout\ & (\pc~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[31]~0_combout\,
	datab => \pc~combout\(25),
	datac => \jmp_addr~combout\(25),
	datad => \instr_cache|tag~649_combout\,
	combout => \instr_cache|Equal0~18_combout\);

-- Location: LCFF_X59_Y39_N17
\instr_cache|tag~311\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(26),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~311_regout\);

-- Location: LCFF_X59_Y35_N11
\instr_cache|tag~415\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(26),
	sload => VCC,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~415_regout\);

-- Location: LCFF_X56_Y37_N7
\instr_cache|tag~285\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(26),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~285_regout\);

-- Location: LCFF_X57_Y35_N5
\instr_cache|tag~181\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(26),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~181_regout\);

-- Location: LCFF_X57_Y37_N3
\instr_cache|tag~259\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~259feeder_combout\,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~259_regout\);

-- Location: LCFF_X60_Y40_N27
\instr_cache|tag~337\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(26),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~337_regout\);

-- Location: LCFF_X59_Y40_N13
\instr_cache|tag~233\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~233feeder_combout\,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~233_regout\);

-- Location: LCFF_X60_Y40_N29
\instr_cache|tag~129\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(26),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~129_regout\);

-- Location: LCCOMB_X60_Y40_N28
\instr_cache|tag~657\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~657_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~233_regout\) # ((\cache_addr[5]~6_combout\)))) # (!\cache_addr[4]~2_combout\ & (((\instr_cache|tag~129_regout\ & !\cache_addr[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~233_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~129_regout\,
	datad => \cache_addr[5]~6_combout\,
	combout => \instr_cache|tag~657_combout\);

-- Location: LCFF_X59_Y40_N23
\instr_cache|tag~441\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~441feeder_combout\,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~441_regout\);

-- Location: LCCOMB_X60_Y40_N26
\instr_cache|tag~658\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~658_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~657_combout\ & (\instr_cache|tag~441_regout\)) # (!\instr_cache|tag~657_combout\ & ((\instr_cache|tag~337_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~657_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~441_regout\,
	datac => \instr_cache|tag~337_regout\,
	datad => \instr_cache|tag~657_combout\,
	combout => \instr_cache|tag~658_combout\);

-- Location: LCFF_X60_Y36_N21
\instr_cache|tag~338\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~338_regout\);

-- Location: LCFF_X61_Y37_N13
\instr_cache|tag~156\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~156feeder_combout\,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~156_regout\);

-- Location: LCFF_X56_Y36_N13
\instr_cache|tag~104\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~104_regout\);

-- Location: LCFF_X58_Y35_N23
\instr_cache|tag~416\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~416_regout\);

-- Location: LCFF_X57_Y35_N11
\instr_cache|tag~183\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~183_regout\);

-- Location: LCFF_X58_Y38_N25
\instr_cache|tag~287\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~287_regout\);

-- Location: LCFF_X58_Y38_N7
\instr_cache|tag~79\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~79_regout\);

-- Location: LCCOMB_X58_Y38_N24
\instr_cache|tag~670\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~670_combout\ = (\cache_addr[5]~6_combout\ & (((\instr_cache|tag~287_regout\) # (\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~79_regout\ & ((!\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~79_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~287_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~670_combout\);

-- Location: LCFF_X57_Y35_N17
\instr_cache|tag~391\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~391_regout\);

-- Location: LCCOMB_X57_Y35_N16
\instr_cache|tag~671\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~671_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~670_combout\ & ((\instr_cache|tag~391_regout\))) # (!\instr_cache|tag~670_combout\ & (\instr_cache|tag~183_regout\)))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~670_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~183_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~391_regout\,
	datad => \instr_cache|tag~670_combout\,
	combout => \instr_cache|tag~671_combout\);

-- Location: LCFF_X59_Y34_N19
\instr_cache|tag~313\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~313_regout\);

-- Location: LCFF_X59_Y34_N13
\instr_cache|tag~209\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~209_regout\);

-- Location: LCFF_X56_Y35_N17
\instr_cache|tag~105\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~105feeder_combout\,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~105_regout\);

-- Location: LCCOMB_X59_Y34_N12
\instr_cache|tag~672\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~672_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & ((\instr_cache|tag~209_regout\))) # (!\cache_addr[4]~2_combout\ & (\instr_cache|tag~105_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~105_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~209_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~672_combout\);

-- Location: LCFF_X59_Y35_N29
\instr_cache|tag~417\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~417_regout\);

-- Location: LCCOMB_X59_Y34_N18
\instr_cache|tag~673\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~673_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~672_combout\ & (\instr_cache|tag~417_regout\)) # (!\instr_cache|tag~672_combout\ & ((\instr_cache|tag~313_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~672_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~417_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~313_regout\,
	datad => \instr_cache|tag~672_combout\,
	combout => \instr_cache|tag~673_combout\);

-- Location: LCFF_X57_Y37_N19
\instr_cache|tag~261\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~261_regout\);

-- Location: LCFF_X61_Y37_N27
\instr_cache|tag~157\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~157_regout\);

-- Location: LCFF_X61_Y37_N9
\instr_cache|tag~53\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~53_regout\);

-- Location: LCCOMB_X61_Y37_N8
\instr_cache|tag~674\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~674_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~157_regout\)) # (!\cache_addr[4]~2_combout\ & ((\instr_cache|tag~53_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~157_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~53_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~674_combout\);

-- Location: LCFF_X57_Y37_N21
\instr_cache|tag~365\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~365_regout\);

-- Location: LCCOMB_X57_Y37_N18
\instr_cache|tag~675\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~675_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~674_combout\ & (\instr_cache|tag~365_regout\)) # (!\instr_cache|tag~674_combout\ & ((\instr_cache|tag~261_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~674_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~365_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~261_regout\,
	datad => \instr_cache|tag~674_combout\,
	combout => \instr_cache|tag~675_combout\);

-- Location: LCCOMB_X56_Y34_N10
\instr_cache|tag~676\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~676_combout\ = (\cache_addr[2]~8_combout\ & (\cache_addr[3]~4_combout\)) # (!\cache_addr[2]~8_combout\ & ((\cache_addr[3]~4_combout\ & (\instr_cache|tag~673_combout\)) # (!\cache_addr[3]~4_combout\ & ((\instr_cache|tag~675_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~673_combout\,
	datad => \instr_cache|tag~675_combout\,
	combout => \instr_cache|tag~676_combout\);

-- Location: LCFF_X60_Y37_N1
\instr_cache|tag~235\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~235_regout\);

-- Location: LCFF_X60_Y40_N19
\instr_cache|tag~339\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~339_regout\);

-- Location: LCFF_X60_Y40_N5
\instr_cache|tag~131\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~131_regout\);

-- Location: LCCOMB_X60_Y40_N18
\instr_cache|tag~677\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~677_combout\ = (\cache_addr[5]~6_combout\ & (((\instr_cache|tag~339_regout\) # (\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~131_regout\ & ((!\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~131_regout\,
	datac => \instr_cache|tag~339_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~677_combout\);

-- Location: LCFF_X60_Y37_N11
\instr_cache|tag~443\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(28),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~443_regout\);

-- Location: LCCOMB_X60_Y37_N0
\instr_cache|tag~678\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~678_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~677_combout\ & (\instr_cache|tag~443_regout\)) # (!\instr_cache|tag~677_combout\ & ((\instr_cache|tag~235_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~677_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~443_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~235_regout\,
	datad => \instr_cache|tag~677_combout\,
	combout => \instr_cache|tag~678_combout\);

-- Location: LCCOMB_X56_Y34_N0
\instr_cache|tag~679\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~679_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~676_combout\ & ((\instr_cache|tag~678_combout\))) # (!\instr_cache|tag~676_combout\ & (\instr_cache|tag~671_combout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~676_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|tag~671_combout\,
	datac => \instr_cache|tag~678_combout\,
	datad => \instr_cache|tag~676_combout\,
	combout => \instr_cache|tag~679_combout\);

-- Location: LCCOMB_X56_Y34_N30
\instr_cache|Equal0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~21_combout\ = \instr_cache|tag~679_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(28))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(28),
	datab => \pc~combout\(28),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~679_combout\,
	combout => \instr_cache|Equal0~21_combout\);

-- Location: LCFF_X59_Y35_N7
\instr_cache|tag~210\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(29),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~210_regout\);

-- Location: LCFF_X57_Y35_N3
\instr_cache|tag~184\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~184feeder_combout\,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~184_regout\);

-- Location: LCFF_X60_Y35_N5
\instr_cache|tag~158\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(29),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~158_regout\);

-- Location: LCCOMB_X60_Y35_N4
\instr_cache|tag~680\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~680_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~184_regout\) # ((\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & (((\instr_cache|tag~158_regout\ & !\cache_addr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~184_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~158_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~680_combout\);

-- Location: LCFF_X60_Y35_N31
\instr_cache|tag~236\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(29),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~236_regout\);

-- Location: LCCOMB_X59_Y35_N6
\instr_cache|tag~681\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~681_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~680_combout\ & (\instr_cache|tag~236_regout\)) # (!\instr_cache|tag~680_combout\ & ((\instr_cache|tag~210_regout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~680_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~236_regout\,
	datac => \instr_cache|tag~210_regout\,
	datad => \instr_cache|tag~680_combout\,
	combout => \instr_cache|tag~681_combout\);

-- Location: LCFF_X59_Y37_N7
\instr_cache|tag~288\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~288feeder_combout\,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~288_regout\);

-- Location: LCFF_X56_Y35_N3
\instr_cache|tag~106\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(29),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~106_regout\);

-- Location: LCFF_X60_Y34_N29
\instr_cache|tag~392\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(29),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~392_regout\);

-- Location: LCFF_X59_Y34_N23
\instr_cache|tag~211\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~211feeder_combout\,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~211_regout\);

-- Location: LCFF_X59_Y39_N21
\instr_cache|tag~315\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(30),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~315_regout\);

-- Location: LCFF_X59_Y39_N11
\instr_cache|tag~107\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(30),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~107_regout\);

-- Location: LCCOMB_X59_Y39_N20
\instr_cache|tag~690\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~690_combout\ = (\cache_addr[5]~6_combout\ & (((\instr_cache|tag~315_regout\) # (\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~107_regout\ & ((!\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~107_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~315_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~690_combout\);

-- Location: LCFF_X58_Y35_N7
\instr_cache|tag~419\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(30),
	sload => VCC,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~419_regout\);

-- Location: LCCOMB_X58_Y35_N6
\instr_cache|tag~691\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~691_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~690_combout\ & ((\instr_cache|tag~419_regout\))) # (!\instr_cache|tag~690_combout\ & (\instr_cache|tag~211_regout\)))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~690_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~211_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~419_regout\,
	datad => \instr_cache|tag~690_combout\,
	combout => \instr_cache|tag~691_combout\);

-- Location: LCFF_X58_Y38_N29
\instr_cache|tag~289\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(30),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~289_regout\);

-- Location: LCFF_X57_Y38_N23
\instr_cache|tag~185\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(30),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~185_regout\);

-- Location: LCFF_X58_Y38_N11
\instr_cache|tag~81\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(30),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~81_regout\);

-- Location: LCCOMB_X58_Y38_N10
\instr_cache|tag~692\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~692_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~185_regout\)) # (!\cache_addr[4]~2_combout\ & ((\instr_cache|tag~81_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~185_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~81_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~692_combout\);

-- Location: LCFF_X58_Y36_N9
\instr_cache|tag~393\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(30),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~393_regout\);

-- Location: LCCOMB_X58_Y38_N28
\instr_cache|tag~693\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~693_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~692_combout\ & (\instr_cache|tag~393_regout\)) # (!\instr_cache|tag~692_combout\ & ((\instr_cache|tag~289_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~692_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~393_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~289_regout\,
	datad => \instr_cache|tag~692_combout\,
	combout => \instr_cache|tag~693_combout\);

-- Location: LCFF_X60_Y35_N1
\instr_cache|tag~159\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(30),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~159_regout\);

-- Location: LCFF_X60_Y36_N15
\instr_cache|tag~263\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~263feeder_combout\,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~263_regout\);

-- Location: LCFF_X61_Y35_N19
\instr_cache|tag~55\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~55feeder_combout\,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~55_regout\);

-- Location: LCCOMB_X60_Y35_N10
\instr_cache|tag~694\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~694_combout\ = (\cache_addr[4]~2_combout\ & (((\cache_addr[5]~6_combout\)))) # (!\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\ & (\instr_cache|tag~263_regout\)) # (!\cache_addr[5]~6_combout\ & ((\instr_cache|tag~55_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~263_regout\,
	datab => \instr_cache|tag~55_regout\,
	datac => \cache_addr[4]~2_combout\,
	datad => \cache_addr[5]~6_combout\,
	combout => \instr_cache|tag~694_combout\);

-- Location: LCFF_X58_Y35_N25
\instr_cache|tag~367\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(30),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~367_regout\);

-- Location: LCCOMB_X60_Y35_N0
\instr_cache|tag~695\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~695_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~694_combout\ & (\instr_cache|tag~367_regout\)) # (!\instr_cache|tag~694_combout\ & ((\instr_cache|tag~159_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~694_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~367_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~159_regout\,
	datad => \instr_cache|tag~694_combout\,
	combout => \instr_cache|tag~695_combout\);

-- Location: LCCOMB_X59_Y35_N30
\instr_cache|tag~696\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~696_combout\ = (\cache_addr[3]~4_combout\ & (\cache_addr[2]~8_combout\)) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & ((\instr_cache|tag~693_combout\))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|tag~695_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~695_combout\,
	datad => \instr_cache|tag~693_combout\,
	combout => \instr_cache|tag~696_combout\);

-- Location: LCFF_X58_Y37_N27
\instr_cache|tag~341\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~341feeder_combout\,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~341_regout\);

-- Location: LCFF_X60_Y37_N13
\instr_cache|tag~237\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(30),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~237_regout\);

-- Location: LCFF_X61_Y35_N29
\instr_cache|tag~133\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~133feeder_combout\,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~133_regout\);

-- Location: LCCOMB_X60_Y37_N12
\instr_cache|tag~697\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~697_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & ((\instr_cache|tag~237_regout\))) # (!\cache_addr[4]~2_combout\ & (\instr_cache|tag~133_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~133_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~237_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~697_combout\);

-- Location: LCFF_X60_Y37_N19
\instr_cache|tag~445\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(30),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~445_regout\);

-- Location: LCCOMB_X60_Y37_N18
\instr_cache|tag~698\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~698_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~697_combout\ & ((\instr_cache|tag~445_regout\))) # (!\instr_cache|tag~697_combout\ & (\instr_cache|tag~341_regout\)))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~697_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~341_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~445_regout\,
	datad => \instr_cache|tag~697_combout\,
	combout => \instr_cache|tag~698_combout\);

-- Location: LCCOMB_X58_Y35_N14
\instr_cache|tag~699\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~699_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~696_combout\ & ((\instr_cache|tag~698_combout\))) # (!\instr_cache|tag~696_combout\ & (\instr_cache|tag~691_combout\)))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~696_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~691_combout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~698_combout\,
	datad => \instr_cache|tag~696_combout\,
	combout => \instr_cache|tag~699_combout\);

-- Location: LCCOMB_X57_Y34_N10
\instr_cache|Equal0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~23_combout\ = \instr_cache|tag~699_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(30))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(30),
	datab => \pc~combout\(30),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~699_combout\,
	combout => \instr_cache|Equal0~23_combout\);

-- Location: LCFF_X57_Y37_N23
\instr_cache|tag~264\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~264feeder_combout\,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~264_regout\);

-- Location: LCFF_X58_Y37_N7
\instr_cache|tag~342\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(31),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~342_regout\);

-- Location: LCFF_X61_Y40_N11
\instr_cache|tag~160\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~160feeder_combout\,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~160_regout\);

-- Location: LCFF_X56_Y36_N1
\instr_cache|tag~108\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(31),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~108_regout\);

-- Location: LCFF_X56_Y36_N23
\instr_cache|tag~82\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(31),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~82_regout\);

-- Location: LCFF_X58_Y33_N1
\instr_cache|tag~394\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(31),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~394_regout\);

-- Location: LCFF_X59_Y33_N31
\instr_cache|tag~420\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~420feeder_combout\,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~420_regout\);

-- Location: LCFF_X59_Y33_N17
\instr_cache|tag~368\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~368feeder_combout\,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~368_regout\);

-- Location: LCCOMB_X58_Y33_N30
\instr_cache|tag~707\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~707_combout\ = (\cache_addr[3]~4_combout\ & (((\instr_cache|tag~420_regout\) # (\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (\instr_cache|tag~368_regout\ & ((!\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~368_regout\,
	datab => \instr_cache|tag~420_regout\,
	datac => \cache_addr[3]~4_combout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~707_combout\);

-- Location: LCFF_X58_Y33_N13
\instr_cache|tag~446\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(31),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~446_regout\);

-- Location: LCCOMB_X58_Y33_N0
\instr_cache|tag~708\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~708_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~707_combout\ & (\instr_cache|tag~446_regout\)) # (!\instr_cache|tag~707_combout\ & ((\instr_cache|tag~394_regout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~707_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~446_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~394_regout\,
	datad => \instr_cache|tag~707_combout\,
	combout => \instr_cache|tag~708_combout\);

-- Location: LCFF_X63_Y36_N21
\instr_cache|cpu_addr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~0_combout\,
	sload => VCC,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(0));

-- Location: LCCOMB_X63_Y36_N20
\instr_cache|Selector108~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector108~3_combout\ = (\instr_cache|cpu_addr_reg\(0) & \instr_cache|cpu_rd_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|cpu_addr_reg\(0),
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|Selector108~3_combout\);

-- Location: LCCOMB_X63_Y34_N6
\instr_cache|Selector108~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector108~4_combout\ = (\instr_cache|current_state.EXECUTE_STATE~regout\ & (\instr_cache|Selector108~3_combout\)) # (!\instr_cache|current_state.EXECUTE_STATE~regout\ & (((\instr_cache|words_counter\(0)) # 
-- (!\instr_cache|current_state.READ_DBUS_STATE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Selector108~3_combout\,
	datab => \instr_cache|current_state.EXECUTE_STATE~regout\,
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \instr_cache|words_counter\(0),
	combout => \instr_cache|Selector108~4_combout\);

-- Location: LCCOMB_X63_Y34_N24
\instr_cache|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Add2~0_combout\ = \instr_cache|words_counter\(1) $ (\instr_cache|words_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|words_counter\(1),
	datad => \instr_cache|words_counter\(0),
	combout => \instr_cache|Add2~0_combout\);

-- Location: LCFF_X62_Y34_N3
\instr_cache|current_state.ACK_WAIT_RM\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|Selector149~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|current_state.ACK_WAIT_RM~regout\);

-- Location: LCCOMB_X63_Y34_N4
\instr_cache|Selector106~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector106~1_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\) # (!\instr_cache|current_state.EXECUTE_STATE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.IDLE_STATE~regout\,
	datac => \instr_cache|current_state.EXECUTE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|Selector106~1_combout\);

-- Location: LCCOMB_X62_Y34_N8
\instr_cache|Selector142~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector142~0_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\) # (\stop~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \stop~combout\,
	combout => \instr_cache|Selector142~0_combout\);

-- Location: LCCOMB_X62_Y39_N18
\instr_cache|tag~724\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~724_combout\ = (!\instr_cache|cpu_addr_reg\(3) & (\instr_cache|cpu_addr_reg\(4) & (\instr_cache|cpu_addr_reg\(5) & \instr_cache|cpu_addr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(3),
	datab => \instr_cache|cpu_addr_reg\(4),
	datac => \instr_cache|cpu_addr_reg\(5),
	datad => \instr_cache|cpu_addr_reg\(2),
	combout => \instr_cache|tag~724_combout\);

-- Location: LCCOMB_X61_Y40_N0
\instr_cache|tag~726\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~726_combout\ = (!\instr_cache|cpu_addr_reg\(2) & (!\instr_cache|cpu_addr_reg\(3) & (!\instr_cache|cpu_addr_reg\(5) & \instr_cache|cpu_addr_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(2),
	datab => \instr_cache|cpu_addr_reg\(3),
	datac => \instr_cache|cpu_addr_reg\(5),
	datad => \instr_cache|cpu_addr_reg\(4),
	combout => \instr_cache|tag~726_combout\);

-- Location: LCCOMB_X61_Y40_N30
\instr_cache|tag~738\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~738_combout\ = (\instr_cache|cpu_addr_reg\(2) & (\instr_cache|cpu_addr_reg\(3) & (!\instr_cache|cpu_addr_reg\(5) & !\instr_cache|cpu_addr_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(2),
	datab => \instr_cache|cpu_addr_reg\(3),
	datac => \instr_cache|cpu_addr_reg\(5),
	datad => \instr_cache|cpu_addr_reg\(4),
	combout => \instr_cache|tag~738_combout\);

-- Location: LCCOMB_X62_Y40_N20
\instr_cache|valid[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[6]~0_combout\ = (\instr_cache|valid\(6)) # ((\instr_cache|tag~710_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~710_combout\,
	datac => \instr_cache|valid\(6),
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|valid[6]~0_combout\);

-- Location: LCCOMB_X63_Y37_N16
\instr_cache|valid[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[5]~1_combout\ = (\instr_cache|valid\(5)) # ((\instr_cache|next_state.EXECUTE_STATE~0_combout\ & \instr_cache|tag~720_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	datac => \instr_cache|valid\(5),
	datad => \instr_cache|tag~720_combout\,
	combout => \instr_cache|valid[5]~1_combout\);

-- Location: LCCOMB_X61_Y40_N22
\instr_cache|valid[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[4]~2_combout\ = (\instr_cache|valid\(4)) # ((\instr_cache|tag~726_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|tag~726_combout\,
	datac => \instr_cache|valid\(4),
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|valid[4]~2_combout\);

-- Location: LCCOMB_X62_Y40_N10
\instr_cache|valid[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[7]~3_combout\ = (\instr_cache|valid\(7)) # ((\instr_cache|next_state.EXECUTE_STATE~0_combout\ & \instr_cache|tag~736_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	datac => \instr_cache|valid\(7),
	datad => \instr_cache|tag~736_combout\,
	combout => \instr_cache|valid[7]~3_combout\);

-- Location: LCCOMB_X61_Y40_N4
\instr_cache|valid[9]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[9]~4_combout\ = (\instr_cache|valid\(9)) # ((\instr_cache|tag~718_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|tag~718_combout\,
	datac => \instr_cache|valid\(9),
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|valid[9]~4_combout\);

-- Location: LCCOMB_X61_Y40_N14
\instr_cache|valid[10]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[10]~5_combout\ = (\instr_cache|valid\(10)) # ((\instr_cache|tag~712_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|tag~712_combout\,
	datac => \instr_cache|valid\(10),
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|valid[10]~5_combout\);

-- Location: LCCOMB_X62_Y40_N30
\instr_cache|valid[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[8]~6_combout\ = (\instr_cache|valid\(8)) # ((\instr_cache|tag~728_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|valid\(8),
	datac => \instr_cache|tag~728_combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|valid[8]~6_combout\);

-- Location: LCCOMB_X62_Y40_N8
\instr_cache|valid[11]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[11]~7_combout\ = (\instr_cache|valid\(11)) # ((\instr_cache|tag~734_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|tag~734_combout\,
	datac => \instr_cache|valid\(11),
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|valid[11]~7_combout\);

-- Location: LCCOMB_X62_Y40_N26
\instr_cache|valid[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[1]~8_combout\ = (\instr_cache|valid\(1)) # ((\instr_cache|tag~722_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|tag~722_combout\,
	datac => \instr_cache|valid\(1),
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|valid[1]~8_combout\);

-- Location: LCCOMB_X62_Y40_N28
\instr_cache|valid[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[2]~9_combout\ = (\instr_cache|valid\(2)) # ((\instr_cache|tag~714_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|tag~714_combout\,
	datac => \instr_cache|valid\(2),
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|valid[2]~9_combout\);

-- Location: LCCOMB_X65_Y36_N8
\instr_cache|valid[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[0]~10_combout\ = (\instr_cache|valid\(0)) # ((\instr_cache|current_state.READ_DBUS_STATE~regout\ & (\instr_cache|next_state.EXECUTE_STATE~0_combout\ & \instr_cache|tag~730_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datab => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	datac => \instr_cache|valid\(0),
	datad => \instr_cache|tag~730_combout\,
	combout => \instr_cache|valid[0]~10_combout\);

-- Location: LCCOMB_X61_Y40_N2
\instr_cache|valid[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[3]~11_combout\ = (\instr_cache|valid\(3)) # ((\instr_cache|tag~738_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|tag~738_combout\,
	datac => \instr_cache|valid\(3),
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|valid[3]~11_combout\);

-- Location: LCCOMB_X62_Y40_N14
\instr_cache|valid[14]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[14]~12_combout\ = (\instr_cache|valid\(14)) # ((\instr_cache|tag~716_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|tag~716_combout\,
	datac => \instr_cache|valid\(14),
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|valid[14]~12_combout\);

-- Location: LCCOMB_X62_Y40_N4
\instr_cache|valid[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[13]~13_combout\ = (\instr_cache|valid\(13)) # ((\instr_cache|tag~724_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|tag~724_combout\,
	datac => \instr_cache|valid\(13),
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|valid[13]~13_combout\);

-- Location: LCCOMB_X65_Y36_N26
\instr_cache|valid[12]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[12]~14_combout\ = (\instr_cache|valid\(12)) # ((\instr_cache|next_state.EXECUTE_STATE~0_combout\ & \instr_cache|tag~732_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	datac => \instr_cache|valid\(12),
	datad => \instr_cache|tag~732_combout\,
	combout => \instr_cache|valid[12]~14_combout\);

-- Location: LCCOMB_X62_Y40_N6
\instr_cache|valid[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[15]~15_combout\ = (\instr_cache|valid\(15)) # ((\instr_cache|tag~740_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~740_combout\,
	datac => \instr_cache|valid\(15),
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|valid[15]~15_combout\);

-- Location: LCFF_X61_Y38_N7
\instr_cache|mem_wait_for[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|Selector20~0_combout\,
	ena => \instr_cache|mem_wait_for[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|mem_wait_for\(1));

-- Location: LCCOMB_X62_Y34_N2
\instr_cache|Selector149~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector149~0_combout\ = (!\ack~combout\ & ((\instr_cache|current_state.ACK_WAIT_RM~regout\) # ((\instr_cache|cpu_rd_reg~0_combout\ & \instr_cache|process_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack~combout\,
	datab => \instr_cache|cpu_rd_reg~0_combout\,
	datac => \instr_cache|current_state.ACK_WAIT_RM~regout\,
	datad => \instr_cache|process_1~8_combout\,
	combout => \instr_cache|Selector149~0_combout\);

-- Location: LCCOMB_X61_Y38_N6
\instr_cache|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector20~0_combout\ = (\instr_cache|current_state.READ_MEM_STATE~regout\) # ((\instr_cache|Selector19~0_combout\ & (\instr_cache|mem_wait_for\(0) $ (!\instr_cache|mem_wait_for\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Selector19~0_combout\,
	datab => \instr_cache|mem_wait_for\(0),
	datac => \instr_cache|mem_wait_for\(1),
	datad => \instr_cache|current_state.READ_MEM_STATE~regout\,
	combout => \instr_cache|Selector20~0_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_mod~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc_mod,
	combout => \pc_mod~combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(5),
	combout => \jmp_addr~combout\(5));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(23),
	combout => \jmp_addr~combout\(23));

-- Location: LCCOMB_X59_Y35_N4
\instr_cache|tag~395feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~395feeder_combout\ = \instr_cache|cpu_addr_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(6),
	combout => \instr_cache|tag~395feeder_combout\);

-- Location: LCCOMB_X60_Y33_N0
\instr_cache|tag~265feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~265feeder_combout\ = \instr_cache|cpu_addr_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(6),
	combout => \instr_cache|tag~265feeder_combout\);

-- Location: LCCOMB_X58_Y38_N0
\instr_cache|tag~58feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~58feeder_combout\ = \instr_cache|cpu_addr_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(7),
	combout => \instr_cache|tag~58feeder_combout\);

-- Location: LCCOMB_X58_Y35_N18
\instr_cache|tag~397feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~397feeder_combout\ = \instr_cache|cpu_addr_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(8),
	combout => \instr_cache|tag~397feeder_combout\);

-- Location: LCCOMB_X61_Y39_N12
\instr_cache|tag~345feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~345feeder_combout\ = \instr_cache|cpu_addr_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(8),
	combout => \instr_cache|tag~345feeder_combout\);

-- Location: LCCOMB_X58_Y36_N4
\instr_cache|tag~371feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~371feeder_combout\ = \instr_cache|cpu_addr_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(8),
	combout => \instr_cache|tag~371feeder_combout\);

-- Location: LCCOMB_X58_Y36_N30
\instr_cache|tag~319feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~319feeder_combout\ = \instr_cache|cpu_addr_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(8),
	combout => \instr_cache|tag~319feeder_combout\);

-- Location: LCCOMB_X59_Y38_N4
\instr_cache|tag~85feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~85feeder_combout\ = \instr_cache|cpu_addr_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(8),
	combout => \instr_cache|tag~85feeder_combout\);

-- Location: LCCOMB_X59_Y38_N2
\instr_cache|tag~111feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~111feeder_combout\ = \instr_cache|cpu_addr_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(8),
	combout => \instr_cache|tag~111feeder_combout\);

-- Location: LCCOMB_X63_Y39_N12
\instr_cache|tag~138feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~138feeder_combout\ = \instr_cache|cpu_addr_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(9),
	combout => \instr_cache|tag~138feeder_combout\);

-- Location: LCCOMB_X58_Y37_N14
\instr_cache|tag~320feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~320feeder_combout\ = \instr_cache|cpu_addr_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(9),
	combout => \instr_cache|tag~320feeder_combout\);

-- Location: LCCOMB_X56_Y38_N20
\instr_cache|tag~34feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~34feeder_combout\ = \instr_cache|cpu_addr_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(9),
	combout => \instr_cache|tag~34feeder_combout\);

-- Location: LCCOMB_X57_Y37_N26
\instr_cache|tag~242feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~242feeder_combout\ = \instr_cache|cpu_addr_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(9),
	combout => \instr_cache|tag~242feeder_combout\);

-- Location: LCCOMB_X62_Y38_N12
\instr_cache|tag~217feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~217feeder_combout\ = \instr_cache|cpu_addr_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(10),
	combout => \instr_cache|tag~217feeder_combout\);

-- Location: LCCOMB_X63_Y39_N22
\instr_cache|tag~36feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~36feeder_combout\ = \instr_cache|cpu_addr_reg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(11),
	combout => \instr_cache|tag~36feeder_combout\);

-- Location: LCCOMB_X57_Y35_N0
\instr_cache|tag~166feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~166feeder_combout\ = \instr_cache|cpu_addr_reg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(11),
	combout => \instr_cache|tag~166feeder_combout\);

-- Location: LCCOMB_X59_Y35_N0
\instr_cache|tag~192feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~192feeder_combout\ = \instr_cache|cpu_addr_reg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(11),
	combout => \instr_cache|tag~192feeder_combout\);

-- Location: LCCOMB_X58_Y39_N24
\instr_cache|tag~400feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~400feeder_combout\ = \instr_cache|cpu_addr_reg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(11),
	combout => \instr_cache|tag~400feeder_combout\);

-- Location: LCCOMB_X58_Y39_N18
\instr_cache|tag~401feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~401feeder_combout\ = \instr_cache|cpu_addr_reg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(12),
	combout => \instr_cache|tag~401feeder_combout\);

-- Location: LCCOMB_X60_Y37_N14
\instr_cache|tag~219feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~219feeder_combout\ = \instr_cache|cpu_addr_reg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(12),
	combout => \instr_cache|tag~219feeder_combout\);

-- Location: LCCOMB_X60_Y37_N16
\instr_cache|tag~427feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~427feeder_combout\ = \instr_cache|cpu_addr_reg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(12),
	combout => \instr_cache|tag~427feeder_combout\);

-- Location: LCCOMB_X59_Y33_N12
\instr_cache|tag~402feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~402feeder_combout\ = \instr_cache|cpu_addr_reg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(13),
	combout => \instr_cache|tag~402feeder_combout\);

-- Location: LCCOMB_X58_Y38_N14
\instr_cache|tag~64feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~64feeder_combout\ = \instr_cache|cpu_addr_reg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(13),
	combout => \instr_cache|tag~64feeder_combout\);

-- Location: LCCOMB_X57_Y35_N22
\instr_cache|tag~168feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~168feeder_combout\ = \instr_cache|cpu_addr_reg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(13),
	combout => \instr_cache|tag~168feeder_combout\);

-- Location: LCCOMB_X59_Y37_N2
\instr_cache|tag~299feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~299feeder_combout\ = \instr_cache|cpu_addr_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(14),
	combout => \instr_cache|tag~299feeder_combout\);

-- Location: LCCOMB_X60_Y35_N24
\instr_cache|tag~221feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~221feeder_combout\ = \instr_cache|cpu_addr_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(14),
	combout => \instr_cache|tag~221feeder_combout\);

-- Location: LCCOMB_X58_Y38_N26
\instr_cache|tag~65feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~65feeder_combout\ = \instr_cache|cpu_addr_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(14),
	combout => \instr_cache|tag~65feeder_combout\);

-- Location: LCCOMB_X63_Y39_N4
\instr_cache|tag~143feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~143feeder_combout\ = \instr_cache|cpu_addr_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(14),
	combout => \instr_cache|tag~143feeder_combout\);

-- Location: LCCOMB_X58_Y35_N10
\instr_cache|tag~352feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~352feeder_combout\ = \instr_cache|cpu_addr_reg\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(15),
	combout => \instr_cache|tag~352feeder_combout\);

-- Location: LCCOMB_X59_Y36_N8
\instr_cache|tag~249feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~249feeder_combout\ = \instr_cache|cpu_addr_reg\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(16),
	combout => \instr_cache|tag~249feeder_combout\);

-- Location: LCCOMB_X60_Y39_N2
\instr_cache|tag~275feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~275feeder_combout\ = \instr_cache|cpu_addr_reg\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(16),
	combout => \instr_cache|tag~275feeder_combout\);

-- Location: LCCOMB_X57_Y39_N10
\instr_cache|tag~197feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~197feeder_combout\ = \instr_cache|cpu_addr_reg\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(16),
	combout => \instr_cache|tag~197feeder_combout\);

-- Location: LCCOMB_X57_Y39_N12
\instr_cache|tag~67feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~67feeder_combout\ = \instr_cache|cpu_addr_reg\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(16),
	combout => \instr_cache|tag~67feeder_combout\);

-- Location: LCCOMB_X61_Y35_N4
\instr_cache|tag~120feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~120feeder_combout\ = \instr_cache|cpu_addr_reg\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(17),
	combout => \instr_cache|tag~120feeder_combout\);

-- Location: LCCOMB_X59_Y39_N22
\instr_cache|tag~94feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~94feeder_combout\ = \instr_cache|cpu_addr_reg\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(17),
	combout => \instr_cache|tag~94feeder_combout\);

-- Location: LCCOMB_X59_Y39_N0
\instr_cache|tag~303feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~303feeder_combout\ = \instr_cache|cpu_addr_reg\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(18),
	combout => \instr_cache|tag~303feeder_combout\);

-- Location: LCCOMB_X59_Y39_N26
\instr_cache|tag~95feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~95feeder_combout\ = \instr_cache|cpu_addr_reg\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(18),
	combout => \instr_cache|tag~95feeder_combout\);

-- Location: LCCOMB_X57_Y37_N8
\instr_cache|tag~251feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~251feeder_combout\ = \instr_cache|cpu_addr_reg\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(18),
	combout => \instr_cache|tag~251feeder_combout\);

-- Location: LCCOMB_X57_Y37_N6
\instr_cache|tag~355feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~355feeder_combout\ = \instr_cache|cpu_addr_reg\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(18),
	combout => \instr_cache|tag~355feeder_combout\);

-- Location: LCCOMB_X57_Y38_N10
\instr_cache|tag~173feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~173feeder_combout\ = \instr_cache|cpu_addr_reg\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(18),
	combout => \instr_cache|tag~173feeder_combout\);

-- Location: LCCOMB_X58_Y36_N26
\instr_cache|tag~381feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~381feeder_combout\ = \instr_cache|cpu_addr_reg\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(18),
	combout => \instr_cache|tag~381feeder_combout\);

-- Location: LCCOMB_X57_Y39_N16
\instr_cache|tag~199feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~199feeder_combout\ = \instr_cache|cpu_addr_reg\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(18),
	combout => \instr_cache|tag~199feeder_combout\);

-- Location: LCCOMB_X57_Y38_N8
\instr_cache|tag~174feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~174feeder_combout\ = \instr_cache|cpu_addr_reg\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(19),
	combout => \instr_cache|tag~174feeder_combout\);

-- Location: LCCOMB_X59_Y35_N2
\instr_cache|tag~408feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~408feeder_combout\ = \instr_cache|cpu_addr_reg\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(19),
	combout => \instr_cache|tag~408feeder_combout\);

-- Location: LCCOMB_X59_Y35_N20
\instr_cache|tag~200feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~200feeder_combout\ = \instr_cache|cpu_addr_reg\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(19),
	combout => \instr_cache|tag~200feeder_combout\);

-- Location: LCCOMB_X58_Y35_N26
\instr_cache|tag~356feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~356feeder_combout\ = \instr_cache|cpu_addr_reg\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(19),
	combout => \instr_cache|tag~356feeder_combout\);

-- Location: LCCOMB_X60_Y35_N6
\instr_cache|tag~227feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~227feeder_combout\ = \instr_cache|cpu_addr_reg\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(20),
	combout => \instr_cache|tag~227feeder_combout\);

-- Location: LCCOMB_X60_Y36_N2
\instr_cache|tag~331feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~331feeder_combout\ = \instr_cache|cpu_addr_reg\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(20),
	combout => \instr_cache|tag~331feeder_combout\);

-- Location: LCCOMB_X57_Y39_N14
\instr_cache|tag~71feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~71feeder_combout\ = \instr_cache|cpu_addr_reg\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(20),
	combout => \instr_cache|tag~71feeder_combout\);

-- Location: LCCOMB_X57_Y39_N4
\instr_cache|tag~201feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~201feeder_combout\ = \instr_cache|cpu_addr_reg\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(20),
	combout => \instr_cache|tag~201feeder_combout\);

-- Location: LCCOMB_X58_Y39_N8
\instr_cache|tag~409feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~409feeder_combout\ = \instr_cache|cpu_addr_reg\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(20),
	combout => \instr_cache|tag~409feeder_combout\);

-- Location: LCCOMB_X62_Y35_N20
\instr_cache|tag~435feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~435feeder_combout\ = \instr_cache|cpu_addr_reg\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(20),
	combout => \instr_cache|tag~435feeder_combout\);

-- Location: LCCOMB_X59_Y36_N22
\instr_cache|tag~253feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~253feeder_combout\ = \instr_cache|cpu_addr_reg\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(20),
	combout => \instr_cache|tag~253feeder_combout\);

-- Location: LCCOMB_X57_Y33_N12
\instr_cache|tag~281feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~281feeder_combout\ = \instr_cache|cpu_addr_reg\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(22),
	combout => \instr_cache|tag~281feeder_combout\);

-- Location: LCCOMB_X56_Y35_N12
\instr_cache|tag~100feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~100feeder_combout\ = \instr_cache|cpu_addr_reg\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(23),
	combout => \instr_cache|tag~100feeder_combout\);

-- Location: LCCOMB_X59_Y35_N14
\instr_cache|tag~412feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~412feeder_combout\ = \instr_cache|cpu_addr_reg\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(23),
	combout => \instr_cache|tag~412feeder_combout\);

-- Location: LCCOMB_X59_Y37_N14
\instr_cache|tag~282feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~282feeder_combout\ = \instr_cache|cpu_addr_reg\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(23),
	combout => \instr_cache|tag~282feeder_combout\);

-- Location: LCCOMB_X57_Y39_N0
\instr_cache|tag~205feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~205feeder_combout\ = \instr_cache|cpu_addr_reg\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(24),
	combout => \instr_cache|tag~205feeder_combout\);

-- Location: LCCOMB_X58_Y35_N16
\instr_cache|tag~414feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~414feeder_combout\ = \instr_cache|cpu_addr_reg\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(25),
	combout => \instr_cache|tag~414feeder_combout\);

-- Location: LCCOMB_X60_Y39_N26
\instr_cache|tag~284feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~284feeder_combout\ = \instr_cache|cpu_addr_reg\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(25),
	combout => \instr_cache|tag~284feeder_combout\);

-- Location: LCCOMB_X60_Y39_N20
\instr_cache|tag~76feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~76feeder_combout\ = \instr_cache|cpu_addr_reg\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(25),
	combout => \instr_cache|tag~76feeder_combout\);

-- Location: LCCOMB_X57_Y37_N2
\instr_cache|tag~259feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~259feeder_combout\ = \instr_cache|cpu_addr_reg\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(26),
	combout => \instr_cache|tag~259feeder_combout\);

-- Location: LCCOMB_X59_Y40_N12
\instr_cache|tag~233feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~233feeder_combout\ = \instr_cache|cpu_addr_reg\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(26),
	combout => \instr_cache|tag~233feeder_combout\);

-- Location: LCCOMB_X59_Y40_N22
\instr_cache|tag~441feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~441feeder_combout\ = \instr_cache|cpu_addr_reg\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(26),
	combout => \instr_cache|tag~441feeder_combout\);

-- Location: LCCOMB_X61_Y37_N12
\instr_cache|tag~156feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~156feeder_combout\ = \instr_cache|cpu_addr_reg\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(27),
	combout => \instr_cache|tag~156feeder_combout\);

-- Location: LCCOMB_X56_Y35_N16
\instr_cache|tag~105feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~105feeder_combout\ = \instr_cache|cpu_addr_reg\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(28),
	combout => \instr_cache|tag~105feeder_combout\);

-- Location: LCCOMB_X57_Y35_N2
\instr_cache|tag~184feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~184feeder_combout\ = \instr_cache|cpu_addr_reg\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(29),
	combout => \instr_cache|tag~184feeder_combout\);

-- Location: LCCOMB_X59_Y37_N6
\instr_cache|tag~288feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~288feeder_combout\ = \instr_cache|cpu_addr_reg\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(29),
	combout => \instr_cache|tag~288feeder_combout\);

-- Location: LCCOMB_X61_Y35_N18
\instr_cache|tag~55feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~55feeder_combout\ = \instr_cache|cpu_addr_reg\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(30),
	combout => \instr_cache|tag~55feeder_combout\);

-- Location: LCCOMB_X61_Y35_N28
\instr_cache|tag~133feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~133feeder_combout\ = \instr_cache|cpu_addr_reg\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(30),
	combout => \instr_cache|tag~133feeder_combout\);

-- Location: LCCOMB_X59_Y34_N22
\instr_cache|tag~211feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~211feeder_combout\ = \instr_cache|cpu_addr_reg\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(30),
	combout => \instr_cache|tag~211feeder_combout\);

-- Location: LCCOMB_X60_Y36_N14
\instr_cache|tag~263feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~263feeder_combout\ = \instr_cache|cpu_addr_reg\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(30),
	combout => \instr_cache|tag~263feeder_combout\);

-- Location: LCCOMB_X58_Y37_N26
\instr_cache|tag~341feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~341feeder_combout\ = \instr_cache|cpu_addr_reg\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(30),
	combout => \instr_cache|tag~341feeder_combout\);

-- Location: LCCOMB_X59_Y33_N30
\instr_cache|tag~420feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~420feeder_combout\ = \instr_cache|cpu_addr_reg\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(31),
	combout => \instr_cache|tag~420feeder_combout\);

-- Location: LCCOMB_X59_Y33_N16
\instr_cache|tag~368feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~368feeder_combout\ = \instr_cache|cpu_addr_reg\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(31),
	combout => \instr_cache|tag~368feeder_combout\);

-- Location: LCCOMB_X57_Y37_N22
\instr_cache|tag~264feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~264feeder_combout\ = \instr_cache|cpu_addr_reg\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(31),
	combout => \instr_cache|tag~264feeder_combout\);

-- Location: LCCOMB_X61_Y40_N10
\instr_cache|tag~160feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~160feeder_combout\ = \instr_cache|cpu_addr_reg\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(31),
	combout => \instr_cache|tag~160feeder_combout\);

-- Location: LCCOMB_X61_Y40_N28
\instr_cache|valid[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|valid[8]~feeder_combout\ = \instr_cache|valid[8]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|valid[8]~6_combout\,
	combout => \instr_cache|valid[8]~feeder_combout\);

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[0]~0_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(0),
	combout => \mem_data[0]~0\);

-- Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[1]~1_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(1),
	combout => \mem_data[1]~1\);

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[2]~2_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(2),
	combout => \mem_data[2]~2\);

-- Location: PIN_G29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[3]~3_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(3),
	combout => \mem_data[3]~3\);

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[4]~4_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(4),
	combout => \mem_data[4]~4\);

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[5]~5_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(5),
	combout => \mem_data[5]~5\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[6]~6_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(6),
	combout => \mem_data[6]~6\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[7]~7_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(7),
	combout => \mem_data[7]~7\);

-- Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[8]~8_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(8),
	combout => \mem_data[8]~8\);

-- Location: PIN_P27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[9]~9_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(9),
	combout => \mem_data[9]~9\);

-- Location: PIN_N29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[10]~10_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(10),
	combout => \mem_data[10]~10\);

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[11]~11_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(11),
	combout => \mem_data[11]~11\);

-- Location: PIN_K27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[12]~12_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(12),
	combout => \mem_data[12]~12\);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[13]~13_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(13),
	combout => \mem_data[13]~13\);

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[14]~14_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(14),
	combout => \mem_data[14]~14\);

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[15]~15_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(15),
	combout => \mem_data[15]~15\);

-- Location: PIN_P28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[16]~16_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(16),
	combout => \mem_data[16]~16\);

-- Location: PIN_M28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[17]~17_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(17),
	combout => \mem_data[17]~17\);

-- Location: PIN_L30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[18]~18_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(18),
	combout => \mem_data[18]~18\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[19]~19_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(19),
	combout => \mem_data[19]~19\);

-- Location: PIN_N28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[20]~20_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(20),
	combout => \mem_data[20]~20\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[21]~21_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(21),
	combout => \mem_data[21]~21\);

-- Location: PIN_L29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[22]~22_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(22),
	combout => \mem_data[22]~22\);

-- Location: PIN_L28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[23]~23_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(23),
	combout => \mem_data[23]~23\);

-- Location: PIN_M29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[24]~24_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(24),
	combout => \mem_data[24]~24\);

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[25]~25_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(25),
	combout => \mem_data[25]~25\);

-- Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[26]~26_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(26),
	combout => \mem_data[26]~26\);

-- Location: PIN_J30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[27]~27_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(27),
	combout => \mem_data[27]~27\);

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[28]~28_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(28),
	combout => \mem_data[28]~28\);

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[29]~29_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(29),
	combout => \mem_data[29]~29\);

-- Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[30]~30_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(30),
	combout => \mem_data[30]~30\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_data[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|data|data_out[31]~31_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => mem_data(31),
	combout => \mem_data[31]~31\);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X63_Y34_N10
\instr_cache|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector0~0_combout\ = (\instr_cache|Add2~0_combout\ & (\instr_cache|words_counter[0]~0_combout\ & ((\instr_cache|Selector143~1_combout\) # (!\instr_cache|current_state.READ_MEM_STATE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Add2~0_combout\,
	datab => \instr_cache|words_counter[0]~0_combout\,
	datac => \instr_cache|Selector143~1_combout\,
	datad => \instr_cache|current_state.READ_MEM_STATE~regout\,
	combout => \instr_cache|Selector0~0_combout\);

-- Location: LCCOMB_X61_Y38_N4
\instr_cache|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector21~0_combout\ = (\instr_cache|current_state.READ_MEM_STATE~regout\) # ((\instr_cache|Selector19~0_combout\ & !\instr_cache|mem_wait_for\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Selector19~0_combout\,
	datac => \instr_cache|mem_wait_for\(0),
	datad => \instr_cache|current_state.READ_MEM_STATE~regout\,
	combout => \instr_cache|Selector21~0_combout\);

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCCOMB_X61_Y38_N20
\instr_cache|mem_wait_for[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|mem_wait_for[3]~0_combout\ = (!\reset~combout\ & ((\instr_cache|current_state.READ_MEM_STATE~regout\ & ((!\instr_cache|Selector143~1_combout\))) # (!\instr_cache|current_state.READ_MEM_STATE~regout\ & 
-- (\instr_cache|current_state.WAITING_STATE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.READ_MEM_STATE~regout\,
	datab => \reset~combout\,
	datac => \instr_cache|current_state.WAITING_STATE~regout\,
	datad => \instr_cache|Selector143~1_combout\,
	combout => \instr_cache|mem_wait_for[3]~0_combout\);

-- Location: LCFF_X61_Y38_N5
\instr_cache|mem_wait_for[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|Selector21~0_combout\,
	ena => \instr_cache|mem_wait_for[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|mem_wait_for\(0));

-- Location: LCCOMB_X61_Y38_N14
\instr_cache|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Add1~1_combout\ = \instr_cache|mem_wait_for\(2) $ (((\instr_cache|mem_wait_for\(1)) # (\instr_cache|mem_wait_for\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|mem_wait_for\(1),
	datac => \instr_cache|mem_wait_for\(0),
	datad => \instr_cache|mem_wait_for\(2),
	combout => \instr_cache|Add1~1_combout\);

-- Location: LCCOMB_X61_Y38_N0
\instr_cache|Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector19~1_combout\ = (\instr_cache|current_state.READ_MEM_STATE~regout\) # ((\instr_cache|Selector19~0_combout\ & !\instr_cache|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Selector19~0_combout\,
	datac => \instr_cache|Add1~1_combout\,
	datad => \instr_cache|current_state.READ_MEM_STATE~regout\,
	combout => \instr_cache|Selector19~1_combout\);

-- Location: LCFF_X61_Y38_N1
\instr_cache|mem_wait_for[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|Selector19~1_combout\,
	ena => \instr_cache|mem_wait_for[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|mem_wait_for\(2));

-- Location: LCCOMB_X61_Y38_N26
\instr_cache|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Add1~0_combout\ = \instr_cache|mem_wait_for\(3) $ (((\instr_cache|mem_wait_for\(1)) # ((\instr_cache|mem_wait_for\(2)) # (\instr_cache|mem_wait_for\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|mem_wait_for\(1),
	datab => \instr_cache|mem_wait_for\(2),
	datac => \instr_cache|mem_wait_for\(0),
	datad => \instr_cache|mem_wait_for\(3),
	combout => \instr_cache|Add1~0_combout\);

-- Location: LCCOMB_X61_Y38_N12
\instr_cache|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector19~0_combout\ = (\instr_cache|current_state.WAITING_STATE~regout\ & (((\instr_cache|current_state.READ_MEM_STATE~regout\ & \instr_cache|Selector144~0_combout\)) # (!\instr_cache|Selector145~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.READ_MEM_STATE~regout\,
	datab => \instr_cache|Selector145~0_combout\,
	datac => \instr_cache|current_state.WAITING_STATE~regout\,
	datad => \instr_cache|Selector144~0_combout\,
	combout => \instr_cache|Selector19~0_combout\);

-- Location: LCCOMB_X61_Y38_N2
\instr_cache|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector18~0_combout\ = (!\instr_cache|Add1~0_combout\ & \instr_cache|Selector19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|Add1~0_combout\,
	datad => \instr_cache|Selector19~0_combout\,
	combout => \instr_cache|Selector18~0_combout\);

-- Location: LCFF_X61_Y38_N3
\instr_cache|mem_wait_for[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|Selector18~0_combout\,
	ena => \instr_cache|mem_wait_for[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|mem_wait_for\(3));

-- Location: LCCOMB_X61_Y38_N22
\instr_cache|Selector145~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector145~0_combout\ = (!\instr_cache|mem_wait_for\(1) & (!\instr_cache|mem_wait_for\(2) & (!\instr_cache|mem_wait_for\(0) & !\instr_cache|mem_wait_for\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|mem_wait_for\(1),
	datab => \instr_cache|mem_wait_for\(2),
	datac => \instr_cache|mem_wait_for\(0),
	datad => \instr_cache|mem_wait_for\(3),
	combout => \instr_cache|Selector145~0_combout\);

-- Location: LCCOMB_X61_Y38_N8
\instr_cache|Selector144~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector144~1_combout\ = (\instr_cache|current_state.READ_MEM_STATE~regout\ & ((\instr_cache|Selector144~0_combout\) # ((!\instr_cache|Selector145~0_combout\ & \instr_cache|current_state.WAITING_STATE~regout\)))) # 
-- (!\instr_cache|current_state.READ_MEM_STATE~regout\ & (!\instr_cache|Selector145~0_combout\ & (\instr_cache|current_state.WAITING_STATE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.READ_MEM_STATE~regout\,
	datab => \instr_cache|Selector145~0_combout\,
	datac => \instr_cache|current_state.WAITING_STATE~regout\,
	datad => \instr_cache|Selector144~0_combout\,
	combout => \instr_cache|Selector144~1_combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X61_Y38_N9
\instr_cache|current_state.WAITING_STATE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|Selector144~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|current_state.WAITING_STATE~regout\);

-- Location: LCCOMB_X61_Y38_N30
\instr_cache|Selector145~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector145~1_combout\ = (\instr_cache|Selector144~0_combout\ & (\instr_cache|current_state.WAITING_STATE~regout\ & ((\instr_cache|Selector145~0_combout\)))) # (!\instr_cache|Selector144~0_combout\ & 
-- ((\instr_cache|current_state.READ_DBUS_STATE~regout\) # ((\instr_cache|current_state.WAITING_STATE~regout\ & \instr_cache|Selector145~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Selector144~0_combout\,
	datab => \instr_cache|current_state.WAITING_STATE~regout\,
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \instr_cache|Selector145~0_combout\,
	combout => \instr_cache|Selector145~1_combout\);

-- Location: LCFF_X61_Y38_N31
\instr_cache|current_state.READ_DBUS_STATE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|Selector145~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|current_state.READ_DBUS_STATE~regout\);

-- Location: LCCOMB_X63_Y36_N2
\instr_cache|next_state.EXECUTE_STATE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|next_state.EXECUTE_STATE~0_combout\ = (\instr_cache|words_counter\(0) & (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \instr_cache|words_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|words_counter\(0),
	datab => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \instr_cache|words_counter\(1),
	combout => \instr_cache|next_state.EXECUTE_STATE~0_combout\);

-- Location: LCFF_X63_Y34_N5
\instr_cache|current_state.EXECUTE_STATE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|current_state.EXECUTE_STATE~regout\);

-- Location: LCCOMB_X61_Y34_N10
\instr_cache|words_counter[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|words_counter[1]~1_combout\ = (!\instr_cache|current_state.STOPED_STATE~regout\ & (!\instr_cache|current_state.EXECUTE_STATE~regout\ & !\reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.STOPED_STATE~regout\,
	datab => \instr_cache|current_state.EXECUTE_STATE~regout\,
	datad => \reset~combout\,
	combout => \instr_cache|words_counter[1]~1_combout\);

-- Location: LCFF_X63_Y34_N11
\instr_cache|words_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|Selector0~0_combout\,
	ena => \instr_cache|words_counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|words_counter\(1));

-- Location: LCCOMB_X63_Y36_N0
\instr_cache|Selector144~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector144~0_combout\ = (\instr_cache|words_counter\(0) & \instr_cache|words_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|words_counter\(0),
	datad => \instr_cache|words_counter\(1),
	combout => \instr_cache|Selector144~0_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ack~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ack,
	combout => \ack~combout\);

-- Location: LCCOMB_X61_Y38_N16
\instr_cache|Selector143~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector143~0_combout\ = (\instr_cache|current_state.ACK_WAIT_RM~regout\ & ((\ack~combout\) # ((!\instr_cache|Selector144~0_combout\ & \instr_cache|current_state.READ_MEM_STATE~regout\)))) # (!\instr_cache|current_state.ACK_WAIT_RM~regout\ & 
-- (!\instr_cache|Selector144~0_combout\ & ((\instr_cache|current_state.READ_MEM_STATE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.ACK_WAIT_RM~regout\,
	datab => \instr_cache|Selector144~0_combout\,
	datac => \ack~combout\,
	datad => \instr_cache|current_state.READ_MEM_STATE~regout\,
	combout => \instr_cache|Selector143~0_combout\);

-- Location: PIN_A25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(14),
	combout => \pc~combout\(14));

-- Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\stop~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_stop,
	combout => \stop~combout\);

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\stall~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_stall,
	combout => \stall~combout\);

-- Location: LCCOMB_X61_Y38_N10
\instr_cache|Selector153~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector153~0_combout\ = (\instr_cache|current_state.WAITING_STATE~regout\) # ((\instr_cache|current_state.READ_MEM_STATE~regout\) # (\instr_cache|current_state.READ_DBUS_STATE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|current_state.WAITING_STATE~regout\,
	datac => \instr_cache|current_state.READ_MEM_STATE~regout\,
	datad => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	combout => \instr_cache|Selector153~0_combout\);

-- Location: LCCOMB_X62_Y34_N20
\instr_cache|Selector142~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector142~1_combout\ = (!\instr_cache|current_state.EXECUTE_STATE~regout\ & ((\instr_cache|Selector142~0_combout\) # ((\instr_cache|req~0_combout\ & \instr_cache|process_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Selector142~0_combout\,
	datab => \instr_cache|current_state.EXECUTE_STATE~regout\,
	datac => \instr_cache|req~0_combout\,
	datad => \instr_cache|process_1~8_combout\,
	combout => \instr_cache|Selector142~1_combout\);

-- Location: LCFF_X62_Y34_N21
\instr_cache|current_state.IDLE_STATE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|Selector142~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|current_state.IDLE_STATE~regout\);

-- Location: LCCOMB_X62_Y34_N4
\instr_cache|cpu_rd_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_rd_reg~0_combout\ = (\instr_cache|req~0_combout\ & (!\instr_cache|current_state.IDLE_STATE~regout\ & !\stop~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|req~0_combout\,
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \stop~combout\,
	combout => \instr_cache|cpu_rd_reg~0_combout\);

-- Location: LCCOMB_X61_Y38_N28
\instr_cache|Selector153~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector153~1_combout\ = (\instr_cache|Selector153~0_combout\) # ((\ack~combout\ & (\instr_cache|process_1~8_combout\ & \instr_cache|cpu_rd_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack~combout\,
	datab => \instr_cache|Selector153~0_combout\,
	datac => \instr_cache|process_1~8_combout\,
	datad => \instr_cache|cpu_rd_reg~0_combout\,
	combout => \instr_cache|Selector153~1_combout\);

-- Location: LCFF_X61_Y38_N29
\instr_cache|wait_mem\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|Selector153~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|wait_mem~regout\);

-- Location: LCCOMB_X60_Y38_N28
\instr_cache|req~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|req~0_combout\ = (!\pc_mod~combout\ & (!\stall~combout\ & (!\reset~combout\ & !\instr_cache|wait_mem~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_mod~combout\,
	datab => \stall~combout\,
	datac => \reset~combout\,
	datad => \instr_cache|wait_mem~regout\,
	combout => \instr_cache|req~0_combout\);

-- Location: LCCOMB_X61_Y34_N30
\cache_addr[31]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cache_addr[31]~0_combout\ = (\brnch~combout\ & (!\stop~combout\ & \instr_cache|req~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datab => \stop~combout\,
	datac => \instr_cache|req~0_combout\,
	combout => \cache_addr[31]~0_combout\);

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(4),
	combout => \pc~combout\(4));

-- Location: LCCOMB_X60_Y38_N14
\cache_addr[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cache_addr[4]~1_combout\ = (\stop~combout\ & ((\pc~combout\(4)))) # (!\stop~combout\ & (\jmp_addr~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(4),
	datab => \stop~combout\,
	datad => \pc~combout\(4),
	combout => \cache_addr[4]~1_combout\);

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\brnch~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_brnch,
	combout => \brnch~combout\);

-- Location: LCCOMB_X60_Y38_N0
\cache_addr[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cache_addr[4]~2_combout\ = (\brnch~combout\ & ((\instr_cache|req~0_combout\ & ((\cache_addr[4]~1_combout\))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(4))))) # (!\brnch~combout\ & (\pc~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(4),
	datab => \cache_addr[4]~1_combout\,
	datac => \brnch~combout\,
	datad => \instr_cache|req~0_combout\,
	combout => \cache_addr[4]~2_combout\);

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(14),
	combout => \jmp_addr~combout\(14));

-- Location: LCCOMB_X63_Y35_N6
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(14)))) # (!\brnch~combout\ & (\pc~combout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datac => \pc~combout\(14),
	datad => \jmp_addr~combout\(14),
	combout => \Add0~56_combout\);

-- Location: LCFF_X63_Y35_N7
\instr_cache|cpu_addr_reg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~56_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(14));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(3),
	combout => \pc~combout\(3));

-- Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(3),
	combout => \jmp_addr~combout\(3));

-- Location: LCCOMB_X61_Y34_N24
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(3)))) # (!\brnch~combout\ & (\pc~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datac => \pc~combout\(3),
	datad => \jmp_addr~combout\(3),
	combout => \Add0~12_combout\);

-- Location: LCFF_X61_Y34_N25
\instr_cache|cpu_addr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~12_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(3));

-- Location: PIN_T29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(2),
	combout => \pc~combout\(2));

-- Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(2),
	combout => \jmp_addr~combout\(2));

-- Location: LCCOMB_X61_Y34_N20
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(2)))) # (!\brnch~combout\ & (\pc~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datab => \pc~combout\(2),
	datad => \jmp_addr~combout\(2),
	combout => \Add0~8_combout\);

-- Location: LCFF_X61_Y34_N23
\instr_cache|cpu_addr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~8_combout\,
	sload => VCC,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(2));

-- Location: PIN_C26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(4),
	combout => \jmp_addr~combout\(4));

-- Location: LCCOMB_X61_Y34_N4
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(4)))) # (!\brnch~combout\ & (\pc~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datab => \pc~combout\(4),
	datac => \jmp_addr~combout\(4),
	combout => \Add0~16_combout\);

-- Location: LCFF_X61_Y34_N5
\instr_cache|cpu_addr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~16_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(4));

-- Location: LCCOMB_X62_Y39_N14
\instr_cache|tag~710\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~710_combout\ = (!\instr_cache|cpu_addr_reg\(5) & (\instr_cache|cpu_addr_reg\(3) & (!\instr_cache|cpu_addr_reg\(2) & \instr_cache|cpu_addr_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(5),
	datab => \instr_cache|cpu_addr_reg\(3),
	datac => \instr_cache|cpu_addr_reg\(2),
	datad => \instr_cache|cpu_addr_reg\(4),
	combout => \instr_cache|tag~710_combout\);

-- Location: LCCOMB_X62_Y39_N12
\instr_cache|tag~711\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~711_combout\ = (!\reset~combout\ & (\instr_cache|tag~710_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|tag~710_combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~711_combout\);

-- Location: LCFF_X62_Y38_N27
\instr_cache|tag~195\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(14),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~195_regout\);

-- Location: LCCOMB_X62_Y39_N30
\instr_cache|tag~714\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~714_combout\ = (!\instr_cache|cpu_addr_reg\(5) & (\instr_cache|cpu_addr_reg\(3) & (!\instr_cache|cpu_addr_reg\(2) & !\instr_cache|cpu_addr_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(5),
	datab => \instr_cache|cpu_addr_reg\(3),
	datac => \instr_cache|cpu_addr_reg\(2),
	datad => \instr_cache|cpu_addr_reg\(4),
	combout => \instr_cache|tag~714_combout\);

-- Location: LCCOMB_X62_Y39_N28
\instr_cache|tag~715\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~715_combout\ = (!\reset~combout\ & (\instr_cache|tag~714_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|tag~714_combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~715_combout\);

-- Location: LCFF_X59_Y38_N25
\instr_cache|tag~91\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(14),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~91_regout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(5),
	combout => \pc~combout\(5));

-- Location: LCCOMB_X60_Y38_N10
\cache_addr[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cache_addr[5]~6_combout\ = (\brnch~combout\ & ((\instr_cache|req~0_combout\ & (\cache_addr[5]~5_combout\)) # (!\instr_cache|req~0_combout\ & ((\pc~combout\(5)))))) # (!\brnch~combout\ & (((\pc~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~5_combout\,
	datab => \brnch~combout\,
	datac => \pc~combout\(5),
	datad => \instr_cache|req~0_combout\,
	combout => \cache_addr[5]~6_combout\);

-- Location: LCCOMB_X59_Y38_N24
\instr_cache|tag~530\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~530_combout\ = (\cache_addr[4]~2_combout\ & (((\cache_addr[5]~6_combout\)))) # (!\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\ & (\instr_cache|tag~299_regout\)) # (!\cache_addr[5]~6_combout\ & ((\instr_cache|tag~91_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~299_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~91_regout\,
	datad => \cache_addr[5]~6_combout\,
	combout => \instr_cache|tag~530_combout\);

-- Location: LCCOMB_X62_Y38_N26
\instr_cache|tag~531\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~531_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~530_combout\ & (\instr_cache|tag~403_regout\)) # (!\instr_cache|tag~530_combout\ & ((\instr_cache|tag~195_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~530_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~403_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~195_regout\,
	datad => \instr_cache|tag~530_combout\,
	combout => \instr_cache|tag~531_combout\);

-- Location: LCCOMB_X60_Y37_N2
\instr_cache|tag~429feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~429feeder_combout\ = \instr_cache|cpu_addr_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(14),
	combout => \instr_cache|tag~429feeder_combout\);

-- Location: LCCOMB_X60_Y37_N8
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\brnch~combout\ & (\jmp_addr~combout\(5))) # (!\brnch~combout\ & ((\pc~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(5),
	datab => \brnch~combout\,
	datad => \pc~combout\(5),
	combout => \Add0~20_combout\);

-- Location: LCFF_X62_Y33_N31
\instr_cache|cpu_addr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~20_combout\,
	sload => VCC,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(5));

-- Location: LCCOMB_X62_Y39_N22
\instr_cache|tag~740\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~740_combout\ = (\instr_cache|cpu_addr_reg\(3) & (\instr_cache|cpu_addr_reg\(4) & (\instr_cache|cpu_addr_reg\(5) & \instr_cache|cpu_addr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(3),
	datab => \instr_cache|cpu_addr_reg\(4),
	datac => \instr_cache|cpu_addr_reg\(5),
	datad => \instr_cache|cpu_addr_reg\(2),
	combout => \instr_cache|tag~740_combout\);

-- Location: LCCOMB_X62_Y39_N6
\instr_cache|tag~741\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~741_combout\ = (!\reset~combout\ & (\instr_cache|tag~740_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|tag~740_combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~741_combout\);

-- Location: LCFF_X60_Y37_N3
\instr_cache|tag~429\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~429feeder_combout\,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~429_regout\);

-- Location: LCCOMB_X62_Y39_N24
\instr_cache|tag~734\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~734_combout\ = (\instr_cache|cpu_addr_reg\(5) & (\instr_cache|cpu_addr_reg\(3) & (\instr_cache|cpu_addr_reg\(2) & !\instr_cache|cpu_addr_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(5),
	datab => \instr_cache|cpu_addr_reg\(3),
	datac => \instr_cache|cpu_addr_reg\(2),
	datad => \instr_cache|cpu_addr_reg\(4),
	combout => \instr_cache|tag~734_combout\);

-- Location: LCCOMB_X62_Y40_N0
\instr_cache|tag~735\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~735_combout\ = (\instr_cache|tag~734_combout\ & (!\reset~combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|tag~734_combout\,
	datac => \reset~combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~735_combout\);

-- Location: LCFF_X59_Y36_N21
\instr_cache|tag~325\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(14),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~325_regout\);

-- Location: LCCOMB_X62_Y40_N16
\instr_cache|tag~739\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~739_combout\ = (\instr_cache|tag~738_combout\ & (!\reset~combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~738_combout\,
	datac => \reset~combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~739_combout\);

-- Location: LCFF_X59_Y38_N15
\instr_cache|tag~117\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(14),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~117_regout\);

-- Location: LCCOMB_X59_Y36_N10
\instr_cache|tag~537\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~537_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~221_regout\)) # (!\cache_addr[4]~2_combout\ & ((\instr_cache|tag~117_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~221_regout\,
	datab => \instr_cache|tag~117_regout\,
	datac => \cache_addr[5]~6_combout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~537_combout\);

-- Location: LCCOMB_X59_Y36_N20
\instr_cache|tag~538\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~538_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~537_combout\ & (\instr_cache|tag~429_regout\)) # (!\instr_cache|tag~537_combout\ & ((\instr_cache|tag~325_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~537_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~429_regout\,
	datac => \instr_cache|tag~325_regout\,
	datad => \instr_cache|tag~537_combout\,
	combout => \instr_cache|tag~538_combout\);

-- Location: LCCOMB_X61_Y34_N8
\cache_addr[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cache_addr[3]~3_combout\ = (\stop~combout\ & (\pc~combout\(3))) # (!\stop~combout\ & ((\jmp_addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stop~combout\,
	datac => \pc~combout\(3),
	datad => \jmp_addr~combout\(3),
	combout => \cache_addr[3]~3_combout\);

-- Location: LCCOMB_X60_Y38_N16
\cache_addr[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cache_addr[3]~4_combout\ = (\brnch~combout\ & ((\instr_cache|req~0_combout\ & ((\cache_addr[3]~3_combout\))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(3))))) # (!\brnch~combout\ & (\pc~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datab => \pc~combout\(3),
	datac => \cache_addr[3]~3_combout\,
	datad => \instr_cache|req~0_combout\,
	combout => \cache_addr[3]~4_combout\);

-- Location: LCCOMB_X63_Y38_N18
\instr_cache|tag~732\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~732_combout\ = (!\instr_cache|cpu_addr_reg\(3) & (!\instr_cache|cpu_addr_reg\(2) & (\instr_cache|cpu_addr_reg\(4) & \instr_cache|cpu_addr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(3),
	datab => \instr_cache|cpu_addr_reg\(2),
	datac => \instr_cache|cpu_addr_reg\(4),
	datad => \instr_cache|cpu_addr_reg\(5),
	combout => \instr_cache|tag~732_combout\);

-- Location: LCCOMB_X63_Y38_N20
\instr_cache|tag~733\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~733_combout\ = (\instr_cache|tag~732_combout\ & (!\reset~combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|tag~732_combout\,
	datac => \reset~combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~733_combout\);

-- Location: LCFF_X62_Y36_N9
\instr_cache|tag~351\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(14),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~351_regout\);

-- Location: LCCOMB_X63_Y38_N14
\instr_cache|tag~728\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~728_combout\ = (!\instr_cache|cpu_addr_reg\(3) & (!\instr_cache|cpu_addr_reg\(2) & (!\instr_cache|cpu_addr_reg\(4) & \instr_cache|cpu_addr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(3),
	datab => \instr_cache|cpu_addr_reg\(2),
	datac => \instr_cache|cpu_addr_reg\(4),
	datad => \instr_cache|cpu_addr_reg\(5),
	combout => \instr_cache|tag~728_combout\);

-- Location: LCCOMB_X63_Y38_N10
\instr_cache|tag~729\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~729_combout\ = (!\reset~combout\ & (\instr_cache|tag~728_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|tag~728_combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~729_combout\);

-- Location: LCFF_X62_Y36_N23
\instr_cache|tag~247\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(14),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~247_regout\);

-- Location: LCCOMB_X63_Y39_N6
\instr_cache|tag~39feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~39feeder_combout\ = \instr_cache|cpu_addr_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(14),
	combout => \instr_cache|tag~39feeder_combout\);

-- Location: LCCOMB_X63_Y38_N0
\instr_cache|tag~730\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~730_combout\ = (!\instr_cache|cpu_addr_reg\(3) & (!\instr_cache|cpu_addr_reg\(2) & (!\instr_cache|cpu_addr_reg\(4) & !\instr_cache|cpu_addr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(3),
	datab => \instr_cache|cpu_addr_reg\(2),
	datac => \instr_cache|cpu_addr_reg\(4),
	datad => \instr_cache|cpu_addr_reg\(5),
	combout => \instr_cache|tag~730_combout\);

-- Location: LCCOMB_X63_Y38_N16
\instr_cache|tag~731\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~731_combout\ = (!\reset~combout\ & (\instr_cache|tag~730_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|tag~730_combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~731_combout\);

-- Location: LCFF_X63_Y39_N7
\instr_cache|tag~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~39feeder_combout\,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~39_regout\);

-- Location: LCCOMB_X62_Y36_N22
\instr_cache|tag~534\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~534_combout\ = (\cache_addr[4]~2_combout\ & (\cache_addr[5]~6_combout\)) # (!\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\ & (\instr_cache|tag~247_regout\)) # (!\cache_addr[5]~6_combout\ & ((\instr_cache|tag~39_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~247_regout\,
	datad => \instr_cache|tag~39_regout\,
	combout => \instr_cache|tag~534_combout\);

-- Location: LCCOMB_X62_Y36_N8
\instr_cache|tag~535\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~535_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~534_combout\ & ((\instr_cache|tag~351_regout\))) # (!\instr_cache|tag~534_combout\ & (\instr_cache|tag~143_regout\)))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~534_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~143_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~351_regout\,
	datad => \instr_cache|tag~534_combout\,
	combout => \instr_cache|tag~535_combout\);

-- Location: LCCOMB_X58_Y38_N8
\instr_cache|tag~273feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~273feeder_combout\ = \instr_cache|cpu_addr_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(14),
	combout => \instr_cache|tag~273feeder_combout\);

-- Location: LCCOMB_X62_Y39_N0
\instr_cache|tag~718\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~718_combout\ = (!\instr_cache|cpu_addr_reg\(3) & (!\instr_cache|cpu_addr_reg\(4) & (\instr_cache|cpu_addr_reg\(5) & \instr_cache|cpu_addr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(3),
	datab => \instr_cache|cpu_addr_reg\(4),
	datac => \instr_cache|cpu_addr_reg\(5),
	datad => \instr_cache|cpu_addr_reg\(2),
	combout => \instr_cache|tag~718_combout\);

-- Location: LCCOMB_X62_Y39_N16
\instr_cache|tag~719\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~719_combout\ = (!\reset~combout\ & (\instr_cache|tag~718_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|tag~718_combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~719_combout\);

-- Location: LCFF_X58_Y38_N9
\instr_cache|tag~273\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~273feeder_combout\,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~273_regout\);

-- Location: LCCOMB_X63_Y38_N12
\instr_cache|tag~725\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~725_combout\ = (\instr_cache|tag~724_combout\ & (!\reset~combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~724_combout\,
	datac => \reset~combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~725_combout\);

-- Location: LCFF_X58_Y36_N29
\instr_cache|tag~377\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(14),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~377_regout\);

-- Location: LCCOMB_X63_Y38_N8
\instr_cache|tag~720\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~720_combout\ = (!\instr_cache|cpu_addr_reg\(3) & (\instr_cache|cpu_addr_reg\(2) & (\instr_cache|cpu_addr_reg\(4) & !\instr_cache|cpu_addr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(3),
	datab => \instr_cache|cpu_addr_reg\(2),
	datac => \instr_cache|cpu_addr_reg\(4),
	datad => \instr_cache|cpu_addr_reg\(5),
	combout => \instr_cache|tag~720_combout\);

-- Location: LCCOMB_X63_Y38_N6
\instr_cache|tag~721\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~721_combout\ = (!\reset~combout\ & (\instr_cache|tag~720_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|tag~720_combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~721_combout\);

-- Location: LCFF_X57_Y38_N5
\instr_cache|tag~169\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(14),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~169_regout\);

-- Location: LCCOMB_X57_Y38_N4
\instr_cache|tag~532\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~532_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & ((\instr_cache|tag~169_regout\))) # (!\cache_addr[4]~2_combout\ & (\instr_cache|tag~65_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~65_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~169_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~532_combout\);

-- Location: LCCOMB_X58_Y36_N28
\instr_cache|tag~533\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~533_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~532_combout\ & ((\instr_cache|tag~377_regout\))) # (!\instr_cache|tag~532_combout\ & (\instr_cache|tag~273_regout\)))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~532_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~273_regout\,
	datac => \instr_cache|tag~377_regout\,
	datad => \instr_cache|tag~532_combout\,
	combout => \instr_cache|tag~533_combout\);

-- Location: LCCOMB_X62_Y36_N30
\instr_cache|tag~536\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~536_combout\ = (\cache_addr[2]~8_combout\ & ((\cache_addr[3]~4_combout\) # ((\instr_cache|tag~533_combout\)))) # (!\cache_addr[2]~8_combout\ & (!\cache_addr[3]~4_combout\ & (\instr_cache|tag~535_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~535_combout\,
	datad => \instr_cache|tag~533_combout\,
	combout => \instr_cache|tag~536_combout\);

-- Location: LCCOMB_X62_Y36_N0
\instr_cache|tag~539\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~539_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~536_combout\ & ((\instr_cache|tag~538_combout\))) # (!\instr_cache|tag~536_combout\ & (\instr_cache|tag~531_combout\)))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~536_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~531_combout\,
	datac => \instr_cache|tag~538_combout\,
	datad => \instr_cache|tag~536_combout\,
	combout => \instr_cache|tag~539_combout\);

-- Location: LCCOMB_X62_Y36_N26
\instr_cache|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~7_combout\ = \instr_cache|tag~539_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(14))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(14),
	datab => \pc~combout\(14),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~539_combout\,
	combout => \instr_cache|Equal0~7_combout\);

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(15),
	combout => \pc~combout\(15));

-- Location: LCCOMB_X60_Y38_N24
\cache_addr[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cache_addr[2]~8_combout\ = (\brnch~combout\ & ((\instr_cache|req~0_combout\ & (\cache_addr[2]~7_combout\)) # (!\instr_cache|req~0_combout\ & ((\pc~combout\(2)))))) # (!\brnch~combout\ & (((\pc~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~7_combout\,
	datab => \pc~combout\(2),
	datac => \brnch~combout\,
	datad => \instr_cache|req~0_combout\,
	combout => \cache_addr[2]~8_combout\);

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(15),
	combout => \jmp_addr~combout\(15));

-- Location: LCCOMB_X63_Y35_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\brnch~combout\ & (\jmp_addr~combout\(15))) # (!\brnch~combout\ & ((\pc~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jmp_addr~combout\(15),
	datac => \pc~combout\(15),
	datad => \brnch~combout\,
	combout => \Add0~60_combout\);

-- Location: LCFF_X63_Y35_N29
\instr_cache|cpu_addr_reg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~60_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(15));

-- Location: LCFF_X58_Y36_N7
\instr_cache|tag~378\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(15),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~378_regout\);

-- Location: LCCOMB_X58_Y35_N0
\instr_cache|tag~404feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~404feeder_combout\ = \instr_cache|cpu_addr_reg\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(15),
	combout => \instr_cache|tag~404feeder_combout\);

-- Location: LCCOMB_X62_Y39_N8
\instr_cache|tag~716\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~716_combout\ = (\instr_cache|cpu_addr_reg\(5) & (\instr_cache|cpu_addr_reg\(3) & (!\instr_cache|cpu_addr_reg\(2) & \instr_cache|cpu_addr_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(5),
	datab => \instr_cache|cpu_addr_reg\(3),
	datac => \instr_cache|cpu_addr_reg\(2),
	datad => \instr_cache|cpu_addr_reg\(4),
	combout => \instr_cache|tag~716_combout\);

-- Location: LCCOMB_X62_Y39_N10
\instr_cache|tag~717\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~717_combout\ = (!\reset~combout\ & (\instr_cache|tag~716_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \instr_cache|tag~716_combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~717_combout\);

-- Location: LCFF_X58_Y35_N1
\instr_cache|tag~404\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~404feeder_combout\,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~404_regout\);

-- Location: LCCOMB_X58_Y36_N0
\instr_cache|tag~547\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~547_combout\ = (\cache_addr[3]~4_combout\ & (((\instr_cache|tag~404_regout\) # (\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (\instr_cache|tag~352_regout\ & ((!\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~352_regout\,
	datab => \instr_cache|tag~404_regout\,
	datac => \cache_addr[3]~4_combout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~547_combout\);

-- Location: LCCOMB_X58_Y36_N6
\instr_cache|tag~548\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~548_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~547_combout\ & (\instr_cache|tag~430_regout\)) # (!\instr_cache|tag~547_combout\ & ((\instr_cache|tag~378_regout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~547_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~430_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~378_regout\,
	datad => \instr_cache|tag~547_combout\,
	combout => \instr_cache|tag~548_combout\);

-- Location: LCFF_X63_Y38_N23
\instr_cache|tag~170\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(15),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~170_regout\);

-- Location: LCCOMB_X63_Y38_N2
\instr_cache|tag~736\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~736_combout\ = (\instr_cache|cpu_addr_reg\(3) & (\instr_cache|cpu_addr_reg\(2) & (\instr_cache|cpu_addr_reg\(4) & !\instr_cache|cpu_addr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(3),
	datab => \instr_cache|cpu_addr_reg\(2),
	datac => \instr_cache|cpu_addr_reg\(4),
	datad => \instr_cache|cpu_addr_reg\(5),
	combout => \instr_cache|tag~736_combout\);

-- Location: LCCOMB_X62_Y40_N18
\instr_cache|tag~737\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~737_combout\ = (\instr_cache|next_state.EXECUTE_STATE~0_combout\ & (!\reset~combout\ & \instr_cache|tag~736_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	datac => \reset~combout\,
	datad => \instr_cache|tag~736_combout\,
	combout => \instr_cache|tag~737_combout\);

-- Location: LCFF_X62_Y38_N7
\instr_cache|tag~222\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(15),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~222_regout\);

-- Location: LCCOMB_X62_Y40_N22
\instr_cache|tag~727\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~727_combout\ = (\instr_cache|tag~726_combout\ & (!\reset~combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~726_combout\,
	datac => \reset~combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~727_combout\);

-- Location: LCFF_X63_Y39_N9
\instr_cache|tag~144\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(15),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~144_regout\);

-- Location: LCFF_X62_Y38_N1
\instr_cache|tag~196\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(15),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~196_regout\);

-- Location: LCCOMB_X62_Y38_N0
\instr_cache|tag~542\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~542_combout\ = (\cache_addr[3]~4_combout\ & (((\instr_cache|tag~196_regout\) # (\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (\instr_cache|tag~144_regout\ & ((!\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~144_regout\,
	datac => \instr_cache|tag~196_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~542_combout\);

-- Location: LCCOMB_X62_Y38_N6
\instr_cache|tag~543\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~543_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~542_combout\ & ((\instr_cache|tag~222_regout\))) # (!\instr_cache|tag~542_combout\ & (\instr_cache|tag~170_regout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~542_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|tag~170_regout\,
	datac => \instr_cache|tag~222_regout\,
	datad => \instr_cache|tag~542_combout\,
	combout => \instr_cache|tag~543_combout\);

-- Location: LCFF_X62_Y39_N21
\instr_cache|tag~92\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(15),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~92_regout\);

-- Location: LCCOMB_X63_Y38_N30
\instr_cache|tag~722\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~722_combout\ = (!\instr_cache|cpu_addr_reg\(3) & (\instr_cache|cpu_addr_reg\(2) & (!\instr_cache|cpu_addr_reg\(4) & !\instr_cache|cpu_addr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(3),
	datab => \instr_cache|cpu_addr_reg\(2),
	datac => \instr_cache|cpu_addr_reg\(4),
	datad => \instr_cache|cpu_addr_reg\(5),
	combout => \instr_cache|tag~722_combout\);

-- Location: LCCOMB_X63_Y38_N22
\instr_cache|tag~723\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~723_combout\ = (!\reset~combout\ & (\instr_cache|tag~722_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|tag~722_combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~723_combout\);

-- Location: LCFF_X60_Y39_N29
\instr_cache|tag~66\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(15),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~66_regout\);

-- Location: LCCOMB_X60_Y39_N28
\instr_cache|tag~544\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~544_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & ((\instr_cache|tag~66_regout\))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|tag~40_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~40_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~66_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~544_combout\);

-- Location: LCCOMB_X62_Y39_N20
\instr_cache|tag~545\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~545_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~544_combout\ & (\instr_cache|tag~118_regout\)) # (!\instr_cache|tag~544_combout\ & ((\instr_cache|tag~92_regout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~544_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~118_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~92_regout\,
	datad => \instr_cache|tag~544_combout\,
	combout => \instr_cache|tag~545_combout\);

-- Location: LCCOMB_X62_Y36_N12
\instr_cache|tag~546\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~546_combout\ = (\cache_addr[5]~6_combout\ & (\cache_addr[4]~2_combout\)) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~543_combout\)) # (!\cache_addr[4]~2_combout\ & ((\instr_cache|tag~545_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~543_combout\,
	datad => \instr_cache|tag~545_combout\,
	combout => \instr_cache|tag~546_combout\);

-- Location: LCCOMB_X62_Y36_N10
\instr_cache|tag~549\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~549_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~546_combout\ & ((\instr_cache|tag~548_combout\))) # (!\instr_cache|tag~546_combout\ & (\instr_cache|tag~541_combout\)))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~546_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~541_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~548_combout\,
	datad => \instr_cache|tag~546_combout\,
	combout => \instr_cache|tag~549_combout\);

-- Location: LCCOMB_X62_Y36_N4
\instr_cache|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~8_combout\ = \instr_cache|tag~549_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(15))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(15),
	datab => \pc~combout\(15),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~549_combout\,
	combout => \instr_cache|Equal0~8_combout\);

-- Location: PIN_B26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(17),
	combout => \jmp_addr~combout\(17));

-- Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(17),
	combout => \pc~combout\(17));

-- Location: LCCOMB_X63_Y35_N0
\Add0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(17)))) # (!\brnch~combout\ & (\pc~combout\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datab => \pc~combout\(17),
	datad => \jmp_addr~combout\(17),
	combout => \Add0~68_combout\);

-- Location: LCFF_X63_Y35_N1
\instr_cache|cpu_addr_reg[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~68_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(17));

-- Location: LCFF_X62_Y38_N19
\instr_cache|tag~224\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(17),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~224_regout\);

-- Location: LCFF_X62_Y38_N25
\instr_cache|tag~198\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(17),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~198_regout\);

-- Location: LCFF_X63_Y38_N5
\instr_cache|tag~172\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(17),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~172_regout\);

-- Location: LCCOMB_X63_Y38_N4
\instr_cache|tag~560\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~560_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & ((\instr_cache|tag~172_regout\))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|tag~146_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~146_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~172_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~560_combout\);

-- Location: LCCOMB_X62_Y38_N24
\instr_cache|tag~561\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~561_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~560_combout\ & (\instr_cache|tag~224_regout\)) # (!\instr_cache|tag~560_combout\ & ((\instr_cache|tag~198_regout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~560_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~224_regout\,
	datac => \instr_cache|tag~198_regout\,
	datad => \instr_cache|tag~560_combout\,
	combout => \instr_cache|tag~561_combout\);

-- Location: LCCOMB_X62_Y35_N10
\instr_cache|tag~432feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~432feeder_combout\ = \instr_cache|cpu_addr_reg\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(17),
	combout => \instr_cache|tag~432feeder_combout\);

-- Location: LCFF_X62_Y35_N11
\instr_cache|tag~432\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~432feeder_combout\,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~432_regout\);

-- Location: LCFF_X59_Y35_N23
\instr_cache|tag~406\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(17),
	sload => VCC,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~406_regout\);

-- Location: LCFF_X58_Y35_N29
\instr_cache|tag~354\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(17),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~354_regout\);

-- Location: LCCOMB_X58_Y35_N28
\instr_cache|tag~567\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~567_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & (\instr_cache|tag~380_regout\)) # (!\cache_addr[2]~8_combout\ & ((\instr_cache|tag~354_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~380_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~354_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~567_combout\);

-- Location: LCCOMB_X59_Y35_N22
\instr_cache|tag~568\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~568_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~567_combout\ & (\instr_cache|tag~432_regout\)) # (!\instr_cache|tag~567_combout\ & ((\instr_cache|tag~406_regout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~567_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~432_regout\,
	datac => \instr_cache|tag~406_regout\,
	datad => \instr_cache|tag~567_combout\,
	combout => \instr_cache|tag~568_combout\);

-- Location: LCFF_X60_Y39_N17
\instr_cache|tag~276\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(17),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~276_regout\);

-- Location: LCFF_X60_Y36_N9
\instr_cache|tag~328\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(17),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~328_regout\);

-- Location: LCCOMB_X59_Y39_N12
\instr_cache|tag~302feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~302feeder_combout\ = \instr_cache|cpu_addr_reg\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(17),
	combout => \instr_cache|tag~302feeder_combout\);

-- Location: LCCOMB_X62_Y39_N2
\instr_cache|tag~712\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~712_combout\ = (\instr_cache|cpu_addr_reg\(5) & (\instr_cache|cpu_addr_reg\(3) & (!\instr_cache|cpu_addr_reg\(2) & !\instr_cache|cpu_addr_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(5),
	datab => \instr_cache|cpu_addr_reg\(3),
	datac => \instr_cache|cpu_addr_reg\(2),
	datad => \instr_cache|cpu_addr_reg\(4),
	combout => \instr_cache|tag~712_combout\);

-- Location: LCCOMB_X62_Y39_N4
\instr_cache|tag~713\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~713_combout\ = (!\reset~combout\ & (\instr_cache|tag~712_combout\ & \instr_cache|next_state.EXECUTE_STATE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|tag~712_combout\,
	datad => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	combout => \instr_cache|tag~713_combout\);

-- Location: LCFF_X59_Y39_N13
\instr_cache|tag~302\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~302feeder_combout\,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~302_regout\);

-- Location: LCFF_X60_Y36_N7
\instr_cache|tag~250\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(17),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~250_regout\);

-- Location: LCCOMB_X60_Y36_N6
\instr_cache|tag~562\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~562_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~302_regout\) # ((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (((\instr_cache|tag~250_regout\ & !\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~302_regout\,
	datac => \instr_cache|tag~250_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~562_combout\);

-- Location: LCCOMB_X60_Y36_N8
\instr_cache|tag~563\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~563_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~562_combout\ & ((\instr_cache|tag~328_regout\))) # (!\instr_cache|tag~562_combout\ & (\instr_cache|tag~276_regout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~562_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|tag~276_regout\,
	datac => \instr_cache|tag~328_regout\,
	datad => \instr_cache|tag~562_combout\,
	combout => \instr_cache|tag~563_combout\);

-- Location: LCFF_X60_Y39_N19
\instr_cache|tag~68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(17),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~68_regout\);

-- Location: LCFF_X61_Y37_N3
\instr_cache|tag~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(17),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~42_regout\);

-- Location: LCCOMB_X61_Y37_N2
\instr_cache|tag~564\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~564_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~94_regout\) # ((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (((\instr_cache|tag~42_regout\ & !\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~94_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~42_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~564_combout\);

-- Location: LCCOMB_X60_Y39_N18
\instr_cache|tag~565\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~565_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~564_combout\ & (\instr_cache|tag~120_regout\)) # (!\instr_cache|tag~564_combout\ & ((\instr_cache|tag~68_regout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~564_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~120_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~68_regout\,
	datad => \instr_cache|tag~564_combout\,
	combout => \instr_cache|tag~565_combout\);

-- Location: LCCOMB_X60_Y36_N30
\instr_cache|tag~566\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~566_combout\ = (\cache_addr[4]~2_combout\ & (\cache_addr[5]~6_combout\)) # (!\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\ & (\instr_cache|tag~563_combout\)) # (!\cache_addr[5]~6_combout\ & ((\instr_cache|tag~565_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~563_combout\,
	datad => \instr_cache|tag~565_combout\,
	combout => \instr_cache|tag~566_combout\);

-- Location: LCCOMB_X60_Y36_N24
\instr_cache|tag~569\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~569_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~566_combout\ & ((\instr_cache|tag~568_combout\))) # (!\instr_cache|tag~566_combout\ & (\instr_cache|tag~561_combout\)))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~566_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~561_combout\,
	datac => \instr_cache|tag~568_combout\,
	datad => \instr_cache|tag~566_combout\,
	combout => \instr_cache|tag~569_combout\);

-- Location: LCCOMB_X61_Y36_N14
\instr_cache|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~10_combout\ = \instr_cache|tag~569_combout\ $ (((\cache_addr[31]~0_combout\ & ((\jmp_addr~combout\(17)))) # (!\cache_addr[31]~0_combout\ & (\pc~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(17),
	datab => \cache_addr[31]~0_combout\,
	datac => \jmp_addr~combout\(17),
	datad => \instr_cache|tag~569_combout\,
	combout => \instr_cache|Equal0~10_combout\);

-- Location: LCCOMB_X62_Y36_N6
\instr_cache|process_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|process_1~3_combout\ = (\instr_cache|Equal0~9_combout\) # ((\instr_cache|Equal0~7_combout\) # ((\instr_cache|Equal0~8_combout\) # (\instr_cache|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Equal0~9_combout\,
	datab => \instr_cache|Equal0~7_combout\,
	datac => \instr_cache|Equal0~8_combout\,
	datad => \instr_cache|Equal0~10_combout\,
	combout => \instr_cache|process_1~3_combout\);

-- Location: PIN_R27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(20),
	combout => \jmp_addr~combout\(20));

-- Location: LCCOMB_X61_Y32_N16
\Add0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(20)))) # (!\brnch~combout\ & (\pc~combout\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(20),
	datab => \brnch~combout\,
	datad => \jmp_addr~combout\(20),
	combout => \Add0~80_combout\);

-- Location: LCFF_X61_Y32_N13
\instr_cache|cpu_addr_reg[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~80_combout\,
	sload => VCC,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(20));

-- Location: LCFF_X59_Y39_N5
\instr_cache|tag~305\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(20),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~305_regout\);

-- Location: LCFF_X59_Y39_N3
\instr_cache|tag~97\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(20),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~97_regout\);

-- Location: LCCOMB_X59_Y39_N2
\instr_cache|tag~592\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~592_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~201_regout\)) # (!\cache_addr[4]~2_combout\ & ((\instr_cache|tag~97_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~201_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~97_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~592_combout\);

-- Location: LCCOMB_X59_Y39_N4
\instr_cache|tag~593\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~593_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~592_combout\ & (\instr_cache|tag~409_regout\)) # (!\instr_cache|tag~592_combout\ & ((\instr_cache|tag~305_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~592_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~409_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~305_regout\,
	datad => \instr_cache|tag~592_combout\,
	combout => \instr_cache|tag~593_combout\);

-- Location: LCFF_X60_Y34_N3
\instr_cache|tag~357\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(20),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~357_regout\);

-- Location: LCFF_X60_Y38_N31
\instr_cache|tag~149\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(20),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~149_regout\);

-- Location: LCFF_X60_Y38_N19
\instr_cache|tag~45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(20),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~45_regout\);

-- Location: LCCOMB_X60_Y38_N18
\instr_cache|tag~594\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~594_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~149_regout\)) # (!\cache_addr[4]~2_combout\ & ((\instr_cache|tag~45_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~149_regout\,
	datac => \instr_cache|tag~45_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~594_combout\);

-- Location: LCCOMB_X60_Y34_N2
\instr_cache|tag~595\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~595_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~594_combout\ & ((\instr_cache|tag~357_regout\))) # (!\instr_cache|tag~594_combout\ & (\instr_cache|tag~253_regout\)))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~594_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~253_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~357_regout\,
	datad => \instr_cache|tag~594_combout\,
	combout => \instr_cache|tag~595_combout\);

-- Location: LCCOMB_X60_Y35_N20
\instr_cache|tag~596\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~596_combout\ = (\cache_addr[2]~8_combout\ & (\cache_addr[3]~4_combout\)) # (!\cache_addr[2]~8_combout\ & ((\cache_addr[3]~4_combout\ & (\instr_cache|tag~593_combout\)) # (!\cache_addr[3]~4_combout\ & ((\instr_cache|tag~595_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~593_combout\,
	datad => \instr_cache|tag~595_combout\,
	combout => \instr_cache|tag~596_combout\);

-- Location: LCFF_X57_Y35_N29
\instr_cache|tag~175\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(20),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~175_regout\);

-- Location: LCFF_X58_Y38_N23
\instr_cache|tag~279\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(20),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~279_regout\);

-- Location: LCCOMB_X57_Y35_N30
\instr_cache|tag~590\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~590_combout\ = (\cache_addr[4]~2_combout\ & (((\cache_addr[5]~6_combout\)))) # (!\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\ & ((\instr_cache|tag~279_regout\))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~71_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~71_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \cache_addr[5]~6_combout\,
	datad => \instr_cache|tag~279_regout\,
	combout => \instr_cache|tag~590_combout\);

-- Location: LCCOMB_X57_Y35_N28
\instr_cache|tag~591\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~591_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~590_combout\ & (\instr_cache|tag~383_regout\)) # (!\instr_cache|tag~590_combout\ & ((\instr_cache|tag~175_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~590_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~383_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~175_regout\,
	datad => \instr_cache|tag~590_combout\,
	combout => \instr_cache|tag~591_combout\);

-- Location: LCCOMB_X61_Y35_N22
\instr_cache|tag~599\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~599_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~596_combout\ & (\instr_cache|tag~598_combout\)) # (!\instr_cache|tag~596_combout\ & ((\instr_cache|tag~591_combout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~596_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~598_combout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~596_combout\,
	datad => \instr_cache|tag~591_combout\,
	combout => \instr_cache|tag~599_combout\);

-- Location: LCCOMB_X61_Y35_N0
\instr_cache|Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~13_combout\ = \instr_cache|tag~599_combout\ $ (((\cache_addr[31]~0_combout\ & ((\jmp_addr~combout\(20)))) # (!\cache_addr[31]~0_combout\ & (\pc~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(20),
	datab => \jmp_addr~combout\(20),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~599_combout\,
	combout => \instr_cache|Equal0~13_combout\);

-- Location: PIN_K29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(19),
	combout => \pc~combout\(19));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(19),
	combout => \jmp_addr~combout\(19));

-- Location: LCCOMB_X63_Y35_N4
\Add0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (\brnch~combout\ & (\jmp_addr~combout\(19))) # (!\brnch~combout\ & ((\pc~combout\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datac => \jmp_addr~combout\(19),
	datad => \pc~combout\(19),
	combout => \Add0~76_combout\);

-- Location: LCFF_X63_Y35_N5
\instr_cache|cpu_addr_reg[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~76_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(19));

-- Location: LCCOMB_X56_Y39_N8
\instr_cache|tag~96feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~96feeder_combout\ = \instr_cache|cpu_addr_reg\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(19),
	combout => \instr_cache|tag~96feeder_combout\);

-- Location: LCFF_X56_Y39_N9
\instr_cache|tag~96\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~96feeder_combout\,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~96_regout\);

-- Location: LCFF_X56_Y38_N5
\instr_cache|tag~122\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(19),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~122_regout\);

-- Location: LCFF_X56_Y38_N11
\instr_cache|tag~44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(19),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~44_regout\);

-- Location: LCCOMB_X56_Y38_N10
\instr_cache|tag~584\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~584_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & (\instr_cache|tag~70_regout\)) # (!\cache_addr[2]~8_combout\ & ((\instr_cache|tag~44_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~70_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~44_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~584_combout\);

-- Location: LCCOMB_X56_Y38_N4
\instr_cache|tag~585\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~585_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~584_combout\ & ((\instr_cache|tag~122_regout\))) # (!\instr_cache|tag~584_combout\ & (\instr_cache|tag~96_regout\)))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~584_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~96_regout\,
	datac => \instr_cache|tag~122_regout\,
	datad => \instr_cache|tag~584_combout\,
	combout => \instr_cache|tag~585_combout\);

-- Location: LCFF_X62_Y38_N17
\instr_cache|tag~226\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(19),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~226_regout\);

-- Location: LCFF_X60_Y35_N15
\instr_cache|tag~148\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(19),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~148_regout\);

-- Location: LCCOMB_X60_Y35_N14
\instr_cache|tag~582\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~582_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~200_regout\) # ((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (((\instr_cache|tag~148_regout\ & !\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~200_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~148_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~582_combout\);

-- Location: LCCOMB_X61_Y38_N24
\instr_cache|tag~583\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~583_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~582_combout\ & ((\instr_cache|tag~226_regout\))) # (!\instr_cache|tag~582_combout\ & (\instr_cache|tag~174_regout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~582_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~174_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~226_regout\,
	datad => \instr_cache|tag~582_combout\,
	combout => \instr_cache|tag~583_combout\);

-- Location: LCCOMB_X60_Y38_N4
\instr_cache|tag~586\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~586_combout\ = (\cache_addr[5]~6_combout\ & (\cache_addr[4]~2_combout\)) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & ((\instr_cache|tag~583_combout\))) # (!\cache_addr[4]~2_combout\ & (\instr_cache|tag~585_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~585_combout\,
	datad => \instr_cache|tag~583_combout\,
	combout => \instr_cache|tag~586_combout\);

-- Location: LCFF_X58_Y36_N17
\instr_cache|tag~330\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(19),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~330_regout\);

-- Location: LCFF_X62_Y35_N31
\instr_cache|tag~304\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(19),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~304_regout\);

-- Location: LCFF_X59_Y37_N23
\instr_cache|tag~278\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(19),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~278_regout\);

-- Location: LCCOMB_X59_Y37_N22
\instr_cache|tag~580\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~580_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & ((\instr_cache|tag~278_regout\))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|tag~252_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~252_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~278_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~580_combout\);

-- Location: LCCOMB_X62_Y35_N30
\instr_cache|tag~581\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~581_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~580_combout\ & (\instr_cache|tag~330_regout\)) # (!\instr_cache|tag~580_combout\ & ((\instr_cache|tag~304_regout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~580_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~330_regout\,
	datac => \instr_cache|tag~304_regout\,
	datad => \instr_cache|tag~580_combout\,
	combout => \instr_cache|tag~581_combout\);

-- Location: LCCOMB_X61_Y35_N30
\instr_cache|tag~589\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~589_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~586_combout\ & (\instr_cache|tag~588_combout\)) # (!\instr_cache|tag~586_combout\ & ((\instr_cache|tag~581_combout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~586_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~588_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~586_combout\,
	datad => \instr_cache|tag~581_combout\,
	combout => \instr_cache|tag~589_combout\);

-- Location: LCCOMB_X61_Y35_N20
\instr_cache|Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~12_combout\ = \instr_cache|tag~589_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(19))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(19),
	datab => \pc~combout\(19),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~589_combout\,
	combout => \instr_cache|Equal0~12_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(21),
	combout => \pc~combout\(21));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(21),
	combout => \jmp_addr~combout\(21));

-- Location: LCCOMB_X56_Y35_N8
\Add0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (\brnch~combout\ & (\jmp_addr~combout\(21))) # (!\brnch~combout\ & ((\pc~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jmp_addr~combout\(21),
	datac => \pc~combout\(21),
	datad => \brnch~combout\,
	combout => \Add0~84_combout\);

-- Location: LCFF_X56_Y35_N29
\instr_cache|cpu_addr_reg[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~84_combout\,
	sload => VCC,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(21));

-- Location: LCCOMB_X58_Y39_N26
\instr_cache|tag~410feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~410feeder_combout\ = \instr_cache|cpu_addr_reg\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(21),
	combout => \instr_cache|tag~410feeder_combout\);

-- Location: LCFF_X58_Y39_N27
\instr_cache|tag~410\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~410feeder_combout\,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~410_regout\);

-- Location: LCFF_X60_Y37_N29
\instr_cache|tag~436\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~436_regout\);

-- Location: LCFF_X60_Y34_N25
\instr_cache|tag~384\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~384_regout\);

-- Location: LCCOMB_X60_Y34_N24
\instr_cache|tag~607\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~607_combout\ = (\cache_addr[2]~8_combout\ & (((\instr_cache|tag~384_regout\) # (\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|tag~358_regout\ & ((!\cache_addr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~358_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~384_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~607_combout\);

-- Location: LCCOMB_X60_Y37_N28
\instr_cache|tag~608\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~608_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~607_combout\ & ((\instr_cache|tag~436_regout\))) # (!\instr_cache|tag~607_combout\ & (\instr_cache|tag~410_regout\)))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~607_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~410_regout\,
	datac => \instr_cache|tag~436_regout\,
	datad => \instr_cache|tag~607_combout\,
	combout => \instr_cache|tag~608_combout\);

-- Location: LCFF_X59_Y34_N31
\instr_cache|tag~202\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~202_regout\);

-- Location: LCFF_X60_Y37_N5
\instr_cache|tag~228\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~228_regout\);

-- Location: LCFF_X61_Y39_N29
\instr_cache|tag~176\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~176_regout\);

-- Location: LCCOMB_X61_Y39_N28
\instr_cache|tag~600\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~600_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & ((\instr_cache|tag~176_regout\))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|tag~150_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~150_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~176_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~600_combout\);

-- Location: LCCOMB_X60_Y37_N4
\instr_cache|tag~601\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~601_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~600_combout\ & ((\instr_cache|tag~228_regout\))) # (!\instr_cache|tag~600_combout\ & (\instr_cache|tag~202_regout\)))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~600_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~202_regout\,
	datac => \instr_cache|tag~228_regout\,
	datad => \instr_cache|tag~600_combout\,
	combout => \instr_cache|tag~601_combout\);

-- Location: LCFF_X59_Y37_N21
\instr_cache|tag~280\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~280_regout\);

-- Location: LCFF_X59_Y36_N1
\instr_cache|tag~254\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~254_regout\);

-- Location: LCCOMB_X59_Y36_N0
\instr_cache|tag~602\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~602_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~306_regout\) # ((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (((\instr_cache|tag~254_regout\ & !\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~306_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~254_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~602_combout\);

-- Location: LCCOMB_X59_Y37_N20
\instr_cache|tag~603\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~603_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~602_combout\ & (\instr_cache|tag~332_regout\)) # (!\instr_cache|tag~602_combout\ & ((\instr_cache|tag~280_regout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~602_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~332_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~280_regout\,
	datad => \instr_cache|tag~602_combout\,
	combout => \instr_cache|tag~603_combout\);

-- Location: LCFF_X60_Y39_N13
\instr_cache|tag~72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~72_regout\);

-- Location: LCFF_X56_Y39_N17
\instr_cache|tag~46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(21),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~46_regout\);

-- Location: LCCOMB_X56_Y39_N16
\instr_cache|tag~604\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~604_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~98_regout\) # ((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (((\instr_cache|tag~46_regout\ & !\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~98_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~46_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~604_combout\);

-- Location: LCCOMB_X60_Y39_N12
\instr_cache|tag~605\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~605_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~604_combout\ & (\instr_cache|tag~124_regout\)) # (!\instr_cache|tag~604_combout\ & ((\instr_cache|tag~72_regout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~604_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~124_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~72_regout\,
	datad => \instr_cache|tag~604_combout\,
	combout => \instr_cache|tag~605_combout\);

-- Location: LCCOMB_X60_Y37_N22
\instr_cache|tag~606\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~606_combout\ = (\cache_addr[4]~2_combout\ & (\cache_addr[5]~6_combout\)) # (!\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\ & (\instr_cache|tag~603_combout\)) # (!\cache_addr[5]~6_combout\ & ((\instr_cache|tag~605_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~603_combout\,
	datad => \instr_cache|tag~605_combout\,
	combout => \instr_cache|tag~606_combout\);

-- Location: LCCOMB_X60_Y37_N26
\instr_cache|tag~609\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~609_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~606_combout\ & (\instr_cache|tag~608_combout\)) # (!\instr_cache|tag~606_combout\ & ((\instr_cache|tag~601_combout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~606_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~608_combout\,
	datac => \instr_cache|tag~601_combout\,
	datad => \instr_cache|tag~606_combout\,
	combout => \instr_cache|tag~609_combout\);

-- Location: LCCOMB_X61_Y35_N6
\instr_cache|Equal0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~14_combout\ = \instr_cache|tag~609_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(21))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(21),
	datab => \pc~combout\(21),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~609_combout\,
	combout => \instr_cache|Equal0~14_combout\);

-- Location: LCCOMB_X61_Y35_N8
\instr_cache|process_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|process_1~4_combout\ = (\instr_cache|Equal0~11_combout\) # ((\instr_cache|Equal0~13_combout\) # ((\instr_cache|Equal0~12_combout\) # (\instr_cache|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Equal0~11_combout\,
	datab => \instr_cache|Equal0~13_combout\,
	datac => \instr_cache|Equal0~12_combout\,
	datad => \instr_cache|Equal0~14_combout\,
	combout => \instr_cache|process_1~4_combout\);

-- Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(23),
	combout => \pc~combout\(23));

-- Location: LCCOMB_X58_Y34_N4
\Add0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (\brnch~combout\ & (\jmp_addr~combout\(23))) # (!\brnch~combout\ & ((\pc~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(23),
	datab => \pc~combout\(23),
	datac => \brnch~combout\,
	combout => \Add0~92_combout\);

-- Location: LCCOMB_X56_Y35_N18
\instr_cache|cpu_addr_reg[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_addr_reg[23]~feeder_combout\ = \Add0~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~92_combout\,
	combout => \instr_cache|cpu_addr_reg[23]~feeder_combout\);

-- Location: LCFF_X56_Y35_N19
\instr_cache|cpu_addr_reg[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|cpu_addr_reg[23]~feeder_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(23));

-- Location: LCFF_X60_Y34_N9
\instr_cache|tag~386\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(23),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~386_regout\);

-- Location: LCFF_X60_Y34_N31
\instr_cache|tag~360\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(23),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~360_regout\);

-- Location: LCCOMB_X60_Y34_N30
\instr_cache|tag~627\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~627_combout\ = (\cache_addr[2]~8_combout\ & (((\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & ((\cache_addr[3]~4_combout\ & (\instr_cache|tag~412_regout\)) # (!\cache_addr[3]~4_combout\ & ((\instr_cache|tag~360_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~412_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~360_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~627_combout\);

-- Location: LCCOMB_X60_Y34_N8
\instr_cache|tag~628\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~628_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~627_combout\ & (\instr_cache|tag~438_regout\)) # (!\instr_cache|tag~627_combout\ & ((\instr_cache|tag~386_regout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~627_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~438_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~386_regout\,
	datad => \instr_cache|tag~627_combout\,
	combout => \instr_cache|tag~628_combout\);

-- Location: LCFF_X59_Y34_N15
\instr_cache|tag~308\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(23),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~308_regout\);

-- Location: LCFF_X59_Y36_N19
\instr_cache|tag~256\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(23),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~256_regout\);

-- Location: LCCOMB_X59_Y36_N18
\instr_cache|tag~620\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~620_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & (\instr_cache|tag~282_regout\)) # (!\cache_addr[2]~8_combout\ & ((\instr_cache|tag~256_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~282_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~256_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~620_combout\);

-- Location: LCCOMB_X59_Y34_N14
\instr_cache|tag~621\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~621_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~620_combout\ & (\instr_cache|tag~334_regout\)) # (!\instr_cache|tag~620_combout\ & ((\instr_cache|tag~308_regout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~620_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~334_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~308_regout\,
	datad => \instr_cache|tag~620_combout\,
	combout => \instr_cache|tag~621_combout\);

-- Location: LCFF_X58_Y34_N29
\instr_cache|tag~230\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(23),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~230_regout\);

-- Location: LCFF_X58_Y34_N23
\instr_cache|tag~152\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(23),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~152_regout\);

-- Location: LCCOMB_X58_Y34_N22
\instr_cache|tag~622\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~622_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~204_regout\) # ((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (((\instr_cache|tag~152_regout\ & !\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~204_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~152_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~622_combout\);

-- Location: LCCOMB_X58_Y34_N28
\instr_cache|tag~623\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~623_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~622_combout\ & ((\instr_cache|tag~230_regout\))) # (!\instr_cache|tag~622_combout\ & (\instr_cache|tag~178_regout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~622_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~178_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~230_regout\,
	datad => \instr_cache|tag~622_combout\,
	combout => \instr_cache|tag~623_combout\);

-- Location: LCFF_X57_Y38_N17
\instr_cache|tag~126\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(23),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~126_regout\);

-- Location: LCFF_X56_Y38_N15
\instr_cache|tag~48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(23),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~48_regout\);

-- Location: LCCOMB_X56_Y38_N14
\instr_cache|tag~624\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~624_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~74_regout\) # ((\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & (((\instr_cache|tag~48_regout\ & !\cache_addr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~74_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~48_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~624_combout\);

-- Location: LCCOMB_X57_Y38_N16
\instr_cache|tag~625\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~625_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~624_combout\ & ((\instr_cache|tag~126_regout\))) # (!\instr_cache|tag~624_combout\ & (\instr_cache|tag~100_regout\)))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~624_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~100_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~126_regout\,
	datad => \instr_cache|tag~624_combout\,
	combout => \instr_cache|tag~625_combout\);

-- Location: LCCOMB_X58_Y34_N26
\instr_cache|tag~626\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~626_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~623_combout\)) # (!\cache_addr[4]~2_combout\ & 
-- ((\instr_cache|tag~625_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~623_combout\,
	datac => \cache_addr[4]~2_combout\,
	datad => \instr_cache|tag~625_combout\,
	combout => \instr_cache|tag~626_combout\);

-- Location: LCCOMB_X58_Y34_N8
\instr_cache|tag~629\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~629_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~626_combout\ & (\instr_cache|tag~628_combout\)) # (!\instr_cache|tag~626_combout\ & ((\instr_cache|tag~621_combout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~626_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~628_combout\,
	datac => \instr_cache|tag~621_combout\,
	datad => \instr_cache|tag~626_combout\,
	combout => \instr_cache|tag~629_combout\);

-- Location: LCCOMB_X58_Y34_N14
\instr_cache|Equal0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~16_combout\ = \instr_cache|tag~629_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(23))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(23),
	datab => \pc~combout\(23),
	datac => \instr_cache|tag~629_combout\,
	datad => \cache_addr[31]~0_combout\,
	combout => \instr_cache|Equal0~16_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(22),
	combout => \jmp_addr~combout\(22));

-- Location: LCCOMB_X61_Y32_N8
\Add0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(22)))) # (!\brnch~combout\ & (\pc~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(22),
	datac => \jmp_addr~combout\(22),
	datad => \brnch~combout\,
	combout => \Add0~88_combout\);

-- Location: LCFF_X61_Y32_N1
\instr_cache|cpu_addr_reg[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~88_combout\,
	sload => VCC,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(22));

-- Location: LCFF_X59_Y40_N19
\instr_cache|tag~437\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(22),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~437_regout\);

-- Location: LCFF_X60_Y40_N3
\instr_cache|tag~333\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(22),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~333_regout\);

-- Location: LCFF_X59_Y40_N17
\instr_cache|tag~229\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(22),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~229_regout\);

-- Location: LCFF_X60_Y40_N1
\instr_cache|tag~125\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(22),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~125_regout\);

-- Location: LCCOMB_X60_Y40_N0
\instr_cache|tag~617\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~617_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~229_regout\)) # (!\cache_addr[4]~2_combout\ & ((\instr_cache|tag~125_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~229_regout\,
	datac => \instr_cache|tag~125_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~617_combout\);

-- Location: LCCOMB_X60_Y40_N2
\instr_cache|tag~618\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~618_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~617_combout\ & (\instr_cache|tag~437_regout\)) # (!\instr_cache|tag~617_combout\ & ((\instr_cache|tag~333_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~617_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~437_regout\,
	datac => \instr_cache|tag~333_regout\,
	datad => \instr_cache|tag~617_combout\,
	combout => \instr_cache|tag~618_combout\);

-- Location: LCFF_X57_Y34_N19
\instr_cache|tag~385\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(22),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~385_regout\);

-- Location: LCFF_X57_Y34_N13
\instr_cache|tag~73\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(22),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~73_regout\);

-- Location: LCCOMB_X57_Y34_N12
\instr_cache|tag~612\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~612_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~177_regout\)) # (!\cache_addr[4]~2_combout\ & ((\instr_cache|tag~73_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~177_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~73_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~612_combout\);

-- Location: LCCOMB_X57_Y34_N18
\instr_cache|tag~613\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~613_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~612_combout\ & ((\instr_cache|tag~385_regout\))) # (!\instr_cache|tag~612_combout\ & (\instr_cache|tag~281_regout\)))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~612_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~281_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~385_regout\,
	datad => \instr_cache|tag~612_combout\,
	combout => \instr_cache|tag~613_combout\);

-- Location: LCFF_X61_Y37_N17
\instr_cache|tag~151\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(22),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~151_regout\);

-- Location: LCFF_X61_Y36_N19
\instr_cache|tag~359\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(22),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~359_regout\);

-- Location: LCCOMB_X60_Y36_N16
\instr_cache|tag~255feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~255feeder_combout\ = \instr_cache|cpu_addr_reg\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(22),
	combout => \instr_cache|tag~255feeder_combout\);

-- Location: LCFF_X60_Y36_N17
\instr_cache|tag~255\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~255feeder_combout\,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~255_regout\);

-- Location: LCFF_X61_Y36_N29
\instr_cache|tag~47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(22),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~47_regout\);

-- Location: LCCOMB_X61_Y36_N28
\instr_cache|tag~614\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~614_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~255_regout\) # ((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (((\instr_cache|tag~47_regout\ & !\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~255_regout\,
	datac => \instr_cache|tag~47_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~614_combout\);

-- Location: LCCOMB_X61_Y36_N18
\instr_cache|tag~615\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~615_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~614_combout\ & ((\instr_cache|tag~359_regout\))) # (!\instr_cache|tag~614_combout\ & (\instr_cache|tag~151_regout\)))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~614_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~151_regout\,
	datac => \instr_cache|tag~359_regout\,
	datad => \instr_cache|tag~614_combout\,
	combout => \instr_cache|tag~615_combout\);

-- Location: LCCOMB_X57_Y34_N16
\instr_cache|tag~616\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~616_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & (\instr_cache|tag~613_combout\)) # (!\cache_addr[2]~8_combout\ & 
-- ((\instr_cache|tag~615_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~613_combout\,
	datac => \cache_addr[2]~8_combout\,
	datad => \instr_cache|tag~615_combout\,
	combout => \instr_cache|tag~616_combout\);

-- Location: LCFF_X59_Y34_N9
\instr_cache|tag~203\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(22),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~203_regout\);

-- Location: LCFF_X59_Y39_N7
\instr_cache|tag~99\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(22),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~99_regout\);

-- Location: LCCOMB_X59_Y39_N6
\instr_cache|tag~610\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~610_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~307_regout\) # ((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (((\instr_cache|tag~99_regout\ & !\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~307_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~99_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~610_combout\);

-- Location: LCCOMB_X59_Y34_N8
\instr_cache|tag~611\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~611_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~610_combout\ & (\instr_cache|tag~411_regout\)) # (!\instr_cache|tag~610_combout\ & ((\instr_cache|tag~203_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~610_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~411_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~203_regout\,
	datad => \instr_cache|tag~610_combout\,
	combout => \instr_cache|tag~611_combout\);

-- Location: LCCOMB_X57_Y34_N22
\instr_cache|tag~619\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~619_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~616_combout\ & (\instr_cache|tag~618_combout\)) # (!\instr_cache|tag~616_combout\ & ((\instr_cache|tag~611_combout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~616_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~618_combout\,
	datac => \instr_cache|tag~616_combout\,
	datad => \instr_cache|tag~611_combout\,
	combout => \instr_cache|tag~619_combout\);

-- Location: LCCOMB_X57_Y34_N20
\instr_cache|Equal0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~15_combout\ = \instr_cache|tag~619_combout\ $ (((\cache_addr[31]~0_combout\ & ((\jmp_addr~combout\(22)))) # (!\cache_addr[31]~0_combout\ & (\pc~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(22),
	datab => \jmp_addr~combout\(22),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~619_combout\,
	combout => \instr_cache|Equal0~15_combout\);

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(24),
	combout => \jmp_addr~combout\(24));

-- Location: PIN_T27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(24),
	combout => \pc~combout\(24));

-- Location: LCCOMB_X61_Y32_N12
\Add0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = (\brnch~combout\ & (\jmp_addr~combout\(24))) # (!\brnch~combout\ & ((\pc~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(24),
	datab => \brnch~combout\,
	datad => \pc~combout\(24),
	combout => \Add0~96_combout\);

-- Location: LCCOMB_X63_Y35_N10
\instr_cache|cpu_addr_reg[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_addr_reg[24]~feeder_combout\ = \Add0~96_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~96_combout\,
	combout => \instr_cache|cpu_addr_reg[24]~feeder_combout\);

-- Location: LCFF_X63_Y35_N11
\instr_cache|cpu_addr_reg[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|cpu_addr_reg[24]~feeder_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(24));

-- Location: LCFF_X60_Y37_N21
\instr_cache|tag~231\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(24),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~231_regout\);

-- Location: LCFF_X60_Y37_N7
\instr_cache|tag~439\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(24),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~439_regout\);

-- Location: LCCOMB_X60_Y40_N8
\instr_cache|tag~127feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~127feeder_combout\ = \instr_cache|cpu_addr_reg\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(24),
	combout => \instr_cache|tag~127feeder_combout\);

-- Location: LCFF_X60_Y40_N9
\instr_cache|tag~127\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~127feeder_combout\,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~127_regout\);

-- Location: LCFF_X60_Y40_N23
\instr_cache|tag~335\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(24),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~335_regout\);

-- Location: LCCOMB_X60_Y40_N22
\instr_cache|tag~637\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~637_combout\ = (\cache_addr[5]~6_combout\ & (((\instr_cache|tag~335_regout\) # (\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~127_regout\ & ((!\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~127_regout\,
	datac => \instr_cache|tag~335_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~637_combout\);

-- Location: LCCOMB_X60_Y37_N6
\instr_cache|tag~638\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~638_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~637_combout\ & ((\instr_cache|tag~439_regout\))) # (!\instr_cache|tag~637_combout\ & (\instr_cache|tag~231_regout\)))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~637_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~231_regout\,
	datac => \instr_cache|tag~439_regout\,
	datad => \instr_cache|tag~637_combout\,
	combout => \instr_cache|tag~638_combout\);

-- Location: LCFF_X59_Y39_N29
\instr_cache|tag~309\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(24),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~309_regout\);

-- Location: LCFF_X59_Y39_N31
\instr_cache|tag~101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(24),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~101_regout\);

-- Location: LCCOMB_X59_Y39_N30
\instr_cache|tag~632\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~632_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~205_regout\)) # (!\cache_addr[4]~2_combout\ & ((\instr_cache|tag~101_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~205_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~101_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~632_combout\);

-- Location: LCCOMB_X59_Y39_N28
\instr_cache|tag~633\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~633_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~632_combout\ & (\instr_cache|tag~413_regout\)) # (!\instr_cache|tag~632_combout\ & ((\instr_cache|tag~309_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~632_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~413_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~309_regout\,
	datad => \instr_cache|tag~632_combout\,
	combout => \instr_cache|tag~633_combout\);

-- Location: LCFF_X57_Y37_N15
\instr_cache|tag~257\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(24),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~257_regout\);

-- Location: LCFF_X61_Y37_N7
\instr_cache|tag~153\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(24),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~153_regout\);

-- Location: LCCOMB_X61_Y37_N6
\instr_cache|tag~634\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~634_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & ((\instr_cache|tag~153_regout\))) # (!\cache_addr[4]~2_combout\ & (\instr_cache|tag~49_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~49_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~153_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~634_combout\);

-- Location: LCCOMB_X57_Y37_N14
\instr_cache|tag~635\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~635_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~634_combout\ & (\instr_cache|tag~361_regout\)) # (!\instr_cache|tag~634_combout\ & ((\instr_cache|tag~257_regout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~634_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~361_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~257_regout\,
	datad => \instr_cache|tag~634_combout\,
	combout => \instr_cache|tag~635_combout\);

-- Location: LCCOMB_X58_Y34_N12
\instr_cache|tag~636\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~636_combout\ = (\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\) # ((\instr_cache|tag~633_combout\)))) # (!\cache_addr[3]~4_combout\ & (!\cache_addr[2]~8_combout\ & ((\instr_cache|tag~635_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~633_combout\,
	datad => \instr_cache|tag~635_combout\,
	combout => \instr_cache|tag~636_combout\);

-- Location: LCCOMB_X58_Y34_N10
\instr_cache|tag~639\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~639_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~636_combout\ & ((\instr_cache|tag~638_combout\))) # (!\instr_cache|tag~636_combout\ & (\instr_cache|tag~631_combout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~636_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~631_combout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~638_combout\,
	datad => \instr_cache|tag~636_combout\,
	combout => \instr_cache|tag~639_combout\);

-- Location: LCCOMB_X58_Y34_N20
\instr_cache|Equal0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~17_combout\ = \instr_cache|tag~639_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(24))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[31]~0_combout\,
	datab => \jmp_addr~combout\(24),
	datac => \pc~combout\(24),
	datad => \instr_cache|tag~639_combout\,
	combout => \instr_cache|Equal0~17_combout\);

-- Location: LCCOMB_X57_Y34_N30
\instr_cache|process_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|process_1~5_combout\ = (\instr_cache|Equal0~18_combout\) # ((\instr_cache|Equal0~16_combout\) # ((\instr_cache|Equal0~15_combout\) # (\instr_cache|Equal0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Equal0~18_combout\,
	datab => \instr_cache|Equal0~16_combout\,
	datac => \instr_cache|Equal0~15_combout\,
	datad => \instr_cache|Equal0~17_combout\,
	combout => \instr_cache|process_1~5_combout\);

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(31),
	combout => \pc~combout\(31));

-- Location: PIN_P30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(31),
	combout => \jmp_addr~combout\(31));

-- Location: LCCOMB_X61_Y32_N20
\Add0~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~124_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(31)))) # (!\brnch~combout\ & (\pc~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(31),
	datac => \jmp_addr~combout\(31),
	datad => \brnch~combout\,
	combout => \Add0~124_combout\);

-- Location: LCFF_X61_Y32_N21
\instr_cache|cpu_addr_reg[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~124_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(31));

-- Location: LCFF_X59_Y37_N19
\instr_cache|tag~290\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(31),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~290_regout\);

-- Location: LCCOMB_X59_Y37_N18
\instr_cache|tag~700\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~700_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & ((\instr_cache|tag~290_regout\))) # (!\cache_addr[2]~8_combout\ & (\instr_cache|tag~264_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~264_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~290_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~700_combout\);

-- Location: LCFF_X58_Y37_N13
\instr_cache|tag~316\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(31),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~316_regout\);

-- Location: LCCOMB_X58_Y37_N12
\instr_cache|tag~701\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~701_combout\ = (\instr_cache|tag~700_combout\ & ((\instr_cache|tag~342_regout\) # ((!\cache_addr[3]~4_combout\)))) # (!\instr_cache|tag~700_combout\ & (((\instr_cache|tag~316_regout\ & \cache_addr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~342_regout\,
	datab => \instr_cache|tag~700_combout\,
	datac => \instr_cache|tag~316_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~701_combout\);

-- Location: LCFF_X57_Y38_N15
\instr_cache|tag~134\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(31),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~134_regout\);

-- Location: LCFF_X56_Y38_N19
\instr_cache|tag~56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(31),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~56_regout\);

-- Location: LCCOMB_X56_Y38_N18
\instr_cache|tag~704\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~704_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~82_regout\) # ((\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & (((\instr_cache|tag~56_regout\ & !\cache_addr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~82_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~56_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~704_combout\);

-- Location: LCCOMB_X57_Y38_N14
\instr_cache|tag~705\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~705_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~704_combout\ & ((\instr_cache|tag~134_regout\))) # (!\instr_cache|tag~704_combout\ & (\instr_cache|tag~108_regout\)))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~704_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~108_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~134_regout\,
	datad => \instr_cache|tag~704_combout\,
	combout => \instr_cache|tag~705_combout\);

-- Location: LCFF_X62_Y38_N5
\instr_cache|tag~238\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(31),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~238_regout\);

-- Location: LCFF_X57_Y38_N29
\instr_cache|tag~186\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(31),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~186_regout\);

-- Location: LCFF_X62_Y38_N3
\instr_cache|tag~212\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(31),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~212_regout\);

-- Location: LCCOMB_X62_Y38_N2
\instr_cache|tag~702\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~702_combout\ = (\cache_addr[3]~4_combout\ & (((\instr_cache|tag~212_regout\) # (\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (\instr_cache|tag~160_regout\ & ((!\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~160_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~212_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~702_combout\);

-- Location: LCCOMB_X57_Y38_N28
\instr_cache|tag~703\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~703_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~702_combout\ & (\instr_cache|tag~238_regout\)) # (!\instr_cache|tag~702_combout\ & ((\instr_cache|tag~186_regout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~702_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|tag~238_regout\,
	datac => \instr_cache|tag~186_regout\,
	datad => \instr_cache|tag~702_combout\,
	combout => \instr_cache|tag~703_combout\);

-- Location: LCCOMB_X57_Y38_N20
\instr_cache|tag~706\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~706_combout\ = (\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\) # ((\instr_cache|tag~703_combout\)))) # (!\cache_addr[4]~2_combout\ & (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~705_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~705_combout\,
	datad => \instr_cache|tag~703_combout\,
	combout => \instr_cache|tag~706_combout\);

-- Location: LCCOMB_X57_Y34_N28
\instr_cache|tag~709\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~709_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~706_combout\ & (\instr_cache|tag~708_combout\)) # (!\instr_cache|tag~706_combout\ & ((\instr_cache|tag~701_combout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~706_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~708_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~701_combout\,
	datad => \instr_cache|tag~706_combout\,
	combout => \instr_cache|tag~709_combout\);

-- Location: LCCOMB_X57_Y34_N14
\instr_cache|Equal0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~24_combout\ = \instr_cache|tag~709_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(31))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(31),
	datab => \pc~combout\(31),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~709_combout\,
	combout => \instr_cache|Equal0~24_combout\);

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(27),
	combout => \pc~combout\(27));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(27),
	combout => \jmp_addr~combout\(27));

-- Location: LCCOMB_X61_Y32_N24
\Add0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~108_combout\ = (\brnch~combout\ & (\jmp_addr~combout\(27))) # (!\brnch~combout\ & ((\pc~combout\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jmp_addr~combout\(27),
	datac => \pc~combout\(27),
	datad => \brnch~combout\,
	combout => \Add0~108_combout\);

-- Location: LCFF_X61_Y32_N25
\instr_cache|cpu_addr_reg[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~108_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(27));

-- Location: LCFF_X57_Y36_N21
\instr_cache|tag~442\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~442_regout\);

-- Location: LCFF_X56_Y34_N9
\instr_cache|tag~390\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~390_regout\);

-- Location: LCFF_X58_Y35_N9
\instr_cache|tag~364\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~364_regout\);

-- Location: LCCOMB_X58_Y35_N8
\instr_cache|tag~667\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~667_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~416_regout\) # ((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (((\instr_cache|tag~364_regout\ & !\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~416_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~364_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~667_combout\);

-- Location: LCCOMB_X56_Y34_N8
\instr_cache|tag~668\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~668_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~667_combout\ & (\instr_cache|tag~442_regout\)) # (!\instr_cache|tag~667_combout\ & ((\instr_cache|tag~390_regout\))))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~667_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|tag~442_regout\,
	datac => \instr_cache|tag~390_regout\,
	datad => \instr_cache|tag~667_combout\,
	combout => \instr_cache|tag~668_combout\);

-- Location: LCFF_X59_Y34_N29
\instr_cache|tag~312\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~312_regout\);

-- Location: LCFF_X59_Y37_N25
\instr_cache|tag~286\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~286_regout\);

-- Location: LCFF_X60_Y36_N23
\instr_cache|tag~260\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~260_regout\);

-- Location: LCCOMB_X60_Y36_N22
\instr_cache|tag~660\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~660_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~286_regout\) # ((\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & (((\instr_cache|tag~260_regout\ & !\cache_addr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|tag~286_regout\,
	datac => \instr_cache|tag~260_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~660_combout\);

-- Location: LCCOMB_X59_Y34_N28
\instr_cache|tag~661\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~661_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~660_combout\ & (\instr_cache|tag~338_regout\)) # (!\instr_cache|tag~660_combout\ & ((\instr_cache|tag~312_regout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~660_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~338_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~312_regout\,
	datad => \instr_cache|tag~660_combout\,
	combout => \instr_cache|tag~661_combout\);

-- Location: LCFF_X56_Y38_N31
\instr_cache|tag~130\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~130_regout\);

-- Location: LCFF_X56_Y36_N11
\instr_cache|tag~78\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~78_regout\);

-- Location: LCFF_X56_Y38_N29
\instr_cache|tag~52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~52_regout\);

-- Location: LCCOMB_X56_Y38_N28
\instr_cache|tag~664\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~664_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & (\instr_cache|tag~78_regout\)) # (!\cache_addr[2]~8_combout\ & ((\instr_cache|tag~52_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~78_regout\,
	datac => \instr_cache|tag~52_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~664_combout\);

-- Location: LCCOMB_X56_Y38_N30
\instr_cache|tag~665\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~665_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~664_combout\ & ((\instr_cache|tag~130_regout\))) # (!\instr_cache|tag~664_combout\ & (\instr_cache|tag~104_regout\)))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~664_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~104_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~130_regout\,
	datad => \instr_cache|tag~664_combout\,
	combout => \instr_cache|tag~665_combout\);

-- Location: LCFF_X63_Y38_N11
\instr_cache|tag~182\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~182_regout\);

-- Location: LCFF_X62_Y38_N21
\instr_cache|tag~234\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~234_regout\);

-- Location: LCFF_X62_Y38_N11
\instr_cache|tag~208\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(27),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~208_regout\);

-- Location: LCCOMB_X62_Y38_N10
\instr_cache|tag~662\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~662_combout\ = (\cache_addr[3]~4_combout\ & (((\instr_cache|tag~208_regout\) # (\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (\instr_cache|tag~156_regout\ & ((!\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~156_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~208_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~662_combout\);

-- Location: LCCOMB_X62_Y38_N20
\instr_cache|tag~663\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~663_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~662_combout\ & ((\instr_cache|tag~234_regout\))) # (!\instr_cache|tag~662_combout\ & (\instr_cache|tag~182_regout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~662_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|tag~182_regout\,
	datac => \instr_cache|tag~234_regout\,
	datad => \instr_cache|tag~662_combout\,
	combout => \instr_cache|tag~663_combout\);

-- Location: LCCOMB_X56_Y34_N26
\instr_cache|tag~666\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~666_combout\ = (\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\) # ((\instr_cache|tag~663_combout\)))) # (!\cache_addr[4]~2_combout\ & (!\cache_addr[5]~6_combout\ & (\instr_cache|tag~665_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~665_combout\,
	datad => \instr_cache|tag~663_combout\,
	combout => \instr_cache|tag~666_combout\);

-- Location: LCCOMB_X56_Y34_N18
\instr_cache|tag~669\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~669_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~666_combout\ & (\instr_cache|tag~668_combout\)) # (!\instr_cache|tag~666_combout\ & ((\instr_cache|tag~661_combout\))))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~666_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[5]~6_combout\,
	datab => \instr_cache|tag~668_combout\,
	datac => \instr_cache|tag~661_combout\,
	datad => \instr_cache|tag~666_combout\,
	combout => \instr_cache|tag~669_combout\);

-- Location: LCCOMB_X56_Y34_N24
\instr_cache|Equal0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~20_combout\ = \instr_cache|tag~669_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(27))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(27),
	datab => \pc~combout\(27),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~669_combout\,
	combout => \instr_cache|Equal0~20_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(29),
	combout => \pc~combout\(29));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(29),
	combout => \jmp_addr~combout\(29));

-- Location: LCCOMB_X56_Y38_N16
\Add0~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~116_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(29)))) # (!\brnch~combout\ & (\pc~combout\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \brnch~combout\,
	datac => \pc~combout\(29),
	datad => \jmp_addr~combout\(29),
	combout => \Add0~116_combout\);

-- Location: LCCOMB_X56_Y35_N4
\instr_cache|cpu_addr_reg[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_addr_reg[29]~feeder_combout\ = \Add0~116_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~116_combout\,
	combout => \instr_cache|cpu_addr_reg[29]~feeder_combout\);

-- Location: LCFF_X56_Y35_N5
\instr_cache|cpu_addr_reg[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|cpu_addr_reg[29]~feeder_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(29));

-- Location: LCFF_X57_Y39_N27
\instr_cache|tag~80\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(29),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~80_regout\);

-- Location: LCFF_X56_Y38_N27
\instr_cache|tag~132\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(29),
	sload => VCC,
	ena => \instr_cache|tag~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~132_regout\);

-- Location: LCFF_X56_Y38_N1
\instr_cache|tag~54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(29),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~54_regout\);

-- Location: LCCOMB_X56_Y38_N0
\instr_cache|tag~684\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~684_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~106_regout\) # ((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & (((\instr_cache|tag~54_regout\ & !\cache_addr[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~106_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~54_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~684_combout\);

-- Location: LCCOMB_X56_Y38_N26
\instr_cache|tag~685\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~685_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~684_combout\ & ((\instr_cache|tag~132_regout\))) # (!\instr_cache|tag~684_combout\ & (\instr_cache|tag~80_regout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~684_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|tag~80_regout\,
	datac => \instr_cache|tag~132_regout\,
	datad => \instr_cache|tag~684_combout\,
	combout => \instr_cache|tag~685_combout\);

-- Location: LCFF_X60_Y36_N13
\instr_cache|tag~340\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(29),
	sload => VCC,
	ena => \instr_cache|tag~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~340_regout\);

-- Location: LCCOMB_X59_Y37_N12
\instr_cache|tag~314feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~314feeder_combout\ = \instr_cache|cpu_addr_reg\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(29),
	combout => \instr_cache|tag~314feeder_combout\);

-- Location: LCFF_X59_Y37_N13
\instr_cache|tag~314\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~314feeder_combout\,
	ena => \instr_cache|tag~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~314_regout\);

-- Location: LCFF_X60_Y36_N27
\instr_cache|tag~262\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(29),
	sload => VCC,
	ena => \instr_cache|tag~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~262_regout\);

-- Location: LCCOMB_X60_Y36_N26
\instr_cache|tag~682\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~682_combout\ = (\cache_addr[2]~8_combout\ & (((\cache_addr[3]~4_combout\)))) # (!\cache_addr[2]~8_combout\ & ((\cache_addr[3]~4_combout\ & (\instr_cache|tag~314_regout\)) # (!\cache_addr[3]~4_combout\ & ((\instr_cache|tag~262_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \instr_cache|tag~314_regout\,
	datac => \instr_cache|tag~262_regout\,
	datad => \cache_addr[3]~4_combout\,
	combout => \instr_cache|tag~682_combout\);

-- Location: LCCOMB_X60_Y36_N12
\instr_cache|tag~683\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~683_combout\ = (\cache_addr[2]~8_combout\ & ((\instr_cache|tag~682_combout\ & ((\instr_cache|tag~340_regout\))) # (!\instr_cache|tag~682_combout\ & (\instr_cache|tag~288_regout\)))) # (!\cache_addr[2]~8_combout\ & 
-- (((\instr_cache|tag~682_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~288_regout\,
	datab => \cache_addr[2]~8_combout\,
	datac => \instr_cache|tag~340_regout\,
	datad => \instr_cache|tag~682_combout\,
	combout => \instr_cache|tag~683_combout\);

-- Location: LCCOMB_X56_Y38_N24
\instr_cache|tag~686\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~686_combout\ = (\cache_addr[4]~2_combout\ & (((\cache_addr[5]~6_combout\)))) # (!\cache_addr[4]~2_combout\ & ((\cache_addr[5]~6_combout\ & ((\instr_cache|tag~683_combout\))) # (!\cache_addr[5]~6_combout\ & 
-- (\instr_cache|tag~685_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~685_combout\,
	datac => \cache_addr[5]~6_combout\,
	datad => \instr_cache|tag~683_combout\,
	combout => \instr_cache|tag~686_combout\);

-- Location: LCCOMB_X62_Y35_N26
\instr_cache|tag~444feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~444feeder_combout\ = \instr_cache|cpu_addr_reg\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(29),
	combout => \instr_cache|tag~444feeder_combout\);

-- Location: LCFF_X62_Y35_N27
\instr_cache|tag~444\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~444feeder_combout\,
	ena => \instr_cache|tag~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~444_regout\);

-- Location: LCFF_X59_Y35_N13
\instr_cache|tag~418\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(29),
	sload => VCC,
	ena => \instr_cache|tag~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~418_regout\);

-- Location: LCFF_X60_Y34_N19
\instr_cache|tag~366\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(29),
	sload => VCC,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~366_regout\);

-- Location: LCCOMB_X60_Y34_N18
\instr_cache|tag~687\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~687_combout\ = (\cache_addr[3]~4_combout\ & (((\cache_addr[2]~8_combout\)))) # (!\cache_addr[3]~4_combout\ & ((\cache_addr[2]~8_combout\ & (\instr_cache|tag~392_regout\)) # (!\cache_addr[2]~8_combout\ & ((\instr_cache|tag~366_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~392_regout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~366_regout\,
	datad => \cache_addr[2]~8_combout\,
	combout => \instr_cache|tag~687_combout\);

-- Location: LCCOMB_X59_Y35_N12
\instr_cache|tag~688\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~688_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~687_combout\ & (\instr_cache|tag~444_regout\)) # (!\instr_cache|tag~687_combout\ & ((\instr_cache|tag~418_regout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~687_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[3]~4_combout\,
	datab => \instr_cache|tag~444_regout\,
	datac => \instr_cache|tag~418_regout\,
	datad => \instr_cache|tag~687_combout\,
	combout => \instr_cache|tag~688_combout\);

-- Location: LCCOMB_X56_Y38_N6
\instr_cache|tag~689\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~689_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~686_combout\ & ((\instr_cache|tag~688_combout\))) # (!\instr_cache|tag~686_combout\ & (\instr_cache|tag~681_combout\)))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~686_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~681_combout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~686_combout\,
	datad => \instr_cache|tag~688_combout\,
	combout => \instr_cache|tag~689_combout\);

-- Location: LCCOMB_X56_Y38_N8
\instr_cache|Equal0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~22_combout\ = \instr_cache|tag~689_combout\ $ (((\cache_addr[31]~0_combout\ & (\jmp_addr~combout\(29))) # (!\cache_addr[31]~0_combout\ & ((\pc~combout\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jmp_addr~combout\(29),
	datab => \pc~combout\(29),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~689_combout\,
	combout => \instr_cache|Equal0~22_combout\);

-- Location: PIN_P29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(26),
	combout => \jmp_addr~combout\(26));

-- Location: LCCOMB_X61_Y32_N28
\Add0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~104_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(26)))) # (!\brnch~combout\ & (\pc~combout\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(26),
	datac => \jmp_addr~combout\(26),
	datad => \brnch~combout\,
	combout => \Add0~104_combout\);

-- Location: LCCOMB_X61_Y32_N26
\instr_cache|cpu_addr_reg[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_addr_reg[26]~feeder_combout\ = \Add0~104_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~104_combout\,
	combout => \instr_cache|cpu_addr_reg[26]~feeder_combout\);

-- Location: LCFF_X61_Y32_N27
\instr_cache|cpu_addr_reg[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|cpu_addr_reg[26]~feeder_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(26));

-- Location: LCFF_X59_Y35_N17
\instr_cache|tag~207\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(26),
	sload => VCC,
	ena => \instr_cache|tag~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~207_regout\);

-- Location: LCFF_X59_Y39_N15
\instr_cache|tag~103\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(26),
	sload => VCC,
	ena => \instr_cache|tag~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~103_regout\);

-- Location: LCCOMB_X59_Y39_N14
\instr_cache|tag~650\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~650_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~311_regout\) # ((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (((\instr_cache|tag~103_regout\ & !\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~311_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~103_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~650_combout\);

-- Location: LCCOMB_X59_Y35_N16
\instr_cache|tag~651\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~651_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~650_combout\ & (\instr_cache|tag~415_regout\)) # (!\instr_cache|tag~650_combout\ & ((\instr_cache|tag~207_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~650_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~415_regout\,
	datab => \cache_addr[4]~2_combout\,
	datac => \instr_cache|tag~207_regout\,
	datad => \instr_cache|tag~650_combout\,
	combout => \instr_cache|tag~651_combout\);

-- Location: LCFF_X56_Y34_N15
\instr_cache|tag~389\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(26),
	sload => VCC,
	ena => \instr_cache|tag~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~389_regout\);

-- Location: LCFF_X56_Y34_N13
\instr_cache|tag~77\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(26),
	sload => VCC,
	ena => \instr_cache|tag~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~77_regout\);

-- Location: LCCOMB_X56_Y34_N12
\instr_cache|tag~652\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~652_combout\ = (\cache_addr[5]~6_combout\ & (((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & ((\cache_addr[4]~2_combout\ & (\instr_cache|tag~181_regout\)) # (!\cache_addr[4]~2_combout\ & ((\instr_cache|tag~77_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~181_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~77_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~652_combout\);

-- Location: LCCOMB_X56_Y34_N14
\instr_cache|tag~653\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~653_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~652_combout\ & ((\instr_cache|tag~389_regout\))) # (!\instr_cache|tag~652_combout\ & (\instr_cache|tag~285_regout\)))) # (!\cache_addr[5]~6_combout\ & 
-- (((\instr_cache|tag~652_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~285_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~389_regout\,
	datad => \instr_cache|tag~652_combout\,
	combout => \instr_cache|tag~653_combout\);

-- Location: LCCOMB_X57_Y37_N0
\instr_cache|tag~363feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~363feeder_combout\ = \instr_cache|cpu_addr_reg\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instr_cache|cpu_addr_reg\(26),
	combout => \instr_cache|tag~363feeder_combout\);

-- Location: LCFF_X57_Y37_N1
\instr_cache|tag~363\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|tag~363feeder_combout\,
	ena => \instr_cache|tag~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~363_regout\);

-- Location: LCFF_X56_Y37_N17
\instr_cache|tag~155\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(26),
	sload => VCC,
	ena => \instr_cache|tag~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~155_regout\);

-- Location: LCFF_X61_Y37_N23
\instr_cache|tag~51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|cpu_addr_reg\(26),
	sload => VCC,
	ena => \instr_cache|tag~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|tag~51_regout\);

-- Location: LCCOMB_X61_Y37_N22
\instr_cache|tag~654\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~654_combout\ = (\cache_addr[5]~6_combout\ & ((\instr_cache|tag~259_regout\) # ((\cache_addr[4]~2_combout\)))) # (!\cache_addr[5]~6_combout\ & (((\instr_cache|tag~51_regout\ & !\cache_addr[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~259_regout\,
	datab => \cache_addr[5]~6_combout\,
	datac => \instr_cache|tag~51_regout\,
	datad => \cache_addr[4]~2_combout\,
	combout => \instr_cache|tag~654_combout\);

-- Location: LCCOMB_X56_Y37_N16
\instr_cache|tag~655\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~655_combout\ = (\cache_addr[4]~2_combout\ & ((\instr_cache|tag~654_combout\ & (\instr_cache|tag~363_regout\)) # (!\instr_cache|tag~654_combout\ & ((\instr_cache|tag~155_regout\))))) # (!\cache_addr[4]~2_combout\ & 
-- (((\instr_cache|tag~654_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[4]~2_combout\,
	datab => \instr_cache|tag~363_regout\,
	datac => \instr_cache|tag~155_regout\,
	datad => \instr_cache|tag~654_combout\,
	combout => \instr_cache|tag~655_combout\);

-- Location: LCCOMB_X56_Y34_N28
\instr_cache|tag~656\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~656_combout\ = (\cache_addr[2]~8_combout\ & ((\cache_addr[3]~4_combout\) # ((\instr_cache|tag~653_combout\)))) # (!\cache_addr[2]~8_combout\ & (!\cache_addr[3]~4_combout\ & ((\instr_cache|tag~655_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_addr[2]~8_combout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~653_combout\,
	datad => \instr_cache|tag~655_combout\,
	combout => \instr_cache|tag~656_combout\);

-- Location: LCCOMB_X56_Y34_N22
\instr_cache|tag~659\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|tag~659_combout\ = (\cache_addr[3]~4_combout\ & ((\instr_cache|tag~656_combout\ & (\instr_cache|tag~658_combout\)) # (!\instr_cache|tag~656_combout\ & ((\instr_cache|tag~651_combout\))))) # (!\cache_addr[3]~4_combout\ & 
-- (((\instr_cache|tag~656_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|tag~658_combout\,
	datab => \cache_addr[3]~4_combout\,
	datac => \instr_cache|tag~651_combout\,
	datad => \instr_cache|tag~656_combout\,
	combout => \instr_cache|tag~659_combout\);

-- Location: LCCOMB_X56_Y34_N16
\instr_cache|Equal0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Equal0~19_combout\ = \instr_cache|tag~659_combout\ $ (((\cache_addr[31]~0_combout\ & ((\jmp_addr~combout\(26)))) # (!\cache_addr[31]~0_combout\ & (\pc~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(26),
	datab => \jmp_addr~combout\(26),
	datac => \cache_addr[31]~0_combout\,
	datad => \instr_cache|tag~659_combout\,
	combout => \instr_cache|Equal0~19_combout\);

-- Location: LCCOMB_X57_Y34_N0
\instr_cache|process_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|process_1~6_combout\ = (\instr_cache|Equal0~21_combout\) # ((\instr_cache|Equal0~20_combout\) # ((\instr_cache|Equal0~22_combout\) # (\instr_cache|Equal0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Equal0~21_combout\,
	datab => \instr_cache|Equal0~20_combout\,
	datac => \instr_cache|Equal0~22_combout\,
	datad => \instr_cache|Equal0~19_combout\,
	combout => \instr_cache|process_1~6_combout\);

-- Location: LCCOMB_X57_Y34_N8
\instr_cache|process_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|process_1~7_combout\ = (\instr_cache|Equal0~23_combout\) # ((\instr_cache|process_1~5_combout\) # ((\instr_cache|Equal0~24_combout\) # (\instr_cache|process_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Equal0~23_combout\,
	datab => \instr_cache|process_1~5_combout\,
	datac => \instr_cache|Equal0~24_combout\,
	datad => \instr_cache|process_1~6_combout\,
	combout => \instr_cache|process_1~7_combout\);

-- Location: LCCOMB_X62_Y34_N12
\instr_cache|process_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|process_1~8_combout\ = (\instr_cache|process_1~2_combout\) # ((\instr_cache|process_1~3_combout\) # ((\instr_cache|process_1~4_combout\) # (\instr_cache|process_1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|process_1~2_combout\,
	datab => \instr_cache|process_1~3_combout\,
	datac => \instr_cache|process_1~4_combout\,
	datad => \instr_cache|process_1~7_combout\,
	combout => \instr_cache|process_1~8_combout\);

-- Location: LCCOMB_X62_Y38_N30
\instr_cache|Selector143~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector143~1_combout\ = (\instr_cache|Selector143~0_combout\) # ((\instr_cache|cpu_rd_reg~0_combout\ & (\ack~combout\ & \instr_cache|process_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_rd_reg~0_combout\,
	datab => \instr_cache|Selector143~0_combout\,
	datac => \ack~combout\,
	datad => \instr_cache|process_1~8_combout\,
	combout => \instr_cache|Selector143~1_combout\);

-- Location: LCFF_X61_Y38_N11
\instr_cache|current_state.READ_MEM_STATE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector143~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|current_state.READ_MEM_STATE~regout\);

-- Location: LCCOMB_X62_Y34_N26
\instr_cache|current_state.STOPED_STATE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|current_state.STOPED_STATE~0_combout\ = (\instr_cache|current_state.STOPED_STATE~regout\) # ((!\instr_cache|current_state.IDLE_STATE~regout\ & \stop~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.IDLE_STATE~regout\,
	datac => \instr_cache|current_state.STOPED_STATE~regout\,
	datad => \stop~combout\,
	combout => \instr_cache|current_state.STOPED_STATE~0_combout\);

-- Location: LCFF_X62_Y34_N27
\instr_cache|current_state.STOPED_STATE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|current_state.STOPED_STATE~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|current_state.STOPED_STATE~regout\);

-- Location: LCCOMB_X63_Y34_N26
\instr_cache|words_counter[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|words_counter[0]~0_combout\ = (!\instr_cache|next_state.EXECUTE_STATE~0_combout\ & (((\instr_cache|current_state.READ_MEM_STATE~regout\) # (\instr_cache|current_state.STOPED_STATE~regout\)) # (!\instr_cache|Selector107~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Selector107~2_combout\,
	datab => \instr_cache|current_state.READ_MEM_STATE~regout\,
	datac => \instr_cache|next_state.EXECUTE_STATE~0_combout\,
	datad => \instr_cache|current_state.STOPED_STATE~regout\,
	combout => \instr_cache|words_counter[0]~0_combout\);

-- Location: LCCOMB_X63_Y34_N30
\instr_cache|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector1~0_combout\ = (\instr_cache|words_counter[0]~0_combout\ & (!\instr_cache|words_counter\(0) & ((\instr_cache|Selector143~1_combout\) # (!\instr_cache|current_state.READ_MEM_STATE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Selector143~1_combout\,
	datab => \instr_cache|words_counter[0]~0_combout\,
	datac => \instr_cache|words_counter\(0),
	datad => \instr_cache|current_state.READ_MEM_STATE~regout\,
	combout => \instr_cache|Selector1~0_combout\);

-- Location: LCFF_X63_Y34_N31
\instr_cache|words_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|Selector1~0_combout\,
	ena => \instr_cache|words_counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|words_counter\(0));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(6),
	combout => \jmp_addr~combout\(6));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(6),
	combout => \pc~combout\(6));

-- Location: LCCOMB_X63_Y36_N18
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\brnch~combout\ & (\jmp_addr~combout\(6))) # (!\brnch~combout\ & ((\pc~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datab => \jmp_addr~combout\(6),
	datac => \pc~combout\(6),
	combout => \Add0~24_combout\);

-- Location: LCFF_X63_Y36_N19
\instr_cache|cpu_addr_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~24_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(6));

-- Location: PIN_B28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(7),
	combout => \jmp_addr~combout\(7));

-- Location: PIN_T26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(7),
	combout => \pc~combout\(7));

-- Location: LCCOMB_X61_Y34_N22
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\brnch~combout\ & (\jmp_addr~combout\(7))) # (!\brnch~combout\ & ((\pc~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datab => \jmp_addr~combout\(7),
	datad => \pc~combout\(7),
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X61_Y34_N18
\instr_cache|cpu_addr_reg[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_addr_reg[7]~feeder_combout\ = \Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~28_combout\,
	combout => \instr_cache|cpu_addr_reg[7]~feeder_combout\);

-- Location: LCFF_X61_Y34_N19
\instr_cache|cpu_addr_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|cpu_addr_reg[7]~feeder_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(7));

-- Location: PIN_M27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(8),
	combout => \jmp_addr~combout\(8));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(8),
	combout => \pc~combout\(8));

-- Location: LCCOMB_X63_Y36_N16
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\brnch~combout\ & (\jmp_addr~combout\(8))) # (!\brnch~combout\ & ((\pc~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datab => \jmp_addr~combout\(8),
	datad => \pc~combout\(8),
	combout => \Add0~32_combout\);

-- Location: LCFF_X63_Y36_N3
\instr_cache|cpu_addr_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~32_combout\,
	sload => VCC,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(8));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(9),
	combout => \jmp_addr~combout\(9));

-- Location: PIN_A28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(9),
	combout => \pc~combout\(9));

-- Location: LCCOMB_X63_Y37_N10
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\brnch~combout\ & (\jmp_addr~combout\(9))) # (!\brnch~combout\ & ((\pc~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jmp_addr~combout\(9),
	datac => \pc~combout\(9),
	datad => \brnch~combout\,
	combout => \Add0~36_combout\);

-- Location: LCFF_X62_Y33_N3
\instr_cache|cpu_addr_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~36_combout\,
	sload => VCC,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(9));

-- Location: PIN_A24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(10),
	combout => \pc~combout\(10));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(10),
	combout => \jmp_addr~combout\(10));

-- Location: LCCOMB_X63_Y37_N26
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(10)))) # (!\brnch~combout\ & (\pc~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datab => \pc~combout\(10),
	datad => \jmp_addr~combout\(10),
	combout => \Add0~40_combout\);

-- Location: LCFF_X63_Y36_N9
\instr_cache|cpu_addr_reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~40_combout\,
	sload => VCC,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(10));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(11),
	combout => \pc~combout\(11));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(11),
	combout => \jmp_addr~combout\(11));

-- Location: LCCOMB_X63_Y36_N14
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(11)))) # (!\brnch~combout\ & (\pc~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datac => \pc~combout\(11),
	datad => \jmp_addr~combout\(11),
	combout => \Add0~44_combout\);

-- Location: LCFF_X63_Y36_N15
\instr_cache|cpu_addr_reg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~44_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(11));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(12),
	combout => \pc~combout\(12));

-- Location: PIN_B27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(12),
	combout => \jmp_addr~combout\(12));

-- Location: LCCOMB_X63_Y35_N30
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(12)))) # (!\brnch~combout\ & (\pc~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datab => \pc~combout\(12),
	datad => \jmp_addr~combout\(12),
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X63_Y35_N26
\instr_cache|cpu_addr_reg[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_addr_reg[12]~feeder_combout\ = \Add0~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~48_combout\,
	combout => \instr_cache|cpu_addr_reg[12]~feeder_combout\);

-- Location: LCFF_X63_Y35_N27
\instr_cache|cpu_addr_reg[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|cpu_addr_reg[12]~feeder_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(12));

-- Location: PIN_A26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(13),
	combout => \pc~combout\(13));

-- Location: PIN_D24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(13),
	combout => \jmp_addr~combout\(13));

-- Location: LCCOMB_X63_Y35_N16
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(13)))) # (!\brnch~combout\ & (\pc~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datab => \pc~combout\(13),
	datad => \jmp_addr~combout\(13),
	combout => \Add0~52_combout\);

-- Location: LCFF_X62_Y33_N11
\instr_cache|cpu_addr_reg[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~52_combout\,
	sload => VCC,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(13));

-- Location: PIN_M26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(16),
	combout => \pc~combout\(16));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(16),
	combout => \jmp_addr~combout\(16));

-- Location: LCCOMB_X63_Y36_N8
\Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(16)))) # (!\brnch~combout\ & (\pc~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datab => \pc~combout\(16),
	datad => \jmp_addr~combout\(16),
	combout => \Add0~64_combout\);

-- Location: LCFF_X63_Y36_N17
\instr_cache|cpu_addr_reg[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~64_combout\,
	sload => VCC,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(16));

-- Location: PIN_K30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(18),
	combout => \jmp_addr~combout\(18));

-- Location: PIN_R23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(18),
	combout => \pc~combout\(18));

-- Location: LCCOMB_X63_Y35_N14
\Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (\brnch~combout\ & (\jmp_addr~combout\(18))) # (!\brnch~combout\ & ((\pc~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jmp_addr~combout\(18),
	datac => \pc~combout\(18),
	datad => \brnch~combout\,
	combout => \Add0~72_combout\);

-- Location: LCFF_X63_Y35_N15
\instr_cache|cpu_addr_reg[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~72_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(18));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(25),
	combout => \jmp_addr~combout\(25));

-- Location: LCCOMB_X56_Y35_N24
\Add0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~100_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(25)))) # (!\brnch~combout\ & (\pc~combout\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(25),
	datac => \jmp_addr~combout\(25),
	datad => \brnch~combout\,
	combout => \Add0~100_combout\);

-- Location: LCFF_X56_Y35_N21
\instr_cache|cpu_addr_reg[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~100_combout\,
	sload => VCC,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(25));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(28),
	combout => \jmp_addr~combout\(28));

-- Location: LCCOMB_X56_Y35_N0
\Add0~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~112_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(28)))) # (!\brnch~combout\ & (\pc~combout\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(28),
	datac => \jmp_addr~combout\(28),
	datad => \brnch~combout\,
	combout => \Add0~112_combout\);

-- Location: LCCOMB_X56_Y35_N30
\instr_cache|cpu_addr_reg[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_addr_reg[28]~feeder_combout\ = \Add0~112_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~112_combout\,
	combout => \instr_cache|cpu_addr_reg[28]~feeder_combout\);

-- Location: LCFF_X56_Y35_N31
\instr_cache|cpu_addr_reg[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|cpu_addr_reg[28]~feeder_combout\,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(28));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(30),
	combout => \pc~combout\(30));

-- Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(30),
	combout => \jmp_addr~combout\(30));

-- Location: LCCOMB_X61_Y32_N4
\Add0~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~120_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(30)))) # (!\brnch~combout\ & (\pc~combout\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc~combout\(30),
	datac => \jmp_addr~combout\(30),
	datad => \brnch~combout\,
	combout => \Add0~120_combout\);

-- Location: LCFF_X61_Y34_N29
\instr_cache|cpu_addr_reg[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~120_combout\,
	sload => VCC,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(30));

-- Location: LCFF_X68_Y34_N29
\instr_cache|data|mem_reg_0__31__bypass[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(0));

-- Location: LCCOMB_X65_Y38_N10
\instr_cache|Selector140~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector140~0_combout\ = (\mem_data[0]~0\ & \instr_cache|current_state.READ_DBUS_STATE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data[0]~0\,
	datad => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	combout => \instr_cache|Selector140~0_combout\);

-- Location: LCFF_X65_Y38_N17
\instr_cache|data|mem_reg_0__31__bypass[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector140~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(32));

-- Location: LCCOMB_X67_Y34_N26
\instr_cache|Selector109~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector109~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[31]~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[31]~31\,
	combout => \instr_cache|Selector109~0_combout\);

-- Location: LCCOMB_X63_Y34_N16
\instr_cache|Selector107~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector107~2_combout\ = (!\instr_cache|current_state.EXECUTE_STATE~regout\ & !\instr_cache|current_state.READ_DBUS_STATE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|current_state.EXECUTE_STATE~regout\,
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	combout => \instr_cache|Selector107~2_combout\);

-- Location: LCCOMB_X62_Y34_N14
\instr_cache|Selector108~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector108~2_combout\ = (\Add0~0_combout\ & (!\stop~combout\ & (\instr_cache|req~0_combout\ & !\instr_cache|process_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \stop~combout\,
	datac => \instr_cache|req~0_combout\,
	datad => \instr_cache|process_1~8_combout\,
	combout => \instr_cache|Selector108~2_combout\);

-- Location: LCCOMB_X63_Y34_N28
\instr_cache|Selector108~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector108~5_combout\ = (\instr_cache|Selector108~4_combout\ & (((\instr_cache|Selector108~2_combout\) # (!\instr_cache|Selector107~2_combout\)))) # (!\instr_cache|Selector108~4_combout\ & (!\instr_cache|words_counter\(0) & 
-- (\instr_cache|Selector107~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Selector108~4_combout\,
	datab => \instr_cache|words_counter\(0),
	datac => \instr_cache|Selector107~2_combout\,
	datad => \instr_cache|Selector108~2_combout\,
	combout => \instr_cache|Selector108~5_combout\);

-- Location: LCCOMB_X63_Y34_N8
\instr_cache|Selector108~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector108~6_combout\ = (\instr_cache|Selector108~5_combout\ & (((\instr_cache|current_state.READ_DBUS_STATE~regout\) # (\instr_cache|current_state.EXECUTE_STATE~regout\)) # (!\instr_cache|current_state.IDLE_STATE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.IDLE_STATE~regout\,
	datab => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datac => \instr_cache|current_state.EXECUTE_STATE~regout\,
	datad => \instr_cache|Selector108~5_combout\,
	combout => \instr_cache|Selector108~6_combout\);

-- Location: PIN_J29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(1),
	combout => \jmp_addr~combout\(1));

-- Location: PIN_F30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(1),
	combout => \pc~combout\(1));

-- Location: LCCOMB_X63_Y36_N24
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\brnch~combout\ & (\jmp_addr~combout\(1))) # (!\brnch~combout\ & ((\pc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brnch~combout\,
	datab => \jmp_addr~combout\(1),
	datac => \pc~combout\(1),
	combout => \Add0~4_combout\);

-- Location: LCFF_X63_Y36_N11
\instr_cache|cpu_addr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~4_combout\,
	sload => VCC,
	ena => \instr_cache|cpu_rd_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_addr_reg\(1));

-- Location: LCCOMB_X68_Y38_N18
\instr_cache|cpu_rd_reg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_rd_reg~1_combout\ = (\reset~combout\ & (((\instr_cache|cpu_rd_reg~regout\)))) # (!\reset~combout\ & ((\instr_cache|cpu_rd_reg~0_combout\) # ((\instr_cache|current_state.IDLE_STATE~regout\ & \instr_cache|cpu_rd_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.IDLE_STATE~regout\,
	datab => \reset~combout\,
	datac => \instr_cache|cpu_rd_reg~regout\,
	datad => \instr_cache|cpu_rd_reg~0_combout\,
	combout => \instr_cache|cpu_rd_reg~1_combout\);

-- Location: LCFF_X68_Y38_N19
\instr_cache|cpu_rd_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|cpu_rd_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|cpu_rd_reg~regout\);

-- Location: LCCOMB_X63_Y36_N10
\instr_cache|Selector107~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector107~4_combout\ = (\instr_cache|cpu_addr_reg\(1) & \instr_cache|cpu_rd_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|cpu_addr_reg\(1),
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|Selector107~4_combout\);

-- Location: LCCOMB_X63_Y34_N22
\instr_cache|Selector107~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector107~5_combout\ = (\instr_cache|current_state.EXECUTE_STATE~regout\ & (((\instr_cache|Selector107~4_combout\)))) # (!\instr_cache|current_state.EXECUTE_STATE~regout\ & ((\instr_cache|words_counter\(1)) # 
-- ((!\instr_cache|current_state.READ_DBUS_STATE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|words_counter\(1),
	datab => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datac => \instr_cache|current_state.EXECUTE_STATE~regout\,
	datad => \instr_cache|Selector107~4_combout\,
	combout => \instr_cache|Selector107~5_combout\);

-- Location: LCCOMB_X62_Y34_N28
\instr_cache|Selector107~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector107~3_combout\ = (!\stop~combout\ & (\Add0~4_combout\ & (\instr_cache|req~0_combout\ & !\instr_cache|process_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datab => \Add0~4_combout\,
	datac => \instr_cache|req~0_combout\,
	datad => \instr_cache|process_1~8_combout\,
	combout => \instr_cache|Selector107~3_combout\);

-- Location: LCCOMB_X63_Y34_N12
\instr_cache|Selector107~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector107~6_combout\ = (\instr_cache|Selector107~5_combout\ & (((\instr_cache|Selector107~3_combout\) # (!\instr_cache|Selector107~2_combout\)))) # (!\instr_cache|Selector107~5_combout\ & (\instr_cache|Add2~0_combout\ & 
-- (\instr_cache|Selector107~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Add2~0_combout\,
	datab => \instr_cache|Selector107~5_combout\,
	datac => \instr_cache|Selector107~2_combout\,
	datad => \instr_cache|Selector107~3_combout\,
	combout => \instr_cache|Selector107~6_combout\);

-- Location: LCCOMB_X63_Y34_N14
\instr_cache|Selector107~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector107~7_combout\ = (\instr_cache|Selector107~6_combout\ & (((\instr_cache|current_state.READ_DBUS_STATE~regout\) # (\instr_cache|current_state.EXECUTE_STATE~regout\)) # (!\instr_cache|current_state.IDLE_STATE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.IDLE_STATE~regout\,
	datab => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datac => \instr_cache|current_state.EXECUTE_STATE~regout\,
	datad => \instr_cache|Selector107~6_combout\,
	combout => \instr_cache|Selector107~7_combout\);

-- Location: LCCOMB_X61_Y38_N18
\instr_cache|Selector106~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector106~0_combout\ = (!\instr_cache|current_state.ACK_WAIT_RM~regout\ & (!\instr_cache|current_state.STOPED_STATE~regout\ & (!\instr_cache|current_state.WAITING_STATE~regout\ & !\instr_cache|current_state.READ_MEM_STATE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.ACK_WAIT_RM~regout\,
	datab => \instr_cache|current_state.STOPED_STATE~regout\,
	datac => \instr_cache|current_state.WAITING_STATE~regout\,
	datad => \instr_cache|current_state.READ_MEM_STATE~regout\,
	combout => \instr_cache|Selector106~0_combout\);

-- Location: LCCOMB_X62_Y34_N22
\instr_cache|Selector106~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector106~2_combout\ = (\instr_cache|Selector106~0_combout\ & ((\instr_cache|Selector106~1_combout\) # ((\instr_cache|cpu_rd_reg~0_combout\ & !\instr_cache|process_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|Selector106~1_combout\,
	datab => \instr_cache|Selector106~0_combout\,
	datac => \instr_cache|cpu_rd_reg~0_combout\,
	datad => \instr_cache|process_1~8_combout\,
	combout => \instr_cache|Selector106~2_combout\);

-- Location: LCCOMB_X63_Y34_N2
\instr_cache|Selector106~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector106~3_combout\ = (\instr_cache|Selector106~2_combout\ & ((\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|cpu_addr_reg\(2))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_addr_reg\(2),
	datab => \Add0~8_combout\,
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|Selector106~2_combout\,
	combout => \instr_cache|Selector106~3_combout\);

-- Location: LCCOMB_X63_Y34_N20
\instr_cache|Selector105~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector105~0_combout\ = (\instr_cache|Selector106~2_combout\ & ((\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_addr_reg\(3)))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & (\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \instr_cache|cpu_addr_reg\(3),
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|Selector106~2_combout\,
	combout => \instr_cache|Selector105~0_combout\);

-- Location: LCCOMB_X63_Y34_N18
\instr_cache|Selector104~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector104~0_combout\ = (\instr_cache|Selector106~2_combout\ & ((\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_addr_reg\(4)))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & (\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \instr_cache|cpu_addr_reg\(4),
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|Selector106~2_combout\,
	combout => \instr_cache|Selector104~0_combout\);

-- Location: LCCOMB_X63_Y34_N0
\instr_cache|Selector103~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector103~0_combout\ = (\instr_cache|Selector106~2_combout\ & ((\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_addr_reg\(5)))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & (\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \instr_cache|cpu_addr_reg\(5),
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|Selector106~2_combout\,
	combout => \instr_cache|Selector103~0_combout\);

-- Location: LCCOMB_X68_Y34_N30
\instr_cache|Selector110~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector110~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[30]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[30]~30\,
	combout => \instr_cache|Selector110~0_combout\);

-- Location: LCCOMB_X67_Y34_N16
\instr_cache|Selector111~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector111~0_combout\ = (\mem_data[29]~29\ & \instr_cache|current_state.READ_DBUS_STATE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_data[29]~29\,
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	combout => \instr_cache|Selector111~0_combout\);

-- Location: LCCOMB_X67_Y34_N14
\instr_cache|Selector112~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector112~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[28]~28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datac => \mem_data[28]~28\,
	combout => \instr_cache|Selector112~0_combout\);

-- Location: LCCOMB_X67_Y34_N8
\instr_cache|Selector113~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector113~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[27]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datac => \mem_data[27]~27\,
	combout => \instr_cache|Selector113~0_combout\);

-- Location: LCCOMB_X68_Y35_N2
\instr_cache|Selector114~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector114~0_combout\ = (\mem_data[26]~26\ & \instr_cache|current_state.READ_DBUS_STATE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_data[26]~26\,
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	combout => \instr_cache|Selector114~0_combout\);

-- Location: LCCOMB_X68_Y35_N20
\instr_cache|Selector115~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector115~0_combout\ = (\mem_data[25]~25\ & \instr_cache|current_state.READ_DBUS_STATE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_data[25]~25\,
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	combout => \instr_cache|Selector115~0_combout\);

-- Location: LCCOMB_X68_Y35_N14
\instr_cache|Selector116~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector116~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[24]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[24]~24\,
	combout => \instr_cache|Selector116~0_combout\);

-- Location: LCCOMB_X68_Y35_N16
\instr_cache|Selector117~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector117~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[23]~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[23]~23\,
	combout => \instr_cache|Selector117~0_combout\);

-- Location: LCCOMB_X65_Y34_N22
\instr_cache|Selector118~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector118~0_combout\ = (\mem_data[22]~22\ & \instr_cache|current_state.READ_DBUS_STATE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_data[22]~22\,
	datad => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	combout => \instr_cache|Selector118~0_combout\);

-- Location: LCCOMB_X65_Y34_N4
\instr_cache|Selector119~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector119~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[21]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[21]~21\,
	combout => \instr_cache|Selector119~0_combout\);

-- Location: LCCOMB_X68_Y34_N22
\instr_cache|Selector120~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector120~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[20]~20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[20]~20\,
	combout => \instr_cache|Selector120~0_combout\);

-- Location: LCCOMB_X66_Y34_N18
\instr_cache|Selector121~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector121~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[19]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[19]~19\,
	combout => \instr_cache|Selector121~0_combout\);

-- Location: LCCOMB_X65_Y34_N26
\instr_cache|Selector122~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector122~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[18]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[18]~18\,
	combout => \instr_cache|Selector122~0_combout\);

-- Location: LCCOMB_X65_Y34_N8
\instr_cache|Selector123~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector123~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[17]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[17]~17\,
	combout => \instr_cache|Selector123~0_combout\);

-- Location: LCCOMB_X68_Y34_N12
\instr_cache|Selector124~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector124~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[16]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[16]~16\,
	combout => \instr_cache|Selector124~0_combout\);

-- Location: LCCOMB_X68_Y34_N2
\instr_cache|Selector125~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector125~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[15]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[15]~15\,
	combout => \instr_cache|Selector125~0_combout\);

-- Location: LCCOMB_X67_Y38_N22
\instr_cache|Selector126~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector126~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[14]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[14]~14\,
	combout => \instr_cache|Selector126~0_combout\);

-- Location: LCCOMB_X67_Y38_N16
\instr_cache|Selector127~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector127~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[13]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datac => \mem_data[13]~13\,
	combout => \instr_cache|Selector127~0_combout\);

-- Location: LCCOMB_X67_Y38_N2
\instr_cache|Selector128~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector128~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[12]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[12]~12\,
	combout => \instr_cache|Selector128~0_combout\);

-- Location: LCCOMB_X67_Y38_N0
\instr_cache|Selector129~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector129~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[11]~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[11]~11\,
	combout => \instr_cache|Selector129~0_combout\);

-- Location: LCCOMB_X66_Y34_N24
\instr_cache|Selector130~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector130~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[10]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datac => \mem_data[10]~10\,
	combout => \instr_cache|Selector130~0_combout\);

-- Location: LCCOMB_X66_Y34_N22
\instr_cache|Selector131~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector131~0_combout\ = (\mem_data[9]~9\ & \instr_cache|current_state.READ_DBUS_STATE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_data[9]~9\,
	datad => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	combout => \instr_cache|Selector131~0_combout\);

-- Location: LCCOMB_X66_Y34_N28
\instr_cache|Selector132~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector132~0_combout\ = (\mem_data[8]~8\ & \instr_cache|current_state.READ_DBUS_STATE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data[8]~8\,
	datad => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	combout => \instr_cache|Selector132~0_combout\);

-- Location: LCCOMB_X68_Y37_N26
\instr_cache|Selector133~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector133~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[7]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[7]~7\,
	combout => \instr_cache|Selector133~0_combout\);

-- Location: LCCOMB_X68_Y37_N4
\instr_cache|Selector134~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector134~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[6]~6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[6]~6\,
	combout => \instr_cache|Selector134~0_combout\);

-- Location: LCCOMB_X68_Y37_N14
\instr_cache|Selector135~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector135~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[5]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[5]~5\,
	combout => \instr_cache|Selector135~0_combout\);

-- Location: LCCOMB_X68_Y37_N8
\instr_cache|Selector136~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector136~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[4]~4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[4]~4\,
	combout => \instr_cache|Selector136~0_combout\);

-- Location: LCCOMB_X68_Y38_N22
\instr_cache|Selector137~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector137~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[3]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[3]~3\,
	combout => \instr_cache|Selector137~0_combout\);

-- Location: LCCOMB_X68_Y38_N16
\instr_cache|Selector138~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector138~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[2]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[2]~2\,
	combout => \instr_cache|Selector138~0_combout\);

-- Location: LCCOMB_X68_Y38_N2
\instr_cache|Selector139~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector139~0_combout\ = (\instr_cache|current_state.READ_DBUS_STATE~regout\ & \mem_data[1]~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	datad => \mem_data[1]~1\,
	combout => \instr_cache|Selector139~0_combout\);

-- Location: M4K_X64_Y34
\instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache:instr_cache|gmemory:data|altsyncram:mem_reg[0][31]__1|altsyncram_8og1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 32,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 32,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \instr_cache|current_state.READ_DBUS_STATE~regout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \instr_cache|data|mem_reg[0][31]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y38_N16
\instr_cache|data|data_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[0]~0_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(32))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(32),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(31),
	combout => \instr_cache|data|data_out[0]~0_combout\);

-- Location: LCFF_X68_Y38_N7
\instr_cache|data|mem_reg_0__31__bypass[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector139~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(31));

-- Location: LCCOMB_X68_Y38_N6
\instr_cache|data|data_out[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[1]~1_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(31))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(31),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(30),
	combout => \instr_cache|data|data_out[1]~1_combout\);

-- Location: LCFF_X68_Y38_N31
\instr_cache|data|mem_reg_0__31__bypass[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector138~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(30));

-- Location: LCCOMB_X68_Y38_N30
\instr_cache|data|data_out[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[2]~2_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(30))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(30),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(29),
	combout => \instr_cache|data|data_out[2]~2_combout\);

-- Location: LCFF_X68_Y38_N27
\instr_cache|data|mem_reg_0__31__bypass[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector137~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(29));

-- Location: LCCOMB_X68_Y38_N26
\instr_cache|data|data_out[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[3]~3_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(29))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(29),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(28),
	combout => \instr_cache|data|data_out[3]~3_combout\);

-- Location: LCFF_X68_Y37_N1
\instr_cache|data|mem_reg_0__31__bypass[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector136~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(28));

-- Location: LCCOMB_X68_Y37_N0
\instr_cache|data|data_out[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[4]~4_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(28))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(28),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(27),
	combout => \instr_cache|data|data_out[4]~4_combout\);

-- Location: LCFF_X68_Y37_N17
\instr_cache|data|mem_reg_0__31__bypass[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector135~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(27));

-- Location: LCCOMB_X68_Y37_N16
\instr_cache|data|data_out[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[5]~5_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(27))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(27),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(26),
	combout => \instr_cache|data|data_out[5]~5_combout\);

-- Location: LCFF_X68_Y37_N13
\instr_cache|data|mem_reg_0__31__bypass[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector134~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(26));

-- Location: LCCOMB_X68_Y37_N12
\instr_cache|data|data_out[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[6]~6_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg_0__31__bypass\(26)))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(25),
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(26),
	combout => \instr_cache|data|data_out[6]~6_combout\);

-- Location: LCFF_X68_Y37_N29
\instr_cache|data|mem_reg_0__31__bypass[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector133~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(25));

-- Location: LCCOMB_X68_Y37_N28
\instr_cache|data|data_out[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[7]~7_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(25))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(25),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(24),
	combout => \instr_cache|data|data_out[7]~7_combout\);

-- Location: LCFF_X66_Y34_N5
\instr_cache|data|mem_reg_0__31__bypass[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector132~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(24));

-- Location: LCCOMB_X66_Y34_N4
\instr_cache|data|data_out[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[8]~8_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg_0__31__bypass\(24)))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datab => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(23),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(24),
	combout => \instr_cache|data|data_out[8]~8_combout\);

-- Location: LCFF_X66_Y34_N1
\instr_cache|data|mem_reg_0__31__bypass[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector131~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(23));

-- Location: LCCOMB_X66_Y34_N0
\instr_cache|data|data_out[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[9]~9_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(23))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(23),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(22),
	combout => \instr_cache|data|data_out[9]~9_combout\);

-- Location: LCFF_X66_Y34_N9
\instr_cache|data|mem_reg_0__31__bypass[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector130~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(22));

-- Location: LCCOMB_X66_Y34_N8
\instr_cache|data|data_out[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[10]~10_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(22))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(22),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(21),
	combout => \instr_cache|data|data_out[10]~10_combout\);

-- Location: LCFF_X67_Y38_N9
\instr_cache|data|mem_reg_0__31__bypass[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector129~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(21));

-- Location: LCCOMB_X67_Y38_N8
\instr_cache|data|data_out[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[11]~11_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(21))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(21),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(20),
	combout => \instr_cache|data|data_out[11]~11_combout\);

-- Location: LCFF_X67_Y38_N29
\instr_cache|data|mem_reg_0__31__bypass[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector128~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(20));

-- Location: LCCOMB_X67_Y38_N28
\instr_cache|data|data_out[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[12]~12_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(20))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(20),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(19),
	combout => \instr_cache|data|data_out[12]~12_combout\);

-- Location: LCFF_X67_Y38_N5
\instr_cache|data|mem_reg_0__31__bypass[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector127~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(19));

-- Location: LCCOMB_X67_Y38_N4
\instr_cache|data|data_out[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[13]~13_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(19))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(19),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(18),
	combout => \instr_cache|data|data_out[13]~13_combout\);

-- Location: LCFF_X67_Y38_N13
\instr_cache|data|mem_reg_0__31__bypass[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector126~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(18));

-- Location: LCCOMB_X67_Y38_N12
\instr_cache|data|data_out[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[14]~14_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(18))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(18),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(17),
	combout => \instr_cache|data|data_out[14]~14_combout\);

-- Location: LCFF_X68_Y34_N19
\instr_cache|data|mem_reg_0__31__bypass[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector125~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(17));

-- Location: LCCOMB_X68_Y34_N18
\instr_cache|data|data_out[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[15]~15_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(17))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(17),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(16),
	combout => \instr_cache|data|data_out[15]~15_combout\);

-- Location: LCFF_X68_Y34_N7
\instr_cache|data|mem_reg_0__31__bypass[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector124~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(16));

-- Location: LCCOMB_X68_Y34_N6
\instr_cache|data|data_out[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[16]~16_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(16))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(16),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(15),
	combout => \instr_cache|data|data_out[16]~16_combout\);

-- Location: LCFF_X65_Y34_N13
\instr_cache|data|mem_reg_0__31__bypass[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector123~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(15));

-- Location: LCCOMB_X65_Y34_N12
\instr_cache|data|data_out[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[17]~17_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(15))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(15),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(14),
	combout => \instr_cache|data|data_out[17]~17_combout\);

-- Location: LCFF_X65_Y34_N1
\instr_cache|data|mem_reg_0__31__bypass[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector122~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(14));

-- Location: LCCOMB_X65_Y34_N0
\instr_cache|data|data_out[18]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[18]~18_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(14))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(14),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(13),
	combout => \instr_cache|data|data_out[18]~18_combout\);

-- Location: LCFF_X66_Y34_N13
\instr_cache|data|mem_reg_0__31__bypass[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector121~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(13));

-- Location: LCCOMB_X66_Y34_N12
\instr_cache|data|data_out[19]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[19]~19_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(13))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(13),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(12),
	combout => \instr_cache|data|data_out[19]~19_combout\);

-- Location: LCFF_X68_Y34_N11
\instr_cache|data|mem_reg_0__31__bypass[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector120~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(12));

-- Location: LCCOMB_X68_Y34_N10
\instr_cache|data|data_out[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[20]~20_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(12))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(12),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(11),
	combout => \instr_cache|data|data_out[20]~20_combout\);

-- Location: LCFF_X65_Y34_N29
\instr_cache|data|mem_reg_0__31__bypass[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector119~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(11));

-- Location: LCCOMB_X65_Y34_N28
\instr_cache|data|data_out[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[21]~21_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(11))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(11),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(10),
	combout => \instr_cache|data|data_out[21]~21_combout\);

-- Location: LCFF_X65_Y34_N25
\instr_cache|data|mem_reg_0__31__bypass[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector118~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(10));

-- Location: LCCOMB_X65_Y34_N24
\instr_cache|data|data_out[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[22]~22_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(10))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(10),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(9),
	combout => \instr_cache|data|data_out[22]~22_combout\);

-- Location: LCFF_X68_Y35_N25
\instr_cache|data|mem_reg_0__31__bypass[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector117~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(9));

-- Location: LCCOMB_X68_Y35_N24
\instr_cache|data|data_out[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[23]~23_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg_0__31__bypass\(9)))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datab => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(8),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(9),
	combout => \instr_cache|data|data_out[23]~23_combout\);

-- Location: LCFF_X68_Y35_N13
\instr_cache|data|mem_reg_0__31__bypass[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector116~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(8));

-- Location: LCCOMB_X68_Y35_N12
\instr_cache|data|data_out[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[24]~24_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(8))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(8),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(7),
	combout => \instr_cache|data|data_out[24]~24_combout\);

-- Location: LCFF_X68_Y35_N29
\instr_cache|data|mem_reg_0__31__bypass[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector115~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(7));

-- Location: LCCOMB_X68_Y35_N28
\instr_cache|data|data_out[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[25]~25_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg_0__31__bypass\(7)))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datab => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(6),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(7),
	combout => \instr_cache|data|data_out[25]~25_combout\);

-- Location: LCFF_X68_Y35_N1
\instr_cache|data|mem_reg_0__31__bypass[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector114~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(6));

-- Location: LCCOMB_X68_Y35_N0
\instr_cache|data|data_out[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[26]~26_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(6))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(6),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(5),
	combout => \instr_cache|data|data_out[26]~26_combout\);

-- Location: LCFF_X67_Y34_N13
\instr_cache|data|mem_reg_0__31__bypass[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector113~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(5));

-- Location: LCCOMB_X67_Y34_N12
\instr_cache|data|data_out[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[27]~27_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(5))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(5),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(4),
	combout => \instr_cache|data|data_out[27]~27_combout\);

-- Location: LCFF_X67_Y34_N29
\instr_cache|data|mem_reg_0__31__bypass[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector112~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(4));

-- Location: LCCOMB_X67_Y34_N28
\instr_cache|data|data_out[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[28]~28_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(4))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(4),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(3),
	combout => \instr_cache|data|data_out[28]~28_combout\);

-- Location: LCFF_X67_Y34_N1
\instr_cache|data|mem_reg_0__31__bypass[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector111~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(3));

-- Location: LCCOMB_X67_Y34_N0
\instr_cache|data|data_out[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[29]~29_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(3))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(3),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(2),
	combout => \instr_cache|data|data_out[29]~29_combout\);

-- Location: LCFF_X68_Y34_N31
\instr_cache|data|mem_reg_0__31__bypass[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|Selector110~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(2));

-- Location: LCCOMB_X68_Y34_N28
\instr_cache|data|data_out[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[30]~30_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(2))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(2),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(1),
	combout => \instr_cache|data|data_out[30]~30_combout\);

-- Location: LCFF_X67_Y34_N21
\instr_cache|data|mem_reg_0__31__bypass[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \instr_cache|Selector109~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data|mem_reg_0__31__bypass\(1));

-- Location: LCCOMB_X67_Y34_N20
\instr_cache|data|data_out[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data|data_out[31]~31_combout\ = (\instr_cache|data|mem_reg_0__31__bypass\(0) & (\instr_cache|data|mem_reg_0__31__bypass\(1))) # (!\instr_cache|data|mem_reg_0__31__bypass\(0) & ((\instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_cache|data|mem_reg_0__31__bypass\(0),
	datac => \instr_cache|data|mem_reg_0__31__bypass\(1),
	datad => \instr_cache|data|mem_reg[0][31]__1|auto_generated|q_b\(0),
	combout => \instr_cache|data|data_out[31]~31_combout\);

-- Location: LCCOMB_X68_Y38_N12
\instr_cache|data_out_reg[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[0]~0_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & (\instr_cache|data_out_reg\(0))) # (!\reset~combout\ & ((\instr_cache|data|data_out[0]~0_combout\))))) # (!\instr_cache|cpu_data_out[0]~64_combout\ & 
-- (((\instr_cache|data_out_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_data_out[0]~64_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(0),
	datad => \instr_cache|data|data_out[0]~0_combout\,
	combout => \instr_cache|data_out_reg[0]~0_combout\);

-- Location: LCFF_X68_Y38_N13
\instr_cache|data_out_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(0));

-- Location: LCCOMB_X68_Y38_N0
\instr_cache|cpu_data_out[0]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[0]~65_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(0))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- ((\instr_cache|data|data_out[0]~0_combout\))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data_out_reg\(0),
	datab => \instr_cache|data|data_out[0]~0_combout\,
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[0]~65_combout\);

-- Location: LCCOMB_X68_Y38_N20
\instr_cache|data_out_reg[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[1]~1_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & (\instr_cache|data_out_reg\(1))) # (!\reset~combout\ & ((\instr_cache|data|data_out[1]~1_combout\))))) # (!\instr_cache|cpu_data_out[0]~64_combout\ & 
-- (((\instr_cache|data_out_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_data_out[0]~64_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(1),
	datad => \instr_cache|data|data_out[1]~1_combout\,
	combout => \instr_cache|data_out_reg[1]~1_combout\);

-- Location: LCFF_X68_Y38_N21
\instr_cache|data_out_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(1));

-- Location: LCCOMB_X68_Y38_N14
\instr_cache|cpu_data_out[1]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[1]~66_combout\ = (\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(1))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & 
-- ((\instr_cache|data|data_out[1]~1_combout\))))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data_out_reg\(1),
	datab => \instr_cache|cpu_rd_reg~regout\,
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|data|data_out[1]~1_combout\,
	combout => \instr_cache|cpu_data_out[1]~66_combout\);

-- Location: LCCOMB_X68_Y38_N4
\instr_cache|data_out_reg[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[2]~2_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & (\instr_cache|data_out_reg\(2))) # (!\reset~combout\ & ((\instr_cache|data|data_out[2]~2_combout\))))) # (!\instr_cache|cpu_data_out[0]~64_combout\ & 
-- (((\instr_cache|data_out_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_data_out[0]~64_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(2),
	datad => \instr_cache|data|data_out[2]~2_combout\,
	combout => \instr_cache|data_out_reg[2]~2_combout\);

-- Location: LCFF_X68_Y38_N5
\instr_cache|data_out_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(2));

-- Location: LCCOMB_X68_Y38_N28
\instr_cache|cpu_data_out[2]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[2]~67_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (((\instr_cache|data_out_reg\(2))))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- ((\instr_cache|data|data_out[2]~2_combout\))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.IDLE_STATE~regout\,
	datab => \instr_cache|cpu_rd_reg~regout\,
	datac => \instr_cache|data_out_reg\(2),
	datad => \instr_cache|data|data_out[2]~2_combout\,
	combout => \instr_cache|cpu_data_out[2]~67_combout\);

-- Location: LCCOMB_X68_Y38_N24
\instr_cache|data_out_reg[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[3]~3_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & (\instr_cache|data_out_reg\(3))) # (!\reset~combout\ & ((\instr_cache|data|data_out[3]~3_combout\))))) # (!\instr_cache|cpu_data_out[0]~64_combout\ & 
-- (((\instr_cache|data_out_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_data_out[0]~64_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(3),
	datad => \instr_cache|data|data_out[3]~3_combout\,
	combout => \instr_cache|data_out_reg[3]~3_combout\);

-- Location: LCFF_X68_Y38_N25
\instr_cache|data_out_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(3));

-- Location: LCCOMB_X68_Y38_N10
\instr_cache|cpu_data_out[3]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[3]~68_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(3))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- ((\instr_cache|data|data_out[3]~3_combout\))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data_out_reg\(3),
	datab => \instr_cache|data|data_out[3]~3_combout\,
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[3]~68_combout\);

-- Location: LCCOMB_X68_Y38_N8
\instr_cache|cpu_data_out[0]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[0]~64_combout\ = (!\instr_cache|current_state.IDLE_STATE~regout\ & \instr_cache|cpu_rd_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[0]~64_combout\);

-- Location: LCCOMB_X68_Y37_N18
\instr_cache|data_out_reg[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[4]~4_combout\ = (\reset~combout\ & (((\instr_cache|data_out_reg\(4))))) # (!\reset~combout\ & ((\instr_cache|cpu_data_out[0]~64_combout\ & ((\instr_cache|data|data_out[4]~4_combout\))) # (!\instr_cache|cpu_data_out[0]~64_combout\ 
-- & (\instr_cache|data_out_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|cpu_data_out[0]~64_combout\,
	datac => \instr_cache|data_out_reg\(4),
	datad => \instr_cache|data|data_out[4]~4_combout\,
	combout => \instr_cache|data_out_reg[4]~4_combout\);

-- Location: LCFF_X68_Y37_N19
\instr_cache|data_out_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(4));

-- Location: LCCOMB_X68_Y37_N24
\instr_cache|cpu_data_out[4]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[4]~69_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(4))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- ((\instr_cache|data|data_out[4]~4_combout\))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.IDLE_STATE~regout\,
	datab => \instr_cache|data_out_reg\(4),
	datac => \instr_cache|cpu_rd_reg~regout\,
	datad => \instr_cache|data|data_out[4]~4_combout\,
	combout => \instr_cache|cpu_data_out[4]~69_combout\);

-- Location: LCCOMB_X68_Y37_N30
\instr_cache|data_out_reg[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[5]~5_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & ((\instr_cache|data_out_reg\(5)))) # (!\reset~combout\ & (\instr_cache|data|data_out[5]~5_combout\)))) # (!\instr_cache|cpu_data_out[0]~64_combout\ & 
-- (((\instr_cache|data_out_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[5]~5_combout\,
	datab => \instr_cache|cpu_data_out[0]~64_combout\,
	datac => \instr_cache|data_out_reg\(5),
	datad => \reset~combout\,
	combout => \instr_cache|data_out_reg[5]~5_combout\);

-- Location: LCFF_X68_Y37_N31
\instr_cache|data_out_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(5));

-- Location: LCCOMB_X68_Y37_N10
\instr_cache|cpu_data_out[5]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[5]~70_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(5))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- ((\instr_cache|data|data_out[5]~5_combout\))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.IDLE_STATE~regout\,
	datab => \instr_cache|data_out_reg\(5),
	datac => \instr_cache|cpu_rd_reg~regout\,
	datad => \instr_cache|data|data_out[5]~5_combout\,
	combout => \instr_cache|cpu_data_out[5]~70_combout\);

-- Location: LCCOMB_X68_Y37_N2
\instr_cache|data_out_reg[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[6]~6_combout\ = (\reset~combout\ & (((\instr_cache|data_out_reg\(6))))) # (!\reset~combout\ & ((\instr_cache|cpu_data_out[0]~64_combout\ & ((\instr_cache|data|data_out[6]~6_combout\))) # (!\instr_cache|cpu_data_out[0]~64_combout\ 
-- & (\instr_cache|data_out_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|cpu_data_out[0]~64_combout\,
	datac => \instr_cache|data_out_reg\(6),
	datad => \instr_cache|data|data_out[6]~6_combout\,
	combout => \instr_cache|data_out_reg[6]~6_combout\);

-- Location: LCFF_X68_Y37_N3
\instr_cache|data_out_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(6));

-- Location: LCCOMB_X68_Y37_N20
\instr_cache|cpu_data_out[6]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[6]~71_combout\ = (\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|data_out_reg\(6)))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & 
-- (\instr_cache|data|data_out[6]~6_combout\)))) # (!\instr_cache|cpu_rd_reg~regout\ & (((\instr_cache|data_out_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[6]~6_combout\,
	datab => \instr_cache|cpu_rd_reg~regout\,
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|data_out_reg\(6),
	combout => \instr_cache|cpu_data_out[6]~71_combout\);

-- Location: LCCOMB_X68_Y37_N22
\instr_cache|data_out_reg[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[7]~7_combout\ = (\reset~combout\ & (((\instr_cache|data_out_reg\(7))))) # (!\reset~combout\ & ((\instr_cache|cpu_data_out[0]~64_combout\ & ((\instr_cache|data|data_out[7]~7_combout\))) # (!\instr_cache|cpu_data_out[0]~64_combout\ 
-- & (\instr_cache|data_out_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|cpu_data_out[0]~64_combout\,
	datac => \instr_cache|data_out_reg\(7),
	datad => \instr_cache|data|data_out[7]~7_combout\,
	combout => \instr_cache|data_out_reg[7]~7_combout\);

-- Location: LCFF_X68_Y37_N23
\instr_cache|data_out_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(7));

-- Location: LCCOMB_X68_Y37_N6
\instr_cache|cpu_data_out[7]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[7]~72_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(7))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- ((\instr_cache|data|data_out[7]~7_combout\))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.IDLE_STATE~regout\,
	datab => \instr_cache|data_out_reg\(7),
	datac => \instr_cache|cpu_rd_reg~regout\,
	datad => \instr_cache|data|data_out[7]~7_combout\,
	combout => \instr_cache|cpu_data_out[7]~72_combout\);

-- Location: LCCOMB_X66_Y34_N30
\instr_cache|data_out_reg[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[8]~8_combout\ = (\reset~combout\ & (((\instr_cache|data_out_reg\(8))))) # (!\reset~combout\ & ((\instr_cache|cpu_data_out[0]~64_combout\ & (\instr_cache|data|data_out[8]~8_combout\)) # (!\instr_cache|cpu_data_out[0]~64_combout\ & 
-- ((\instr_cache|data_out_reg\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|data|data_out[8]~8_combout\,
	datac => \instr_cache|data_out_reg\(8),
	datad => \instr_cache|cpu_data_out[0]~64_combout\,
	combout => \instr_cache|data_out_reg[8]~8_combout\);

-- Location: LCFF_X66_Y34_N31
\instr_cache|data_out_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(8));

-- Location: LCCOMB_X66_Y34_N20
\instr_cache|cpu_data_out[8]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[8]~73_combout\ = (\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|data_out_reg\(8)))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & 
-- (\instr_cache|data|data_out[8]~8_combout\)))) # (!\instr_cache|cpu_rd_reg~regout\ & (((\instr_cache|data_out_reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[8]~8_combout\,
	datab => \instr_cache|data_out_reg\(8),
	datac => \instr_cache|cpu_rd_reg~regout\,
	datad => \instr_cache|current_state.IDLE_STATE~regout\,
	combout => \instr_cache|cpu_data_out[8]~73_combout\);

-- Location: LCCOMB_X66_Y34_N10
\instr_cache|data_out_reg[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[9]~9_combout\ = (\reset~combout\ & (((\instr_cache|data_out_reg\(9))))) # (!\reset~combout\ & ((\instr_cache|cpu_data_out[0]~64_combout\ & ((\instr_cache|data|data_out[9]~9_combout\))) # (!\instr_cache|cpu_data_out[0]~64_combout\ 
-- & (\instr_cache|data_out_reg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|cpu_data_out[0]~64_combout\,
	datac => \instr_cache|data_out_reg\(9),
	datad => \instr_cache|data|data_out[9]~9_combout\,
	combout => \instr_cache|data_out_reg[9]~9_combout\);

-- Location: LCFF_X66_Y34_N11
\instr_cache|data_out_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(9));

-- Location: LCCOMB_X66_Y34_N2
\instr_cache|cpu_data_out[9]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[9]~74_combout\ = (\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(9))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & 
-- ((\instr_cache|data|data_out[9]~9_combout\))))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data_out_reg\(9),
	datab => \instr_cache|data|data_out[9]~9_combout\,
	datac => \instr_cache|cpu_rd_reg~regout\,
	datad => \instr_cache|current_state.IDLE_STATE~regout\,
	combout => \instr_cache|cpu_data_out[9]~74_combout\);

-- Location: LCCOMB_X66_Y34_N6
\instr_cache|data_out_reg[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[10]~10_combout\ = (\reset~combout\ & (((\instr_cache|data_out_reg\(10))))) # (!\reset~combout\ & ((\instr_cache|cpu_data_out[0]~64_combout\ & (\instr_cache|data|data_out[10]~10_combout\)) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & ((\instr_cache|data_out_reg\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|data|data_out[10]~10_combout\,
	datac => \instr_cache|data_out_reg\(10),
	datad => \instr_cache|cpu_data_out[0]~64_combout\,
	combout => \instr_cache|data_out_reg[10]~10_combout\);

-- Location: LCFF_X66_Y34_N7
\instr_cache|data_out_reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(10));

-- Location: LCCOMB_X66_Y34_N16
\instr_cache|cpu_data_out[10]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[10]~75_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(10))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- ((\instr_cache|data|data_out[10]~10_combout\))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data_out_reg\(10),
	datab => \instr_cache|current_state.IDLE_STATE~regout\,
	datac => \instr_cache|data|data_out[10]~10_combout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[10]~75_combout\);

-- Location: LCCOMB_X67_Y38_N18
\instr_cache|data_out_reg[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[11]~11_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & ((\instr_cache|data_out_reg\(11)))) # (!\reset~combout\ & (\instr_cache|data|data_out[11]~11_combout\)))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (((\instr_cache|data_out_reg\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[11]~11_combout\,
	datab => \instr_cache|cpu_data_out[0]~64_combout\,
	datac => \instr_cache|data_out_reg\(11),
	datad => \reset~combout\,
	combout => \instr_cache|data_out_reg[11]~11_combout\);

-- Location: LCFF_X67_Y38_N19
\instr_cache|data_out_reg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(11));

-- Location: LCCOMB_X67_Y38_N24
\instr_cache|cpu_data_out[11]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[11]~76_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(11))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- ((\instr_cache|data|data_out[11]~11_combout\))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.IDLE_STATE~regout\,
	datab => \instr_cache|data_out_reg\(11),
	datac => \instr_cache|data|data_out[11]~11_combout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[11]~76_combout\);

-- Location: LCCOMB_X67_Y38_N6
\instr_cache|data_out_reg[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[12]~12_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & (\instr_cache|data_out_reg\(12))) # (!\reset~combout\ & ((\instr_cache|data|data_out[12]~12_combout\))))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (((\instr_cache|data_out_reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_data_out[0]~64_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(12),
	datad => \instr_cache|data|data_out[12]~12_combout\,
	combout => \instr_cache|data_out_reg[12]~12_combout\);

-- Location: LCFF_X67_Y38_N7
\instr_cache|data_out_reg[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(12));

-- Location: LCCOMB_X67_Y38_N26
\instr_cache|cpu_data_out[12]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[12]~77_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(12))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- ((\instr_cache|data|data_out[12]~12_combout\))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data_out_reg\(12),
	datab => \instr_cache|data|data_out[12]~12_combout\,
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[12]~77_combout\);

-- Location: LCCOMB_X67_Y38_N14
\instr_cache|data_out_reg[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[13]~13_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & ((\instr_cache|data_out_reg\(13)))) # (!\reset~combout\ & (\instr_cache|data|data_out[13]~13_combout\)))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (((\instr_cache|data_out_reg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_data_out[0]~64_combout\,
	datab => \instr_cache|data|data_out[13]~13_combout\,
	datac => \instr_cache|data_out_reg\(13),
	datad => \reset~combout\,
	combout => \instr_cache|data_out_reg[13]~13_combout\);

-- Location: LCFF_X67_Y38_N15
\instr_cache|data_out_reg[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(13));

-- Location: LCCOMB_X67_Y38_N20
\instr_cache|cpu_data_out[13]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[13]~78_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(13))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- ((\instr_cache|data|data_out[13]~13_combout\))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.IDLE_STATE~regout\,
	datab => \instr_cache|data_out_reg\(13),
	datac => \instr_cache|data|data_out[13]~13_combout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[13]~78_combout\);

-- Location: LCCOMB_X67_Y38_N30
\instr_cache|data_out_reg[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[14]~14_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & ((\instr_cache|data_out_reg\(14)))) # (!\reset~combout\ & (\instr_cache|data|data_out[14]~14_combout\)))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (((\instr_cache|data_out_reg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[14]~14_combout\,
	datab => \instr_cache|cpu_data_out[0]~64_combout\,
	datac => \instr_cache|data_out_reg\(14),
	datad => \reset~combout\,
	combout => \instr_cache|data_out_reg[14]~14_combout\);

-- Location: LCFF_X67_Y38_N31
\instr_cache|data_out_reg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(14));

-- Location: LCCOMB_X67_Y38_N10
\instr_cache|cpu_data_out[14]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[14]~79_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (((\instr_cache|data_out_reg\(14))))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- (\instr_cache|data|data_out[14]~14_combout\)) # (!\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|data_out_reg\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[14]~14_combout\,
	datab => \instr_cache|data_out_reg\(14),
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[14]~79_combout\);

-- Location: LCCOMB_X68_Y34_N20
\instr_cache|data_out_reg[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[15]~15_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & (\instr_cache|data_out_reg\(15))) # (!\reset~combout\ & ((\instr_cache|data|data_out[15]~15_combout\))))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (((\instr_cache|data_out_reg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_data_out[0]~64_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(15),
	datad => \instr_cache|data|data_out[15]~15_combout\,
	combout => \instr_cache|data_out_reg[15]~15_combout\);

-- Location: LCFF_X68_Y34_N21
\instr_cache|data_out_reg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(15));

-- Location: LCCOMB_X68_Y34_N4
\instr_cache|cpu_data_out[15]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[15]~80_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(15))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- ((\instr_cache|data|data_out[15]~15_combout\))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data_out_reg\(15),
	datab => \instr_cache|data|data_out[15]~15_combout\,
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[15]~80_combout\);

-- Location: LCCOMB_X68_Y34_N8
\instr_cache|data_out_reg[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[16]~16_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & (\instr_cache|data_out_reg\(16))) # (!\reset~combout\ & ((\instr_cache|data|data_out[16]~16_combout\))))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (((\instr_cache|data_out_reg\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_data_out[0]~64_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(16),
	datad => \instr_cache|data|data_out[16]~16_combout\,
	combout => \instr_cache|data_out_reg[16]~16_combout\);

-- Location: LCFF_X68_Y34_N9
\instr_cache|data_out_reg[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(16));

-- Location: LCCOMB_X68_Y34_N26
\instr_cache|cpu_data_out[16]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[16]~81_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (((\instr_cache|data_out_reg\(16))))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- (\instr_cache|data|data_out[16]~16_combout\)) # (!\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|data_out_reg\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[16]~16_combout\,
	datab => \instr_cache|data_out_reg\(16),
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[16]~81_combout\);

-- Location: LCCOMB_X65_Y34_N6
\instr_cache|data_out_reg[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[17]~17_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & (\instr_cache|data_out_reg\(17))) # (!\reset~combout\ & ((\instr_cache|data|data_out[17]~17_combout\))))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (((\instr_cache|data_out_reg\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_data_out[0]~64_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(17),
	datad => \instr_cache|data|data_out[17]~17_combout\,
	combout => \instr_cache|data_out_reg[17]~17_combout\);

-- Location: LCFF_X65_Y34_N7
\instr_cache|data_out_reg[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(17));

-- Location: LCCOMB_X65_Y34_N20
\instr_cache|cpu_data_out[17]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[17]~82_combout\ = (\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(17))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & 
-- ((\instr_cache|data|data_out[17]~17_combout\))))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data_out_reg\(17),
	datab => \instr_cache|cpu_rd_reg~regout\,
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|data|data_out[17]~17_combout\,
	combout => \instr_cache|cpu_data_out[17]~82_combout\);

-- Location: LCCOMB_X65_Y34_N10
\instr_cache|data_out_reg[18]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[18]~18_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & (\instr_cache|data_out_reg\(18))) # (!\reset~combout\ & ((\instr_cache|data|data_out[18]~18_combout\))))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (((\instr_cache|data_out_reg\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_data_out[0]~64_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(18),
	datad => \instr_cache|data|data_out[18]~18_combout\,
	combout => \instr_cache|data_out_reg[18]~18_combout\);

-- Location: LCFF_X65_Y34_N11
\instr_cache|data_out_reg[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(18));

-- Location: LCCOMB_X65_Y34_N18
\instr_cache|cpu_data_out[18]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[18]~83_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(18))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- ((\instr_cache|data|data_out[18]~18_combout\))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data_out_reg\(18),
	datab => \instr_cache|data|data_out[18]~18_combout\,
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[18]~83_combout\);

-- Location: LCCOMB_X66_Y34_N14
\instr_cache|data_out_reg[19]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[19]~19_combout\ = (\reset~combout\ & (((\instr_cache|data_out_reg\(19))))) # (!\reset~combout\ & ((\instr_cache|cpu_data_out[0]~64_combout\ & ((\instr_cache|data|data_out[19]~19_combout\))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (\instr_cache|data_out_reg\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|cpu_data_out[0]~64_combout\,
	datac => \instr_cache|data_out_reg\(19),
	datad => \instr_cache|data|data_out[19]~19_combout\,
	combout => \instr_cache|data_out_reg[19]~19_combout\);

-- Location: LCFF_X66_Y34_N15
\instr_cache|data_out_reg[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(19));

-- Location: LCCOMB_X66_Y34_N26
\instr_cache|cpu_data_out[19]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[19]~84_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (((\instr_cache|data_out_reg\(19))))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- (\instr_cache|data|data_out[19]~19_combout\)) # (!\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|data_out_reg\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[19]~19_combout\,
	datab => \instr_cache|current_state.IDLE_STATE~regout\,
	datac => \instr_cache|data_out_reg\(19),
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[19]~84_combout\);

-- Location: LCCOMB_X68_Y34_N0
\instr_cache|data_out_reg[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[20]~20_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & (\instr_cache|data_out_reg\(20))) # (!\reset~combout\ & ((\instr_cache|data|data_out[20]~20_combout\))))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (((\instr_cache|data_out_reg\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_data_out[0]~64_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(20),
	datad => \instr_cache|data|data_out[20]~20_combout\,
	combout => \instr_cache|data_out_reg[20]~20_combout\);

-- Location: LCFF_X68_Y34_N1
\instr_cache|data_out_reg[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(20));

-- Location: LCCOMB_X68_Y34_N24
\instr_cache|cpu_data_out[20]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[20]~85_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (((\instr_cache|data_out_reg\(20))))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- (\instr_cache|data|data_out[20]~20_combout\)) # (!\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|data_out_reg\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[20]~20_combout\,
	datab => \instr_cache|data_out_reg\(20),
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[20]~85_combout\);

-- Location: LCCOMB_X65_Y34_N14
\instr_cache|data_out_reg[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[21]~21_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & (\instr_cache|data_out_reg\(21))) # (!\reset~combout\ & ((\instr_cache|data|data_out[21]~21_combout\))))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (((\instr_cache|data_out_reg\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_data_out[0]~64_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(21),
	datad => \instr_cache|data|data_out[21]~21_combout\,
	combout => \instr_cache|data_out_reg[21]~21_combout\);

-- Location: LCFF_X65_Y34_N15
\instr_cache|data_out_reg[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(21));

-- Location: LCCOMB_X65_Y34_N16
\instr_cache|cpu_data_out[21]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[21]~86_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (((\instr_cache|data_out_reg\(21))))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- (\instr_cache|data|data_out[21]~21_combout\)) # (!\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|data_out_reg\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.IDLE_STATE~regout\,
	datab => \instr_cache|data|data_out[21]~21_combout\,
	datac => \instr_cache|data_out_reg\(21),
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[21]~86_combout\);

-- Location: LCCOMB_X65_Y34_N30
\instr_cache|data_out_reg[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[22]~22_combout\ = (\reset~combout\ & (((\instr_cache|data_out_reg\(22))))) # (!\reset~combout\ & ((\instr_cache|cpu_data_out[0]~64_combout\ & (\instr_cache|data|data_out[22]~22_combout\)) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & ((\instr_cache|data_out_reg\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[22]~22_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(22),
	datad => \instr_cache|cpu_data_out[0]~64_combout\,
	combout => \instr_cache|data_out_reg[22]~22_combout\);

-- Location: LCFF_X65_Y34_N31
\instr_cache|data_out_reg[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(22));

-- Location: LCCOMB_X65_Y34_N2
\instr_cache|cpu_data_out[22]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[22]~87_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (((\instr_cache|data_out_reg\(22))))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- (\instr_cache|data|data_out[22]~22_combout\)) # (!\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|data_out_reg\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[22]~22_combout\,
	datab => \instr_cache|data_out_reg\(22),
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[22]~87_combout\);

-- Location: LCCOMB_X68_Y35_N6
\instr_cache|data_out_reg[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[23]~23_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & ((\instr_cache|data_out_reg\(23)))) # (!\reset~combout\ & (\instr_cache|data|data_out[23]~23_combout\)))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (((\instr_cache|data_out_reg\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[23]~23_combout\,
	datab => \instr_cache|cpu_data_out[0]~64_combout\,
	datac => \instr_cache|data_out_reg\(23),
	datad => \reset~combout\,
	combout => \instr_cache|data_out_reg[23]~23_combout\);

-- Location: LCFF_X68_Y35_N7
\instr_cache|data_out_reg[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(23));

-- Location: LCCOMB_X68_Y35_N4
\instr_cache|cpu_data_out[23]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[23]~88_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (((\instr_cache|data_out_reg\(23))))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- (\instr_cache|data|data_out[23]~23_combout\)) # (!\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|data_out_reg\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.IDLE_STATE~regout\,
	datab => \instr_cache|cpu_rd_reg~regout\,
	datac => \instr_cache|data|data_out[23]~23_combout\,
	datad => \instr_cache|data_out_reg\(23),
	combout => \instr_cache|cpu_data_out[23]~88_combout\);

-- Location: LCCOMB_X68_Y35_N18
\instr_cache|data_out_reg[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[24]~24_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & ((\instr_cache|data_out_reg\(24)))) # (!\reset~combout\ & (\instr_cache|data|data_out[24]~24_combout\)))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (((\instr_cache|data_out_reg\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[24]~24_combout\,
	datab => \instr_cache|cpu_data_out[0]~64_combout\,
	datac => \instr_cache|data_out_reg\(24),
	datad => \reset~combout\,
	combout => \instr_cache|data_out_reg[24]~24_combout\);

-- Location: LCFF_X68_Y35_N19
\instr_cache|data_out_reg[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(24));

-- Location: LCCOMB_X68_Y35_N26
\instr_cache|cpu_data_out[24]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[24]~89_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (((\instr_cache|data_out_reg\(24))))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- (\instr_cache|data|data_out[24]~24_combout\)) # (!\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|data_out_reg\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[24]~24_combout\,
	datab => \instr_cache|data_out_reg\(24),
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[24]~89_combout\);

-- Location: LCCOMB_X68_Y35_N30
\instr_cache|data_out_reg[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[25]~25_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & ((\instr_cache|data_out_reg\(25)))) # (!\reset~combout\ & (\instr_cache|data|data_out[25]~25_combout\)))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (((\instr_cache|data_out_reg\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[25]~25_combout\,
	datab => \instr_cache|cpu_data_out[0]~64_combout\,
	datac => \instr_cache|data_out_reg\(25),
	datad => \reset~combout\,
	combout => \instr_cache|data_out_reg[25]~25_combout\);

-- Location: LCFF_X68_Y35_N31
\instr_cache|data_out_reg[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(25));

-- Location: LCCOMB_X68_Y35_N8
\instr_cache|cpu_data_out[25]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[25]~90_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (((\instr_cache|data_out_reg\(25))))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- (\instr_cache|data|data_out[25]~25_combout\)) # (!\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|data_out_reg\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[25]~25_combout\,
	datab => \instr_cache|data_out_reg\(25),
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[25]~90_combout\);

-- Location: LCCOMB_X68_Y35_N10
\instr_cache|data_out_reg[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[26]~26_combout\ = (\reset~combout\ & (((\instr_cache|data_out_reg\(26))))) # (!\reset~combout\ & ((\instr_cache|cpu_data_out[0]~64_combout\ & ((\instr_cache|data|data_out[26]~26_combout\))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (\instr_cache|data_out_reg\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|cpu_data_out[0]~64_combout\,
	datac => \instr_cache|data_out_reg\(26),
	datad => \instr_cache|data|data_out[26]~26_combout\,
	combout => \instr_cache|data_out_reg[26]~26_combout\);

-- Location: LCFF_X68_Y35_N11
\instr_cache|data_out_reg[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(26));

-- Location: LCCOMB_X68_Y35_N22
\instr_cache|cpu_data_out[26]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[26]~91_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(26))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- ((\instr_cache|data|data_out[26]~26_combout\))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data_out_reg\(26),
	datab => \instr_cache|data|data_out[26]~26_combout\,
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[26]~91_combout\);

-- Location: LCCOMB_X67_Y34_N30
\instr_cache|data_out_reg[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[27]~27_combout\ = (\reset~combout\ & (((\instr_cache|data_out_reg\(27))))) # (!\reset~combout\ & ((\instr_cache|cpu_data_out[0]~64_combout\ & (\instr_cache|data|data_out[27]~27_combout\)) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & ((\instr_cache|data_out_reg\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[27]~27_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(27),
	datad => \instr_cache|cpu_data_out[0]~64_combout\,
	combout => \instr_cache|data_out_reg[27]~27_combout\);

-- Location: LCFF_X67_Y34_N31
\instr_cache|data_out_reg[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(27));

-- Location: LCCOMB_X67_Y34_N4
\instr_cache|cpu_data_out[27]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[27]~92_combout\ = (\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|data_out_reg\(27)))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & 
-- (\instr_cache|data|data_out[27]~27_combout\)))) # (!\instr_cache|cpu_rd_reg~regout\ & (((\instr_cache|data_out_reg\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[27]~27_combout\,
	datab => \instr_cache|cpu_rd_reg~regout\,
	datac => \instr_cache|data_out_reg\(27),
	datad => \instr_cache|current_state.IDLE_STATE~regout\,
	combout => \instr_cache|cpu_data_out[27]~92_combout\);

-- Location: LCCOMB_X67_Y34_N6
\instr_cache|data_out_reg[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[28]~28_combout\ = (\reset~combout\ & (((\instr_cache|data_out_reg\(28))))) # (!\reset~combout\ & ((\instr_cache|cpu_data_out[0]~64_combout\ & (\instr_cache|data|data_out[28]~28_combout\)) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & ((\instr_cache|data_out_reg\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|data|data_out[28]~28_combout\,
	datac => \instr_cache|data_out_reg\(28),
	datad => \instr_cache|cpu_data_out[0]~64_combout\,
	combout => \instr_cache|data_out_reg[28]~28_combout\);

-- Location: LCFF_X67_Y34_N7
\instr_cache|data_out_reg[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(28));

-- Location: LCCOMB_X67_Y34_N2
\instr_cache|cpu_data_out[28]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[28]~93_combout\ = (\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(28))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & 
-- ((\instr_cache|data|data_out[28]~28_combout\))))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data_out_reg\(28),
	datab => \instr_cache|data|data_out[28]~28_combout\,
	datac => \instr_cache|cpu_rd_reg~regout\,
	datad => \instr_cache|current_state.IDLE_STATE~regout\,
	combout => \instr_cache|cpu_data_out[28]~93_combout\);

-- Location: LCCOMB_X67_Y34_N10
\instr_cache|data_out_reg[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[29]~29_combout\ = (\reset~combout\ & (((\instr_cache|data_out_reg\(29))))) # (!\reset~combout\ & ((\instr_cache|cpu_data_out[0]~64_combout\ & (\instr_cache|data|data_out[29]~29_combout\)) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & ((\instr_cache|data_out_reg\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \instr_cache|data|data_out[29]~29_combout\,
	datac => \instr_cache|data_out_reg\(29),
	datad => \instr_cache|cpu_data_out[0]~64_combout\,
	combout => \instr_cache|data_out_reg[29]~29_combout\);

-- Location: LCFF_X67_Y34_N11
\instr_cache|data_out_reg[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(29));

-- Location: LCCOMB_X67_Y34_N24
\instr_cache|cpu_data_out[29]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[29]~94_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (\instr_cache|data_out_reg\(29))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- ((\instr_cache|data|data_out[29]~29_combout\))) # (!\instr_cache|cpu_rd_reg~regout\ & (\instr_cache|data_out_reg\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data_out_reg\(29),
	datab => \instr_cache|data|data_out[29]~29_combout\,
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[29]~94_combout\);

-- Location: LCCOMB_X68_Y34_N16
\instr_cache|data_out_reg[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[30]~30_combout\ = (\instr_cache|cpu_data_out[0]~64_combout\ & ((\reset~combout\ & (\instr_cache|data_out_reg\(30))) # (!\reset~combout\ & ((\instr_cache|data|data_out[30]~30_combout\))))) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & (((\instr_cache|data_out_reg\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|cpu_data_out[0]~64_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(30),
	datad => \instr_cache|data|data_out[30]~30_combout\,
	combout => \instr_cache|data_out_reg[30]~30_combout\);

-- Location: LCFF_X68_Y34_N17
\instr_cache|data_out_reg[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(30));

-- Location: LCCOMB_X68_Y34_N14
\instr_cache|cpu_data_out[30]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[30]~95_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (((\instr_cache|data_out_reg\(30))))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|cpu_rd_reg~regout\ & 
-- (\instr_cache|data|data_out[30]~30_combout\)) # (!\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|data_out_reg\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.IDLE_STATE~regout\,
	datab => \instr_cache|data|data_out[30]~30_combout\,
	datac => \instr_cache|data_out_reg\(30),
	datad => \instr_cache|cpu_rd_reg~regout\,
	combout => \instr_cache|cpu_data_out[30]~95_combout\);

-- Location: LCCOMB_X67_Y34_N22
\instr_cache|data_out_reg[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|data_out_reg[31]~31_combout\ = (\reset~combout\ & (((\instr_cache|data_out_reg\(31))))) # (!\reset~combout\ & ((\instr_cache|cpu_data_out[0]~64_combout\ & (\instr_cache|data|data_out[31]~31_combout\)) # 
-- (!\instr_cache|cpu_data_out[0]~64_combout\ & ((\instr_cache|data_out_reg\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[31]~31_combout\,
	datab => \reset~combout\,
	datac => \instr_cache|data_out_reg\(31),
	datad => \instr_cache|cpu_data_out[0]~64_combout\,
	combout => \instr_cache|data_out_reg[31]~31_combout\);

-- Location: LCFF_X67_Y34_N23
\instr_cache|data_out_reg[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instr_cache|data_out_reg[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_cache|data_out_reg\(31));

-- Location: LCCOMB_X67_Y34_N18
\instr_cache|cpu_data_out[31]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|cpu_data_out[31]~96_combout\ = (\instr_cache|cpu_rd_reg~regout\ & ((\instr_cache|current_state.IDLE_STATE~regout\ & ((\instr_cache|data_out_reg\(31)))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & 
-- (\instr_cache|data|data_out[31]~31_combout\)))) # (!\instr_cache|cpu_rd_reg~regout\ & (((\instr_cache|data_out_reg\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|data|data_out[31]~31_combout\,
	datab => \instr_cache|data_out_reg\(31),
	datac => \instr_cache|cpu_rd_reg~regout\,
	datad => \instr_cache|current_state.IDLE_STATE~regout\,
	combout => \instr_cache|cpu_data_out[31]~96_combout\);

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(0),
	combout => \pc~combout\(0));

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\jmp_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_jmp_addr(0),
	combout => \jmp_addr~combout\(0));

-- Location: LCCOMB_X63_Y36_N4
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\brnch~combout\ & ((\jmp_addr~combout\(0)))) # (!\brnch~combout\ & (\pc~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(0),
	datab => \jmp_addr~combout\(0),
	datad => \brnch~combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X62_Y33_N0
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \Add0~0_combout\ $ (VCC)
-- \Add0~2\ = CARRY(\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X63_Y36_N6
\Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\instr_cache|req~0_combout\ & ((\stop~combout\ & (\pc~combout\(0))) # (!\stop~combout\ & ((\Add0~1_combout\))))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(0),
	datab => \instr_cache|req~0_combout\,
	datac => \Add0~1_combout\,
	datad => \stop~combout\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X62_Y33_N2
\Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~4_combout\ & (!\Add0~2\)) # (!\Add0~4_combout\ & ((\Add0~2\) # (GND)))
-- \Add0~6\ = CARRY((!\Add0~2\) # (!\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X63_Y36_N22
\Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\stop~combout\ & (((\pc~combout\(1))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & ((\Add0~5_combout\))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datab => \instr_cache|req~0_combout\,
	datac => \pc~combout\(1),
	datad => \Add0~5_combout\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X62_Y33_N4
\Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8_combout\ & (\Add0~6\ $ (GND))) # (!\Add0~8_combout\ & (!\Add0~6\ & VCC))
-- \Add0~10\ = CARRY((\Add0~8_combout\ & !\Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X61_Y34_N14
\Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\instr_cache|req~0_combout\ & ((\stop~combout\ & ((\pc~combout\(2)))) # (!\stop~combout\ & (\Add0~9_combout\)))) # (!\instr_cache|req~0_combout\ & (((\pc~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|req~0_combout\,
	datab => \Add0~9_combout\,
	datac => \pc~combout\(2),
	datad => \stop~combout\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X62_Y33_N6
\Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~12_combout\ & (!\Add0~10\)) # (!\Add0~12_combout\ & ((\Add0~10\) # (GND)))
-- \Add0~14\ = CARRY((!\Add0~10\) # (!\Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X61_Y34_N26
\Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\instr_cache|req~0_combout\ & ((\stop~combout\ & ((\pc~combout\(3)))) # (!\stop~combout\ & (\Add0~13_combout\)))) # (!\instr_cache|req~0_combout\ & (((\pc~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|req~0_combout\,
	datab => \Add0~13_combout\,
	datac => \pc~combout\(3),
	datad => \stop~combout\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X62_Y33_N8
\Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~16_combout\ & (\Add0~14\ $ (GND))) # (!\Add0~16_combout\ & (!\Add0~14\ & VCC))
-- \Add0~18\ = CARRY((\Add0~16_combout\ & !\Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: LCCOMB_X60_Y34_N0
\Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\stop~combout\ & (\pc~combout\(4))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & ((\Add0~17_combout\))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(4),
	datab => \stop~combout\,
	datac => \Add0~17_combout\,
	datad => \instr_cache|req~0_combout\,
	combout => \Add0~19_combout\);

-- Location: LCCOMB_X62_Y33_N10
\Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20_combout\ & (!\Add0~18\)) # (!\Add0~20_combout\ & ((\Add0~18\) # (GND)))
-- \Add0~22\ = CARRY((!\Add0~18\) # (!\Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \Add0~18\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X63_Y32_N16
\Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\stop~combout\ & (\pc~combout\(5))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & ((\Add0~21_combout\))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(5),
	datab => \stop~combout\,
	datac => \instr_cache|req~0_combout\,
	datad => \Add0~21_combout\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X62_Y33_N12
\Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\Add0~24_combout\ & (\Add0~22\ $ (GND))) # (!\Add0~24_combout\ & (!\Add0~22\ & VCC))
-- \Add0~26\ = CARRY((\Add0~24_combout\ & !\Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: LCCOMB_X63_Y36_N12
\Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\instr_cache|req~0_combout\ & ((\stop~combout\ & (\pc~combout\(6))) # (!\stop~combout\ & ((\Add0~25_combout\))))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(6),
	datab => \instr_cache|req~0_combout\,
	datac => \Add0~25_combout\,
	datad => \stop~combout\,
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X62_Y33_N14
\Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~28_combout\ & (!\Add0~26\)) # (!\Add0~28_combout\ & ((\Add0~26\) # (GND)))
-- \Add0~30\ = CARRY((!\Add0~26\) # (!\Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X63_Y32_N22
\Add0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\stop~combout\ & (((\pc~combout\(7))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & (\Add0~29_combout\)) # (!\instr_cache|req~0_combout\ & ((\pc~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \stop~combout\,
	datac => \instr_cache|req~0_combout\,
	datad => \pc~combout\(7),
	combout => \Add0~31_combout\);

-- Location: LCCOMB_X62_Y33_N16
\Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Add0~32_combout\ & (\Add0~30\ $ (GND))) # (!\Add0~32_combout\ & (!\Add0~30\ & VCC))
-- \Add0~34\ = CARRY((\Add0~32_combout\ & !\Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X63_Y37_N4
\Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\stop~combout\ & (((\pc~combout\(8))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & (\Add0~33_combout\)) # (!\instr_cache|req~0_combout\ & ((\pc~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~33_combout\,
	datab => \pc~combout\(8),
	datac => \stop~combout\,
	datad => \instr_cache|req~0_combout\,
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X62_Y33_N18
\Add0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\Add0~36_combout\ & (!\Add0~34\)) # (!\Add0~36_combout\ & ((\Add0~34\) # (GND)))
-- \Add0~38\ = CARRY((!\Add0~34\) # (!\Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~36_combout\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

-- Location: LCCOMB_X63_Y37_N8
\Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\stop~combout\ & (((\pc~combout\(9))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & (\Add0~37_combout\)) # (!\instr_cache|req~0_combout\ & ((\pc~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~37_combout\,
	datab => \stop~combout\,
	datac => \pc~combout\(9),
	datad => \instr_cache|req~0_combout\,
	combout => \Add0~39_combout\);

-- Location: LCCOMB_X62_Y33_N20
\Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\Add0~40_combout\ & (\Add0~38\ $ (GND))) # (!\Add0~40_combout\ & (!\Add0~38\ & VCC))
-- \Add0~42\ = CARRY((\Add0~40_combout\ & !\Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~40_combout\,
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~41_combout\,
	cout => \Add0~42\);

-- Location: LCCOMB_X63_Y36_N30
\Add0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (\stop~combout\ & (((\pc~combout\(10))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & (\Add0~41_combout\)) # (!\instr_cache|req~0_combout\ & ((\pc~combout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datab => \Add0~41_combout\,
	datac => \pc~combout\(10),
	datad => \instr_cache|req~0_combout\,
	combout => \Add0~43_combout\);

-- Location: LCCOMB_X62_Y33_N22
\Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\Add0~44_combout\ & (!\Add0~42\)) # (!\Add0~44_combout\ & ((\Add0~42\) # (GND)))
-- \Add0~46\ = CARRY((!\Add0~42\) # (!\Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \Add0~42\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X63_Y36_N26
\Add0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\stop~combout\ & (((\pc~combout\(11))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & ((\Add0~45_combout\))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datab => \instr_cache|req~0_combout\,
	datac => \pc~combout\(11),
	datad => \Add0~45_combout\,
	combout => \Add0~47_combout\);

-- Location: LCCOMB_X62_Y33_N24
\Add0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\Add0~48_combout\ & (\Add0~46\ $ (GND))) # (!\Add0~48_combout\ & (!\Add0~46\ & VCC))
-- \Add0~50\ = CARRY((\Add0~48_combout\ & !\Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~48_combout\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~49_combout\,
	cout => \Add0~50\);

-- Location: LCCOMB_X63_Y35_N18
\Add0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\stop~combout\ & (((\pc~combout\(12))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & (\Add0~49_combout\)) # (!\instr_cache|req~0_combout\ & ((\pc~combout\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~49_combout\,
	datab => \stop~combout\,
	datac => \pc~combout\(12),
	datad => \instr_cache|req~0_combout\,
	combout => \Add0~51_combout\);

-- Location: LCCOMB_X62_Y33_N26
\Add0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (\Add0~52_combout\ & (!\Add0~50\)) # (!\Add0~52_combout\ & ((\Add0~50\) # (GND)))
-- \Add0~54\ = CARRY((!\Add0~50\) # (!\Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~52_combout\,
	datad => VCC,
	cin => \Add0~50\,
	combout => \Add0~53_combout\,
	cout => \Add0~54\);

-- Location: LCCOMB_X63_Y35_N8
\Add0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (\instr_cache|req~0_combout\ & ((\stop~combout\ & ((\pc~combout\(13)))) # (!\stop~combout\ & (\Add0~53_combout\)))) # (!\instr_cache|req~0_combout\ & (((\pc~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~53_combout\,
	datab => \instr_cache|req~0_combout\,
	datac => \pc~combout\(13),
	datad => \stop~combout\,
	combout => \Add0~55_combout\);

-- Location: LCCOMB_X62_Y33_N28
\Add0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\Add0~56_combout\ & (\Add0~54\ $ (GND))) # (!\Add0~56_combout\ & (!\Add0~54\ & VCC))
-- \Add0~58\ = CARRY((\Add0~56_combout\ & !\Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~56_combout\,
	datad => VCC,
	cin => \Add0~54\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X63_Y35_N22
\Add0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\instr_cache|req~0_combout\ & ((\stop~combout\ & ((\pc~combout\(14)))) # (!\stop~combout\ & (\Add0~57_combout\)))) # (!\instr_cache|req~0_combout\ & (((\pc~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~57_combout\,
	datab => \instr_cache|req~0_combout\,
	datac => \pc~combout\(14),
	datad => \stop~combout\,
	combout => \Add0~59_combout\);

-- Location: LCCOMB_X62_Y33_N30
\Add0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (\Add0~60_combout\ & (!\Add0~58\)) # (!\Add0~60_combout\ & ((\Add0~58\) # (GND)))
-- \Add0~62\ = CARRY((!\Add0~58\) # (!\Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~60_combout\,
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~61_combout\,
	cout => \Add0~62\);

-- Location: LCCOMB_X63_Y35_N12
\Add0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (\stop~combout\ & (((\pc~combout\(15))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & (\Add0~61_combout\)) # (!\instr_cache|req~0_combout\ & ((\pc~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~61_combout\,
	datab => \stop~combout\,
	datac => \pc~combout\(15),
	datad => \instr_cache|req~0_combout\,
	combout => \Add0~63_combout\);

-- Location: LCCOMB_X62_Y32_N0
\Add0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (\Add0~64_combout\ & (\Add0~62\ $ (GND))) # (!\Add0~64_combout\ & (!\Add0~62\ & VCC))
-- \Add0~66\ = CARRY((\Add0~64_combout\ & !\Add0~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~64_combout\,
	datad => VCC,
	cin => \Add0~62\,
	combout => \Add0~65_combout\,
	cout => \Add0~66\);

-- Location: LCCOMB_X63_Y36_N28
\Add0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (\instr_cache|req~0_combout\ & ((\stop~combout\ & ((\pc~combout\(16)))) # (!\stop~combout\ & (\Add0~65_combout\)))) # (!\instr_cache|req~0_combout\ & (((\pc~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~65_combout\,
	datab => \instr_cache|req~0_combout\,
	datac => \pc~combout\(16),
	datad => \stop~combout\,
	combout => \Add0~67_combout\);

-- Location: LCCOMB_X62_Y32_N2
\Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\Add0~68_combout\ & (!\Add0~66\)) # (!\Add0~68_combout\ & ((\Add0~66\) # (GND)))
-- \Add0~70\ = CARRY((!\Add0~66\) # (!\Add0~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~68_combout\,
	datad => VCC,
	cin => \Add0~66\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

-- Location: LCCOMB_X63_Y35_N2
\Add0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (\stop~combout\ & (((\pc~combout\(17))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & (\Add0~69_combout\)) # (!\instr_cache|req~0_combout\ & ((\pc~combout\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~69_combout\,
	datab => \stop~combout\,
	datac => \pc~combout\(17),
	datad => \instr_cache|req~0_combout\,
	combout => \Add0~71_combout\);

-- Location: LCCOMB_X62_Y32_N4
\Add0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (\Add0~72_combout\ & (\Add0~70\ $ (GND))) # (!\Add0~72_combout\ & (!\Add0~70\ & VCC))
-- \Add0~74\ = CARRY((\Add0~72_combout\ & !\Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~72_combout\,
	datad => VCC,
	cin => \Add0~70\,
	combout => \Add0~73_combout\,
	cout => \Add0~74\);

-- Location: LCCOMB_X63_Y35_N24
\Add0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\stop~combout\ & (((\pc~combout\(18))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & (\Add0~73_combout\)) # (!\instr_cache|req~0_combout\ & ((\pc~combout\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~73_combout\,
	datab => \stop~combout\,
	datac => \pc~combout\(18),
	datad => \instr_cache|req~0_combout\,
	combout => \Add0~75_combout\);

-- Location: LCCOMB_X62_Y32_N6
\Add0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (\Add0~76_combout\ & (!\Add0~74\)) # (!\Add0~76_combout\ & ((\Add0~74\) # (GND)))
-- \Add0~78\ = CARRY((!\Add0~74\) # (!\Add0~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~76_combout\,
	datad => VCC,
	cin => \Add0~74\,
	combout => \Add0~77_combout\,
	cout => \Add0~78\);

-- Location: LCCOMB_X63_Y35_N20
\Add0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~79_combout\ = (\stop~combout\ & (\pc~combout\(19))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & ((\Add0~77_combout\))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(19),
	datab => \stop~combout\,
	datac => \Add0~77_combout\,
	datad => \instr_cache|req~0_combout\,
	combout => \Add0~79_combout\);

-- Location: LCCOMB_X62_Y32_N8
\Add0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Add0~80_combout\ & (\Add0~78\ $ (GND))) # (!\Add0~80_combout\ & (!\Add0~78\ & VCC))
-- \Add0~82\ = CARRY((\Add0~80_combout\ & !\Add0~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~80_combout\,
	datad => VCC,
	cin => \Add0~78\,
	combout => \Add0~81_combout\,
	cout => \Add0~82\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(20),
	combout => \pc~combout\(20));

-- Location: LCCOMB_X61_Y32_N18
\Add0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (\stop~combout\ & (((\pc~combout\(20))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & (\Add0~81_combout\)) # (!\instr_cache|req~0_combout\ & ((\pc~combout\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datab => \instr_cache|req~0_combout\,
	datac => \Add0~81_combout\,
	datad => \pc~combout\(20),
	combout => \Add0~83_combout\);

-- Location: LCCOMB_X62_Y32_N10
\Add0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~85_combout\ = (\Add0~84_combout\ & (!\Add0~82\)) # (!\Add0~84_combout\ & ((\Add0~82\) # (GND)))
-- \Add0~86\ = CARRY((!\Add0~82\) # (!\Add0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~84_combout\,
	datad => VCC,
	cin => \Add0~82\,
	combout => \Add0~85_combout\,
	cout => \Add0~86\);

-- Location: LCCOMB_X56_Y35_N26
\Add0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\stop~combout\ & (\pc~combout\(21))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & ((\Add0~85_combout\))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(21),
	datab => \stop~combout\,
	datac => \instr_cache|req~0_combout\,
	datad => \Add0~85_combout\,
	combout => \Add0~87_combout\);

-- Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(22),
	combout => \pc~combout\(22));

-- Location: LCCOMB_X62_Y32_N12
\Add0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (\Add0~88_combout\ & (\Add0~86\ $ (GND))) # (!\Add0~88_combout\ & (!\Add0~86\ & VCC))
-- \Add0~90\ = CARRY((\Add0~88_combout\ & !\Add0~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~88_combout\,
	datad => VCC,
	cin => \Add0~86\,
	combout => \Add0~89_combout\,
	cout => \Add0~90\);

-- Location: LCCOMB_X61_Y32_N6
\Add0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~91_combout\ = (\instr_cache|req~0_combout\ & ((\stop~combout\ & (\pc~combout\(22))) # (!\stop~combout\ & ((\Add0~89_combout\))))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(22),
	datab => \instr_cache|req~0_combout\,
	datac => \Add0~89_combout\,
	datad => \stop~combout\,
	combout => \Add0~91_combout\);

-- Location: LCCOMB_X62_Y32_N14
\Add0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\Add0~92_combout\ & (!\Add0~90\)) # (!\Add0~92_combout\ & ((\Add0~90\) # (GND)))
-- \Add0~94\ = CARRY((!\Add0~90\) # (!\Add0~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~92_combout\,
	datad => VCC,
	cin => \Add0~90\,
	combout => \Add0~93_combout\,
	cout => \Add0~94\);

-- Location: LCCOMB_X63_Y32_N0
\Add0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (\instr_cache|req~0_combout\ & ((\stop~combout\ & (\pc~combout\(23))) # (!\stop~combout\ & ((\Add0~93_combout\))))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(23),
	datab => \instr_cache|req~0_combout\,
	datac => \stop~combout\,
	datad => \Add0~93_combout\,
	combout => \Add0~95_combout\);

-- Location: LCCOMB_X62_Y32_N16
\Add0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~97_combout\ = (\Add0~96_combout\ & (\Add0~94\ $ (GND))) # (!\Add0~96_combout\ & (!\Add0~94\ & VCC))
-- \Add0~98\ = CARRY((\Add0~96_combout\ & !\Add0~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~96_combout\,
	datad => VCC,
	cin => \Add0~94\,
	combout => \Add0~97_combout\,
	cout => \Add0~98\);

-- Location: LCCOMB_X61_Y32_N22
\Add0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~99_combout\ = (\stop~combout\ & (((\pc~combout\(24))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & (\Add0~97_combout\)) # (!\instr_cache|req~0_combout\ & ((\pc~combout\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datab => \instr_cache|req~0_combout\,
	datac => \Add0~97_combout\,
	datad => \pc~combout\(24),
	combout => \Add0~99_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(25),
	combout => \pc~combout\(25));

-- Location: LCCOMB_X62_Y32_N18
\Add0~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~101_combout\ = (\Add0~100_combout\ & (!\Add0~98\)) # (!\Add0~100_combout\ & ((\Add0~98\) # (GND)))
-- \Add0~102\ = CARRY((!\Add0~98\) # (!\Add0~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~100_combout\,
	datad => VCC,
	cin => \Add0~98\,
	combout => \Add0~101_combout\,
	cout => \Add0~102\);

-- Location: LCCOMB_X56_Y35_N10
\Add0~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~103_combout\ = (\stop~combout\ & (\pc~combout\(25))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & ((\Add0~101_combout\))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(25),
	datab => \stop~combout\,
	datac => \instr_cache|req~0_combout\,
	datad => \Add0~101_combout\,
	combout => \Add0~103_combout\);

-- Location: LCCOMB_X62_Y32_N20
\Add0~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~105_combout\ = (\Add0~104_combout\ & (\Add0~102\ $ (GND))) # (!\Add0~104_combout\ & (!\Add0~102\ & VCC))
-- \Add0~106\ = CARRY((\Add0~104_combout\ & !\Add0~102\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~104_combout\,
	datad => VCC,
	cin => \Add0~102\,
	combout => \Add0~105_combout\,
	cout => \Add0~106\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(26),
	combout => \pc~combout\(26));

-- Location: LCCOMB_X61_Y32_N2
\Add0~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~107_combout\ = (\stop~combout\ & (((\pc~combout\(26))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & (\Add0~105_combout\)) # (!\instr_cache|req~0_combout\ & ((\pc~combout\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datab => \instr_cache|req~0_combout\,
	datac => \Add0~105_combout\,
	datad => \pc~combout\(26),
	combout => \Add0~107_combout\);

-- Location: LCCOMB_X62_Y32_N22
\Add0~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~109_combout\ = (\Add0~108_combout\ & (!\Add0~106\)) # (!\Add0~108_combout\ & ((\Add0~106\) # (GND)))
-- \Add0~110\ = CARRY((!\Add0~106\) # (!\Add0~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~108_combout\,
	datad => VCC,
	cin => \Add0~106\,
	combout => \Add0~109_combout\,
	cout => \Add0~110\);

-- Location: LCCOMB_X61_Y32_N30
\Add0~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~111_combout\ = (\stop~combout\ & (((\pc~combout\(27))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & ((\Add0~109_combout\))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datab => \instr_cache|req~0_combout\,
	datac => \pc~combout\(27),
	datad => \Add0~109_combout\,
	combout => \Add0~111_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pc(28),
	combout => \pc~combout\(28));

-- Location: LCCOMB_X62_Y32_N24
\Add0~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~113_combout\ = (\Add0~112_combout\ & (\Add0~110\ $ (GND))) # (!\Add0~112_combout\ & (!\Add0~110\ & VCC))
-- \Add0~114\ = CARRY((\Add0~112_combout\ & !\Add0~110\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~112_combout\,
	datad => VCC,
	cin => \Add0~110\,
	combout => \Add0~113_combout\,
	cout => \Add0~114\);

-- Location: LCCOMB_X56_Y35_N22
\Add0~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~115_combout\ = (\stop~combout\ & (\pc~combout\(28))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & ((\Add0~113_combout\))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~combout\(28),
	datab => \stop~combout\,
	datac => \instr_cache|req~0_combout\,
	datad => \Add0~113_combout\,
	combout => \Add0~115_combout\);

-- Location: LCCOMB_X62_Y32_N26
\Add0~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~117_combout\ = (\Add0~116_combout\ & (!\Add0~114\)) # (!\Add0~116_combout\ & ((\Add0~114\) # (GND)))
-- \Add0~118\ = CARRY((!\Add0~114\) # (!\Add0~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~116_combout\,
	datad => VCC,
	cin => \Add0~114\,
	combout => \Add0~117_combout\,
	cout => \Add0~118\);

-- Location: LCCOMB_X56_Y38_N2
\Add0~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~119_combout\ = (\stop~combout\ & (\pc~combout\(29))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & ((\Add0~117_combout\))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datab => \pc~combout\(29),
	datac => \instr_cache|req~0_combout\,
	datad => \Add0~117_combout\,
	combout => \Add0~119_combout\);

-- Location: LCCOMB_X62_Y32_N28
\Add0~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~121_combout\ = (\Add0~120_combout\ & (\Add0~118\ $ (GND))) # (!\Add0~120_combout\ & (!\Add0~118\ & VCC))
-- \Add0~122\ = CARRY((\Add0~120_combout\ & !\Add0~118\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~120_combout\,
	datad => VCC,
	cin => \Add0~118\,
	combout => \Add0~121_combout\,
	cout => \Add0~122\);

-- Location: LCCOMB_X61_Y32_N10
\Add0~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~123_combout\ = (\stop~combout\ & (((\pc~combout\(30))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & ((\Add0~121_combout\))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datab => \instr_cache|req~0_combout\,
	datac => \pc~combout\(30),
	datad => \Add0~121_combout\,
	combout => \Add0~123_combout\);

-- Location: LCCOMB_X62_Y32_N30
\Add0~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~125_combout\ = \Add0~124_combout\ $ (\Add0~122\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~124_combout\,
	cin => \Add0~122\,
	combout => \Add0~125_combout\);

-- Location: LCCOMB_X61_Y32_N14
\Add0~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~127_combout\ = (\stop~combout\ & (((\pc~combout\(31))))) # (!\stop~combout\ & ((\instr_cache|req~0_combout\ & ((\Add0~125_combout\))) # (!\instr_cache|req~0_combout\ & (\pc~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datab => \instr_cache|req~0_combout\,
	datac => \pc~combout\(31),
	datad => \Add0~125_combout\,
	combout => \Add0~127_combout\);

-- Location: LCCOMB_X61_Y34_N0
\instr_cache|Selector152~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector152~0_combout\ = (\instr_cache|current_state.IDLE_STATE~regout\ & (!\instr_cache|current_state.STOPED_STATE~regout\ & (!\instr_cache|current_state.EXECUTE_STATE~regout\))) # (!\instr_cache|current_state.IDLE_STATE~regout\ & 
-- (((\stop~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|current_state.STOPED_STATE~regout\,
	datab => \instr_cache|current_state.EXECUTE_STATE~regout\,
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \stop~combout\,
	combout => \instr_cache|Selector152~0_combout\);

-- Location: LCCOMB_X61_Y34_N16
\instr_cache|Selector152~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_cache|Selector152~1_combout\ = (\instr_cache|Selector152~0_combout\) # ((\instr_cache|req~0_combout\ & (!\instr_cache|current_state.IDLE_STATE~regout\ & \instr_cache|process_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_cache|req~0_combout\,
	datab => \instr_cache|Selector152~0_combout\,
	datac => \instr_cache|current_state.IDLE_STATE~regout\,
	datad => \instr_cache|process_1~8_combout\,
	combout => \instr_cache|Selector152~1_combout\);

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|words_counter\(0),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(0));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|words_counter\(1),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(1));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(2),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(2));

-- Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(3),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(3));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(4),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(4));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(5),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(5));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(6),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(6));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(7),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(7));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(8),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(8));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(9),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(9));

-- Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(10),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(10));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(11),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(11));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(12),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(12));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(13),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(13));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(14),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(14));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(15),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(15));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(16),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(16));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(17),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(17));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(18),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(18));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(19),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(19));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(20),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(20));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(21),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(21));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(22),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(22));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(23),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(23));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(24),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(24));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(25),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(25));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(26),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(26));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(27),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(27));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(28),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(28));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(29),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(29));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(30),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(30));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_addr[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_addr_reg\(31),
	oe => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_mem_addr(31));

-- Location: PIN_D29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(0));

-- Location: PIN_C29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[1]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(1));

-- Location: PIN_E29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[2]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(2));

-- Location: PIN_F27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[3]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(3));

-- Location: PIN_C30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[4]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(4));

-- Location: PIN_G28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[5]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(5));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[6]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(6));

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[7]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(7));

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[8]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(8));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[9]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(9));

-- Location: PIN_V27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[10]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(10));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[11]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(11));

-- Location: PIN_E30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[12]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(12));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[13]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(13));

-- Location: PIN_D28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[14]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(14));

-- Location: PIN_U30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[15]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(15));

-- Location: PIN_W30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[16]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(16));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[17]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(17));

-- Location: PIN_W29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[18]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(18));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[19]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(19));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[20]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(20));

-- Location: PIN_U29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[21]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(21));

-- Location: PIN_R26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[22]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(22));

-- Location: PIN_W28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[23]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(23));

-- Location: PIN_M30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[24]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(24));

-- Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[25]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(25));

-- Location: PIN_V28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[26]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(26));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[27]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(27));

-- Location: PIN_H30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[28]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(28));

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[29]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(29));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[30]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(30));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ir_out[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|cpu_data_out[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ir_out(31));

-- Location: PIN_G27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(0));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(1));

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(2));

-- Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(3));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(4));

-- Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(5));

-- Location: PIN_E28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(6));

-- Location: PIN_T28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(7));

-- Location: PIN_H28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(8));

-- Location: PIN_C27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(9));

-- Location: PIN_H29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(10));

-- Location: PIN_H27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(11));

-- Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(12));

-- Location: PIN_Y29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(13));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(14));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(15));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(16));

-- Location: PIN_F29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(17));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(18));

-- Location: PIN_Y30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(19));

-- Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(20));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(21));

-- Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(22));

-- Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(23));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(24));

-- Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(25));

-- Location: PIN_AK20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(26));

-- Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(27));

-- Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(28));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(29));

-- Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(30));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(31));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mem_read~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|current_state.READ_MEM_STATE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mem_read);

-- Location: PIN_K28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wait_mem~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|wait_mem~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wait_mem);

-- Location: PIN_V29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\req~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_cache|Selector152~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_req);
END structure;


