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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/19/2024 20:38:08"

-- 
-- Device: Altera EP3C40F780C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Computer IS
    PORT (
	write_read : OUT std_logic;
	reset : IN std_logic;
	clock : IN std_logic;
	M_address : OUT std_logic_vector(11 DOWNTO 0);
	overflow : OUT std_logic;
	M_data_out : OUT std_logic_vector(7 DOWNTO 0);
	q : OUT std_logic_vector(7 DOWNTO 0);
	status : OUT std_logic_vector(2 DOWNTO 0)
	);
END Computer;

-- Design Ports Information
-- write_read	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_address[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_address[10]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_address[9]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_address[8]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_address[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_address[6]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_address[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_address[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_address[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_address[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_address[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_address[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_data_out[7]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_data_out[6]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_data_out[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_data_out[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_data_out[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_data_out[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_data_out[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_data_out[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- status[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- status[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- status[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Computer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_write_read : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_M_address : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL ww_M_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_status : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \write_read~output_o\ : std_logic;
SIGNAL \M_address[11]~output_o\ : std_logic;
SIGNAL \M_address[10]~output_o\ : std_logic;
SIGNAL \M_address[9]~output_o\ : std_logic;
SIGNAL \M_address[8]~output_o\ : std_logic;
SIGNAL \M_address[7]~output_o\ : std_logic;
SIGNAL \M_address[6]~output_o\ : std_logic;
SIGNAL \M_address[5]~output_o\ : std_logic;
SIGNAL \M_address[4]~output_o\ : std_logic;
SIGNAL \M_address[3]~output_o\ : std_logic;
SIGNAL \M_address[2]~output_o\ : std_logic;
SIGNAL \M_address[1]~output_o\ : std_logic;
SIGNAL \M_address[0]~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \M_data_out[7]~output_o\ : std_logic;
SIGNAL \M_data_out[6]~output_o\ : std_logic;
SIGNAL \M_data_out[5]~output_o\ : std_logic;
SIGNAL \M_data_out[4]~output_o\ : std_logic;
SIGNAL \M_data_out[3]~output_o\ : std_logic;
SIGNAL \M_data_out[2]~output_o\ : std_logic;
SIGNAL \M_data_out[1]~output_o\ : std_logic;
SIGNAL \M_data_out[0]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \status[2]~output_o\ : std_logic;
SIGNAL \status[1]~output_o\ : std_logic;
SIGNAL \status[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|PC[0]~12_combout\ : std_logic;
SIGNAL \inst|PC[2]~17\ : std_logic;
SIGNAL \inst|PC[3]~18_combout\ : std_logic;
SIGNAL \inst|Mux112~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|PC[3]~36_combout\ : std_logic;
SIGNAL \inst|Equal6~0_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|Mux8~1_combout\ : std_logic;
SIGNAL \inst|IR[0]~0_combout\ : std_logic;
SIGNAL \inst|PC[3]~19\ : std_logic;
SIGNAL \inst|PC[4]~20_combout\ : std_logic;
SIGNAL \inst|Mux80~0_combout\ : std_logic;
SIGNAL \inst|write_read~1_combout\ : std_logic;
SIGNAL \inst|PC[3]~37_combout\ : std_logic;
SIGNAL \inst|MAR[11]~0_combout\ : std_logic;
SIGNAL \inst|MDR[7]~0_combout\ : std_logic;
SIGNAL \inst|R0[1]~1_combout\ : std_logic;
SIGNAL \inst|Decoder3~0_combout\ : std_logic;
SIGNAL \inst|Mux111~0_combout\ : std_logic;
SIGNAL \inst|PC[4]~21\ : std_logic;
SIGNAL \inst|PC[5]~22_combout\ : std_logic;
SIGNAL \inst|Mux79~0_combout\ : std_logic;
SIGNAL \inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst|write_read~0_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst|MAR[11]~1_combout\ : std_logic;
SIGNAL \inst|MAR[11]~2_combout\ : std_logic;
SIGNAL \inst|MDR[1]~feeder_combout\ : std_logic;
SIGNAL \inst|MDR[7]~1_combout\ : std_logic;
SIGNAL \inst|R0[4]~35_combout\ : std_logic;
SIGNAL \inst|Mux69~0_combout\ : std_logic;
SIGNAL \inst|Mux97~3_combout\ : std_logic;
SIGNAL \inst|Mux91~2_combout\ : std_logic;
SIGNAL \inst|Mux91~4_combout\ : std_logic;
SIGNAL \inst|Mux91~3_combout\ : std_logic;
SIGNAL \inst|R0[2]~17_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|R0[2]~18_combout\ : std_logic;
SIGNAL \inst|R0[2]~19_combout\ : std_logic;
SIGNAL \inst|R0[4]~11_combout\ : std_logic;
SIGNAL \inst|Mux87~2_combout\ : std_logic;
SIGNAL \inst|Mux87~4_combout\ : std_logic;
SIGNAL \inst|Mux87~3_combout\ : std_logic;
SIGNAL \inst|Add7~3\ : std_logic;
SIGNAL \inst|Add7~5\ : std_logic;
SIGNAL \inst|Add7~7\ : std_logic;
SIGNAL \inst|Add7~9\ : std_logic;
SIGNAL \inst|Add7~10_combout\ : std_logic;
SIGNAL \inst|Mux87~5_combout\ : std_logic;
SIGNAL \inst|Mux103~2_combout\ : std_logic;
SIGNAL \inst|Mux103~3_combout\ : std_logic;
SIGNAL \inst|Mux103~4_combout\ : std_logic;
SIGNAL \inst|Mux104~2_combout\ : std_logic;
SIGNAL \inst|Mux104~3_combout\ : std_logic;
SIGNAL \inst|Mux104~4_combout\ : std_logic;
SIGNAL \inst|Mux107~2_combout\ : std_logic;
SIGNAL \inst|Mux107~4_combout\ : std_logic;
SIGNAL \inst|Mux107~3_combout\ : std_logic;
SIGNAL \inst|R1~18_combout\ : std_logic;
SIGNAL \inst|R1[0]~5_combout\ : std_logic;
SIGNAL \inst|IR[9]~feeder_combout\ : std_logic;
SIGNAL \inst|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|Equal3~1_combout\ : std_logic;
SIGNAL \inst|R2~21_combout\ : std_logic;
SIGNAL \inst|R2[0]~5_combout\ : std_logic;
SIGNAL \inst|Mux31~0_combout\ : std_logic;
SIGNAL \inst|Mux31~1_combout\ : std_logic;
SIGNAL \inst|R0[4]~12_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Mux99~0_combout\ : std_logic;
SIGNAL \inst|Mux99~1_combout\ : std_logic;
SIGNAL \inst|Mux99~2_combout\ : std_logic;
SIGNAL \inst|Mux99~3_combout\ : std_logic;
SIGNAL \inst|Add6~1\ : std_logic;
SIGNAL \inst|Add6~2_combout\ : std_logic;
SIGNAL \inst|Mux99~4_combout\ : std_logic;
SIGNAL \inst|Mux99~5_combout\ : std_logic;
SIGNAL \inst|R2[1]~4_combout\ : std_logic;
SIGNAL \inst|R1[1]~11_combout\ : std_logic;
SIGNAL \inst|R1[0]~10_combout\ : std_logic;
SIGNAL \inst|R2[5]~15_combout\ : std_logic;
SIGNAL \inst|R2[5]~16_combout\ : std_logic;
SIGNAL \inst|Decoder2~2_combout\ : std_logic;
SIGNAL \inst|R2[5]~14_combout\ : std_logic;
SIGNAL \inst|R2[5]~17_combout\ : std_logic;
SIGNAL \inst|R2[6]~18_combout\ : std_logic;
SIGNAL \inst|Mux48~2_combout\ : std_logic;
SIGNAL \inst|Mux48~3_combout\ : std_logic;
SIGNAL \inst|Decoder0~1_combout\ : std_logic;
SIGNAL \inst|Mux48~8_combout\ : std_logic;
SIGNAL \inst|Add6~0_combout\ : std_logic;
SIGNAL \inst|Mux56~6_combout\ : std_logic;
SIGNAL \inst|Mux48~10_combout\ : std_logic;
SIGNAL \inst|Mux48~6_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Mux48~4_combout\ : std_logic;
SIGNAL \inst|Mux48~5_combout\ : std_logic;
SIGNAL \inst|Mux48~7_combout\ : std_logic;
SIGNAL \inst|Mux48~9_combout\ : std_logic;
SIGNAL \inst|Mux32~0_combout\ : std_logic;
SIGNAL \inst|Mux32~1_combout\ : std_logic;
SIGNAL \inst|Mux56~9_combout\ : std_logic;
SIGNAL \inst|Mux56~2_combout\ : std_logic;
SIGNAL \inst|Decoder2~1_combout\ : std_logic;
SIGNAL \inst|Mux56~3_combout\ : std_logic;
SIGNAL \inst|Mux56~11_combout\ : std_logic;
SIGNAL \inst|Add5~0_combout\ : std_logic;
SIGNAL \inst|Mux56~7_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Mux56~4_combout\ : std_logic;
SIGNAL \inst|Mux56~5_combout\ : std_logic;
SIGNAL \inst|Mux56~8_combout\ : std_logic;
SIGNAL \inst|Mux56~10_combout\ : std_logic;
SIGNAL \inst|Add5~1\ : std_logic;
SIGNAL \inst|Add5~2_combout\ : std_logic;
SIGNAL \inst|Mux107~5_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Mux107~0_combout\ : std_logic;
SIGNAL \inst|Mux107~1_combout\ : std_logic;
SIGNAL \inst|R1[1]~4_combout\ : std_logic;
SIGNAL \inst|R1[1]~13_combout\ : std_logic;
SIGNAL \inst|R1[1]~14_combout\ : std_logic;
SIGNAL \inst|R1[1]~12_combout\ : std_logic;
SIGNAL \inst|R1[1]~15_combout\ : std_logic;
SIGNAL \inst|R1[6]~16_combout\ : std_logic;
SIGNAL \inst|Add5~3\ : std_logic;
SIGNAL \inst|Add5~5\ : std_logic;
SIGNAL \inst|Add5~6_combout\ : std_logic;
SIGNAL \inst|Mux105~2_combout\ : std_logic;
SIGNAL \inst|Mux105~4_combout\ : std_logic;
SIGNAL \inst|Mux105~3_combout\ : std_logic;
SIGNAL \inst|Mux105~5_combout\ : std_logic;
SIGNAL \inst|Mux29~0_combout\ : std_logic;
SIGNAL \inst|Mux29~1_combout\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Mux105~0_combout\ : std_logic;
SIGNAL \inst|Mux105~1_combout\ : std_logic;
SIGNAL \inst|R1[3]~6_combout\ : std_logic;
SIGNAL \inst|Add5~7\ : std_logic;
SIGNAL \inst|Add5~8_combout\ : std_logic;
SIGNAL \inst|Mux104~5_combout\ : std_logic;
SIGNAL \inst|Mux104~0_combout\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Mux104~1_combout\ : std_logic;
SIGNAL \inst|R1[4]~3_combout\ : std_logic;
SIGNAL \inst|Add5~9\ : std_logic;
SIGNAL \inst|Add5~10_combout\ : std_logic;
SIGNAL \inst|Mux103~5_combout\ : std_logic;
SIGNAL \inst|R3~21_combout\ : std_logic;
SIGNAL \inst|R3[7]~0_combout\ : std_logic;
SIGNAL \inst|Mux86~0_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|A[7]~0_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~11\ : std_logic;
SIGNAL \inst|Add3~12_combout\ : std_logic;
SIGNAL \inst|Mux86~1_combout\ : std_logic;
SIGNAL \inst|R3~13_combout\ : std_logic;
SIGNAL \inst|Add7~11\ : std_logic;
SIGNAL \inst|Add7~12_combout\ : std_logic;
SIGNAL \inst|Mux86~2_combout\ : std_logic;
SIGNAL \inst|Mux86~3_combout\ : std_logic;
SIGNAL \inst|R3[6]~1_combout\ : std_logic;
SIGNAL \inst|R3[1]~15_combout\ : std_logic;
SIGNAL \inst|R3[1]~16_combout\ : std_logic;
SIGNAL \inst|Decoder2~3_combout\ : std_logic;
SIGNAL \inst|R3[1]~14_combout\ : std_logic;
SIGNAL \inst|R3[1]~17_combout\ : std_logic;
SIGNAL \inst|R3[6]~18_combout\ : std_logic;
SIGNAL \inst|R3~11_combout\ : std_logic;
SIGNAL \inst|R3~12_combout\ : std_logic;
SIGNAL \inst|Mux33~0_combout\ : std_logic;
SIGNAL \inst|R1[7]~0_combout\ : std_logic;
SIGNAL \inst|Mux49~1_combout\ : std_logic;
SIGNAL \inst|Mux49~2_combout\ : std_logic;
SIGNAL \inst|Mux49~0_combout\ : std_logic;
SIGNAL \inst|Mux49~3_combout\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Mux49~6_combout\ : std_logic;
SIGNAL \inst|Mux49~7_combout\ : std_logic;
SIGNAL \inst|Mux49~4_combout\ : std_logic;
SIGNAL \inst|Mux49~5_combout\ : std_logic;
SIGNAL \inst|Add5~11\ : std_logic;
SIGNAL \inst|Add5~13\ : std_logic;
SIGNAL \inst|Add5~14_combout\ : std_logic;
SIGNAL \inst|Mux49~10_combout\ : std_logic;
SIGNAL \inst|Mux49~11_combout\ : std_logic;
SIGNAL \inst|Mux49~8_combout\ : std_logic;
SIGNAL \inst|Mux49~9_combout\ : std_logic;
SIGNAL \inst|R0[7]~0_combout\ : std_logic;
SIGNAL \inst|R0[7]~20_combout\ : std_logic;
SIGNAL \inst|R0~23_combout\ : std_logic;
SIGNAL \inst|R0~22_combout\ : std_logic;
SIGNAL \inst|Mux57~2_combout\ : std_logic;
SIGNAL \inst|R0~21_combout\ : std_logic;
SIGNAL \inst|Mux57~3_combout\ : std_logic;
SIGNAL \inst|Mux57~13_combout\ : std_logic;
SIGNAL \inst|Mux57~4_combout\ : std_logic;
SIGNAL \inst|Mux57~5_combout\ : std_logic;
SIGNAL \inst|Mux67~1_combout\ : std_logic;
SIGNAL \inst|Mux67~2_combout\ : std_logic;
SIGNAL \inst|Add4~1\ : std_logic;
SIGNAL \inst|Add4~3\ : std_logic;
SIGNAL \inst|Add4~5\ : std_logic;
SIGNAL \inst|Add4~7\ : std_logic;
SIGNAL \inst|Add4~9\ : std_logic;
SIGNAL \inst|Add4~10_combout\ : std_logic;
SIGNAL \inst|Mux67~3_combout\ : std_logic;
SIGNAL \inst|R0[4]~10_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Mux67~4_combout\ : std_logic;
SIGNAL \inst|Mux67~5_combout\ : std_logic;
SIGNAL \inst|Mux67~6_combout\ : std_logic;
SIGNAL \inst|Mux67~7_combout\ : std_logic;
SIGNAL \inst|R0[6]~14_combout\ : std_logic;
SIGNAL \inst|R0[6]~36_combout\ : std_logic;
SIGNAL \inst|R0[6]~13_combout\ : std_logic;
SIGNAL \inst|R0[6]~15_combout\ : std_logic;
SIGNAL \inst|R0[6]~16_combout\ : std_logic;
SIGNAL \inst|R0[6]~39_combout\ : std_logic;
SIGNAL \inst|R0[6]~40_combout\ : std_logic;
SIGNAL \inst|Add4~11\ : std_logic;
SIGNAL \inst|Add4~13\ : std_logic;
SIGNAL \inst|Add4~14_combout\ : std_logic;
SIGNAL \inst|Mux57~6_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Mux57~8_combout\ : std_logic;
SIGNAL \inst|Mux57~7_combout\ : std_logic;
SIGNAL \inst|Mux57~9_combout\ : std_logic;
SIGNAL \inst|Mux57~10_combout\ : std_logic;
SIGNAL \inst|Mux57~11_combout\ : std_logic;
SIGNAL \inst|Mux57~12_combout\ : std_logic;
SIGNAL \inst|R0[7]~24_combout\ : std_logic;
SIGNAL \inst|R0[7]~25_combout\ : std_logic;
SIGNAL \inst|Mux25~0_combout\ : std_logic;
SIGNAL \inst|Mux25~1_combout\ : std_logic;
SIGNAL \inst|R3~10_combout\ : std_logic;
SIGNAL \inst|Mux33~1_combout\ : std_logic;
SIGNAL \inst|Add3~13\ : std_logic;
SIGNAL \inst|Add3~14_combout\ : std_logic;
SIGNAL \inst|Mux33~6_combout\ : std_logic;
SIGNAL \inst|Mux33~7_combout\ : std_logic;
SIGNAL \inst|Mux33~2_combout\ : std_logic;
SIGNAL \inst|Add7~13\ : std_logic;
SIGNAL \inst|Add7~14_combout\ : std_logic;
SIGNAL \inst|Mux33~3_combout\ : std_logic;
SIGNAL \inst|Mux33~4_combout\ : std_logic;
SIGNAL \inst|Mux33~5_combout\ : std_logic;
SIGNAL \inst|Mux33~8_combout\ : std_logic;
SIGNAL \inst|Mux33~9_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|R2[7]~0_combout\ : std_logic;
SIGNAL \inst|R2~12_combout\ : std_logic;
SIGNAL \inst|R2~11_combout\ : std_logic;
SIGNAL \inst|Mux41~0_combout\ : std_logic;
SIGNAL \inst|R2~10_combout\ : std_logic;
SIGNAL \inst|Mux41~1_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|Mux41~7_combout\ : std_logic;
SIGNAL \inst|Mux41~8_combout\ : std_logic;
SIGNAL \inst|Mux41~2_combout\ : std_logic;
SIGNAL \inst|Mux41~3_combout\ : std_logic;
SIGNAL \inst|Add6~7\ : std_logic;
SIGNAL \inst|Add6~9\ : std_logic;
SIGNAL \inst|Add6~11\ : std_logic;
SIGNAL \inst|Add6~13\ : std_logic;
SIGNAL \inst|Add6~14_combout\ : std_logic;
SIGNAL \inst|Mux41~4_combout\ : std_logic;
SIGNAL \inst|Mux41~5_combout\ : std_logic;
SIGNAL \inst|Mux41~6_combout\ : std_logic;
SIGNAL \inst|Mux41~9_combout\ : std_logic;
SIGNAL \inst|Mux41~10_combout\ : std_logic;
SIGNAL \inst|Mux94~0_combout\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|Mux94~1_combout\ : std_logic;
SIGNAL \inst|Add6~12_combout\ : std_logic;
SIGNAL \inst|R2~13_combout\ : std_logic;
SIGNAL \inst|Mux94~2_combout\ : std_logic;
SIGNAL \inst|Mux94~3_combout\ : std_logic;
SIGNAL \inst|R2[6]~1_combout\ : std_logic;
SIGNAL \inst|Mux26~0_combout\ : std_logic;
SIGNAL \inst|Mux26~1_combout\ : std_logic;
SIGNAL \inst|Mux102~0_combout\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Mux102~1_combout\ : std_logic;
SIGNAL \inst|Mux102~2_combout\ : std_logic;
SIGNAL \inst|Mux102~4_combout\ : std_logic;
SIGNAL \inst|Mux102~3_combout\ : std_logic;
SIGNAL \inst|Add5~12_combout\ : std_logic;
SIGNAL \inst|Mux102~5_combout\ : std_logic;
SIGNAL \inst|R1[6]~1_combout\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Mux103~0_combout\ : std_logic;
SIGNAL \inst|Mux103~1_combout\ : std_logic;
SIGNAL \inst|R1[5]~2_combout\ : std_logic;
SIGNAL \inst|Mux27~0_combout\ : std_logic;
SIGNAL \inst|Mux27~1_combout\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Mux87~0_combout\ : std_logic;
SIGNAL \inst|Mux87~1_combout\ : std_logic;
SIGNAL \inst|R3[5]~2_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|Mux67~0_combout\ : std_logic;
SIGNAL \inst|Mux95~2_combout\ : std_logic;
SIGNAL \inst|Add6~10_combout\ : std_logic;
SIGNAL \inst|Mux95~3_combout\ : std_logic;
SIGNAL \inst|Mux95~4_combout\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Mux95~0_combout\ : std_logic;
SIGNAL \inst|Mux95~1_combout\ : std_logic;
SIGNAL \inst|R2[5]~2_combout\ : std_logic;
SIGNAL \inst|Mux96~0_combout\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Mux96~1_combout\ : std_logic;
SIGNAL \inst|R2~19_combout\ : std_logic;
SIGNAL \inst|Add6~8_combout\ : std_logic;
SIGNAL \inst|Mux96~2_combout\ : std_logic;
SIGNAL \inst|Mux96~3_combout\ : std_logic;
SIGNAL \inst|R2[4]~3_combout\ : std_logic;
SIGNAL \inst|Mux28~0_combout\ : std_logic;
SIGNAL \inst|Mux28~1_combout\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Mux88~0_combout\ : std_logic;
SIGNAL \inst|Mux88~1_combout\ : std_logic;
SIGNAL \inst|Add7~8_combout\ : std_logic;
SIGNAL \inst|R3~19_combout\ : std_logic;
SIGNAL \inst|Mux88~2_combout\ : std_logic;
SIGNAL \inst|Mux88~3_combout\ : std_logic;
SIGNAL \inst|R3[4]~3_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Mux68~4_combout\ : std_logic;
SIGNAL \inst|Mux68~5_combout\ : std_logic;
SIGNAL \inst|Mux68~0_combout\ : std_logic;
SIGNAL \inst|Mux68~2_combout\ : std_logic;
SIGNAL \inst|Mux68~1_combout\ : std_logic;
SIGNAL \inst|Add4~8_combout\ : std_logic;
SIGNAL \inst|Mux68~3_combout\ : std_logic;
SIGNAL \inst|Mux68~6_combout\ : std_logic;
SIGNAL \inst|Mux68~7_combout\ : std_logic;
SIGNAL \inst|Mux69~4_combout\ : std_logic;
SIGNAL \inst|Mux69~2_combout\ : std_logic;
SIGNAL \inst|Mux69~1_combout\ : std_logic;
SIGNAL \inst|Add4~6_combout\ : std_logic;
SIGNAL \inst|Mux69~3_combout\ : std_logic;
SIGNAL \inst|Mux69~5_combout\ : std_logic;
SIGNAL \inst|Mux69~6_combout\ : std_logic;
SIGNAL \inst|Mux69~7_combout\ : std_logic;
SIGNAL \inst|R0[3]~feeder_combout\ : std_logic;
SIGNAL \inst|MDR[3]~feeder_combout\ : std_logic;
SIGNAL \inst|MDR[4]~feeder_combout\ : std_logic;
SIGNAL \inst|MDR[6]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|Mux7~1_combout\ : std_logic;
SIGNAL \inst|R3[0]~5_combout\ : std_logic;
SIGNAL \inst|Mux40~2_combout\ : std_logic;
SIGNAL \inst|Mux40~3_combout\ : std_logic;
SIGNAL \inst|Decoder0~2_combout\ : std_logic;
SIGNAL \inst|Mux40~8_combout\ : std_logic;
SIGNAL \inst|Add7~0_combout\ : std_logic;
SIGNAL \inst|Mux40~10_combout\ : std_logic;
SIGNAL \inst|Mux40~6_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|Mux40~4_combout\ : std_logic;
SIGNAL \inst|Mux40~5_combout\ : std_logic;
SIGNAL \inst|Mux40~7_combout\ : std_logic;
SIGNAL \inst|Mux40~9_combout\ : std_logic;
SIGNAL \inst|Add7~1\ : std_logic;
SIGNAL \inst|Add7~2_combout\ : std_logic;
SIGNAL \inst|Mux91~5_combout\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Mux91~0_combout\ : std_logic;
SIGNAL \inst|Mux91~1_combout\ : std_logic;
SIGNAL \inst|R3[1]~4_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux6~1_combout\ : std_logic;
SIGNAL \inst|Add6~3\ : std_logic;
SIGNAL \inst|Add6~4_combout\ : std_logic;
SIGNAL \inst|R2~20_combout\ : std_logic;
SIGNAL \inst|Mux98~2_combout\ : std_logic;
SIGNAL \inst|Mux98~3_combout\ : std_logic;
SIGNAL \inst|Mux98~0_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Mux98~1_combout\ : std_logic;
SIGNAL \inst|R2[2]~7_combout\ : std_logic;
SIGNAL \inst|Add6~5\ : std_logic;
SIGNAL \inst|Add6~6_combout\ : std_logic;
SIGNAL \inst|Mux97~2_combout\ : std_logic;
SIGNAL \inst|Mux97~4_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Mux97~0_combout\ : std_logic;
SIGNAL \inst|Mux97~1_combout\ : std_logic;
SIGNAL \inst|R2[3]~6_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux4~1_combout\ : std_logic;
SIGNAL \inst|Mux89~2_combout\ : std_logic;
SIGNAL \inst|Mux89~3_combout\ : std_logic;
SIGNAL \inst|Add7~6_combout\ : std_logic;
SIGNAL \inst|Mux89~4_combout\ : std_logic;
SIGNAL \inst|Mux89~5_combout\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Mux89~0_combout\ : std_logic;
SIGNAL \inst|Mux89~1_combout\ : std_logic;
SIGNAL \inst|R3[3]~6_combout\ : std_logic;
SIGNAL \inst|Mux90~0_combout\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Mux90~1_combout\ : std_logic;
SIGNAL \inst|Add7~4_combout\ : std_logic;
SIGNAL \inst|R3~20_combout\ : std_logic;
SIGNAL \inst|Mux90~2_combout\ : std_logic;
SIGNAL \inst|Mux90~3_combout\ : std_logic;
SIGNAL \inst|R3[2]~7_combout\ : std_logic;
SIGNAL \inst|Mux30~0_combout\ : std_logic;
SIGNAL \inst|Mux30~1_combout\ : std_logic;
SIGNAL \inst|Mux106~0_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Mux106~1_combout\ : std_logic;
SIGNAL \inst|Add5~4_combout\ : std_logic;
SIGNAL \inst|R1~17_combout\ : std_logic;
SIGNAL \inst|Mux106~2_combout\ : std_logic;
SIGNAL \inst|Mux106~3_combout\ : std_logic;
SIGNAL \inst|R1[2]~7_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Mux70~6_combout\ : std_logic;
SIGNAL \inst|Mux70~0_combout\ : std_logic;
SIGNAL \inst|Mux70~2_combout\ : std_logic;
SIGNAL \inst|Mux70~1_combout\ : std_logic;
SIGNAL \inst|Add4~4_combout\ : std_logic;
SIGNAL \inst|Mux70~3_combout\ : std_logic;
SIGNAL \inst|Mux70~4_combout\ : std_logic;
SIGNAL \inst|Mux70~5_combout\ : std_logic;
SIGNAL \inst|Mux70~7_combout\ : std_logic;
SIGNAL \inst|R0[2]~feeder_combout\ : std_logic;
SIGNAL \inst|Decoder2~0_combout\ : std_logic;
SIGNAL \inst|R0[1]~26_combout\ : std_logic;
SIGNAL \inst|Mux63~0_combout\ : std_logic;
SIGNAL \inst|Mux63~1_combout\ : std_logic;
SIGNAL \inst|Mux63~2_combout\ : std_logic;
SIGNAL \inst|Mux63~3_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|R0~37_combout\ : std_logic;
SIGNAL \inst|R0~27_combout\ : std_logic;
SIGNAL \inst|Mux63~9_combout\ : std_logic;
SIGNAL \inst|Mux63~10_combout\ : std_logic;
SIGNAL \inst|Mux63~7_combout\ : std_logic;
SIGNAL \inst|Mux63~4_combout\ : std_logic;
SIGNAL \inst|Add4~2_combout\ : std_logic;
SIGNAL \inst|Mux63~5_combout\ : std_logic;
SIGNAL \inst|Mux63~6_combout\ : std_logic;
SIGNAL \inst|Mux63~8_combout\ : std_logic;
SIGNAL \inst|Mux63~11_combout\ : std_logic;
SIGNAL \inst|Mux63~12_combout\ : std_logic;
SIGNAL \inst|R0[1]~28_combout\ : std_logic;
SIGNAL \inst|always1~1_combout\ : std_logic;
SIGNAL \inst|always1~2_combout\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst|Mux113~0_combout\ : std_logic;
SIGNAL \inst|Mux81~0_combout\ : std_logic;
SIGNAL \inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst|IR[15]~feeder_combout\ : std_logic;
SIGNAL \inst|Decoder3~1_combout\ : std_logic;
SIGNAL \inst|R0[4]~9_combout\ : std_logic;
SIGNAL \inst|Add4~12_combout\ : std_logic;
SIGNAL \inst|Mux66~0_combout\ : std_logic;
SIGNAL \inst|Mux66~1_combout\ : std_logic;
SIGNAL \inst|Mux66~2_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Mux66~3_combout\ : std_logic;
SIGNAL \inst|Mux66~4_combout\ : std_logic;
SIGNAL \inst|Mux66~5_combout\ : std_logic;
SIGNAL \inst|Mux66~6_combout\ : std_logic;
SIGNAL \inst|always1~0_combout\ : std_logic;
SIGNAL \inst|Mux73~0_combout\ : std_logic;
SIGNAL \inst|Mux84~0_combout\ : std_logic;
SIGNAL \inst|PC[0]~13\ : std_logic;
SIGNAL \inst|PC[1]~14_combout\ : std_logic;
SIGNAL \inst|Mux83~0_combout\ : std_logic;
SIGNAL \inst|PC[1]~15\ : std_logic;
SIGNAL \inst|PC[2]~16_combout\ : std_logic;
SIGNAL \inst|Mux114~0_combout\ : std_logic;
SIGNAL \inst|Mux82~0_combout\ : std_logic;
SIGNAL \inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst|Mux115~0_combout\ : std_logic;
SIGNAL \inst|Mux21~0_combout\ : std_logic;
SIGNAL \inst|IR[13]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Mux9~5_combout\ : std_logic;
SIGNAL \inst|status[0]~0_combout\ : std_logic;
SIGNAL \inst|Mux9~3_combout\ : std_logic;
SIGNAL \inst|Mux9~2_combout\ : std_logic;
SIGNAL \inst|Mux9~6_combout\ : std_logic;
SIGNAL \inst|Mux9~4_combout\ : std_logic;
SIGNAL \inst|Mux116~0_combout\ : std_logic;
SIGNAL \inst|Mux22~0_combout\ : std_logic;
SIGNAL \inst|IR[12]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|R0[0]~2_combout\ : std_logic;
SIGNAL \inst|R0[0]~29_combout\ : std_logic;
SIGNAL \inst|R0~31_combout\ : std_logic;
SIGNAL \inst|R0~32_combout\ : std_logic;
SIGNAL \inst|Mux64~2_combout\ : std_logic;
SIGNAL \inst|R0~30_combout\ : std_logic;
SIGNAL \inst|Mux64~3_combout\ : std_logic;
SIGNAL \inst|R0~33_combout\ : std_logic;
SIGNAL \inst|Mux64~8_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|R0~38_combout\ : std_logic;
SIGNAL \inst|Mux64~9_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|Mux64~5_combout\ : std_logic;
SIGNAL \inst|Mux64~4_combout\ : std_logic;
SIGNAL \inst|Mux64~6_combout\ : std_logic;
SIGNAL \inst|Mux64~7_combout\ : std_logic;
SIGNAL \inst|Mux64~10_combout\ : std_logic;
SIGNAL \inst|Mux64~11_combout\ : std_logic;
SIGNAL \inst|R0[0]~34_combout\ : std_logic;
SIGNAL \inst|MDR[0]~feeder_combout\ : std_logic;
SIGNAL \inst|IR[14]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|write_read~combout\ : std_logic;
SIGNAL \inst|PC[5]~23\ : std_logic;
SIGNAL \inst|PC[6]~24_combout\ : std_logic;
SIGNAL \inst|Mux110~0_combout\ : std_logic;
SIGNAL \inst|Mux78~0_combout\ : std_logic;
SIGNAL \inst|PC[6]~25\ : std_logic;
SIGNAL \inst|PC[7]~26_combout\ : std_logic;
SIGNAL \inst|Mux109~0_combout\ : std_logic;
SIGNAL \inst|Mux77~0_combout\ : std_logic;
SIGNAL \inst|PC[7]~27\ : std_logic;
SIGNAL \inst|PC[8]~28_combout\ : std_logic;
SIGNAL \inst|Mux76~0_combout\ : std_logic;
SIGNAL \inst|PC[8]~29\ : std_logic;
SIGNAL \inst|PC[9]~30_combout\ : std_logic;
SIGNAL \inst|Mux75~0_combout\ : std_logic;
SIGNAL \inst|PC[9]~31\ : std_logic;
SIGNAL \inst|PC[10]~32_combout\ : std_logic;
SIGNAL \inst|Mux74~0_combout\ : std_logic;
SIGNAL \inst|PC[10]~33\ : std_logic;
SIGNAL \inst|PC[11]~34_combout\ : std_logic;
SIGNAL \inst|Mux73~1_combout\ : std_logic;
SIGNAL \inst|Mux11~1_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|overflow~1_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst|overflow~0_combout\ : std_logic;
SIGNAL \inst|Add5~15\ : std_logic;
SIGNAL \inst|Add5~16_combout\ : std_logic;
SIGNAL \inst|Add7~15\ : std_logic;
SIGNAL \inst|Add7~16_combout\ : std_logic;
SIGNAL \inst|Add4~15\ : std_logic;
SIGNAL \inst|Add4~16_combout\ : std_logic;
SIGNAL \inst|Add6~15\ : std_logic;
SIGNAL \inst|Add6~16_combout\ : std_logic;
SIGNAL \inst|Mux24~0_combout\ : std_logic;
SIGNAL \inst|Mux24~1_combout\ : std_logic;
SIGNAL \inst|Add2~15\ : std_logic;
SIGNAL \inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|Add3~15\ : std_logic;
SIGNAL \inst|Add3~16_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add1~15\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|Mux23~0_combout\ : std_logic;
SIGNAL \inst|Mux23~1_combout\ : std_logic;
SIGNAL \inst|Selector0~2_combout\ : std_logic;
SIGNAL \inst|overflow~2_combout\ : std_logic;
SIGNAL \inst|overflow~q\ : std_logic;
SIGNAL \inst|status\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|R3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|R2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|R1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|R0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|PC\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|MDR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|MAR\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|IR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|A\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_status\ : std_logic_vector(2 DOWNTO 1);

BEGIN

write_read <= ww_write_read;
ww_reset <= reset;
ww_clock <= clock;
M_address <= ww_M_address;
overflow <= ww_overflow;
M_data_out <= ww_M_data_out;
q <= ww_q;
status <= ww_status;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst|MDR\(7) & \inst|MDR\(6) & \inst|MDR\(5) & \inst|MDR\(4) & \inst|MDR\(3) & \inst|MDR\(2) & 
\inst|MDR\(1) & \inst|MDR\(0));

\inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|MAR\(5) & \inst|MAR\(4) & \inst|MAR\(3) & \inst|MAR\(2) & \inst|MAR\(1) & \inst|MAR\(0));

\inst2|altsyncram_component|auto_generated|q_a\(0) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst2|altsyncram_component|auto_generated|q_a\(1) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst2|altsyncram_component|auto_generated|q_a\(2) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst2|altsyncram_component|auto_generated|q_a\(3) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst2|altsyncram_component|auto_generated|q_a\(4) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst2|altsyncram_component|auto_generated|q_a\(5) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst2|altsyncram_component|auto_generated|q_a\(6) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst2|altsyncram_component|auto_generated|q_a\(7) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_clock~inputclkctrl_outclk\ <= NOT \clock~inputclkctrl_outclk\;
\inst|ALT_INV_status\(1) <= NOT \inst|status\(1);
\inst|ALT_INV_status\(2) <= NOT \inst|status\(2);

-- Location: IOOBUF_X32_Y43_N9
\write_read~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|write_read~combout\,
	devoe => ww_devoe,
	o => \write_read~output_o\);

-- Location: IOOBUF_X16_Y43_N9
\M_address[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(11),
	devoe => ww_devoe,
	o => \M_address[11]~output_o\);

-- Location: IOOBUF_X16_Y43_N2
\M_address[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(10),
	devoe => ww_devoe,
	o => \M_address[10]~output_o\);

-- Location: IOOBUF_X22_Y43_N23
\M_address[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(9),
	devoe => ww_devoe,
	o => \M_address[9]~output_o\);

-- Location: IOOBUF_X14_Y43_N30
\M_address[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(8),
	devoe => ww_devoe,
	o => \M_address[8]~output_o\);

-- Location: IOOBUF_X18_Y43_N2
\M_address[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(7),
	devoe => ww_devoe,
	o => \M_address[7]~output_o\);

-- Location: IOOBUF_X14_Y43_N23
\M_address[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(6),
	devoe => ww_devoe,
	o => \M_address[6]~output_o\);

-- Location: IOOBUF_X29_Y43_N16
\M_address[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(5),
	devoe => ww_devoe,
	o => \M_address[5]~output_o\);

-- Location: IOOBUF_X16_Y43_N16
\M_address[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(4),
	devoe => ww_devoe,
	o => \M_address[4]~output_o\);

-- Location: IOOBUF_X29_Y43_N2
\M_address[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(3),
	devoe => ww_devoe,
	o => \M_address[3]~output_o\);

-- Location: IOOBUF_X22_Y43_N30
\M_address[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(2),
	devoe => ww_devoe,
	o => \M_address[2]~output_o\);

-- Location: IOOBUF_X22_Y43_N2
\M_address[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(1),
	devoe => ww_devoe,
	o => \M_address[1]~output_o\);

-- Location: IOOBUF_X27_Y43_N16
\M_address[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(0),
	devoe => ww_devoe,
	o => \M_address[0]~output_o\);

-- Location: IOOBUF_X20_Y43_N9
\overflow~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|overflow~q\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOOBUF_X20_Y43_N23
\M_data_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR\(7),
	devoe => ww_devoe,
	o => \M_data_out[7]~output_o\);

-- Location: IOOBUF_X29_Y43_N23
\M_data_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR\(6),
	devoe => ww_devoe,
	o => \M_data_out[6]~output_o\);

-- Location: IOOBUF_X32_Y43_N2
\M_data_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR\(5),
	devoe => ww_devoe,
	o => \M_data_out[5]~output_o\);

-- Location: IOOBUF_X29_Y43_N9
\M_data_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR\(4),
	devoe => ww_devoe,
	o => \M_data_out[4]~output_o\);

-- Location: IOOBUF_X22_Y43_N9
\M_data_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR\(3),
	devoe => ww_devoe,
	o => \M_data_out[3]~output_o\);

-- Location: IOOBUF_X18_Y43_N30
\M_data_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR\(2),
	devoe => ww_devoe,
	o => \M_data_out[2]~output_o\);

-- Location: IOOBUF_X27_Y43_N23
\M_data_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR\(1),
	devoe => ww_devoe,
	o => \M_data_out[1]~output_o\);

-- Location: IOOBUF_X22_Y43_N16
\M_data_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR\(0),
	devoe => ww_devoe,
	o => \M_data_out[0]~output_o\);

-- Location: IOOBUF_X25_Y43_N16
\q[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X27_Y43_N2
\q[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X25_Y43_N30
\q[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X27_Y43_N9
\q[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X25_Y43_N9
\q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X20_Y43_N2
\q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X27_Y43_N30
\q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X25_Y43_N23
\q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X20_Y43_N16
\status[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|status\(2),
	devoe => ww_devoe,
	o => \status[2]~output_o\);

-- Location: IOOBUF_X20_Y43_N30
\status[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|status\(1),
	devoe => ww_devoe,
	o => \status[1]~output_o\);

-- Location: IOOBUF_X25_Y43_N2
\status[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|status\(0),
	devoe => ww_devoe,
	o => \status[0]~output_o\);

-- Location: IOIBUF_X0_Y21_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X22_Y41_N6
\inst|PC[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PC[0]~12_combout\ = \inst|PC\(0) $ (VCC)
-- \inst|PC[0]~13\ = CARRY(\inst|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(0),
	datad => VCC,
	combout => \inst|PC[0]~12_combout\,
	cout => \inst|PC[0]~13\);

-- Location: LCCOMB_X22_Y41_N10
\inst|PC[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PC[2]~16_combout\ = (\inst|PC\(2) & (\inst|PC[1]~15\ $ (GND))) # (!\inst|PC\(2) & (!\inst|PC[1]~15\ & VCC))
-- \inst|PC[2]~17\ = CARRY((\inst|PC\(2) & !\inst|PC[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datad => VCC,
	cin => \inst|PC[1]~15\,
	combout => \inst|PC[2]~16_combout\,
	cout => \inst|PC[2]~17\);

-- Location: LCCOMB_X22_Y41_N12
\inst|PC[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PC[3]~18_combout\ = (\inst|PC\(3) & (!\inst|PC[2]~17\)) # (!\inst|PC\(3) & ((\inst|PC[2]~17\) # (GND)))
-- \inst|PC[3]~19\ = CARRY((!\inst|PC[2]~17\) # (!\inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datad => VCC,
	cin => \inst|PC[2]~17\,
	combout => \inst|PC[3]~18_combout\,
	cout => \inst|PC[3]~19\);

-- Location: LCCOMB_X25_Y41_N22
\inst|Mux112~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux112~0_combout\ = (\inst|status\(1) & \inst2|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|status\(1),
	datad => \inst2|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst|Mux112~0_combout\);

-- Location: IOIBUF_X0_Y21_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y40_N12
\inst|PC[3]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PC[3]~36_combout\ = (\inst|IR\(14) $ (((!\inst|IR\(13)) # (!\inst|IR\(12))))) # (!\inst|IR\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|IR\(14),
	datac => \inst|IR\(13),
	datad => \inst|IR\(15),
	combout => \inst|PC[3]~36_combout\);

-- Location: LCCOMB_X25_Y41_N30
\inst|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal6~0_combout\ = (!\inst|IR\(13) & (\inst|IR\(15) & (!\inst|IR\(12) & \inst|IR\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(15),
	datac => \inst|IR\(12),
	datad => \inst|IR\(14),
	combout => \inst|Equal6~0_combout\);

-- Location: LCCOMB_X25_Y41_N12
\inst|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (\inst|IR\(13) & (\inst|IR\(12) & (\inst|IR\(15) & !\inst|IR\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|IR\(15),
	datad => \inst|IR\(14),
	combout => \inst|Equal5~0_combout\);

-- Location: LCCOMB_X25_Y41_N20
\inst|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (\inst|status\(0) & (\inst|status\(1) & (!\inst|Equal6~0_combout\ & !\inst|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|status\(0),
	datab => \inst|status\(1),
	datac => \inst|Equal6~0_combout\,
	datad => \inst|Equal5~0_combout\,
	combout => \inst|Mux8~0_combout\);

-- Location: LCCOMB_X25_Y39_N20
\inst|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux8~1_combout\ = (\inst|Mux8~0_combout\) # ((\inst|status\(2) & ((\inst|status\(0)) # (\inst|status\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|status\(0),
	datab => \inst|Mux8~0_combout\,
	datac => \inst|status\(2),
	datad => \inst|status\(1),
	combout => \inst|Mux8~1_combout\);

-- Location: FF_X25_Y39_N21
\inst|status[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux8~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|status\(2));

-- Location: LCCOMB_X25_Y40_N16
\inst|IR[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|IR[0]~0_combout\ = (!\inst|status\(2) & (!\inst|status\(0) & ((!\inst|status\(1)) # (!\inst|PC[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[3]~36_combout\,
	datab => \inst|status\(1),
	datac => \inst|status\(2),
	datad => \inst|status\(0),
	combout => \inst|IR[0]~0_combout\);

-- Location: FF_X25_Y41_N23
\inst|IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux112~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(4));

-- Location: LCCOMB_X22_Y41_N14
\inst|PC[4]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PC[4]~20_combout\ = (\inst|PC\(4) & (\inst|PC[3]~19\ $ (GND))) # (!\inst|PC\(4) & (!\inst|PC[3]~19\ & VCC))
-- \inst|PC[4]~21\ = CARRY((\inst|PC\(4) & !\inst|PC[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(4),
	datad => VCC,
	cin => \inst|PC[3]~19\,
	combout => \inst|PC[4]~20_combout\,
	cout => \inst|PC[4]~21\);

-- Location: LCCOMB_X21_Y41_N6
\inst|Mux80~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux80~0_combout\ = (\inst|Mux73~0_combout\ & (\inst|IR\(4))) # (!\inst|Mux73~0_combout\ & ((\inst|PC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datac => \inst|PC\(4),
	datad => \inst|Mux73~0_combout\,
	combout => \inst|Mux80~0_combout\);

-- Location: LCCOMB_X25_Y40_N0
\inst|write_read~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|write_read~1_combout\ = (\inst|status\(0) & \inst|status\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|status\(0),
	datad => \inst|status\(1),
	combout => \inst|write_read~1_combout\);

-- Location: LCCOMB_X25_Y40_N26
\inst|PC[3]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PC[3]~37_combout\ = (!\inst|status\(2) & ((\inst|status\(1) & ((\inst|status\(0)) # (!\inst|PC[3]~36_combout\))) # (!\inst|status\(1) & ((!\inst|status\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[3]~36_combout\,
	datab => \inst|status\(1),
	datac => \inst|status\(2),
	datad => \inst|status\(0),
	combout => \inst|PC[3]~37_combout\);

-- Location: FF_X22_Y41_N15
\inst|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|PC[4]~20_combout\,
	asdata => \inst|Mux80~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \inst|write_read~1_combout\,
	ena => \inst|PC[3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(4));

-- Location: LCCOMB_X25_Y41_N26
\inst|MAR[11]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MAR[11]~0_combout\ = ((\inst|IR\(13) $ (!\inst|IR\(12))) # (!\inst|IR\(14))) # (!\inst|IR\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|IR\(15),
	datad => \inst|IR\(14),
	combout => \inst|MAR[11]~0_combout\);

-- Location: LCCOMB_X23_Y40_N4
\inst|MDR[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MDR[7]~0_combout\ = (\inst|status\(1) & !\inst|status\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|status\(1),
	datab => \inst|status\(0),
	combout => \inst|MDR[7]~0_combout\);

-- Location: LCCOMB_X25_Y38_N30
\inst|R0[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[1]~1_combout\ = (\inst|Equal7~0_combout\ & (\inst|R0\(1))) # (!\inst|Equal7~0_combout\ & ((\inst2|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~0_combout\,
	datac => \inst|R0\(1),
	datad => \inst2|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst|R0[1]~1_combout\);

-- Location: LCCOMB_X23_Y40_N18
\inst|Decoder3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Decoder3~0_combout\ = (!\inst|status\(1) & (!\inst|status\(0) & !\inst|status\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|status\(1),
	datac => \inst|status\(0),
	datad => \inst|status\(2),
	combout => \inst|Decoder3~0_combout\);

-- Location: FF_X25_Y40_N15
\inst|IR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst2|altsyncram_component|auto_generated|q_a\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|Decoder3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(11));

-- Location: LCCOMB_X23_Y41_N26
\inst|Mux111~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux111~0_combout\ = (\inst|status\(1) & \inst2|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|status\(1),
	datac => \inst2|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst|Mux111~0_combout\);

-- Location: FF_X23_Y41_N27
\inst|IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux111~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(5));

-- Location: LCCOMB_X22_Y41_N16
\inst|PC[5]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PC[5]~22_combout\ = (\inst|PC\(5) & (!\inst|PC[4]~21\)) # (!\inst|PC\(5) & ((\inst|PC[4]~21\) # (GND)))
-- \inst|PC[5]~23\ = CARRY((!\inst|PC[4]~21\) # (!\inst|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(5),
	datad => VCC,
	cin => \inst|PC[4]~21\,
	combout => \inst|PC[5]~22_combout\,
	cout => \inst|PC[5]~23\);

-- Location: LCCOMB_X23_Y41_N8
\inst|Mux79~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux79~0_combout\ = (\inst|Mux73~0_combout\ & (\inst|IR\(5))) # (!\inst|Mux73~0_combout\ & ((\inst|PC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(5),
	datac => \inst|PC\(5),
	datad => \inst|Mux73~0_combout\,
	combout => \inst|Mux79~0_combout\);

-- Location: FF_X22_Y41_N17
\inst|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|PC[5]~22_combout\,
	asdata => \inst|Mux79~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \inst|write_read~1_combout\,
	ena => \inst|PC[3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(5));

-- Location: LCCOMB_X23_Y41_N28
\inst|Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux17~0_combout\ = (\inst|Mux11~0_combout\ & (\inst|IR\(5))) # (!\inst|Mux11~0_combout\ & ((\inst|PC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(5),
	datac => \inst|PC\(5),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux17~0_combout\);

-- Location: LCCOMB_X25_Y39_N2
\inst|write_read~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|write_read~0_combout\ = (\reset~input_o\ & !\inst|status\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \inst|status\(2),
	combout => \inst|write_read~0_combout\);

-- Location: LCCOMB_X25_Y41_N18
\inst|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = (\inst|IR\(13) & (!\inst|IR\(12) & (\inst|IR\(15) & !\inst|IR\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|IR\(15),
	datad => \inst|IR\(14),
	combout => \inst|Equal3~0_combout\);

-- Location: LCCOMB_X25_Y39_N24
\inst|MAR[11]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MAR[11]~1_combout\ = (!\inst|status\(0) & ((!\inst|Equal3~0_combout\) # (!\inst|status\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|status\(1),
	datac => \inst|status\(0),
	datad => \inst|Equal3~0_combout\,
	combout => \inst|MAR[11]~1_combout\);

-- Location: LCCOMB_X25_Y39_N14
\inst|MAR[11]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MAR[11]~2_combout\ = (\inst|write_read~0_combout\ & ((\inst|MAR[11]~1_combout\) # ((!\inst|MAR[11]~0_combout\ & \inst|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR[11]~0_combout\,
	datab => \inst|write_read~0_combout\,
	datac => \inst|Mux8~0_combout\,
	datad => \inst|MAR[11]~1_combout\,
	combout => \inst|MAR[11]~2_combout\);

-- Location: FF_X23_Y41_N29
\inst|MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux17~0_combout\,
	ena => \inst|MAR[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(5));

-- Location: LCCOMB_X23_Y40_N14
\inst|MDR[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MDR[1]~feeder_combout\ = \inst|R0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|R0\(1),
	combout => \inst|MDR[1]~feeder_combout\);

-- Location: LCCOMB_X23_Y40_N20
\inst|MDR[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MDR[7]~1_combout\ = (\inst|Equal1~0_combout\ & (\inst|MDR[7]~0_combout\ & (\inst|Equal1~1_combout\ & !\inst|status\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|MDR[7]~0_combout\,
	datac => \inst|Equal1~1_combout\,
	datad => \inst|status\(2),
	combout => \inst|MDR[7]~1_combout\);

-- Location: FF_X23_Y40_N15
\inst|MDR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|MDR[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|MDR[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR\(1));

-- Location: LCCOMB_X19_Y38_N28
\inst|R0[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[4]~35_combout\ = (!\inst|IR\(15) & \inst|IR\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(15),
	datac => \inst|IR\(14),
	combout => \inst|R0[4]~35_combout\);

-- Location: LCCOMB_X22_Y39_N24
\inst|Mux69~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux69~0_combout\ = (\inst|A\(3) & ((\inst|IR\(12)) # (!\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(12),
	datac => \inst|IR\(10),
	datad => \inst|A\(3),
	combout => \inst|Mux69~0_combout\);

-- Location: LCCOMB_X21_Y39_N2
\inst|Mux97~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux97~3_combout\ = (\inst|R2\(3) & (\inst|IR\(13) $ (((\inst|IR\(12) & \inst|Mux69~0_combout\))))) # (!\inst|R2\(3) & (((\inst|IR\(13) & \inst|Mux69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|IR\(13),
	datac => \inst|R2\(3),
	datad => \inst|Mux69~0_combout\,
	combout => \inst|Mux97~3_combout\);

-- Location: LCCOMB_X19_Y36_N0
\inst|Mux91~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux91~2_combout\ = (\inst|A\(1) & ((\inst|IR\(12)) # (\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|IR\(10),
	datac => \inst|A\(1),
	combout => \inst|Mux91~2_combout\);

-- Location: LCCOMB_X19_Y36_N28
\inst|Mux91~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux91~4_combout\ = (\inst|R3\(1) & (\inst|IR\(13) $ (((\inst|IR\(12) & \inst|Mux91~2_combout\))))) # (!\inst|R3\(1) & (\inst|IR\(13) & ((\inst|Mux91~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(1),
	datab => \inst|IR\(13),
	datac => \inst|IR\(12),
	datad => \inst|Mux91~2_combout\,
	combout => \inst|Mux91~4_combout\);

-- Location: LCCOMB_X19_Y36_N14
\inst|Mux91~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux91~3_combout\ = (\inst|IR\(13) & (\inst|R3\(1) $ (((!\inst|Mux91~2_combout\) # (!\inst|IR\(12)))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|Mux91~2_combout\) # (!\inst|R3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(1),
	datab => \inst|IR\(13),
	datac => \inst|IR\(12),
	datad => \inst|Mux91~2_combout\,
	combout => \inst|Mux91~3_combout\);

-- Location: LCCOMB_X26_Y39_N24
\inst|R0[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[2]~17_combout\ = (\inst|status\(1)) # ((\inst|IR\(13) & (!\inst|IR\(15) & !\inst|IR\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(15),
	datac => \inst|status\(1),
	datad => \inst|IR\(14),
	combout => \inst|R0[2]~17_combout\);

-- Location: LCCOMB_X22_Y38_N14
\inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst|A\(0) & (\inst|R0\(0) $ (VCC))) # (!\inst|A\(0) & (\inst|R0\(0) & VCC))
-- \inst|Add0~1\ = CARRY((\inst|A\(0) & \inst|R0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(0),
	datab => \inst|R0\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X22_Y38_N16
\inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|R0\(1) & ((\inst|A\(1) & (\inst|Add0~1\ & VCC)) # (!\inst|A\(1) & (!\inst|Add0~1\)))) # (!\inst|R0\(1) & ((\inst|A\(1) & (!\inst|Add0~1\)) # (!\inst|A\(1) & ((\inst|Add0~1\) # (GND)))))
-- \inst|Add0~3\ = CARRY((\inst|R0\(1) & (!\inst|A\(1) & !\inst|Add0~1\)) # (!\inst|R0\(1) & ((!\inst|Add0~1\) # (!\inst|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(1),
	datab => \inst|A\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X22_Y38_N18
\inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = ((\inst|A\(2) $ (\inst|R0\(2) $ (!\inst|Add0~3\)))) # (GND)
-- \inst|Add0~5\ = CARRY((\inst|A\(2) & ((\inst|R0\(2)) # (!\inst|Add0~3\))) # (!\inst|A\(2) & (\inst|R0\(2) & !\inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(2),
	datab => \inst|R0\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X22_Y38_N20
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|A\(3) & ((\inst|R0\(3) & (\inst|Add0~5\ & VCC)) # (!\inst|R0\(3) & (!\inst|Add0~5\)))) # (!\inst|A\(3) & ((\inst|R0\(3) & (!\inst|Add0~5\)) # (!\inst|R0\(3) & ((\inst|Add0~5\) # (GND)))))
-- \inst|Add0~7\ = CARRY((\inst|A\(3) & (!\inst|R0\(3) & !\inst|Add0~5\)) # (!\inst|A\(3) & ((!\inst|Add0~5\) # (!\inst|R0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(3),
	datab => \inst|R0\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X22_Y39_N30
\inst|R0[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[2]~18_combout\ = (\inst|IR\(15)) # ((\inst|IR\(14)) # ((\inst|IR\(13) & !\inst|IR\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|IR\(15),
	datad => \inst|IR\(14),
	combout => \inst|R0[2]~18_combout\);

-- Location: LCCOMB_X22_Y39_N20
\inst|R0[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[2]~19_combout\ = (\inst|R0[2]~18_combout\) # (\inst|status\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|R0[2]~18_combout\,
	datad => \inst|status\(1),
	combout => \inst|R0[2]~19_combout\);

-- Location: LCCOMB_X19_Y37_N26
\inst|R0[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[4]~11_combout\ = (!\inst|IR\(13) & \inst|IR\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(13),
	datad => \inst|IR\(15),
	combout => \inst|R0[4]~11_combout\);

-- Location: LCCOMB_X19_Y39_N20
\inst|Mux87~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux87~2_combout\ = (\inst|A\(5) & ((\inst|IR\(10)) # (\inst|IR\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(10),
	datac => \inst|A\(5),
	datad => \inst|IR\(12),
	combout => \inst|Mux87~2_combout\);

-- Location: LCCOMB_X19_Y39_N24
\inst|Mux87~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux87~4_combout\ = (\inst|R3\(5) & (\inst|IR\(13) $ (((\inst|IR\(12) & \inst|Mux87~2_combout\))))) # (!\inst|R3\(5) & (((\inst|IR\(13) & \inst|Mux87~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|R3\(5),
	datac => \inst|IR\(13),
	datad => \inst|Mux87~2_combout\,
	combout => \inst|Mux87~4_combout\);

-- Location: LCCOMB_X19_Y39_N26
\inst|Mux87~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux87~3_combout\ = (\inst|IR\(13) & (\inst|R3\(5) $ (((!\inst|Mux87~2_combout\) # (!\inst|IR\(12)))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|Mux87~2_combout\) # (!\inst|R3\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|R3\(5),
	datac => \inst|IR\(13),
	datad => \inst|Mux87~2_combout\,
	combout => \inst|Mux87~3_combout\);

-- Location: LCCOMB_X22_Y36_N2
\inst|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~2_combout\ = (\inst|A\(1) & ((\inst|R3\(1) & (!\inst|Add7~1\)) # (!\inst|R3\(1) & ((\inst|Add7~1\) # (GND))))) # (!\inst|A\(1) & ((\inst|R3\(1) & (\inst|Add7~1\ & VCC)) # (!\inst|R3\(1) & (!\inst|Add7~1\))))
-- \inst|Add7~3\ = CARRY((\inst|A\(1) & ((!\inst|Add7~1\) # (!\inst|R3\(1)))) # (!\inst|A\(1) & (!\inst|R3\(1) & !\inst|Add7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(1),
	datab => \inst|R3\(1),
	datad => VCC,
	cin => \inst|Add7~1\,
	combout => \inst|Add7~2_combout\,
	cout => \inst|Add7~3\);

-- Location: LCCOMB_X22_Y36_N4
\inst|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~4_combout\ = ((\inst|A\(2) $ (\inst|R3\(2) $ (\inst|Add7~3\)))) # (GND)
-- \inst|Add7~5\ = CARRY((\inst|A\(2) & (\inst|R3\(2) & !\inst|Add7~3\)) # (!\inst|A\(2) & ((\inst|R3\(2)) # (!\inst|Add7~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(2),
	datab => \inst|R3\(2),
	datad => VCC,
	cin => \inst|Add7~3\,
	combout => \inst|Add7~4_combout\,
	cout => \inst|Add7~5\);

-- Location: LCCOMB_X22_Y36_N6
\inst|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~6_combout\ = (\inst|R3\(3) & ((\inst|A\(3) & (!\inst|Add7~5\)) # (!\inst|A\(3) & (\inst|Add7~5\ & VCC)))) # (!\inst|R3\(3) & ((\inst|A\(3) & ((\inst|Add7~5\) # (GND))) # (!\inst|A\(3) & (!\inst|Add7~5\))))
-- \inst|Add7~7\ = CARRY((\inst|R3\(3) & (\inst|A\(3) & !\inst|Add7~5\)) # (!\inst|R3\(3) & ((\inst|A\(3)) # (!\inst|Add7~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(3),
	datab => \inst|A\(3),
	datad => VCC,
	cin => \inst|Add7~5\,
	combout => \inst|Add7~6_combout\,
	cout => \inst|Add7~7\);

-- Location: LCCOMB_X22_Y36_N8
\inst|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~8_combout\ = ((\inst|A\(4) $ (\inst|R3\(4) $ (\inst|Add7~7\)))) # (GND)
-- \inst|Add7~9\ = CARRY((\inst|A\(4) & (\inst|R3\(4) & !\inst|Add7~7\)) # (!\inst|A\(4) & ((\inst|R3\(4)) # (!\inst|Add7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(4),
	datab => \inst|R3\(4),
	datad => VCC,
	cin => \inst|Add7~7\,
	combout => \inst|Add7~8_combout\,
	cout => \inst|Add7~9\);

-- Location: LCCOMB_X22_Y36_N10
\inst|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~10_combout\ = (\inst|R3\(5) & ((\inst|A\(5) & (!\inst|Add7~9\)) # (!\inst|A\(5) & (\inst|Add7~9\ & VCC)))) # (!\inst|R3\(5) & ((\inst|A\(5) & ((\inst|Add7~9\) # (GND))) # (!\inst|A\(5) & (!\inst|Add7~9\))))
-- \inst|Add7~11\ = CARRY((\inst|R3\(5) & (\inst|A\(5) & !\inst|Add7~9\)) # (!\inst|R3\(5) & ((\inst|A\(5)) # (!\inst|Add7~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(5),
	datab => \inst|A\(5),
	datad => VCC,
	cin => \inst|Add7~9\,
	combout => \inst|Add7~10_combout\,
	cout => \inst|Add7~11\);

-- Location: LCCOMB_X19_Y39_N30
\inst|Mux87~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux87~5_combout\ = (\inst|Mux87~4_combout\ & ((\inst|IR\(11)) # ((!\inst|Mux87~3_combout\)))) # (!\inst|Mux87~4_combout\ & (((!\inst|Mux87~3_combout\ & \inst|Add7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|Mux87~4_combout\,
	datac => \inst|Mux87~3_combout\,
	datad => \inst|Add7~10_combout\,
	combout => \inst|Mux87~5_combout\);

-- Location: LCCOMB_X18_Y37_N26
\inst|Mux103~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux103~2_combout\ = (\inst|A\(5) & ((\inst|IR\(12)) # (!\inst|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datac => \inst|IR\(12),
	datad => \inst|A\(5),
	combout => \inst|Mux103~2_combout\);

-- Location: LCCOMB_X18_Y37_N12
\inst|Mux103~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux103~3_combout\ = (\inst|IR\(13) & (\inst|R1\(5) $ (((!\inst|Mux103~2_combout\) # (!\inst|IR\(12)))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|R1\(5)) # (!\inst|Mux103~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|Mux103~2_combout\,
	datad => \inst|R1\(5),
	combout => \inst|Mux103~3_combout\);

-- Location: LCCOMB_X18_Y37_N18
\inst|Mux103~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux103~4_combout\ = (\inst|Mux103~2_combout\ & (\inst|IR\(13) $ (((\inst|IR\(12) & \inst|R1\(5)))))) # (!\inst|Mux103~2_combout\ & (\inst|IR\(13) & ((\inst|R1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|Mux103~2_combout\,
	datad => \inst|R1\(5),
	combout => \inst|Mux103~4_combout\);

-- Location: LCCOMB_X20_Y37_N16
\inst|Mux104~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux104~2_combout\ = (\inst|A\(4) & ((\inst|IR\(12)) # (!\inst|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|IR\(12),
	datad => \inst|A\(4),
	combout => \inst|Mux104~2_combout\);

-- Location: LCCOMB_X20_Y37_N18
\inst|Mux104~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux104~3_combout\ = (\inst|IR\(13) & (\inst|R1\(4) $ (((!\inst|Mux104~2_combout\) # (!\inst|IR\(12)))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|Mux104~2_combout\) # (!\inst|R1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|R1\(4),
	datac => \inst|IR\(13),
	datad => \inst|Mux104~2_combout\,
	combout => \inst|Mux104~3_combout\);

-- Location: LCCOMB_X20_Y37_N8
\inst|Mux104~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux104~4_combout\ = (\inst|R1\(4) & (\inst|IR\(13) $ (((\inst|IR\(12) & \inst|Mux104~2_combout\))))) # (!\inst|R1\(4) & (((\inst|IR\(13) & \inst|Mux104~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|R1\(4),
	datac => \inst|IR\(13),
	datad => \inst|Mux104~2_combout\,
	combout => \inst|Mux104~4_combout\);

-- Location: LCCOMB_X18_Y38_N12
\inst|Mux107~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux107~2_combout\ = (\inst|A\(1) & ((\inst|IR\(12)) # (!\inst|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(11),
	datac => \inst|IR\(12),
	datad => \inst|A\(1),
	combout => \inst|Mux107~2_combout\);

-- Location: LCCOMB_X18_Y38_N20
\inst|Mux107~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux107~4_combout\ = (\inst|Mux107~2_combout\ & (\inst|IR\(13) $ (((\inst|R1\(1) & \inst|IR\(12)))))) # (!\inst|Mux107~2_combout\ & (\inst|R1\(1) & ((\inst|IR\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux107~2_combout\,
	datab => \inst|R1\(1),
	datac => \inst|IR\(12),
	datad => \inst|IR\(13),
	combout => \inst|Mux107~4_combout\);

-- Location: LCCOMB_X18_Y38_N30
\inst|Mux107~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux107~3_combout\ = (\inst|IR\(13) & (\inst|R1\(1) $ (((!\inst|IR\(12)) # (!\inst|Mux107~2_combout\))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|R1\(1)) # (!\inst|Mux107~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux107~2_combout\,
	datab => \inst|R1\(1),
	datac => \inst|IR\(12),
	datad => \inst|IR\(13),
	combout => \inst|Mux107~3_combout\);

-- Location: LCCOMB_X21_Y40_N26
\inst|R1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1~18_combout\ = (\inst|IR\(10) & (\inst|Equal3~0_combout\ & !\inst|IR\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datac => \inst|Equal3~0_combout\,
	datad => \inst|IR\(11),
	combout => \inst|R1~18_combout\);

-- Location: LCCOMB_X19_Y38_N24
\inst|R1[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[0]~5_combout\ = (\inst|R1~18_combout\ & ((\inst|A\(0)))) # (!\inst|R1~18_combout\ & (\inst|R1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1~18_combout\,
	datac => \inst|R1\(0),
	datad => \inst|A\(0),
	combout => \inst|R1[0]~5_combout\);

-- Location: LCCOMB_X26_Y39_N28
\inst|IR[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|IR[9]~feeder_combout\ = \inst2|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst|IR[9]~feeder_combout\);

-- Location: FF_X26_Y39_N29
\inst|IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|IR[9]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|Decoder3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(9));

-- Location: LCCOMB_X19_Y37_N10
\inst|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Decoder0~0_combout\ = (!\inst|IR\(9) & \inst|IR\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(9),
	datad => \inst|IR\(8),
	combout => \inst|Decoder0~0_combout\);

-- Location: LCCOMB_X26_Y38_N14
\inst|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal3~1_combout\ = (!\inst|IR\(12) & !\inst|IR\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(12),
	datad => \inst|IR\(14),
	combout => \inst|Equal3~1_combout\);

-- Location: LCCOMB_X20_Y37_N24
\inst|R2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2~21_combout\ = (\inst|Equal3~0_combout\ & (!\inst|IR\(10) & \inst|IR\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal3~0_combout\,
	datac => \inst|IR\(10),
	datad => \inst|IR\(11),
	combout => \inst|R2~21_combout\);

-- Location: LCCOMB_X20_Y37_N0
\inst|R2[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2[0]~5_combout\ = (\inst|R2~21_combout\ & (\inst|A\(0))) # (!\inst|R2~21_combout\ & ((\inst|R2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(0),
	datac => \inst|R2\(0),
	datad => \inst|R2~21_combout\,
	combout => \inst|R2[0]~5_combout\);

-- Location: LCCOMB_X18_Y38_N24
\inst|Mux31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux31~0_combout\ = (\inst|IR\(10) & ((\inst|R1\(1)) # ((\inst|IR\(11))))) # (!\inst|IR\(10) & (((\inst|R0\(1) & !\inst|IR\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|R1\(1),
	datac => \inst|R0\(1),
	datad => \inst|IR\(11),
	combout => \inst|Mux31~0_combout\);

-- Location: LCCOMB_X18_Y38_N26
\inst|Mux31~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux31~1_combout\ = (\inst|IR\(11) & ((\inst|Mux31~0_combout\ & (\inst|R3\(1))) # (!\inst|Mux31~0_combout\ & ((\inst|R2\(1)))))) # (!\inst|IR\(11) & (((\inst|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(1),
	datab => \inst|IR\(11),
	datac => \inst|R2\(1),
	datad => \inst|Mux31~0_combout\,
	combout => \inst|Mux31~1_combout\);

-- Location: LCCOMB_X23_Y39_N22
\inst|R0[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[4]~12_combout\ = (\inst|IR\(15) & ((\inst|IR\(12)) # (\inst|IR\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|IR\(13),
	datad => \inst|IR\(15),
	combout => \inst|R0[4]~12_combout\);

-- Location: LCCOMB_X20_Y38_N8
\inst|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst|A\(0) & (\inst|R2\(0) $ (VCC))) # (!\inst|A\(0) & (\inst|R2\(0) & VCC))
-- \inst|Add2~1\ = CARRY((\inst|A\(0) & \inst|R2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(0),
	datab => \inst|R2\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X20_Y38_N10
\inst|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|A\(1) & ((\inst|R2\(1) & (\inst|Add2~1\ & VCC)) # (!\inst|R2\(1) & (!\inst|Add2~1\)))) # (!\inst|A\(1) & ((\inst|R2\(1) & (!\inst|Add2~1\)) # (!\inst|R2\(1) & ((\inst|Add2~1\) # (GND)))))
-- \inst|Add2~3\ = CARRY((\inst|A\(1) & (!\inst|R2\(1) & !\inst|Add2~1\)) # (!\inst|A\(1) & ((!\inst|Add2~1\) # (!\inst|R2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(1),
	datab => \inst|R2\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X19_Y36_N18
\inst|Mux99~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux99~0_combout\ = (\inst|R0[4]~11_combout\ & (\inst|R2\(2) & (!\inst|R0[4]~12_combout\))) # (!\inst|R0[4]~11_combout\ & (((\inst|R0[4]~12_combout\) # (\inst|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(2),
	datab => \inst|R0[4]~11_combout\,
	datac => \inst|R0[4]~12_combout\,
	datad => \inst|Add2~2_combout\,
	combout => \inst|Mux99~0_combout\);

-- Location: LCCOMB_X19_Y36_N12
\inst|Mux99~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux99~1_combout\ = (\inst|R0[4]~12_combout\ & ((\inst|Mux99~0_combout\ & ((\inst|Mux31~1_combout\))) # (!\inst|Mux99~0_combout\ & (\inst|R2\(0))))) # (!\inst|R0[4]~12_combout\ & (((\inst|Mux99~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(0),
	datab => \inst|Mux31~1_combout\,
	datac => \inst|R0[4]~12_combout\,
	datad => \inst|Mux99~0_combout\,
	combout => \inst|Mux99~1_combout\);

-- Location: LCCOMB_X20_Y40_N12
\inst|Mux99~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux99~2_combout\ = (\inst|A\(1) & ((\inst|IR\(12)) # (!\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(12),
	datac => \inst|A\(1),
	combout => \inst|Mux99~2_combout\);

-- Location: LCCOMB_X20_Y40_N10
\inst|Mux99~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux99~3_combout\ = (\inst|IR\(13) & (\inst|R2\(1) $ (((!\inst|Mux99~2_combout\) # (!\inst|IR\(12)))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|Mux99~2_combout\) # (!\inst|R2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(1),
	datab => \inst|IR\(12),
	datac => \inst|IR\(13),
	datad => \inst|Mux99~2_combout\,
	combout => \inst|Mux99~3_combout\);

-- Location: LCCOMB_X21_Y38_N12
\inst|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~0_combout\ = (\inst|R2\(0) & ((GND) # (!\inst|A\(0)))) # (!\inst|R2\(0) & (\inst|A\(0) $ (GND)))
-- \inst|Add6~1\ = CARRY((\inst|R2\(0)) # (!\inst|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(0),
	datab => \inst|A\(0),
	datad => VCC,
	combout => \inst|Add6~0_combout\,
	cout => \inst|Add6~1\);

-- Location: LCCOMB_X21_Y38_N14
\inst|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~2_combout\ = (\inst|A\(1) & ((\inst|R2\(1) & (!\inst|Add6~1\)) # (!\inst|R2\(1) & ((\inst|Add6~1\) # (GND))))) # (!\inst|A\(1) & ((\inst|R2\(1) & (\inst|Add6~1\ & VCC)) # (!\inst|R2\(1) & (!\inst|Add6~1\))))
-- \inst|Add6~3\ = CARRY((\inst|A\(1) & ((!\inst|Add6~1\) # (!\inst|R2\(1)))) # (!\inst|A\(1) & (!\inst|R2\(1) & !\inst|Add6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(1),
	datab => \inst|R2\(1),
	datad => VCC,
	cin => \inst|Add6~1\,
	combout => \inst|Add6~2_combout\,
	cout => \inst|Add6~3\);

-- Location: LCCOMB_X20_Y40_N0
\inst|Mux99~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux99~4_combout\ = (\inst|R2\(1) & (\inst|IR\(13) $ (((\inst|IR\(12) & \inst|Mux99~2_combout\))))) # (!\inst|R2\(1) & (((\inst|IR\(13) & \inst|Mux99~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(1),
	datab => \inst|IR\(12),
	datac => \inst|IR\(13),
	datad => \inst|Mux99~2_combout\,
	combout => \inst|Mux99~4_combout\);

-- Location: LCCOMB_X20_Y40_N18
\inst|Mux99~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux99~5_combout\ = (\inst|Mux99~3_combout\ & (\inst|IR\(11) & ((\inst|Mux99~4_combout\)))) # (!\inst|Mux99~3_combout\ & (((\inst|Add6~2_combout\) # (\inst|Mux99~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux99~3_combout\,
	datab => \inst|IR\(11),
	datac => \inst|Add6~2_combout\,
	datad => \inst|Mux99~4_combout\,
	combout => \inst|Mux99~5_combout\);

-- Location: LCCOMB_X19_Y36_N4
\inst|R2[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2[1]~4_combout\ = (\inst|R0[4]~35_combout\ & ((\inst|Mux99~5_combout\))) # (!\inst|R0[4]~35_combout\ & (\inst|Mux99~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux99~1_combout\,
	datab => \inst|R0[4]~35_combout\,
	datad => \inst|Mux99~5_combout\,
	combout => \inst|R2[1]~4_combout\);

-- Location: LCCOMB_X19_Y38_N18
\inst|R1[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[1]~11_combout\ = (\inst|status\(1)) # ((!\inst|IR\(15) & (!\inst|IR\(14) & !\inst|IR\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|status\(1),
	datab => \inst|IR\(15),
	datac => \inst|IR\(14),
	datad => \inst|IR\(12),
	combout => \inst|R1[1]~11_combout\);

-- Location: LCCOMB_X25_Y39_N26
\inst|R1[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[0]~10_combout\ = (\reset~input_o\ & (!\inst|status\(2) & (\inst|status\(0) $ (\inst|status\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|status\(2),
	datac => \inst|status\(0),
	datad => \inst|status\(1),
	combout => \inst|R1[0]~10_combout\);

-- Location: LCCOMB_X25_Y37_N22
\inst|R2[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2[5]~15_combout\ = (\inst|IR\(13) & (((\inst|IR\(8)) # (\inst|IR\(12))) # (!\inst|IR\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(9),
	datab => \inst|IR\(8),
	datac => \inst|IR\(12),
	datad => \inst|IR\(13),
	combout => \inst|R2[5]~15_combout\);

-- Location: LCCOMB_X25_Y37_N16
\inst|R2[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2[5]~16_combout\ = (\inst|IR\(14)) # ((!\inst|IR\(13) & ((\inst|IR\(10)) # (!\inst|IR\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(11),
	datac => \inst|IR\(14),
	datad => \inst|IR\(13),
	combout => \inst|R2[5]~16_combout\);

-- Location: LCCOMB_X19_Y37_N18
\inst|Decoder2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Decoder2~2_combout\ = (!\inst|IR\(10) & \inst|IR\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(10),
	datad => \inst|IR\(11),
	combout => \inst|Decoder2~2_combout\);

-- Location: LCCOMB_X20_Y37_N20
\inst|R2[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2[5]~14_combout\ = (\inst|IR\(14) & (!\inst|Decoder2~2_combout\ & ((\inst|IR\(12)) # (!\inst|IR\(13))))) # (!\inst|IR\(14) & (((!\inst|Decoder2~2_combout\)) # (!\inst|IR\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(14),
	datab => \inst|IR\(13),
	datac => \inst|IR\(12),
	datad => \inst|Decoder2~2_combout\,
	combout => \inst|R2[5]~14_combout\);

-- Location: LCCOMB_X25_Y37_N30
\inst|R2[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2[5]~17_combout\ = (\inst|IR\(15) & ((\inst|R2[5]~15_combout\) # ((\inst|R2[5]~16_combout\)))) # (!\inst|IR\(15) & (((\inst|R2[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2[5]~15_combout\,
	datab => \inst|R2[5]~16_combout\,
	datac => \inst|IR\(15),
	datad => \inst|R2[5]~14_combout\,
	combout => \inst|R2[5]~17_combout\);

-- Location: LCCOMB_X20_Y39_N12
\inst|R2[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2[6]~18_combout\ = (\inst|R1[0]~10_combout\ & ((\inst|status\(1) & (\inst|R2~21_combout\)) # (!\inst|status\(1) & ((!\inst|R2[5]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2~21_combout\,
	datab => \inst|R1[0]~10_combout\,
	datac => \inst|status\(1),
	datad => \inst|R2[5]~17_combout\,
	combout => \inst|R2[6]~18_combout\);

-- Location: FF_X19_Y36_N5
\inst|R2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R2[1]~4_combout\,
	asdata => \inst|A\(1),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R2[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R2\(1));

-- Location: LCCOMB_X19_Y37_N16
\inst|Mux48~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux48~2_combout\ = (\inst|R2\(0) & (((\inst|IR\(10)) # (\inst|IR\(14))) # (!\inst|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|R2\(0),
	datac => \inst|IR\(10),
	datad => \inst|IR\(14),
	combout => \inst|Mux48~2_combout\);

-- Location: LCCOMB_X19_Y37_N14
\inst|Mux48~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux48~3_combout\ = (\inst|Mux48~2_combout\) # ((\inst|R2\(1) & (\inst|Equal3~1_combout\ & \inst|Decoder2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(1),
	datab => \inst|Mux48~2_combout\,
	datac => \inst|Equal3~1_combout\,
	datad => \inst|Decoder2~2_combout\,
	combout => \inst|Mux48~3_combout\);

-- Location: LCCOMB_X19_Y37_N20
\inst|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Decoder0~1_combout\ = (\inst|IR\(9) & !\inst|IR\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(9),
	datad => \inst|IR\(8),
	combout => \inst|Decoder0~1_combout\);

-- Location: LCCOMB_X19_Y37_N6
\inst|Mux48~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux48~8_combout\ = (\inst|Equal3~1_combout\ & ((\inst|Decoder0~1_combout\ & ((\inst|Mux32~1_combout\))) # (!\inst|Decoder0~1_combout\ & (\inst|R2\(0))))) # (!\inst|Equal3~1_combout\ & (((\inst|R2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~1_combout\,
	datab => \inst|Decoder0~1_combout\,
	datac => \inst|R2\(0),
	datad => \inst|Mux32~1_combout\,
	combout => \inst|Mux48~8_combout\);

-- Location: LCCOMB_X19_Y38_N30
\inst|Mux56~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux56~6_combout\ = (\inst|IR\(14) & ((!\inst|IR\(12)) # (!\inst|A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(14),
	datac => \inst|A\(0),
	datad => \inst|IR\(12),
	combout => \inst|Mux56~6_combout\);

-- Location: LCCOMB_X20_Y37_N26
\inst|Mux48~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux48~10_combout\ = (\inst|R2\(0) & ((\inst|IR\(10)) # ((!\inst|IR\(11)) # (!\inst|Mux56~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|R2\(0),
	datac => \inst|Mux56~6_combout\,
	datad => \inst|IR\(11),
	combout => \inst|Mux48~10_combout\);

-- Location: LCCOMB_X20_Y37_N2
\inst|Mux48~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux48~6_combout\ = (\inst|Mux48~10_combout\) # ((\inst|Add6~0_combout\ & (\inst|Equal1~0_combout\ & \inst|Decoder2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~0_combout\,
	datab => \inst|Equal1~0_combout\,
	datac => \inst|Mux48~10_combout\,
	datad => \inst|Decoder2~2_combout\,
	combout => \inst|Mux48~6_combout\);

-- Location: LCCOMB_X20_Y37_N30
\inst|Mux48~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux48~4_combout\ = (\inst|Decoder2~2_combout\ & ((\inst|IR\(12) & ((\inst|Add2~0_combout\))) # (!\inst|IR\(12) & (\inst|A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(0),
	datab => \inst|IR\(12),
	datac => \inst|Add2~0_combout\,
	datad => \inst|Decoder2~2_combout\,
	combout => \inst|Mux48~4_combout\);

-- Location: LCCOMB_X20_Y37_N12
\inst|Mux48~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux48~5_combout\ = (\inst|Mux48~4_combout\) # ((\inst|R2\(0) & ((\inst|Equal1~0_combout\) # (!\inst|Decoder2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(0),
	datab => \inst|Decoder2~2_combout\,
	datac => \inst|Mux48~4_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Mux48~5_combout\);

-- Location: LCCOMB_X20_Y37_N28
\inst|Mux48~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux48~7_combout\ = (\inst|IR\(15) & (((\inst|IR\(13))))) # (!\inst|IR\(15) & ((\inst|IR\(13) & ((\inst|Mux48~5_combout\))) # (!\inst|IR\(13) & (\inst|Mux48~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(15),
	datab => \inst|Mux48~6_combout\,
	datac => \inst|IR\(13),
	datad => \inst|Mux48~5_combout\,
	combout => \inst|Mux48~7_combout\);

-- Location: LCCOMB_X20_Y37_N22
\inst|Mux48~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux48~9_combout\ = (\inst|IR\(15) & ((\inst|Mux48~7_combout\ & ((\inst|Mux48~8_combout\))) # (!\inst|Mux48~7_combout\ & (\inst|Mux48~3_combout\)))) # (!\inst|IR\(15) & (((\inst|Mux48~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(15),
	datab => \inst|Mux48~3_combout\,
	datac => \inst|Mux48~8_combout\,
	datad => \inst|Mux48~7_combout\,
	combout => \inst|Mux48~9_combout\);

-- Location: FF_X20_Y37_N1
\inst|R2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R2[0]~5_combout\,
	asdata => \inst|Mux48~9_combout\,
	sload => \inst|ALT_INV_status\(1),
	ena => \inst|R1[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R2\(0));

-- Location: LCCOMB_X23_Y40_N8
\inst|Mux32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux32~0_combout\ = (\inst|IR\(10) & (((\inst|IR\(11))))) # (!\inst|IR\(10) & ((\inst|IR\(11) & ((\inst|R2\(0)))) # (!\inst|IR\(11) & (\inst|R0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|R0\(0),
	datac => \inst|IR\(11),
	datad => \inst|R2\(0),
	combout => \inst|Mux32~0_combout\);

-- Location: LCCOMB_X23_Y40_N10
\inst|Mux32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux32~1_combout\ = (\inst|IR\(10) & ((\inst|Mux32~0_combout\ & ((\inst|R3\(0)))) # (!\inst|Mux32~0_combout\ & (\inst|R1\(0))))) # (!\inst|IR\(10) & (((\inst|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|R1\(0),
	datac => \inst|Mux32~0_combout\,
	datad => \inst|R3\(0),
	combout => \inst|Mux32~1_combout\);

-- Location: LCCOMB_X19_Y37_N28
\inst|Mux56~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux56~9_combout\ = (\inst|Decoder0~0_combout\ & ((\inst|Equal3~1_combout\ & ((\inst|Mux32~1_combout\))) # (!\inst|Equal3~1_combout\ & (\inst|R1\(0))))) # (!\inst|Decoder0~0_combout\ & (\inst|R1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder0~0_combout\,
	datab => \inst|R1\(0),
	datac => \inst|Equal3~1_combout\,
	datad => \inst|Mux32~1_combout\,
	combout => \inst|Mux56~9_combout\);

-- Location: LCCOMB_X18_Y38_N4
\inst|Mux56~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux56~2_combout\ = (\inst|R1\(0) & (((\inst|IR\(11)) # (\inst|IR\(14))) # (!\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(11),
	datac => \inst|IR\(14),
	datad => \inst|R1\(0),
	combout => \inst|Mux56~2_combout\);

-- Location: LCCOMB_X20_Y37_N10
\inst|Decoder2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Decoder2~1_combout\ = (\inst|IR\(10) & !\inst|IR\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(10),
	datad => \inst|IR\(11),
	combout => \inst|Decoder2~1_combout\);

-- Location: LCCOMB_X18_Y38_N2
\inst|Mux56~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux56~3_combout\ = (\inst|Mux56~2_combout\) # ((\inst|Decoder2~1_combout\ & (\inst|Equal3~1_combout\ & \inst|R1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux56~2_combout\,
	datab => \inst|Decoder2~1_combout\,
	datac => \inst|Equal3~1_combout\,
	datad => \inst|R1\(1),
	combout => \inst|Mux56~3_combout\);

-- Location: LCCOMB_X19_Y38_N26
\inst|Mux56~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux56~11_combout\ = (\inst|R1\(0) & (((\inst|IR\(11)) # (!\inst|Mux56~6_combout\)) # (!\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|R1\(0),
	datac => \inst|Mux56~6_combout\,
	datad => \inst|IR\(11),
	combout => \inst|Mux56~11_combout\);

-- Location: LCCOMB_X22_Y37_N10
\inst|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~0_combout\ = (\inst|R1\(0) & ((GND) # (!\inst|A\(0)))) # (!\inst|R1\(0) & (\inst|A\(0) $ (GND)))
-- \inst|Add5~1\ = CARRY((\inst|R1\(0)) # (!\inst|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(0),
	datab => \inst|A\(0),
	datad => VCC,
	combout => \inst|Add5~0_combout\,
	cout => \inst|Add5~1\);

-- Location: LCCOMB_X19_Y38_N4
\inst|Mux56~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux56~7_combout\ = (\inst|Mux56~11_combout\) # ((\inst|Equal1~0_combout\ & (\inst|Decoder2~1_combout\ & \inst|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|Decoder2~1_combout\,
	datac => \inst|Mux56~11_combout\,
	datad => \inst|Add5~0_combout\,
	combout => \inst|Mux56~7_combout\);

-- Location: LCCOMB_X23_Y37_N0
\inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = (\inst|A\(0) & (\inst|R1\(0) $ (VCC))) # (!\inst|A\(0) & (\inst|R1\(0) & VCC))
-- \inst|Add1~1\ = CARRY((\inst|A\(0) & \inst|R1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(0),
	datab => \inst|R1\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X19_Y38_N10
\inst|Mux56~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux56~4_combout\ = (\inst|Decoder2~1_combout\ & ((\inst|IR\(12) & ((\inst|Add1~0_combout\))) # (!\inst|IR\(12) & (\inst|A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|Decoder2~1_combout\,
	datac => \inst|A\(0),
	datad => \inst|Add1~0_combout\,
	combout => \inst|Mux56~4_combout\);

-- Location: LCCOMB_X19_Y38_N0
\inst|Mux56~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux56~5_combout\ = (\inst|Mux56~4_combout\) # ((\inst|R1\(0) & ((\inst|Equal1~0_combout\) # (!\inst|Decoder2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|R1\(0),
	datac => \inst|Decoder2~1_combout\,
	datad => \inst|Mux56~4_combout\,
	combout => \inst|Mux56~5_combout\);

-- Location: LCCOMB_X19_Y38_N6
\inst|Mux56~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux56~8_combout\ = (\inst|IR\(13) & (((\inst|IR\(15)) # (\inst|Mux56~5_combout\)))) # (!\inst|IR\(13) & (\inst|Mux56~7_combout\ & (!\inst|IR\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|Mux56~7_combout\,
	datac => \inst|IR\(15),
	datad => \inst|Mux56~5_combout\,
	combout => \inst|Mux56~8_combout\);

-- Location: LCCOMB_X19_Y38_N8
\inst|Mux56~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux56~10_combout\ = (\inst|IR\(15) & ((\inst|Mux56~8_combout\ & (\inst|Mux56~9_combout\)) # (!\inst|Mux56~8_combout\ & ((\inst|Mux56~3_combout\))))) # (!\inst|IR\(15) & (((\inst|Mux56~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux56~9_combout\,
	datab => \inst|IR\(15),
	datac => \inst|Mux56~3_combout\,
	datad => \inst|Mux56~8_combout\,
	combout => \inst|Mux56~10_combout\);

-- Location: FF_X19_Y38_N25
\inst|R1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R1[0]~5_combout\,
	asdata => \inst|Mux56~10_combout\,
	sload => \inst|ALT_INV_status\(1),
	ena => \inst|R1[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R1\(0));

-- Location: LCCOMB_X22_Y37_N12
\inst|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~2_combout\ = (\inst|R1\(1) & ((\inst|A\(1) & (!\inst|Add5~1\)) # (!\inst|A\(1) & (\inst|Add5~1\ & VCC)))) # (!\inst|R1\(1) & ((\inst|A\(1) & ((\inst|Add5~1\) # (GND))) # (!\inst|A\(1) & (!\inst|Add5~1\))))
-- \inst|Add5~3\ = CARRY((\inst|R1\(1) & (\inst|A\(1) & !\inst|Add5~1\)) # (!\inst|R1\(1) & ((\inst|A\(1)) # (!\inst|Add5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(1),
	datab => \inst|A\(1),
	datad => VCC,
	cin => \inst|Add5~1\,
	combout => \inst|Add5~2_combout\,
	cout => \inst|Add5~3\);

-- Location: LCCOMB_X18_Y38_N22
\inst|Mux107~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux107~5_combout\ = (\inst|Mux107~4_combout\ & ((\inst|IR\(10)) # ((!\inst|Mux107~3_combout\)))) # (!\inst|Mux107~4_combout\ & (((!\inst|Mux107~3_combout\ & \inst|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|Mux107~4_combout\,
	datac => \inst|Mux107~3_combout\,
	datad => \inst|Add5~2_combout\,
	combout => \inst|Mux107~5_combout\);

-- Location: LCCOMB_X23_Y37_N2
\inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|R1\(1) & ((\inst|A\(1) & (\inst|Add1~1\ & VCC)) # (!\inst|A\(1) & (!\inst|Add1~1\)))) # (!\inst|R1\(1) & ((\inst|A\(1) & (!\inst|Add1~1\)) # (!\inst|A\(1) & ((\inst|Add1~1\) # (GND)))))
-- \inst|Add1~3\ = CARRY((\inst|R1\(1) & (!\inst|A\(1) & !\inst|Add1~1\)) # (!\inst|R1\(1) & ((!\inst|Add1~1\) # (!\inst|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(1),
	datab => \inst|A\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X18_Y37_N14
\inst|Mux107~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux107~0_combout\ = (\inst|R0[4]~11_combout\ & (\inst|R1\(2) & (!\inst|R0[4]~12_combout\))) # (!\inst|R0[4]~11_combout\ & (((\inst|R0[4]~12_combout\) # (\inst|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(2),
	datab => \inst|R0[4]~11_combout\,
	datac => \inst|R0[4]~12_combout\,
	datad => \inst|Add1~2_combout\,
	combout => \inst|Mux107~0_combout\);

-- Location: LCCOMB_X18_Y38_N6
\inst|Mux107~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux107~1_combout\ = (\inst|R0[4]~12_combout\ & ((\inst|Mux107~0_combout\ & (\inst|Mux31~1_combout\)) # (!\inst|Mux107~0_combout\ & ((\inst|R1\(0)))))) # (!\inst|R0[4]~12_combout\ & (((\inst|Mux107~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux31~1_combout\,
	datab => \inst|R1\(0),
	datac => \inst|R0[4]~12_combout\,
	datad => \inst|Mux107~0_combout\,
	combout => \inst|Mux107~1_combout\);

-- Location: LCCOMB_X18_Y38_N28
\inst|R1[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[1]~4_combout\ = (\inst|R0[4]~35_combout\ & (\inst|Mux107~5_combout\)) # (!\inst|R0[4]~35_combout\ & ((\inst|Mux107~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux107~5_combout\,
	datab => \inst|R0[4]~35_combout\,
	datad => \inst|Mux107~1_combout\,
	combout => \inst|R1[1]~4_combout\);

-- Location: LCCOMB_X19_Y38_N12
\inst|R1[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[1]~13_combout\ = (\inst|IR\(13) & ((\inst|IR\(12)) # ((\inst|IR\(9)) # (!\inst|IR\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|IR\(8),
	datac => \inst|IR\(13),
	datad => \inst|IR\(9),
	combout => \inst|R1[1]~13_combout\);

-- Location: LCCOMB_X19_Y38_N2
\inst|R1[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[1]~14_combout\ = (\inst|IR\(14)) # ((!\inst|IR\(13) & ((\inst|IR\(11)) # (!\inst|IR\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(14),
	datab => \inst|IR\(11),
	datac => \inst|IR\(10),
	datad => \inst|IR\(13),
	combout => \inst|R1[1]~14_combout\);

-- Location: LCCOMB_X18_Y38_N14
\inst|R1[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[1]~12_combout\ = (\inst|IR\(13) & (!\inst|Decoder2~1_combout\ & ((\inst|IR\(12)) # (!\inst|IR\(14))))) # (!\inst|IR\(13) & (((!\inst|Decoder2~1_combout\)) # (!\inst|IR\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(14),
	datac => \inst|Decoder2~1_combout\,
	datad => \inst|IR\(12),
	combout => \inst|R1[1]~12_combout\);

-- Location: LCCOMB_X19_Y38_N20
\inst|R1[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[1]~15_combout\ = (\inst|IR\(15) & ((\inst|R1[1]~13_combout\) # ((\inst|R1[1]~14_combout\)))) # (!\inst|IR\(15) & (((\inst|R1[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1[1]~13_combout\,
	datab => \inst|R1[1]~14_combout\,
	datac => \inst|IR\(15),
	datad => \inst|R1[1]~12_combout\,
	combout => \inst|R1[1]~15_combout\);

-- Location: LCCOMB_X19_Y38_N22
\inst|R1[6]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[6]~16_combout\ = (\inst|R1[0]~10_combout\ & ((\inst|status\(1) & (\inst|R1~18_combout\)) # (!\inst|status\(1) & ((!\inst|R1[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1~18_combout\,
	datab => \inst|R1[1]~15_combout\,
	datac => \inst|R1[0]~10_combout\,
	datad => \inst|status\(1),
	combout => \inst|R1[6]~16_combout\);

-- Location: FF_X18_Y38_N29
\inst|R1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R1[1]~4_combout\,
	asdata => \inst|A\(1),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R1[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R1\(1));

-- Location: LCCOMB_X22_Y37_N14
\inst|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~4_combout\ = ((\inst|R1\(2) $ (\inst|A\(2) $ (\inst|Add5~3\)))) # (GND)
-- \inst|Add5~5\ = CARRY((\inst|R1\(2) & ((!\inst|Add5~3\) # (!\inst|A\(2)))) # (!\inst|R1\(2) & (!\inst|A\(2) & !\inst|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(2),
	datab => \inst|A\(2),
	datad => VCC,
	cin => \inst|Add5~3\,
	combout => \inst|Add5~4_combout\,
	cout => \inst|Add5~5\);

-- Location: LCCOMB_X22_Y37_N16
\inst|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~6_combout\ = (\inst|A\(3) & ((\inst|R1\(3) & (!\inst|Add5~5\)) # (!\inst|R1\(3) & ((\inst|Add5~5\) # (GND))))) # (!\inst|A\(3) & ((\inst|R1\(3) & (\inst|Add5~5\ & VCC)) # (!\inst|R1\(3) & (!\inst|Add5~5\))))
-- \inst|Add5~7\ = CARRY((\inst|A\(3) & ((!\inst|Add5~5\) # (!\inst|R1\(3)))) # (!\inst|A\(3) & (!\inst|R1\(3) & !\inst|Add5~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(3),
	datab => \inst|R1\(3),
	datad => VCC,
	cin => \inst|Add5~5\,
	combout => \inst|Add5~6_combout\,
	cout => \inst|Add5~7\);

-- Location: LCCOMB_X19_Y39_N2
\inst|Mux105~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux105~2_combout\ = (\inst|A\(3) & ((\inst|IR\(12)) # (!\inst|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datac => \inst|A\(3),
	datad => \inst|IR\(12),
	combout => \inst|Mux105~2_combout\);

-- Location: LCCOMB_X19_Y39_N22
\inst|Mux105~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux105~4_combout\ = (\inst|Mux105~2_combout\ & (\inst|IR\(13) $ (((\inst|IR\(12) & \inst|R1\(3)))))) # (!\inst|Mux105~2_combout\ & (((\inst|IR\(13) & \inst|R1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|Mux105~2_combout\,
	datac => \inst|IR\(13),
	datad => \inst|R1\(3),
	combout => \inst|Mux105~4_combout\);

-- Location: LCCOMB_X19_Y39_N8
\inst|Mux105~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux105~3_combout\ = (\inst|IR\(13) & (\inst|R1\(3) $ (((!\inst|Mux105~2_combout\) # (!\inst|IR\(12)))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|R1\(3)) # (!\inst|Mux105~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|Mux105~2_combout\,
	datac => \inst|IR\(13),
	datad => \inst|R1\(3),
	combout => \inst|Mux105~3_combout\);

-- Location: LCCOMB_X18_Y37_N22
\inst|Mux105~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux105~5_combout\ = (\inst|Mux105~4_combout\ & (((\inst|IR\(10)) # (!\inst|Mux105~3_combout\)))) # (!\inst|Mux105~4_combout\ & (\inst|Add5~6_combout\ & ((!\inst|Mux105~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~6_combout\,
	datab => \inst|IR\(10),
	datac => \inst|Mux105~4_combout\,
	datad => \inst|Mux105~3_combout\,
	combout => \inst|Mux105~5_combout\);

-- Location: LCCOMB_X21_Y40_N30
\inst|Mux29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux29~0_combout\ = (\inst|IR\(10) & ((\inst|IR\(11)) # ((\inst|R1\(3))))) # (!\inst|IR\(10) & (!\inst|IR\(11) & (\inst|R0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(11),
	datac => \inst|R0\(3),
	datad => \inst|R1\(3),
	combout => \inst|Mux29~0_combout\);

-- Location: LCCOMB_X21_Y39_N26
\inst|Mux29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux29~1_combout\ = (\inst|Mux29~0_combout\ & ((\inst|R3\(3)) # ((!\inst|IR\(11))))) # (!\inst|Mux29~0_combout\ & (((\inst|R2\(3) & \inst|IR\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(3),
	datab => \inst|R2\(3),
	datac => \inst|Mux29~0_combout\,
	datad => \inst|IR\(11),
	combout => \inst|Mux29~1_combout\);

-- Location: LCCOMB_X23_Y37_N4
\inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = ((\inst|R1\(2) $ (\inst|A\(2) $ (!\inst|Add1~3\)))) # (GND)
-- \inst|Add1~5\ = CARRY((\inst|R1\(2) & ((\inst|A\(2)) # (!\inst|Add1~3\))) # (!\inst|R1\(2) & (\inst|A\(2) & !\inst|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(2),
	datab => \inst|A\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X23_Y37_N6
\inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|A\(3) & ((\inst|R1\(3) & (\inst|Add1~5\ & VCC)) # (!\inst|R1\(3) & (!\inst|Add1~5\)))) # (!\inst|A\(3) & ((\inst|R1\(3) & (!\inst|Add1~5\)) # (!\inst|R1\(3) & ((\inst|Add1~5\) # (GND)))))
-- \inst|Add1~7\ = CARRY((\inst|A\(3) & (!\inst|R1\(3) & !\inst|Add1~5\)) # (!\inst|A\(3) & ((!\inst|Add1~5\) # (!\inst|R1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(3),
	datab => \inst|R1\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X18_Y37_N6
\inst|Mux105~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux105~0_combout\ = (\inst|R0[4]~12_combout\ & (!\inst|R0[4]~11_combout\)) # (!\inst|R0[4]~12_combout\ & ((\inst|R0[4]~11_combout\ & (\inst|R1\(4))) # (!\inst|R0[4]~11_combout\ & ((\inst|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~12_combout\,
	datab => \inst|R0[4]~11_combout\,
	datac => \inst|R1\(4),
	datad => \inst|Add1~6_combout\,
	combout => \inst|Mux105~0_combout\);

-- Location: LCCOMB_X18_Y37_N0
\inst|Mux105~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux105~1_combout\ = (\inst|R0[4]~12_combout\ & ((\inst|Mux105~0_combout\ & (\inst|Mux29~1_combout\)) # (!\inst|Mux105~0_combout\ & ((\inst|R1\(2)))))) # (!\inst|R0[4]~12_combout\ & (((\inst|Mux105~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux29~1_combout\,
	datab => \inst|R1\(2),
	datac => \inst|R0[4]~12_combout\,
	datad => \inst|Mux105~0_combout\,
	combout => \inst|Mux105~1_combout\);

-- Location: LCCOMB_X18_Y37_N10
\inst|R1[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[3]~6_combout\ = (\inst|R0[4]~35_combout\ & (\inst|Mux105~5_combout\)) # (!\inst|R0[4]~35_combout\ & ((\inst|Mux105~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux105~5_combout\,
	datab => \inst|R0[4]~35_combout\,
	datad => \inst|Mux105~1_combout\,
	combout => \inst|R1[3]~6_combout\);

-- Location: FF_X18_Y37_N11
\inst|R1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R1[3]~6_combout\,
	asdata => \inst|A\(3),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R1[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R1\(3));

-- Location: LCCOMB_X22_Y37_N18
\inst|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~8_combout\ = ((\inst|A\(4) $ (\inst|R1\(4) $ (\inst|Add5~7\)))) # (GND)
-- \inst|Add5~9\ = CARRY((\inst|A\(4) & (\inst|R1\(4) & !\inst|Add5~7\)) # (!\inst|A\(4) & ((\inst|R1\(4)) # (!\inst|Add5~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(4),
	datab => \inst|R1\(4),
	datad => VCC,
	cin => \inst|Add5~7\,
	combout => \inst|Add5~8_combout\,
	cout => \inst|Add5~9\);

-- Location: LCCOMB_X20_Y37_N14
\inst|Mux104~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux104~5_combout\ = (\inst|Mux104~3_combout\ & (\inst|IR\(10) & (\inst|Mux104~4_combout\))) # (!\inst|Mux104~3_combout\ & (((\inst|Mux104~4_combout\) # (\inst|Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|Mux104~3_combout\,
	datac => \inst|Mux104~4_combout\,
	datad => \inst|Add5~8_combout\,
	combout => \inst|Mux104~5_combout\);

-- Location: LCCOMB_X18_Y38_N8
\inst|Mux104~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux104~0_combout\ = (\inst|R0[4]~12_combout\ & ((\inst|R1\(3)) # ((!\inst|R0[4]~11_combout\)))) # (!\inst|R0[4]~12_combout\ & (((\inst|R0[4]~11_combout\ & \inst|R1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(3),
	datab => \inst|R0[4]~12_combout\,
	datac => \inst|R0[4]~11_combout\,
	datad => \inst|R1\(5),
	combout => \inst|Mux104~0_combout\);

-- Location: LCCOMB_X23_Y37_N8
\inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = ((\inst|A\(4) $ (\inst|R1\(4) $ (!\inst|Add1~7\)))) # (GND)
-- \inst|Add1~9\ = CARRY((\inst|A\(4) & ((\inst|R1\(4)) # (!\inst|Add1~7\))) # (!\inst|A\(4) & (\inst|R1\(4) & !\inst|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(4),
	datab => \inst|R1\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X19_Y37_N2
\inst|Mux104~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux104~1_combout\ = (\inst|Mux104~0_combout\ & ((\inst|Mux28~1_combout\) # ((\inst|R0[4]~11_combout\)))) # (!\inst|Mux104~0_combout\ & (((!\inst|R0[4]~11_combout\ & \inst|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux28~1_combout\,
	datab => \inst|Mux104~0_combout\,
	datac => \inst|R0[4]~11_combout\,
	datad => \inst|Add1~8_combout\,
	combout => \inst|Mux104~1_combout\);

-- Location: LCCOMB_X19_Y37_N4
\inst|R1[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[4]~3_combout\ = (\inst|R0[4]~35_combout\ & (\inst|Mux104~5_combout\)) # (!\inst|R0[4]~35_combout\ & ((\inst|Mux104~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~35_combout\,
	datab => \inst|Mux104~5_combout\,
	datad => \inst|Mux104~1_combout\,
	combout => \inst|R1[4]~3_combout\);

-- Location: FF_X19_Y37_N5
\inst|R1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R1[4]~3_combout\,
	asdata => \inst|A\(4),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R1[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R1\(4));

-- Location: LCCOMB_X22_Y37_N20
\inst|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~10_combout\ = (\inst|A\(5) & ((\inst|R1\(5) & (!\inst|Add5~9\)) # (!\inst|R1\(5) & ((\inst|Add5~9\) # (GND))))) # (!\inst|A\(5) & ((\inst|R1\(5) & (\inst|Add5~9\ & VCC)) # (!\inst|R1\(5) & (!\inst|Add5~9\))))
-- \inst|Add5~11\ = CARRY((\inst|A\(5) & ((!\inst|Add5~9\) # (!\inst|R1\(5)))) # (!\inst|A\(5) & (!\inst|R1\(5) & !\inst|Add5~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(5),
	datab => \inst|R1\(5),
	datad => VCC,
	cin => \inst|Add5~9\,
	combout => \inst|Add5~10_combout\,
	cout => \inst|Add5~11\);

-- Location: LCCOMB_X18_Y37_N4
\inst|Mux103~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux103~5_combout\ = (\inst|Mux103~3_combout\ & (\inst|Mux103~4_combout\ & (\inst|IR\(10)))) # (!\inst|Mux103~3_combout\ & ((\inst|Mux103~4_combout\) # ((\inst|Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux103~3_combout\,
	datab => \inst|Mux103~4_combout\,
	datac => \inst|IR\(10),
	datad => \inst|Add5~10_combout\,
	combout => \inst|Mux103~5_combout\);

-- Location: LCCOMB_X22_Y37_N0
\inst|R3~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3~21_combout\ = (\inst|IR\(11) & (\inst|IR\(10) & \inst|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|IR\(10),
	datad => \inst|Equal3~0_combout\,
	combout => \inst|R3~21_combout\);

-- Location: LCCOMB_X21_Y36_N28
\inst|R3[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3[7]~0_combout\ = (\inst|R3~21_combout\ & (\inst|A\(7))) # (!\inst|R3~21_combout\ & ((\inst|R3\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(7),
	datac => \inst|R3\(7),
	datad => \inst|R3~21_combout\,
	combout => \inst|R3[7]~0_combout\);

-- Location: LCCOMB_X20_Y36_N14
\inst|Mux86~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux86~0_combout\ = (\inst|R0[4]~11_combout\ & ((\inst|R0[4]~12_combout\ & (\inst|R3\(5))) # (!\inst|R0[4]~12_combout\ & ((\inst|R3\(7)))))) # (!\inst|R0[4]~11_combout\ & (((\inst|R0[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(5),
	datab => \inst|R3\(7),
	datac => \inst|R0[4]~11_combout\,
	datad => \inst|R0[4]~12_combout\,
	combout => \inst|Mux86~0_combout\);

-- Location: LCCOMB_X21_Y40_N20
\inst|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|IR\(8) & (((\inst|IR\(9))))) # (!\inst|IR\(8) & ((\inst|IR\(9) & (\inst|R2\(6))) # (!\inst|IR\(9) & ((\inst|R0\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(6),
	datab => \inst|IR\(8),
	datac => \inst|R0\(6),
	datad => \inst|IR\(9),
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y38_N0
\inst|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\inst|IR\(8) & ((\inst|Mux1~0_combout\ & ((\inst|R3\(6)))) # (!\inst|Mux1~0_combout\ & (\inst|R1\(6))))) # (!\inst|IR\(8) & (((\inst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(8),
	datab => \inst|R1\(6),
	datac => \inst|Mux1~0_combout\,
	datad => \inst|R3\(6),
	combout => \inst|Mux1~1_combout\);

-- Location: LCCOMB_X25_Y39_N0
\inst|A[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|A[7]~0_combout\ = (\reset~input_o\ & (!\inst|status\(2) & (!\inst|status\(0) & !\inst|status\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|status\(2),
	datac => \inst|status\(0),
	datad => \inst|status\(1),
	combout => \inst|A[7]~0_combout\);

-- Location: FF_X21_Y38_N1
\inst|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux1~1_combout\,
	ena => \inst|A[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(6));

-- Location: LCCOMB_X21_Y36_N4
\inst|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst|R3\(0) & (\inst|A\(0) $ (VCC))) # (!\inst|R3\(0) & (\inst|A\(0) & VCC))
-- \inst|Add3~1\ = CARRY((\inst|R3\(0) & \inst|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(0),
	datab => \inst|A\(0),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X21_Y36_N6
\inst|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|R3\(1) & ((\inst|A\(1) & (\inst|Add3~1\ & VCC)) # (!\inst|A\(1) & (!\inst|Add3~1\)))) # (!\inst|R3\(1) & ((\inst|A\(1) & (!\inst|Add3~1\)) # (!\inst|A\(1) & ((\inst|Add3~1\) # (GND)))))
-- \inst|Add3~3\ = CARRY((\inst|R3\(1) & (!\inst|A\(1) & !\inst|Add3~1\)) # (!\inst|R3\(1) & ((!\inst|Add3~1\) # (!\inst|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(1),
	datab => \inst|A\(1),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X21_Y36_N8
\inst|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = ((\inst|R3\(2) $ (\inst|A\(2) $ (!\inst|Add3~3\)))) # (GND)
-- \inst|Add3~5\ = CARRY((\inst|R3\(2) & ((\inst|A\(2)) # (!\inst|Add3~3\))) # (!\inst|R3\(2) & (\inst|A\(2) & !\inst|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(2),
	datab => \inst|A\(2),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X21_Y36_N10
\inst|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|A\(3) & ((\inst|R3\(3) & (\inst|Add3~5\ & VCC)) # (!\inst|R3\(3) & (!\inst|Add3~5\)))) # (!\inst|A\(3) & ((\inst|R3\(3) & (!\inst|Add3~5\)) # (!\inst|R3\(3) & ((\inst|Add3~5\) # (GND)))))
-- \inst|Add3~7\ = CARRY((\inst|A\(3) & (!\inst|R3\(3) & !\inst|Add3~5\)) # (!\inst|A\(3) & ((!\inst|Add3~5\) # (!\inst|R3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(3),
	datab => \inst|R3\(3),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X21_Y36_N12
\inst|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = ((\inst|A\(4) $ (\inst|R3\(4) $ (!\inst|Add3~7\)))) # (GND)
-- \inst|Add3~9\ = CARRY((\inst|A\(4) & ((\inst|R3\(4)) # (!\inst|Add3~7\))) # (!\inst|A\(4) & (\inst|R3\(4) & !\inst|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(4),
	datab => \inst|R3\(4),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: LCCOMB_X21_Y36_N14
\inst|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = (\inst|A\(5) & ((\inst|R3\(5) & (\inst|Add3~9\ & VCC)) # (!\inst|R3\(5) & (!\inst|Add3~9\)))) # (!\inst|A\(5) & ((\inst|R3\(5) & (!\inst|Add3~9\)) # (!\inst|R3\(5) & ((\inst|Add3~9\) # (GND)))))
-- \inst|Add3~11\ = CARRY((\inst|A\(5) & (!\inst|R3\(5) & !\inst|Add3~9\)) # (!\inst|A\(5) & ((!\inst|Add3~9\) # (!\inst|R3\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(5),
	datab => \inst|R3\(5),
	datad => VCC,
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\,
	cout => \inst|Add3~11\);

-- Location: LCCOMB_X21_Y36_N16
\inst|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~12_combout\ = ((\inst|A\(6) $ (\inst|R3\(6) $ (!\inst|Add3~11\)))) # (GND)
-- \inst|Add3~13\ = CARRY((\inst|A\(6) & ((\inst|R3\(6)) # (!\inst|Add3~11\))) # (!\inst|A\(6) & (\inst|R3\(6) & !\inst|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(6),
	datab => \inst|R3\(6),
	datad => VCC,
	cin => \inst|Add3~11\,
	combout => \inst|Add3~12_combout\,
	cout => \inst|Add3~13\);

-- Location: LCCOMB_X20_Y36_N24
\inst|Mux86~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux86~1_combout\ = (\inst|Mux86~0_combout\ & ((\inst|Mux26~1_combout\) # ((\inst|R0[4]~11_combout\)))) # (!\inst|Mux86~0_combout\ & (((!\inst|R0[4]~11_combout\ & \inst|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux26~1_combout\,
	datab => \inst|Mux86~0_combout\,
	datac => \inst|R0[4]~11_combout\,
	datad => \inst|Add3~12_combout\,
	combout => \inst|Mux86~1_combout\);

-- Location: LCCOMB_X21_Y36_N0
\inst|R3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3~13_combout\ = (\inst|R3\(6)) # ((\inst|IR\(11) & (\inst|A\(6) & \inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|R3\(6),
	datac => \inst|A\(6),
	datad => \inst|IR\(10),
	combout => \inst|R3~13_combout\);

-- Location: LCCOMB_X22_Y36_N12
\inst|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~12_combout\ = ((\inst|R3\(6) $ (\inst|A\(6) $ (\inst|Add7~11\)))) # (GND)
-- \inst|Add7~13\ = CARRY((\inst|R3\(6) & ((!\inst|Add7~11\) # (!\inst|A\(6)))) # (!\inst|R3\(6) & (!\inst|A\(6) & !\inst|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(6),
	datab => \inst|A\(6),
	datad => VCC,
	cin => \inst|Add7~11\,
	combout => \inst|Add7~12_combout\,
	cout => \inst|Add7~13\);

-- Location: LCCOMB_X22_Y36_N24
\inst|Mux86~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux86~2_combout\ = (\inst|IR\(13) & ((\inst|IR\(12)) # ((\inst|R3~13_combout\)))) # (!\inst|IR\(13) & (!\inst|IR\(12) & ((\inst|Add7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|R3~13_combout\,
	datad => \inst|Add7~12_combout\,
	combout => \inst|Mux86~2_combout\);

-- Location: LCCOMB_X22_Y36_N30
\inst|Mux86~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux86~3_combout\ = (\inst|R3\(6) & (\inst|Mux86~2_combout\ $ (((\inst|IR\(12) & \inst|A\(6)))))) # (!\inst|R3\(6) & (\inst|Mux86~2_combout\ & ((\inst|A\(6)) # (!\inst|IR\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(6),
	datab => \inst|IR\(12),
	datac => \inst|A\(6),
	datad => \inst|Mux86~2_combout\,
	combout => \inst|Mux86~3_combout\);

-- Location: LCCOMB_X20_Y36_N18
\inst|R3[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3[6]~1_combout\ = (\inst|R0[4]~35_combout\ & ((\inst|Mux86~3_combout\))) # (!\inst|R0[4]~35_combout\ & (\inst|Mux86~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~35_combout\,
	datab => \inst|Mux86~1_combout\,
	datad => \inst|Mux86~3_combout\,
	combout => \inst|R3[6]~1_combout\);

-- Location: LCCOMB_X21_Y37_N16
\inst|R3[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3[1]~15_combout\ = (\inst|IR\(13) & (((\inst|IR\(12)) # (!\inst|IR\(8))) # (!\inst|IR\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(9),
	datac => \inst|IR\(12),
	datad => \inst|IR\(8),
	combout => \inst|R3[1]~15_combout\);

-- Location: LCCOMB_X21_Y37_N26
\inst|R3[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3[1]~16_combout\ = (\inst|IR\(14)) # ((!\inst|IR\(13) & ((!\inst|IR\(11)) # (!\inst|IR\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(10),
	datac => \inst|IR\(11),
	datad => \inst|IR\(14),
	combout => \inst|R3[1]~16_combout\);

-- Location: LCCOMB_X21_Y40_N12
\inst|Decoder2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Decoder2~3_combout\ = (\inst|IR\(11) & \inst|IR\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(11),
	datad => \inst|IR\(10),
	combout => \inst|Decoder2~3_combout\);

-- Location: LCCOMB_X21_Y37_N6
\inst|R3[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3[1]~14_combout\ = (\inst|IR\(13) & (!\inst|Decoder2~3_combout\ & ((\inst|IR\(12)) # (!\inst|IR\(14))))) # (!\inst|IR\(13) & (((!\inst|IR\(14))) # (!\inst|Decoder2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|Decoder2~3_combout\,
	datac => \inst|IR\(12),
	datad => \inst|IR\(14),
	combout => \inst|R3[1]~14_combout\);

-- Location: LCCOMB_X21_Y37_N28
\inst|R3[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3[1]~17_combout\ = (\inst|IR\(15) & ((\inst|R3[1]~15_combout\) # ((\inst|R3[1]~16_combout\)))) # (!\inst|IR\(15) & (((\inst|R3[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(15),
	datab => \inst|R3[1]~15_combout\,
	datac => \inst|R3[1]~16_combout\,
	datad => \inst|R3[1]~14_combout\,
	combout => \inst|R3[1]~17_combout\);

-- Location: LCCOMB_X22_Y37_N8
\inst|R3[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3[6]~18_combout\ = (\inst|R1[0]~10_combout\ & ((\inst|status\(1) & (\inst|R3~21_combout\)) # (!\inst|status\(1) & ((!\inst|R3[1]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|status\(1),
	datab => \inst|R3~21_combout\,
	datac => \inst|R1[0]~10_combout\,
	datad => \inst|R3[1]~17_combout\,
	combout => \inst|R3[6]~18_combout\);

-- Location: FF_X20_Y36_N19
\inst|R3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R3[6]~1_combout\,
	asdata => \inst|A\(6),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R3[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R3\(6));

-- Location: LCCOMB_X22_Y40_N26
\inst|R3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3~11_combout\ = (\inst|IR\(11) & (\inst|IR\(10) & \inst|R3\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|IR\(10),
	datad => \inst|R3\(6),
	combout => \inst|R3~11_combout\);

-- Location: LCCOMB_X22_Y40_N8
\inst|R3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3~12_combout\ = (\inst|R3\(7) & ((!\inst|IR\(10)) # (!\inst|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datac => \inst|IR\(10),
	datad => \inst|R3\(7),
	combout => \inst|R3~12_combout\);

-- Location: LCCOMB_X22_Y40_N14
\inst|Mux33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux33~0_combout\ = (\inst|IR\(13) & (((\inst|IR\(12))))) # (!\inst|IR\(13) & ((\inst|R3~12_combout\) # ((\inst|R3~11_combout\ & \inst|IR\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3~11_combout\,
	datab => \inst|IR\(13),
	datac => \inst|R3~12_combout\,
	datad => \inst|IR\(12),
	combout => \inst|Mux33~0_combout\);

-- Location: LCCOMB_X23_Y37_N30
\inst|R1[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[7]~0_combout\ = (\inst|R1~18_combout\ & ((\inst|A\(7)))) # (!\inst|R1~18_combout\ & (\inst|R1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|R1~18_combout\,
	datac => \inst|R1\(7),
	datad => \inst|A\(7),
	combout => \inst|R1[7]~0_combout\);

-- Location: LCCOMB_X23_Y36_N28
\inst|Mux49~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux49~1_combout\ = (\inst|IR\(12) & (((\inst|R1\(6))))) # (!\inst|IR\(12) & (!\inst|IR\(9) & ((\inst|IR\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(9),
	datab => \inst|R1\(6),
	datac => \inst|IR\(12),
	datad => \inst|IR\(8),
	combout => \inst|Mux49~1_combout\);

-- Location: LCCOMB_X23_Y36_N30
\inst|Mux49~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux49~2_combout\ = (\inst|Mux49~1_combout\ & (\inst|IR\(13) $ (\inst|IR\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datac => \inst|IR\(12),
	datad => \inst|Mux49~1_combout\,
	combout => \inst|Mux49~2_combout\);

-- Location: LCCOMB_X23_Y36_N14
\inst|Mux49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux49~0_combout\ = (\inst|IR\(13) & (((\inst|Mux25~1_combout\)))) # (!\inst|IR\(13) & (!\inst|IR\(11) & (\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|IR\(10),
	datac => \inst|IR\(13),
	datad => \inst|Mux25~1_combout\,
	combout => \inst|Mux49~0_combout\);

-- Location: LCCOMB_X22_Y36_N22
\inst|Mux49~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux49~3_combout\ = (\inst|Mux49~2_combout\ & ((\inst|Mux49~0_combout\) # ((\inst|R1\(7) & !\inst|IR\(13))))) # (!\inst|Mux49~2_combout\ & (\inst|R1\(7) & ((\inst|IR\(13)) # (!\inst|Mux49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux49~2_combout\,
	datab => \inst|R1\(7),
	datac => \inst|IR\(13),
	datad => \inst|Mux49~0_combout\,
	combout => \inst|Mux49~3_combout\);

-- Location: LCCOMB_X23_Y37_N10
\inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|A\(5) & ((\inst|R1\(5) & (\inst|Add1~9\ & VCC)) # (!\inst|R1\(5) & (!\inst|Add1~9\)))) # (!\inst|A\(5) & ((\inst|R1\(5) & (!\inst|Add1~9\)) # (!\inst|R1\(5) & ((\inst|Add1~9\) # (GND)))))
-- \inst|Add1~11\ = CARRY((\inst|A\(5) & (!\inst|R1\(5) & !\inst|Add1~9\)) # (!\inst|A\(5) & ((!\inst|Add1~9\) # (!\inst|R1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(5),
	datab => \inst|R1\(5),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X23_Y37_N12
\inst|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = ((\inst|R1\(6) $ (\inst|A\(6) $ (!\inst|Add1~11\)))) # (GND)
-- \inst|Add1~13\ = CARRY((\inst|R1\(6) & ((\inst|A\(6)) # (!\inst|Add1~11\))) # (!\inst|R1\(6) & (\inst|A\(6) & !\inst|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(6),
	datab => \inst|A\(6),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X23_Y37_N14
\inst|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\inst|R1\(7) & ((\inst|A\(7) & (\inst|Add1~13\ & VCC)) # (!\inst|A\(7) & (!\inst|Add1~13\)))) # (!\inst|R1\(7) & ((\inst|A\(7) & (!\inst|Add1~13\)) # (!\inst|A\(7) & ((\inst|Add1~13\) # (GND)))))
-- \inst|Add1~15\ = CARRY((\inst|R1\(7) & (!\inst|A\(7) & !\inst|Add1~13\)) # (!\inst|R1\(7) & ((!\inst|Add1~13\) # (!\inst|A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(7),
	datab => \inst|A\(7),
	datad => VCC,
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\,
	cout => \inst|Add1~15\);

-- Location: LCCOMB_X23_Y37_N28
\inst|Mux49~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux49~6_combout\ = (\inst|IR\(12) & (\inst|Add1~14_combout\)) # (!\inst|IR\(12) & ((\inst|A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(12),
	datac => \inst|Add1~14_combout\,
	datad => \inst|A\(7),
	combout => \inst|Mux49~6_combout\);

-- Location: LCCOMB_X23_Y37_N22
\inst|Mux49~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux49~7_combout\ = (\inst|Decoder2~1_combout\ & ((\inst|IR\(13) & ((\inst|Mux49~6_combout\))) # (!\inst|IR\(13) & (\inst|R1\(7))))) # (!\inst|Decoder2~1_combout\ & (((\inst|R1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder2~1_combout\,
	datab => \inst|IR\(13),
	datac => \inst|R1\(7),
	datad => \inst|Mux49~6_combout\,
	combout => \inst|Mux49~7_combout\);

-- Location: LCCOMB_X23_Y36_N16
\inst|Mux49~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux49~4_combout\ = (\inst|IR\(10) & (!\inst|IR\(11) & ((\inst|A\(7)) # (!\inst|IR\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(11),
	datac => \inst|IR\(13),
	datad => \inst|A\(7),
	combout => \inst|Mux49~4_combout\);

-- Location: LCCOMB_X23_Y36_N22
\inst|Mux49~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux49~5_combout\ = (\inst|Mux49~4_combout\ & ((\inst|IR\(13) $ (\inst|R1\(7))) # (!\inst|IR\(12)))) # (!\inst|Mux49~4_combout\ & (((\inst|R1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|Mux49~4_combout\,
	datac => \inst|IR\(13),
	datad => \inst|R1\(7),
	combout => \inst|Mux49~5_combout\);

-- Location: LCCOMB_X22_Y37_N22
\inst|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~12_combout\ = ((\inst|A\(6) $ (\inst|R1\(6) $ (\inst|Add5~11\)))) # (GND)
-- \inst|Add5~13\ = CARRY((\inst|A\(6) & (\inst|R1\(6) & !\inst|Add5~11\)) # (!\inst|A\(6) & ((\inst|R1\(6)) # (!\inst|Add5~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(6),
	datab => \inst|R1\(6),
	datad => VCC,
	cin => \inst|Add5~11\,
	combout => \inst|Add5~12_combout\,
	cout => \inst|Add5~13\);

-- Location: LCCOMB_X22_Y37_N24
\inst|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~14_combout\ = (\inst|R1\(7) & ((\inst|A\(7) & (!\inst|Add5~13\)) # (!\inst|A\(7) & (\inst|Add5~13\ & VCC)))) # (!\inst|R1\(7) & ((\inst|A\(7) & ((\inst|Add5~13\) # (GND))) # (!\inst|A\(7) & (!\inst|Add5~13\))))
-- \inst|Add5~15\ = CARRY((\inst|R1\(7) & (\inst|A\(7) & !\inst|Add5~13\)) # (!\inst|R1\(7) & ((\inst|A\(7)) # (!\inst|Add5~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(7),
	datab => \inst|A\(7),
	datad => VCC,
	cin => \inst|Add5~13\,
	combout => \inst|Add5~14_combout\,
	cout => \inst|Add5~15\);

-- Location: LCCOMB_X22_Y37_N2
\inst|Mux49~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux49~10_combout\ = (\inst|IR\(13)) # ((\inst|IR\(12) & (\inst|A\(7))) # (!\inst|IR\(12) & ((\inst|Add5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|A\(7),
	datac => \inst|IR\(13),
	datad => \inst|Add5~14_combout\,
	combout => \inst|Mux49~10_combout\);

-- Location: LCCOMB_X23_Y37_N18
\inst|Mux49~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux49~11_combout\ = (\inst|Mux49~5_combout\ & (((\inst|IR\(11)) # (\inst|Mux49~10_combout\)) # (!\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(11),
	datac => \inst|Mux49~5_combout\,
	datad => \inst|Mux49~10_combout\,
	combout => \inst|Mux49~11_combout\);

-- Location: LCCOMB_X23_Y37_N24
\inst|Mux49~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux49~8_combout\ = (\inst|IR\(14) & ((\inst|IR\(15)) # ((\inst|Mux49~11_combout\)))) # (!\inst|IR\(14) & (!\inst|IR\(15) & (\inst|Mux49~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(14),
	datab => \inst|IR\(15),
	datac => \inst|Mux49~7_combout\,
	datad => \inst|Mux49~11_combout\,
	combout => \inst|Mux49~8_combout\);

-- Location: LCCOMB_X23_Y37_N26
\inst|Mux49~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux49~9_combout\ = (\inst|IR\(15) & ((\inst|Mux49~8_combout\ & (\inst|R1\(7))) # (!\inst|Mux49~8_combout\ & ((\inst|Mux49~3_combout\))))) # (!\inst|IR\(15) & (((\inst|Mux49~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(7),
	datab => \inst|IR\(15),
	datac => \inst|Mux49~3_combout\,
	datad => \inst|Mux49~8_combout\,
	combout => \inst|Mux49~9_combout\);

-- Location: FF_X23_Y37_N31
\inst|R1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R1[7]~0_combout\,
	asdata => \inst|Mux49~9_combout\,
	sload => \inst|ALT_INV_status\(1),
	ena => \inst|R1[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R1\(7));

-- Location: LCCOMB_X25_Y38_N24
\inst|R0[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[7]~0_combout\ = (\inst|Equal7~0_combout\ & ((\inst|R0\(7)))) # (!\inst|Equal7~0_combout\ & (\inst2|altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst|R0\(7),
	datad => \inst|Equal7~0_combout\,
	combout => \inst|R0[7]~0_combout\);

-- Location: LCCOMB_X25_Y38_N26
\inst|R0[7]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[7]~20_combout\ = (\inst|Equal3~0_combout\ & ((\inst|Decoder2~0_combout\ & (\inst|R0\(7))) # (!\inst|Decoder2~0_combout\ & ((\inst|A\(7)))))) # (!\inst|Equal3~0_combout\ & (\inst|R0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|R0\(7),
	datac => \inst|A\(7),
	datad => \inst|Decoder2~0_combout\,
	combout => \inst|R0[7]~20_combout\);

-- Location: LCCOMB_X22_Y40_N12
\inst|R0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0~23_combout\ = (\inst|R0\(7) & ((\inst|IR\(10)) # (\inst|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(7),
	datab => \inst|IR\(10),
	datac => \inst|IR\(11),
	combout => \inst|R0~23_combout\);

-- Location: LCCOMB_X22_Y40_N30
\inst|R0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0~22_combout\ = (!\inst|IR\(11) & (!\inst|IR\(10) & \inst|R0\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|IR\(10),
	datac => \inst|R0\(6),
	combout => \inst|R0~22_combout\);

-- Location: LCCOMB_X22_Y40_N22
\inst|Mux57~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux57~2_combout\ = (\inst|IR\(13) & (((\inst|IR\(12))))) # (!\inst|IR\(13) & ((\inst|R0~23_combout\) # ((\inst|R0~22_combout\ & \inst|IR\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0~23_combout\,
	datab => \inst|IR\(13),
	datac => \inst|R0~22_combout\,
	datad => \inst|IR\(12),
	combout => \inst|Mux57~2_combout\);

-- Location: LCCOMB_X23_Y40_N2
\inst|R0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0~21_combout\ = (\inst|IR\(9) & (\inst|R0\(7))) # (!\inst|IR\(9) & ((\inst|IR\(8) & (\inst|R0\(7))) # (!\inst|IR\(8) & ((\inst|Mux25~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(7),
	datab => \inst|IR\(9),
	datac => \inst|Mux25~1_combout\,
	datad => \inst|IR\(8),
	combout => \inst|R0~21_combout\);

-- Location: LCCOMB_X22_Y40_N16
\inst|Mux57~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux57~3_combout\ = (\inst|Mux57~2_combout\ & (((\inst|R0\(7))) # (!\inst|IR\(13)))) # (!\inst|Mux57~2_combout\ & (\inst|IR\(13) & ((\inst|R0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux57~2_combout\,
	datab => \inst|IR\(13),
	datac => \inst|R0\(7),
	datad => \inst|R0~21_combout\,
	combout => \inst|Mux57~3_combout\);

-- Location: LCCOMB_X26_Y38_N4
\inst|Mux57~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux57~13_combout\ = (!\inst|IR\(11) & (!\inst|IR\(10) & (!\inst|IR\(12) & !\inst|IR\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|IR\(10),
	datac => \inst|IR\(12),
	datad => \inst|IR\(13),
	combout => \inst|Mux57~13_combout\);

-- Location: LCCOMB_X23_Y36_N18
\inst|Mux57~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux57~4_combout\ = (\inst|IR\(11)) # ((\inst|IR\(10)) # (\inst|IR\(13) $ (\inst|A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|IR\(10),
	datac => \inst|IR\(13),
	datad => \inst|A\(7),
	combout => \inst|Mux57~4_combout\);

-- Location: LCCOMB_X23_Y36_N12
\inst|Mux57~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux57~5_combout\ = (\inst|R0\(7) & (((\inst|Mux57~4_combout\) # (!\inst|IR\(12))))) # (!\inst|R0\(7) & (\inst|IR\(13) & ((!\inst|Mux57~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|R0\(7),
	datac => \inst|IR\(12),
	datad => \inst|Mux57~4_combout\,
	combout => \inst|Mux57~5_combout\);

-- Location: LCCOMB_X21_Y40_N24
\inst|Mux67~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux67~1_combout\ = (\inst|IR\(13) & (\inst|R0\(5) $ (((!\inst|Mux67~0_combout\) # (!\inst|IR\(12)))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|Mux67~0_combout\) # (!\inst|R0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(5),
	datab => \inst|IR\(12),
	datac => \inst|IR\(13),
	datad => \inst|Mux67~0_combout\,
	combout => \inst|Mux67~1_combout\);

-- Location: LCCOMB_X21_Y40_N6
\inst|Mux67~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux67~2_combout\ = (\inst|R0\(5) & (\inst|IR\(13) $ (((\inst|IR\(12) & \inst|Mux67~0_combout\))))) # (!\inst|R0\(5) & (((\inst|IR\(13) & \inst|Mux67~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(5),
	datab => \inst|IR\(12),
	datac => \inst|IR\(13),
	datad => \inst|Mux67~0_combout\,
	combout => \inst|Mux67~2_combout\);

-- Location: LCCOMB_X23_Y38_N4
\inst|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = (\inst|A\(0) & (\inst|R0\(0) $ (VCC))) # (!\inst|A\(0) & ((\inst|R0\(0)) # (GND)))
-- \inst|Add4~1\ = CARRY((\inst|R0\(0)) # (!\inst|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(0),
	datab => \inst|R0\(0),
	datad => VCC,
	combout => \inst|Add4~0_combout\,
	cout => \inst|Add4~1\);

-- Location: LCCOMB_X23_Y38_N6
\inst|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~2_combout\ = (\inst|R0\(1) & ((\inst|A\(1) & (!\inst|Add4~1\)) # (!\inst|A\(1) & (\inst|Add4~1\ & VCC)))) # (!\inst|R0\(1) & ((\inst|A\(1) & ((\inst|Add4~1\) # (GND))) # (!\inst|A\(1) & (!\inst|Add4~1\))))
-- \inst|Add4~3\ = CARRY((\inst|R0\(1) & (\inst|A\(1) & !\inst|Add4~1\)) # (!\inst|R0\(1) & ((\inst|A\(1)) # (!\inst|Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(1),
	datab => \inst|A\(1),
	datad => VCC,
	cin => \inst|Add4~1\,
	combout => \inst|Add4~2_combout\,
	cout => \inst|Add4~3\);

-- Location: LCCOMB_X23_Y38_N8
\inst|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~4_combout\ = ((\inst|A\(2) $ (\inst|R0\(2) $ (\inst|Add4~3\)))) # (GND)
-- \inst|Add4~5\ = CARRY((\inst|A\(2) & (\inst|R0\(2) & !\inst|Add4~3\)) # (!\inst|A\(2) & ((\inst|R0\(2)) # (!\inst|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(2),
	datab => \inst|R0\(2),
	datad => VCC,
	cin => \inst|Add4~3\,
	combout => \inst|Add4~4_combout\,
	cout => \inst|Add4~5\);

-- Location: LCCOMB_X23_Y38_N10
\inst|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~6_combout\ = (\inst|R0\(3) & ((\inst|A\(3) & (!\inst|Add4~5\)) # (!\inst|A\(3) & (\inst|Add4~5\ & VCC)))) # (!\inst|R0\(3) & ((\inst|A\(3) & ((\inst|Add4~5\) # (GND))) # (!\inst|A\(3) & (!\inst|Add4~5\))))
-- \inst|Add4~7\ = CARRY((\inst|R0\(3) & (\inst|A\(3) & !\inst|Add4~5\)) # (!\inst|R0\(3) & ((\inst|A\(3)) # (!\inst|Add4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(3),
	datab => \inst|A\(3),
	datad => VCC,
	cin => \inst|Add4~5\,
	combout => \inst|Add4~6_combout\,
	cout => \inst|Add4~7\);

-- Location: LCCOMB_X23_Y38_N12
\inst|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~8_combout\ = ((\inst|R0\(4) $ (\inst|A\(4) $ (\inst|Add4~7\)))) # (GND)
-- \inst|Add4~9\ = CARRY((\inst|R0\(4) & ((!\inst|Add4~7\) # (!\inst|A\(4)))) # (!\inst|R0\(4) & (!\inst|A\(4) & !\inst|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(4),
	datab => \inst|A\(4),
	datad => VCC,
	cin => \inst|Add4~7\,
	combout => \inst|Add4~8_combout\,
	cout => \inst|Add4~9\);

-- Location: LCCOMB_X23_Y38_N14
\inst|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~10_combout\ = (\inst|A\(5) & ((\inst|R0\(5) & (!\inst|Add4~9\)) # (!\inst|R0\(5) & ((\inst|Add4~9\) # (GND))))) # (!\inst|A\(5) & ((\inst|R0\(5) & (\inst|Add4~9\ & VCC)) # (!\inst|R0\(5) & (!\inst|Add4~9\))))
-- \inst|Add4~11\ = CARRY((\inst|A\(5) & ((!\inst|Add4~9\) # (!\inst|R0\(5)))) # (!\inst|A\(5) & (!\inst|R0\(5) & !\inst|Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(5),
	datab => \inst|R0\(5),
	datad => VCC,
	cin => \inst|Add4~9\,
	combout => \inst|Add4~10_combout\,
	cout => \inst|Add4~11\);

-- Location: LCCOMB_X22_Y40_N28
\inst|Mux67~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux67~3_combout\ = (\inst|Mux67~1_combout\ & (!\inst|IR\(11) & (\inst|Mux67~2_combout\))) # (!\inst|Mux67~1_combout\ & (((\inst|Mux67~2_combout\) # (\inst|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|Mux67~1_combout\,
	datac => \inst|Mux67~2_combout\,
	datad => \inst|Add4~10_combout\,
	combout => \inst|Mux67~3_combout\);

-- Location: LCCOMB_X26_Y39_N26
\inst|R0[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[4]~10_combout\ = (\inst|status\(2)) # ((!\inst|IR\(15) & (\inst|IR\(14) & !\inst|status\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(15),
	datab => \inst|IR\(14),
	datac => \inst|status\(1),
	datad => \inst|status\(2),
	combout => \inst|R0[4]~10_combout\);

-- Location: LCCOMB_X22_Y38_N22
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = ((\inst|R0\(4) $ (\inst|A\(4) $ (!\inst|Add0~7\)))) # (GND)
-- \inst|Add0~9\ = CARRY((\inst|R0\(4) & ((\inst|A\(4)) # (!\inst|Add0~7\))) # (!\inst|R0\(4) & (\inst|A\(4) & !\inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(4),
	datab => \inst|A\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X22_Y38_N24
\inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|A\(5) & ((\inst|R0\(5) & (\inst|Add0~9\ & VCC)) # (!\inst|R0\(5) & (!\inst|Add0~9\)))) # (!\inst|A\(5) & ((\inst|R0\(5) & (!\inst|Add0~9\)) # (!\inst|R0\(5) & ((\inst|Add0~9\) # (GND)))))
-- \inst|Add0~11\ = CARRY((\inst|A\(5) & (!\inst|R0\(5) & !\inst|Add0~9\)) # (!\inst|A\(5) & ((!\inst|Add0~9\) # (!\inst|R0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(5),
	datab => \inst|R0\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X22_Y39_N10
\inst|Mux67~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux67~4_combout\ = (\inst|IR\(13) & ((\inst|R0[4]~12_combout\ & (\inst|Mux27~1_combout\)) # (!\inst|R0[4]~12_combout\ & ((\inst|Add0~10_combout\))))) # (!\inst|IR\(13) & (\inst|R0[4]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|R0[4]~12_combout\,
	datac => \inst|Mux27~1_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|Mux67~4_combout\);

-- Location: LCCOMB_X23_Y39_N24
\inst|Mux67~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux67~5_combout\ = (\inst|R0[4]~11_combout\ & ((\inst|Mux67~4_combout\ & (\inst|R0\(4))) # (!\inst|Mux67~4_combout\ & ((\inst|R0\(6)))))) # (!\inst|R0[4]~11_combout\ & (((\inst|Mux67~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~11_combout\,
	datab => \inst|R0\(4),
	datac => \inst|R0\(6),
	datad => \inst|Mux67~4_combout\,
	combout => \inst|Mux67~5_combout\);

-- Location: LCCOMB_X23_Y39_N14
\inst|Mux67~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux67~6_combout\ = (\inst|R0[4]~10_combout\ & (((\inst|R0[4]~9_combout\)))) # (!\inst|R0[4]~10_combout\ & ((\inst|R0[4]~9_combout\ & (\inst|A\(5))) # (!\inst|R0[4]~9_combout\ & ((\inst|Mux67~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(5),
	datab => \inst|R0[4]~10_combout\,
	datac => \inst|R0[4]~9_combout\,
	datad => \inst|Mux67~5_combout\,
	combout => \inst|Mux67~6_combout\);

-- Location: LCCOMB_X23_Y39_N10
\inst|Mux67~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux67~7_combout\ = (\inst|R0[4]~10_combout\ & ((\inst|Mux67~6_combout\ & ((\inst2|altsyncram_component|auto_generated|q_a\(5)))) # (!\inst|Mux67~6_combout\ & (\inst|Mux67~3_combout\)))) # (!\inst|R0[4]~10_combout\ & (((\inst|Mux67~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux67~3_combout\,
	datab => \inst|R0[4]~10_combout\,
	datac => \inst|Mux67~6_combout\,
	datad => \inst2|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst|Mux67~7_combout\);

-- Location: LCCOMB_X25_Y40_N24
\inst|R0[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[6]~14_combout\ = (!\inst|IR\(12) & (!\inst|IR\(9) & (\inst|IR\(13) & !\inst|IR\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|IR\(9),
	datac => \inst|IR\(13),
	datad => \inst|IR\(8),
	combout => \inst|R0[6]~14_combout\);

-- Location: LCCOMB_X25_Y40_N6
\inst|R0[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[6]~36_combout\ = (\inst|R0[6]~14_combout\) # ((!\inst|IR\(10) & (!\inst|IR\(11) & !\inst|IR\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(11),
	datac => \inst|IR\(13),
	datad => \inst|R0[6]~14_combout\,
	combout => \inst|R0[6]~36_combout\);

-- Location: LCCOMB_X25_Y40_N10
\inst|R0[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[6]~13_combout\ = (\inst|IR\(13) & (((\inst|IR\(14) & !\inst|IR\(12))) # (!\inst|Decoder2~0_combout\))) # (!\inst|IR\(13) & ((\inst|IR\(14) & (!\inst|Decoder2~0_combout\)) # (!\inst|IR\(14) & ((\inst|IR\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(14),
	datac => \inst|Decoder2~0_combout\,
	datad => \inst|IR\(12),
	combout => \inst|R0[6]~13_combout\);

-- Location: LCCOMB_X25_Y40_N22
\inst|R0[6]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[6]~15_combout\ = (\inst|IR\(15) & (\inst|R0[6]~36_combout\ & (!\inst|IR\(14)))) # (!\inst|IR\(15) & (((\inst|R0[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[6]~36_combout\,
	datab => \inst|IR\(15),
	datac => \inst|IR\(14),
	datad => \inst|R0[6]~13_combout\,
	combout => \inst|R0[6]~15_combout\);

-- Location: LCCOMB_X25_Y39_N22
\inst|R0[6]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[6]~16_combout\ = (\inst|status\(1) & (!\inst|Decoder2~0_combout\ & (\inst|Equal3~0_combout\))) # (!\inst|status\(1) & (((\inst|R0[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder2~0_combout\,
	datab => \inst|Equal3~0_combout\,
	datac => \inst|R0[6]~15_combout\,
	datad => \inst|status\(1),
	combout => \inst|R0[6]~16_combout\);

-- Location: LCCOMB_X25_Y39_N16
\inst|R0[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[6]~39_combout\ = (\reset~input_o\ & ((\inst|status\(2) & (!\inst|Equal7~0_combout\)) # (!\inst|status\(2) & ((\inst|R0[6]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|Equal7~0_combout\,
	datac => \inst|R0[6]~16_combout\,
	datad => \inst|status\(2),
	combout => \inst|R0[6]~39_combout\);

-- Location: LCCOMB_X25_Y39_N10
\inst|R0[6]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[6]~40_combout\ = (\inst|R0[6]~39_combout\ & ((\inst|status\(2) & (!\inst|status\(1) & !\inst|status\(0))) # (!\inst|status\(2) & (\inst|status\(1) $ (\inst|status\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|status\(2),
	datab => \inst|status\(1),
	datac => \inst|status\(0),
	datad => \inst|R0[6]~39_combout\,
	combout => \inst|R0[6]~40_combout\);

-- Location: FF_X23_Y39_N11
\inst|R0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux67~7_combout\,
	ena => \inst|R0[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R0\(5));

-- Location: LCCOMB_X23_Y38_N16
\inst|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~12_combout\ = ((\inst|R0\(6) $ (\inst|A\(6) $ (\inst|Add4~11\)))) # (GND)
-- \inst|Add4~13\ = CARRY((\inst|R0\(6) & ((!\inst|Add4~11\) # (!\inst|A\(6)))) # (!\inst|R0\(6) & (!\inst|A\(6) & !\inst|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(6),
	datab => \inst|A\(6),
	datad => VCC,
	cin => \inst|Add4~11\,
	combout => \inst|Add4~12_combout\,
	cout => \inst|Add4~13\);

-- Location: LCCOMB_X23_Y38_N18
\inst|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~14_combout\ = (\inst|A\(7) & ((\inst|R0\(7) & (!\inst|Add4~13\)) # (!\inst|R0\(7) & ((\inst|Add4~13\) # (GND))))) # (!\inst|A\(7) & ((\inst|R0\(7) & (\inst|Add4~13\ & VCC)) # (!\inst|R0\(7) & (!\inst|Add4~13\))))
-- \inst|Add4~15\ = CARRY((\inst|A\(7) & ((!\inst|Add4~13\) # (!\inst|R0\(7)))) # (!\inst|A\(7) & (!\inst|R0\(7) & !\inst|Add4~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(7),
	datab => \inst|R0\(7),
	datad => VCC,
	cin => \inst|Add4~13\,
	combout => \inst|Add4~14_combout\,
	cout => \inst|Add4~15\);

-- Location: LCCOMB_X25_Y38_N4
\inst|Mux57~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux57~6_combout\ = (\inst|Mux57~13_combout\ & ((\inst|Add4~14_combout\))) # (!\inst|Mux57~13_combout\ & (\inst|Mux57~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux57~13_combout\,
	datac => \inst|Mux57~5_combout\,
	datad => \inst|Add4~14_combout\,
	combout => \inst|Mux57~6_combout\);

-- Location: LCCOMB_X22_Y38_N26
\inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = ((\inst|A\(6) $ (\inst|R0\(6) $ (!\inst|Add0~11\)))) # (GND)
-- \inst|Add0~13\ = CARRY((\inst|A\(6) & ((\inst|R0\(6)) # (!\inst|Add0~11\))) # (!\inst|A\(6) & (\inst|R0\(6) & !\inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(6),
	datab => \inst|R0\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X22_Y38_N28
\inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|R0\(7) & ((\inst|A\(7) & (\inst|Add0~13\ & VCC)) # (!\inst|A\(7) & (!\inst|Add0~13\)))) # (!\inst|R0\(7) & ((\inst|A\(7) & (!\inst|Add0~13\)) # (!\inst|A\(7) & ((\inst|Add0~13\) # (GND)))))
-- \inst|Add0~15\ = CARRY((\inst|R0\(7) & (!\inst|A\(7) & !\inst|Add0~13\)) # (!\inst|R0\(7) & ((!\inst|Add0~13\) # (!\inst|A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(7),
	datab => \inst|A\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X23_Y39_N8
\inst|Mux57~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux57~8_combout\ = (\inst|IR\(13) & ((\inst|Decoder2~0_combout\ & ((\inst|R0\(7)))) # (!\inst|Decoder2~0_combout\ & (\inst|IR\(12))))) # (!\inst|IR\(13) & (!\inst|IR\(12) & (\inst|R0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|IR\(13),
	datac => \inst|R0\(7),
	datad => \inst|Decoder2~0_combout\,
	combout => \inst|Mux57~8_combout\);

-- Location: LCCOMB_X23_Y39_N18
\inst|Mux57~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux57~7_combout\ = (!\inst|IR\(10) & (!\inst|IR\(11) & \inst|A\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(11),
	datac => \inst|A\(7),
	combout => \inst|Mux57~7_combout\);

-- Location: LCCOMB_X23_Y39_N30
\inst|Mux57~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux57~9_combout\ = (\inst|Mux57~8_combout\) # ((!\inst|IR\(12) & (\inst|IR\(13) & \inst|Mux57~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|IR\(13),
	datac => \inst|Mux57~8_combout\,
	datad => \inst|Mux57~7_combout\,
	combout => \inst|Mux57~9_combout\);

-- Location: LCCOMB_X25_Y38_N18
\inst|Mux57~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux57~10_combout\ = (\inst|Mux57~9_combout\ & ((\inst|Decoder2~0_combout\) # ((\inst|Add0~14_combout\) # (!\inst|IR\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder2~0_combout\,
	datab => \inst|IR\(12),
	datac => \inst|Add0~14_combout\,
	datad => \inst|Mux57~9_combout\,
	combout => \inst|Mux57~10_combout\);

-- Location: LCCOMB_X25_Y38_N28
\inst|Mux57~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux57~11_combout\ = (\inst|IR\(14) & ((\inst|IR\(15)) # ((\inst|Mux57~6_combout\)))) # (!\inst|IR\(14) & (!\inst|IR\(15) & ((\inst|Mux57~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(14),
	datab => \inst|IR\(15),
	datac => \inst|Mux57~6_combout\,
	datad => \inst|Mux57~10_combout\,
	combout => \inst|Mux57~11_combout\);

-- Location: LCCOMB_X25_Y38_N2
\inst|Mux57~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux57~12_combout\ = (\inst|IR\(15) & ((\inst|Mux57~11_combout\ & ((\inst|R0\(7)))) # (!\inst|Mux57~11_combout\ & (\inst|Mux57~3_combout\)))) # (!\inst|IR\(15) & (((\inst|Mux57~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux57~3_combout\,
	datab => \inst|R0\(7),
	datac => \inst|IR\(15),
	datad => \inst|Mux57~11_combout\,
	combout => \inst|Mux57~12_combout\);

-- Location: LCCOMB_X25_Y38_N8
\inst|R0[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[7]~24_combout\ = (\inst|status\(1) & (\inst|R0[7]~20_combout\)) # (!\inst|status\(1) & ((\inst|Mux57~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[7]~20_combout\,
	datac => \inst|status\(1),
	datad => \inst|Mux57~12_combout\,
	combout => \inst|R0[7]~24_combout\);

-- Location: LCCOMB_X26_Y38_N20
\inst|R0[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[7]~25_combout\ = (\reset~input_o\ & ((\inst|status\(1) & (!\inst|status\(2) & !\inst|status\(0))) # (!\inst|status\(1) & (\inst|status\(2) $ (\inst|status\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|status\(1),
	datac => \inst|status\(2),
	datad => \inst|status\(0),
	combout => \inst|R0[7]~25_combout\);

-- Location: FF_X25_Y38_N25
\inst|R0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R0[7]~0_combout\,
	asdata => \inst|R0[7]~24_combout\,
	sload => \inst|ALT_INV_status\(2),
	ena => \inst|R0[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R0\(7));

-- Location: LCCOMB_X23_Y36_N26
\inst|Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux25~0_combout\ = (\inst|IR\(10) & ((\inst|R1\(7)) # ((\inst|IR\(11))))) # (!\inst|IR\(10) & (((\inst|R0\(7) & !\inst|IR\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(7),
	datab => \inst|IR\(10),
	datac => \inst|R0\(7),
	datad => \inst|IR\(11),
	combout => \inst|Mux25~0_combout\);

-- Location: LCCOMB_X23_Y36_N20
\inst|Mux25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux25~1_combout\ = (\inst|Mux25~0_combout\ & (((\inst|R3\(7)) # (!\inst|IR\(11))))) # (!\inst|Mux25~0_combout\ & (\inst|R2\(7) & ((\inst|IR\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(7),
	datab => \inst|R3\(7),
	datac => \inst|Mux25~0_combout\,
	datad => \inst|IR\(11),
	combout => \inst|Mux25~1_combout\);

-- Location: LCCOMB_X23_Y36_N8
\inst|R3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3~10_combout\ = (\inst|IR\(8) & ((\inst|IR\(9) & (\inst|Mux25~1_combout\)) # (!\inst|IR\(9) & ((\inst|R3\(7)))))) # (!\inst|IR\(8) & (((\inst|R3\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(8),
	datab => \inst|Mux25~1_combout\,
	datac => \inst|IR\(9),
	datad => \inst|R3\(7),
	combout => \inst|R3~10_combout\);

-- Location: LCCOMB_X23_Y36_N6
\inst|Mux33~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux33~1_combout\ = (\inst|Mux33~0_combout\ & (((\inst|R3\(7)) # (!\inst|IR\(13))))) # (!\inst|Mux33~0_combout\ & (\inst|R3~10_combout\ & (\inst|IR\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux33~0_combout\,
	datab => \inst|R3~10_combout\,
	datac => \inst|IR\(13),
	datad => \inst|R3\(7),
	combout => \inst|Mux33~1_combout\);

-- Location: LCCOMB_X21_Y36_N18
\inst|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~14_combout\ = (\inst|A\(7) & ((\inst|R3\(7) & (\inst|Add3~13\ & VCC)) # (!\inst|R3\(7) & (!\inst|Add3~13\)))) # (!\inst|A\(7) & ((\inst|R3\(7) & (!\inst|Add3~13\)) # (!\inst|R3\(7) & ((\inst|Add3~13\) # (GND)))))
-- \inst|Add3~15\ = CARRY((\inst|A\(7) & (!\inst|R3\(7) & !\inst|Add3~13\)) # (!\inst|A\(7) & ((!\inst|Add3~13\) # (!\inst|R3\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(7),
	datab => \inst|R3\(7),
	datad => VCC,
	cin => \inst|Add3~13\,
	combout => \inst|Add3~14_combout\,
	cout => \inst|Add3~15\);

-- Location: LCCOMB_X21_Y36_N2
\inst|Mux33~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux33~6_combout\ = (\inst|IR\(12) & ((\inst|Add3~14_combout\))) # (!\inst|IR\(12) & (\inst|A\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datac => \inst|A\(7),
	datad => \inst|Add3~14_combout\,
	combout => \inst|Mux33~6_combout\);

-- Location: LCCOMB_X21_Y36_N22
\inst|Mux33~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux33~7_combout\ = (\inst|Decoder2~3_combout\ & ((\inst|IR\(13) & ((\inst|Mux33~6_combout\))) # (!\inst|IR\(13) & (\inst|R3\(7))))) # (!\inst|Decoder2~3_combout\ & (\inst|R3\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder2~3_combout\,
	datab => \inst|R3\(7),
	datac => \inst|IR\(13),
	datad => \inst|Mux33~6_combout\,
	combout => \inst|Mux33~7_combout\);

-- Location: LCCOMB_X22_Y36_N20
\inst|Mux33~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux33~2_combout\ = (\inst|IR\(11) & (\inst|IR\(10) & (!\inst|IR\(13) & !\inst|IR\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|IR\(10),
	datac => \inst|IR\(13),
	datad => \inst|IR\(12),
	combout => \inst|Mux33~2_combout\);

-- Location: LCCOMB_X22_Y36_N14
\inst|Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~14_combout\ = (\inst|R3\(7) & ((\inst|A\(7) & (!\inst|Add7~13\)) # (!\inst|A\(7) & (\inst|Add7~13\ & VCC)))) # (!\inst|R3\(7) & ((\inst|A\(7) & ((\inst|Add7~13\) # (GND))) # (!\inst|A\(7) & (!\inst|Add7~13\))))
-- \inst|Add7~15\ = CARRY((\inst|R3\(7) & (\inst|A\(7) & !\inst|Add7~13\)) # (!\inst|R3\(7) & ((\inst|A\(7)) # (!\inst|Add7~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(7),
	datab => \inst|A\(7),
	datad => VCC,
	cin => \inst|Add7~13\,
	combout => \inst|Add7~14_combout\,
	cout => \inst|Add7~15\);

-- Location: LCCOMB_X23_Y36_N4
\inst|Mux33~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux33~3_combout\ = (\inst|R3\(7) & (\inst|IR\(12) & (\inst|IR\(13) $ (!\inst|A\(7))))) # (!\inst|R3\(7) & ((\inst|IR\(13) & ((!\inst|A\(7)))) # (!\inst|IR\(13) & (\inst|IR\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|R3\(7),
	datac => \inst|IR\(13),
	datad => \inst|A\(7),
	combout => \inst|Mux33~3_combout\);

-- Location: LCCOMB_X23_Y36_N2
\inst|Mux33~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux33~4_combout\ = (\inst|IR\(10) & ((\inst|IR\(11) & ((!\inst|Mux33~3_combout\))) # (!\inst|IR\(11) & (\inst|R3\(7))))) # (!\inst|IR\(10) & (\inst|R3\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|R3\(7),
	datac => \inst|Mux33~3_combout\,
	datad => \inst|IR\(11),
	combout => \inst|Mux33~4_combout\);

-- Location: LCCOMB_X22_Y36_N18
\inst|Mux33~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux33~5_combout\ = (\inst|Mux33~4_combout\ & ((\inst|Add7~14_combout\) # (!\inst|Mux33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux33~2_combout\,
	datac => \inst|Add7~14_combout\,
	datad => \inst|Mux33~4_combout\,
	combout => \inst|Mux33~5_combout\);

-- Location: LCCOMB_X21_Y36_N24
\inst|Mux33~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux33~8_combout\ = (\inst|IR\(14) & ((\inst|IR\(15)) # ((\inst|Mux33~5_combout\)))) # (!\inst|IR\(14) & (!\inst|IR\(15) & (\inst|Mux33~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(14),
	datab => \inst|IR\(15),
	datac => \inst|Mux33~7_combout\,
	datad => \inst|Mux33~5_combout\,
	combout => \inst|Mux33~8_combout\);

-- Location: LCCOMB_X21_Y36_N30
\inst|Mux33~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux33~9_combout\ = (\inst|IR\(15) & ((\inst|Mux33~8_combout\ & ((\inst|R3\(7)))) # (!\inst|Mux33~8_combout\ & (\inst|Mux33~1_combout\)))) # (!\inst|IR\(15) & (((\inst|Mux33~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux33~1_combout\,
	datab => \inst|R3\(7),
	datac => \inst|IR\(15),
	datad => \inst|Mux33~8_combout\,
	combout => \inst|Mux33~9_combout\);

-- Location: FF_X21_Y36_N29
\inst|R3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R3[7]~0_combout\,
	asdata => \inst|Mux33~9_combout\,
	sload => \inst|ALT_INV_status\(1),
	ena => \inst|R1[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R3\(7));

-- Location: LCCOMB_X23_Y36_N24
\inst|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|IR\(9) & (((\inst|IR\(8))))) # (!\inst|IR\(9) & ((\inst|IR\(8) & (\inst|R1\(7))) # (!\inst|IR\(8) & ((\inst|R0\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(9),
	datab => \inst|R1\(7),
	datac => \inst|R0\(7),
	datad => \inst|IR\(8),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y36_N0
\inst|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\inst|IR\(9) & ((\inst|Mux0~0_combout\ & ((\inst|R3\(7)))) # (!\inst|Mux0~0_combout\ & (\inst|R2\(7))))) # (!\inst|IR\(9) & (((\inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(7),
	datab => \inst|R3\(7),
	datac => \inst|IR\(9),
	datad => \inst|Mux0~0_combout\,
	combout => \inst|Mux0~1_combout\);

-- Location: FF_X23_Y36_N1
\inst|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux0~1_combout\,
	ena => \inst|A[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(7));

-- Location: LCCOMB_X20_Y38_N4
\inst|R2[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2[7]~0_combout\ = (\inst|R2~21_combout\ & (\inst|A\(7))) # (!\inst|R2~21_combout\ & ((\inst|R2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|A\(7),
	datac => \inst|R2\(7),
	datad => \inst|R2~21_combout\,
	combout => \inst|R2[7]~0_combout\);

-- Location: LCCOMB_X22_Y40_N10
\inst|R2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2~12_combout\ = (\inst|R2\(7) & ((\inst|IR\(10)) # (!\inst|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|IR\(10),
	datad => \inst|R2\(7),
	combout => \inst|R2~12_combout\);

-- Location: LCCOMB_X23_Y36_N10
\inst|R2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2~11_combout\ = (\inst|IR\(9) & ((\inst|IR\(8) & (\inst|R2\(7))) # (!\inst|IR\(8) & ((\inst|Mux25~1_combout\))))) # (!\inst|IR\(9) & (((\inst|R2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(9),
	datab => \inst|IR\(8),
	datac => \inst|R2\(7),
	datad => \inst|Mux25~1_combout\,
	combout => \inst|R2~11_combout\);

-- Location: LCCOMB_X22_Y40_N4
\inst|Mux41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux41~0_combout\ = (\inst|IR\(12) & (((\inst|IR\(13))))) # (!\inst|IR\(12) & ((\inst|IR\(13) & ((\inst|R2~11_combout\))) # (!\inst|IR\(13) & (\inst|R2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2~12_combout\,
	datab => \inst|IR\(12),
	datac => \inst|R2~11_combout\,
	datad => \inst|IR\(13),
	combout => \inst|Mux41~0_combout\);

-- Location: LCCOMB_X21_Y40_N2
\inst|R2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2~10_combout\ = (\inst|IR\(11) & ((\inst|IR\(10) & ((\inst|R2\(7)))) # (!\inst|IR\(10) & (\inst|R2\(6))))) # (!\inst|IR\(11) & (((\inst|R2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(6),
	datab => \inst|IR\(11),
	datac => \inst|R2\(7),
	datad => \inst|IR\(10),
	combout => \inst|R2~10_combout\);

-- Location: LCCOMB_X21_Y40_N28
\inst|Mux41~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux41~1_combout\ = (\inst|Mux41~0_combout\ & (((\inst|R2\(7))) # (!\inst|IR\(12)))) # (!\inst|Mux41~0_combout\ & (\inst|IR\(12) & ((\inst|R2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux41~0_combout\,
	datab => \inst|IR\(12),
	datac => \inst|R2\(7),
	datad => \inst|R2~10_combout\,
	combout => \inst|Mux41~1_combout\);

-- Location: LCCOMB_X20_Y38_N12
\inst|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = ((\inst|R2\(2) $ (\inst|A\(2) $ (!\inst|Add2~3\)))) # (GND)
-- \inst|Add2~5\ = CARRY((\inst|R2\(2) & ((\inst|A\(2)) # (!\inst|Add2~3\))) # (!\inst|R2\(2) & (\inst|A\(2) & !\inst|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(2),
	datab => \inst|A\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X20_Y38_N14
\inst|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|R2\(3) & ((\inst|A\(3) & (\inst|Add2~5\ & VCC)) # (!\inst|A\(3) & (!\inst|Add2~5\)))) # (!\inst|R2\(3) & ((\inst|A\(3) & (!\inst|Add2~5\)) # (!\inst|A\(3) & ((\inst|Add2~5\) # (GND)))))
-- \inst|Add2~7\ = CARRY((\inst|R2\(3) & (!\inst|A\(3) & !\inst|Add2~5\)) # (!\inst|R2\(3) & ((!\inst|Add2~5\) # (!\inst|A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(3),
	datab => \inst|A\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X20_Y38_N16
\inst|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = ((\inst|A\(4) $ (\inst|R2\(4) $ (!\inst|Add2~7\)))) # (GND)
-- \inst|Add2~9\ = CARRY((\inst|A\(4) & ((\inst|R2\(4)) # (!\inst|Add2~7\))) # (!\inst|A\(4) & (\inst|R2\(4) & !\inst|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(4),
	datab => \inst|R2\(4),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X20_Y38_N18
\inst|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|A\(5) & ((\inst|R2\(5) & (\inst|Add2~9\ & VCC)) # (!\inst|R2\(5) & (!\inst|Add2~9\)))) # (!\inst|A\(5) & ((\inst|R2\(5) & (!\inst|Add2~9\)) # (!\inst|R2\(5) & ((\inst|Add2~9\) # (GND)))))
-- \inst|Add2~11\ = CARRY((\inst|A\(5) & (!\inst|R2\(5) & !\inst|Add2~9\)) # (!\inst|A\(5) & ((!\inst|Add2~9\) # (!\inst|R2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(5),
	datab => \inst|R2\(5),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X20_Y38_N20
\inst|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = ((\inst|R2\(6) $ (\inst|A\(6) $ (!\inst|Add2~11\)))) # (GND)
-- \inst|Add2~13\ = CARRY((\inst|R2\(6) & ((\inst|A\(6)) # (!\inst|Add2~11\))) # (!\inst|R2\(6) & (\inst|A\(6) & !\inst|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(6),
	datab => \inst|A\(6),
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X20_Y38_N22
\inst|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = (\inst|R2\(7) & ((\inst|A\(7) & (\inst|Add2~13\ & VCC)) # (!\inst|A\(7) & (!\inst|Add2~13\)))) # (!\inst|R2\(7) & ((\inst|A\(7) & (!\inst|Add2~13\)) # (!\inst|A\(7) & ((\inst|Add2~13\) # (GND)))))
-- \inst|Add2~15\ = CARRY((\inst|R2\(7) & (!\inst|A\(7) & !\inst|Add2~13\)) # (!\inst|R2\(7) & ((!\inst|Add2~13\) # (!\inst|A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(7),
	datab => \inst|A\(7),
	datad => VCC,
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\,
	cout => \inst|Add2~15\);

-- Location: LCCOMB_X20_Y38_N2
\inst|Mux41~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux41~7_combout\ = (\inst|IR\(12) & (\inst|Add2~14_combout\)) # (!\inst|IR\(12) & ((\inst|A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(12),
	datac => \inst|Add2~14_combout\,
	datad => \inst|A\(7),
	combout => \inst|Mux41~7_combout\);

-- Location: LCCOMB_X20_Y38_N26
\inst|Mux41~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux41~8_combout\ = (\inst|Decoder2~2_combout\ & ((\inst|IR\(13) & ((\inst|Mux41~7_combout\))) # (!\inst|IR\(13) & (\inst|R2\(7))))) # (!\inst|Decoder2~2_combout\ & (((\inst|R2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder2~2_combout\,
	datab => \inst|IR\(13),
	datac => \inst|R2\(7),
	datad => \inst|Mux41~7_combout\,
	combout => \inst|Mux41~8_combout\);

-- Location: LCCOMB_X21_Y40_N18
\inst|Mux41~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux41~2_combout\ = (!\inst|IR\(10) & (\inst|IR\(11) & ((\inst|IR\(12)) # (!\inst|R2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(12),
	datac => \inst|R2\(7),
	datad => \inst|IR\(11),
	combout => \inst|Mux41~2_combout\);

-- Location: LCCOMB_X21_Y40_N0
\inst|Mux41~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux41~3_combout\ = (\inst|Mux41~2_combout\ & ((\inst|A\(7) & ((!\inst|IR\(13)) # (!\inst|R2\(7)))) # (!\inst|A\(7) & (\inst|R2\(7) $ (!\inst|IR\(13)))))) # (!\inst|Mux41~2_combout\ & (((\inst|R2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(7),
	datab => \inst|Mux41~2_combout\,
	datac => \inst|R2\(7),
	datad => \inst|IR\(13),
	combout => \inst|Mux41~3_combout\);

-- Location: LCCOMB_X21_Y38_N18
\inst|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~6_combout\ = (\inst|A\(3) & ((\inst|R2\(3) & (!\inst|Add6~5\)) # (!\inst|R2\(3) & ((\inst|Add6~5\) # (GND))))) # (!\inst|A\(3) & ((\inst|R2\(3) & (\inst|Add6~5\ & VCC)) # (!\inst|R2\(3) & (!\inst|Add6~5\))))
-- \inst|Add6~7\ = CARRY((\inst|A\(3) & ((!\inst|Add6~5\) # (!\inst|R2\(3)))) # (!\inst|A\(3) & (!\inst|R2\(3) & !\inst|Add6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(3),
	datab => \inst|R2\(3),
	datad => VCC,
	cin => \inst|Add6~5\,
	combout => \inst|Add6~6_combout\,
	cout => \inst|Add6~7\);

-- Location: LCCOMB_X21_Y38_N20
\inst|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~8_combout\ = ((\inst|R2\(4) $ (\inst|A\(4) $ (\inst|Add6~7\)))) # (GND)
-- \inst|Add6~9\ = CARRY((\inst|R2\(4) & ((!\inst|Add6~7\) # (!\inst|A\(4)))) # (!\inst|R2\(4) & (!\inst|A\(4) & !\inst|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(4),
	datab => \inst|A\(4),
	datad => VCC,
	cin => \inst|Add6~7\,
	combout => \inst|Add6~8_combout\,
	cout => \inst|Add6~9\);

-- Location: LCCOMB_X21_Y38_N22
\inst|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~10_combout\ = (\inst|A\(5) & ((\inst|R2\(5) & (!\inst|Add6~9\)) # (!\inst|R2\(5) & ((\inst|Add6~9\) # (GND))))) # (!\inst|A\(5) & ((\inst|R2\(5) & (\inst|Add6~9\ & VCC)) # (!\inst|R2\(5) & (!\inst|Add6~9\))))
-- \inst|Add6~11\ = CARRY((\inst|A\(5) & ((!\inst|Add6~9\) # (!\inst|R2\(5)))) # (!\inst|A\(5) & (!\inst|R2\(5) & !\inst|Add6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(5),
	datab => \inst|R2\(5),
	datad => VCC,
	cin => \inst|Add6~9\,
	combout => \inst|Add6~10_combout\,
	cout => \inst|Add6~11\);

-- Location: LCCOMB_X21_Y38_N24
\inst|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~12_combout\ = ((\inst|R2\(6) $ (\inst|A\(6) $ (\inst|Add6~11\)))) # (GND)
-- \inst|Add6~13\ = CARRY((\inst|R2\(6) & ((!\inst|Add6~11\) # (!\inst|A\(6)))) # (!\inst|R2\(6) & (!\inst|A\(6) & !\inst|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(6),
	datab => \inst|A\(6),
	datad => VCC,
	cin => \inst|Add6~11\,
	combout => \inst|Add6~12_combout\,
	cout => \inst|Add6~13\);

-- Location: LCCOMB_X21_Y38_N26
\inst|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~14_combout\ = (\inst|A\(7) & ((\inst|R2\(7) & (!\inst|Add6~13\)) # (!\inst|R2\(7) & ((\inst|Add6~13\) # (GND))))) # (!\inst|A\(7) & ((\inst|R2\(7) & (\inst|Add6~13\ & VCC)) # (!\inst|R2\(7) & (!\inst|Add6~13\))))
-- \inst|Add6~15\ = CARRY((\inst|A\(7) & ((!\inst|Add6~13\) # (!\inst|R2\(7)))) # (!\inst|A\(7) & (!\inst|R2\(7) & !\inst|Add6~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(7),
	datab => \inst|R2\(7),
	datad => VCC,
	cin => \inst|Add6~13\,
	combout => \inst|Add6~14_combout\,
	cout => \inst|Add6~15\);

-- Location: LCCOMB_X21_Y38_N2
\inst|Mux41~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux41~4_combout\ = (\inst|IR\(11) & (!\inst|Add6~14_combout\ & !\inst|IR\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datac => \inst|Add6~14_combout\,
	datad => \inst|IR\(10),
	combout => \inst|Mux41~4_combout\);

-- Location: LCCOMB_X20_Y38_N6
\inst|Mux41~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux41~5_combout\ = (\inst|IR\(12) & (!\inst|R2\(7))) # (!\inst|IR\(12) & ((\inst|Mux41~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(12),
	datac => \inst|R2\(7),
	datad => \inst|Mux41~4_combout\,
	combout => \inst|Mux41~5_combout\);

-- Location: LCCOMB_X20_Y38_N0
\inst|Mux41~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux41~6_combout\ = (\inst|Mux41~3_combout\ & ((\inst|IR\(13)) # (!\inst|Mux41~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(13),
	datac => \inst|Mux41~3_combout\,
	datad => \inst|Mux41~5_combout\,
	combout => \inst|Mux41~6_combout\);

-- Location: LCCOMB_X20_Y38_N28
\inst|Mux41~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux41~9_combout\ = (\inst|IR\(14) & ((\inst|IR\(15)) # ((\inst|Mux41~6_combout\)))) # (!\inst|IR\(14) & (!\inst|IR\(15) & (\inst|Mux41~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(14),
	datab => \inst|IR\(15),
	datac => \inst|Mux41~8_combout\,
	datad => \inst|Mux41~6_combout\,
	combout => \inst|Mux41~9_combout\);

-- Location: LCCOMB_X20_Y38_N30
\inst|Mux41~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux41~10_combout\ = (\inst|IR\(15) & ((\inst|Mux41~9_combout\ & (\inst|R2\(7))) # (!\inst|Mux41~9_combout\ & ((\inst|Mux41~1_combout\))))) # (!\inst|IR\(15) & (((\inst|Mux41~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(15),
	datab => \inst|R2\(7),
	datac => \inst|Mux41~1_combout\,
	datad => \inst|Mux41~9_combout\,
	combout => \inst|Mux41~10_combout\);

-- Location: FF_X20_Y38_N5
\inst|R2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R2[7]~0_combout\,
	asdata => \inst|Mux41~10_combout\,
	sload => \inst|ALT_INV_status\(1),
	ena => \inst|R1[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R2\(7));

-- Location: LCCOMB_X20_Y36_N4
\inst|Mux94~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux94~0_combout\ = (\inst|R0[4]~11_combout\ & ((\inst|R0[4]~12_combout\ & ((\inst|R2\(5)))) # (!\inst|R0[4]~12_combout\ & (\inst|R2\(7))))) # (!\inst|R0[4]~11_combout\ & (((\inst|R0[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(7),
	datab => \inst|R2\(5),
	datac => \inst|R0[4]~11_combout\,
	datad => \inst|R0[4]~12_combout\,
	combout => \inst|Mux94~0_combout\);

-- Location: LCCOMB_X20_Y36_N26
\inst|Mux94~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux94~1_combout\ = (\inst|Mux94~0_combout\ & ((\inst|Mux26~1_combout\) # ((\inst|R0[4]~11_combout\)))) # (!\inst|Mux94~0_combout\ & (((!\inst|R0[4]~11_combout\ & \inst|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux26~1_combout\,
	datab => \inst|Mux94~0_combout\,
	datac => \inst|R0[4]~11_combout\,
	datad => \inst|Add2~12_combout\,
	combout => \inst|Mux94~1_combout\);

-- Location: LCCOMB_X21_Y40_N22
\inst|R2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2~13_combout\ = (\inst|R2\(6)) # ((\inst|IR\(11) & (\inst|A\(6) & !\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(6),
	datab => \inst|IR\(11),
	datac => \inst|A\(6),
	datad => \inst|IR\(10),
	combout => \inst|R2~13_combout\);

-- Location: LCCOMB_X20_Y39_N16
\inst|Mux94~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux94~2_combout\ = (\inst|IR\(13) & ((\inst|IR\(12)) # ((\inst|R2~13_combout\)))) # (!\inst|IR\(13) & (!\inst|IR\(12) & (\inst|Add6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|Add6~12_combout\,
	datad => \inst|R2~13_combout\,
	combout => \inst|Mux94~2_combout\);

-- Location: LCCOMB_X20_Y39_N2
\inst|Mux94~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux94~3_combout\ = (\inst|A\(6) & (\inst|Mux94~2_combout\ $ (((\inst|IR\(12) & \inst|R2\(6)))))) # (!\inst|A\(6) & (\inst|Mux94~2_combout\ & ((\inst|R2\(6)) # (!\inst|IR\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(6),
	datab => \inst|IR\(12),
	datac => \inst|R2\(6),
	datad => \inst|Mux94~2_combout\,
	combout => \inst|Mux94~3_combout\);

-- Location: LCCOMB_X20_Y39_N4
\inst|R2[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2[6]~1_combout\ = (\inst|R0[4]~35_combout\ & ((\inst|Mux94~3_combout\))) # (!\inst|R0[4]~35_combout\ & (\inst|Mux94~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~35_combout\,
	datab => \inst|Mux94~1_combout\,
	datad => \inst|Mux94~3_combout\,
	combout => \inst|R2[6]~1_combout\);

-- Location: FF_X20_Y39_N5
\inst|R2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R2[6]~1_combout\,
	asdata => \inst|A\(6),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R2[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R2\(6));

-- Location: LCCOMB_X21_Y40_N16
\inst|Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux26~0_combout\ = (\inst|IR\(11) & ((\inst|R2\(6)) # ((\inst|IR\(10))))) # (!\inst|IR\(11) & (((\inst|R0\(6) & !\inst|IR\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(6),
	datab => \inst|IR\(11),
	datac => \inst|R0\(6),
	datad => \inst|IR\(10),
	combout => \inst|Mux26~0_combout\);

-- Location: LCCOMB_X20_Y40_N8
\inst|Mux26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux26~1_combout\ = (\inst|Mux26~0_combout\ & (((\inst|R3\(6)) # (!\inst|IR\(10))))) # (!\inst|Mux26~0_combout\ & (\inst|R1\(6) & (\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(6),
	datab => \inst|Mux26~0_combout\,
	datac => \inst|IR\(10),
	datad => \inst|R3\(6),
	combout => \inst|Mux26~1_combout\);

-- Location: LCCOMB_X20_Y36_N22
\inst|Mux102~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux102~0_combout\ = (\inst|R0[4]~11_combout\ & ((\inst|R0[4]~12_combout\ & ((\inst|R1\(5)))) # (!\inst|R0[4]~12_combout\ & (\inst|R1\(7))))) # (!\inst|R0[4]~11_combout\ & (((\inst|R0[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(7),
	datab => \inst|R1\(5),
	datac => \inst|R0[4]~11_combout\,
	datad => \inst|R0[4]~12_combout\,
	combout => \inst|Mux102~0_combout\);

-- Location: LCCOMB_X20_Y36_N8
\inst|Mux102~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux102~1_combout\ = (\inst|R0[4]~11_combout\ & (((\inst|Mux102~0_combout\)))) # (!\inst|R0[4]~11_combout\ & ((\inst|Mux102~0_combout\ & (\inst|Mux26~1_combout\)) # (!\inst|Mux102~0_combout\ & ((\inst|Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux26~1_combout\,
	datab => \inst|R0[4]~11_combout\,
	datac => \inst|Mux102~0_combout\,
	datad => \inst|Add1~12_combout\,
	combout => \inst|Mux102~1_combout\);

-- Location: LCCOMB_X20_Y40_N24
\inst|Mux102~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux102~2_combout\ = (\inst|A\(6) & ((\inst|IR\(12)) # (!\inst|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(12),
	datac => \inst|IR\(11),
	datad => \inst|A\(6),
	combout => \inst|Mux102~2_combout\);

-- Location: LCCOMB_X20_Y40_N28
\inst|Mux102~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux102~4_combout\ = (\inst|R1\(6) & (\inst|IR\(13) $ (((\inst|IR\(12) & \inst|Mux102~2_combout\))))) # (!\inst|R1\(6) & (((\inst|IR\(13) & \inst|Mux102~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(6),
	datab => \inst|IR\(12),
	datac => \inst|IR\(13),
	datad => \inst|Mux102~2_combout\,
	combout => \inst|Mux102~4_combout\);

-- Location: LCCOMB_X20_Y40_N26
\inst|Mux102~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux102~3_combout\ = (\inst|IR\(13) & (\inst|R1\(6) $ (((!\inst|Mux102~2_combout\) # (!\inst|IR\(12)))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|Mux102~2_combout\) # (!\inst|R1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(6),
	datab => \inst|IR\(12),
	datac => \inst|IR\(13),
	datad => \inst|Mux102~2_combout\,
	combout => \inst|Mux102~3_combout\);

-- Location: LCCOMB_X20_Y36_N6
\inst|Mux102~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux102~5_combout\ = (\inst|Mux102~4_combout\ & ((\inst|IR\(10)) # ((!\inst|Mux102~3_combout\)))) # (!\inst|Mux102~4_combout\ & (((!\inst|Mux102~3_combout\ & \inst|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|Mux102~4_combout\,
	datac => \inst|Mux102~3_combout\,
	datad => \inst|Add5~12_combout\,
	combout => \inst|Mux102~5_combout\);

-- Location: LCCOMB_X20_Y36_N0
\inst|R1[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[6]~1_combout\ = (\inst|R0[4]~35_combout\ & ((\inst|Mux102~5_combout\))) # (!\inst|R0[4]~35_combout\ & (\inst|Mux102~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~35_combout\,
	datab => \inst|Mux102~1_combout\,
	datad => \inst|Mux102~5_combout\,
	combout => \inst|R1[6]~1_combout\);

-- Location: FF_X20_Y36_N1
\inst|R1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R1[6]~1_combout\,
	asdata => \inst|A\(6),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R1[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R1\(6));

-- Location: LCCOMB_X18_Y37_N2
\inst|Mux103~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux103~0_combout\ = (\inst|R0[4]~12_combout\ & (((!\inst|R0[4]~11_combout\)))) # (!\inst|R0[4]~12_combout\ & ((\inst|R0[4]~11_combout\ & (\inst|R1\(6))) # (!\inst|R0[4]~11_combout\ & ((\inst|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~12_combout\,
	datab => \inst|R1\(6),
	datac => \inst|Add1~10_combout\,
	datad => \inst|R0[4]~11_combout\,
	combout => \inst|Mux103~0_combout\);

-- Location: LCCOMB_X18_Y37_N28
\inst|Mux103~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux103~1_combout\ = (\inst|R0[4]~12_combout\ & ((\inst|Mux103~0_combout\ & (\inst|Mux27~1_combout\)) # (!\inst|Mux103~0_combout\ & ((\inst|R1\(4)))))) # (!\inst|R0[4]~12_combout\ & (((\inst|Mux103~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~12_combout\,
	datab => \inst|Mux27~1_combout\,
	datac => \inst|R1\(4),
	datad => \inst|Mux103~0_combout\,
	combout => \inst|Mux103~1_combout\);

-- Location: LCCOMB_X18_Y37_N20
\inst|R1[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[5]~2_combout\ = (\inst|R0[4]~35_combout\ & (\inst|Mux103~5_combout\)) # (!\inst|R0[4]~35_combout\ & ((\inst|Mux103~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux103~5_combout\,
	datab => \inst|R0[4]~35_combout\,
	datad => \inst|Mux103~1_combout\,
	combout => \inst|R1[5]~2_combout\);

-- Location: FF_X18_Y37_N21
\inst|R1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R1[5]~2_combout\,
	asdata => \inst|A\(5),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R1[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R1\(5));

-- Location: LCCOMB_X21_Y40_N4
\inst|Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux27~0_combout\ = (\inst|IR\(10) & ((\inst|IR\(11)) # ((\inst|R1\(5))))) # (!\inst|IR\(10) & (!\inst|IR\(11) & ((\inst|R0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(11),
	datac => \inst|R1\(5),
	datad => \inst|R0\(5),
	combout => \inst|Mux27~0_combout\);

-- Location: LCCOMB_X20_Y40_N2
\inst|Mux27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux27~1_combout\ = (\inst|IR\(11) & ((\inst|Mux27~0_combout\ & (\inst|R3\(5))) # (!\inst|Mux27~0_combout\ & ((\inst|R2\(5)))))) # (!\inst|IR\(11) & (((\inst|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(5),
	datab => \inst|IR\(11),
	datac => \inst|R2\(5),
	datad => \inst|Mux27~0_combout\,
	combout => \inst|Mux27~1_combout\);

-- Location: LCCOMB_X20_Y39_N10
\inst|Mux87~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux87~0_combout\ = (\inst|R0[4]~11_combout\ & (\inst|R3\(6) & ((!\inst|R0[4]~12_combout\)))) # (!\inst|R0[4]~11_combout\ & (((\inst|Add3~10_combout\) # (\inst|R0[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(6),
	datab => \inst|R0[4]~11_combout\,
	datac => \inst|Add3~10_combout\,
	datad => \inst|R0[4]~12_combout\,
	combout => \inst|Mux87~0_combout\);

-- Location: LCCOMB_X20_Y39_N24
\inst|Mux87~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux87~1_combout\ = (\inst|R0[4]~12_combout\ & ((\inst|Mux87~0_combout\ & (\inst|Mux27~1_combout\)) # (!\inst|Mux87~0_combout\ & ((\inst|R3\(4)))))) # (!\inst|R0[4]~12_combout\ & (((\inst|Mux87~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux27~1_combout\,
	datab => \inst|R0[4]~12_combout\,
	datac => \inst|R3\(4),
	datad => \inst|Mux87~0_combout\,
	combout => \inst|Mux87~1_combout\);

-- Location: LCCOMB_X19_Y39_N14
\inst|R3[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3[5]~2_combout\ = (\inst|R0[4]~35_combout\ & (\inst|Mux87~5_combout\)) # (!\inst|R0[4]~35_combout\ & ((\inst|Mux87~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux87~5_combout\,
	datab => \inst|R0[4]~35_combout\,
	datad => \inst|Mux87~1_combout\,
	combout => \inst|R3[5]~2_combout\);

-- Location: FF_X19_Y39_N15
\inst|R3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R3[5]~2_combout\,
	asdata => \inst|A\(5),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R3[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R3\(5));

-- Location: LCCOMB_X21_Y40_N14
\inst|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|IR\(8) & (((\inst|R1\(5)) # (\inst|IR\(9))))) # (!\inst|IR\(8) & (\inst|R0\(5) & ((!\inst|IR\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(5),
	datab => \inst|IR\(8),
	datac => \inst|R1\(5),
	datad => \inst|IR\(9),
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y38_N6
\inst|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|IR\(9) & ((\inst|Mux2~0_combout\ & (\inst|R3\(5))) # (!\inst|Mux2~0_combout\ & ((\inst|R2\(5)))))) # (!\inst|IR\(9) & (((\inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(5),
	datab => \inst|R2\(5),
	datac => \inst|IR\(9),
	datad => \inst|Mux2~0_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: FF_X21_Y38_N7
\inst|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux2~1_combout\,
	ena => \inst|A[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(5));

-- Location: LCCOMB_X21_Y40_N10
\inst|Mux67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux67~0_combout\ = (\inst|A\(5) & ((\inst|IR\(12)) # (!\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(12),
	datad => \inst|A\(5),
	combout => \inst|Mux67~0_combout\);

-- Location: LCCOMB_X20_Y40_N22
\inst|Mux95~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux95~2_combout\ = (\inst|IR\(13) & (\inst|R2\(5) $ (((!\inst|IR\(12)) # (!\inst|Mux67~0_combout\))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|Mux67~0_combout\) # (!\inst|R2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|R2\(5),
	datac => \inst|Mux67~0_combout\,
	datad => \inst|IR\(12),
	combout => \inst|Mux95~2_combout\);

-- Location: LCCOMB_X20_Y40_N20
\inst|Mux95~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux95~3_combout\ = (\inst|R2\(5) & (\inst|IR\(13) $ (((\inst|Mux67~0_combout\ & \inst|IR\(12)))))) # (!\inst|R2\(5) & (\inst|IR\(13) & (\inst|Mux67~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|R2\(5),
	datac => \inst|Mux67~0_combout\,
	datad => \inst|IR\(12),
	combout => \inst|Mux95~3_combout\);

-- Location: LCCOMB_X20_Y40_N30
\inst|Mux95~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux95~4_combout\ = (\inst|Mux95~2_combout\ & (\inst|IR\(11) & ((\inst|Mux95~3_combout\)))) # (!\inst|Mux95~2_combout\ & (((\inst|Add6~10_combout\) # (\inst|Mux95~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux95~2_combout\,
	datab => \inst|IR\(11),
	datac => \inst|Add6~10_combout\,
	datad => \inst|Mux95~3_combout\,
	combout => \inst|Mux95~4_combout\);

-- Location: LCCOMB_X19_Y39_N0
\inst|Mux95~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux95~0_combout\ = (\inst|R0[4]~11_combout\ & (\inst|R2\(6) & (!\inst|R0[4]~12_combout\))) # (!\inst|R0[4]~11_combout\ & (((\inst|R0[4]~12_combout\) # (\inst|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~11_combout\,
	datab => \inst|R2\(6),
	datac => \inst|R0[4]~12_combout\,
	datad => \inst|Add2~10_combout\,
	combout => \inst|Mux95~0_combout\);

-- Location: LCCOMB_X19_Y39_N6
\inst|Mux95~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux95~1_combout\ = (\inst|R0[4]~12_combout\ & ((\inst|Mux95~0_combout\ & (\inst|Mux27~1_combout\)) # (!\inst|Mux95~0_combout\ & ((\inst|R2\(4)))))) # (!\inst|R0[4]~12_combout\ & (((\inst|Mux95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux27~1_combout\,
	datab => \inst|R2\(4),
	datac => \inst|R0[4]~12_combout\,
	datad => \inst|Mux95~0_combout\,
	combout => \inst|Mux95~1_combout\);

-- Location: LCCOMB_X19_Y39_N4
\inst|R2[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2[5]~2_combout\ = (\inst|R0[4]~35_combout\ & (\inst|Mux95~4_combout\)) # (!\inst|R0[4]~35_combout\ & ((\inst|Mux95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux95~4_combout\,
	datab => \inst|R0[4]~35_combout\,
	datad => \inst|Mux95~1_combout\,
	combout => \inst|R2[5]~2_combout\);

-- Location: FF_X19_Y39_N5
\inst|R2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R2[5]~2_combout\,
	asdata => \inst|A\(5),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R2[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R2\(5));

-- Location: LCCOMB_X20_Y36_N28
\inst|Mux96~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux96~0_combout\ = (\inst|R0[4]~11_combout\ & ((\inst|R0[4]~12_combout\ & (\inst|R2\(3))) # (!\inst|R0[4]~12_combout\ & ((\inst|R2\(5)))))) # (!\inst|R0[4]~11_combout\ & (((\inst|R0[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(3),
	datab => \inst|R2\(5),
	datac => \inst|R0[4]~11_combout\,
	datad => \inst|R0[4]~12_combout\,
	combout => \inst|Mux96~0_combout\);

-- Location: LCCOMB_X20_Y39_N14
\inst|Mux96~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux96~1_combout\ = (\inst|R0[4]~11_combout\ & (((\inst|Mux96~0_combout\)))) # (!\inst|R0[4]~11_combout\ & ((\inst|Mux96~0_combout\ & (\inst|Mux28~1_combout\)) # (!\inst|Mux96~0_combout\ & ((\inst|Add2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux28~1_combout\,
	datab => \inst|R0[4]~11_combout\,
	datac => \inst|Mux96~0_combout\,
	datad => \inst|Add2~8_combout\,
	combout => \inst|Mux96~1_combout\);

-- Location: LCCOMB_X20_Y39_N8
\inst|R2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2~19_combout\ = (\inst|R2\(4)) # ((\inst|IR\(11) & (\inst|A\(4) & !\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|R2\(4),
	datac => \inst|A\(4),
	datad => \inst|IR\(10),
	combout => \inst|R2~19_combout\);

-- Location: LCCOMB_X20_Y39_N26
\inst|Mux96~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux96~2_combout\ = (\inst|IR\(13) & ((\inst|R2~19_combout\) # ((\inst|IR\(12))))) # (!\inst|IR\(13) & (((\inst|Add6~8_combout\ & !\inst|IR\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|R2~19_combout\,
	datac => \inst|Add6~8_combout\,
	datad => \inst|IR\(12),
	combout => \inst|Mux96~2_combout\);

-- Location: LCCOMB_X20_Y39_N28
\inst|Mux96~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux96~3_combout\ = (\inst|Mux96~2_combout\ & ((\inst|R2\(4) $ (\inst|A\(4))) # (!\inst|IR\(12)))) # (!\inst|Mux96~2_combout\ & (\inst|R2\(4) & (\inst|A\(4) & \inst|IR\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux96~2_combout\,
	datab => \inst|R2\(4),
	datac => \inst|A\(4),
	datad => \inst|IR\(12),
	combout => \inst|Mux96~3_combout\);

-- Location: LCCOMB_X20_Y39_N18
\inst|R2[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2[4]~3_combout\ = (\inst|R0[4]~35_combout\ & ((\inst|Mux96~3_combout\))) # (!\inst|R0[4]~35_combout\ & (\inst|Mux96~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~35_combout\,
	datab => \inst|Mux96~1_combout\,
	datad => \inst|Mux96~3_combout\,
	combout => \inst|R2[4]~3_combout\);

-- Location: FF_X20_Y39_N19
\inst|R2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R2[4]~3_combout\,
	asdata => \inst|A\(4),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R2[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R2\(4));

-- Location: LCCOMB_X19_Y37_N8
\inst|Mux28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux28~0_combout\ = (\inst|IR\(10) & (((\inst|IR\(11))))) # (!\inst|IR\(10) & ((\inst|IR\(11) & ((\inst|R2\(4)))) # (!\inst|IR\(11) & (\inst|R0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(4),
	datab => \inst|R2\(4),
	datac => \inst|IR\(10),
	datad => \inst|IR\(11),
	combout => \inst|Mux28~0_combout\);

-- Location: LCCOMB_X20_Y37_N6
\inst|Mux28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux28~1_combout\ = (\inst|Mux28~0_combout\ & (((\inst|R3\(4)) # (!\inst|IR\(10))))) # (!\inst|Mux28~0_combout\ & (\inst|R1\(4) & (\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux28~0_combout\,
	datab => \inst|R1\(4),
	datac => \inst|IR\(10),
	datad => \inst|R3\(4),
	combout => \inst|Mux28~1_combout\);

-- Location: LCCOMB_X20_Y36_N10
\inst|Mux88~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux88~0_combout\ = (\inst|R0[4]~11_combout\ & ((\inst|R0[4]~12_combout\ & ((\inst|R3\(3)))) # (!\inst|R0[4]~12_combout\ & (\inst|R3\(5))))) # (!\inst|R0[4]~11_combout\ & (((\inst|R0[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(5),
	datab => \inst|R3\(3),
	datac => \inst|R0[4]~11_combout\,
	datad => \inst|R0[4]~12_combout\,
	combout => \inst|Mux88~0_combout\);

-- Location: LCCOMB_X20_Y36_N12
\inst|Mux88~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux88~1_combout\ = (\inst|R0[4]~11_combout\ & (((\inst|Mux88~0_combout\)))) # (!\inst|R0[4]~11_combout\ & ((\inst|Mux88~0_combout\ & (\inst|Mux28~1_combout\)) # (!\inst|Mux88~0_combout\ & ((\inst|Add3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux28~1_combout\,
	datab => \inst|R0[4]~11_combout\,
	datac => \inst|Add3~8_combout\,
	datad => \inst|Mux88~0_combout\,
	combout => \inst|Mux88~1_combout\);

-- Location: LCCOMB_X22_Y36_N28
\inst|R3~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3~19_combout\ = (\inst|R3\(4)) # ((\inst|IR\(11) & (\inst|IR\(10) & \inst|A\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|R3\(4),
	datac => \inst|IR\(10),
	datad => \inst|A\(4),
	combout => \inst|R3~19_combout\);

-- Location: LCCOMB_X22_Y36_N26
\inst|Mux88~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux88~2_combout\ = (\inst|IR\(13) & ((\inst|IR\(12)) # ((\inst|R3~19_combout\)))) # (!\inst|IR\(13) & (!\inst|IR\(12) & (\inst|Add7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|Add7~8_combout\,
	datad => \inst|R3~19_combout\,
	combout => \inst|Mux88~2_combout\);

-- Location: LCCOMB_X21_Y36_N26
\inst|Mux88~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux88~3_combout\ = (\inst|A\(4) & (\inst|Mux88~2_combout\ $ (((\inst|R3\(4) & \inst|IR\(12)))))) # (!\inst|A\(4) & (\inst|Mux88~2_combout\ & ((\inst|R3\(4)) # (!\inst|IR\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(4),
	datab => \inst|R3\(4),
	datac => \inst|IR\(12),
	datad => \inst|Mux88~2_combout\,
	combout => \inst|Mux88~3_combout\);

-- Location: LCCOMB_X20_Y36_N20
\inst|R3[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3[4]~3_combout\ = (\inst|R0[4]~35_combout\ & ((\inst|Mux88~3_combout\))) # (!\inst|R0[4]~35_combout\ & (\inst|Mux88~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux88~1_combout\,
	datab => \inst|R0[4]~35_combout\,
	datad => \inst|Mux88~3_combout\,
	combout => \inst|R3[4]~3_combout\);

-- Location: FF_X20_Y36_N21
\inst|R3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R3[4]~3_combout\,
	asdata => \inst|A\(4),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R3[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R3\(4));

-- Location: LCCOMB_X19_Y37_N0
\inst|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|IR\(9) & (((\inst|R2\(4)) # (\inst|IR\(8))))) # (!\inst|IR\(9) & (\inst|R0\(4) & ((!\inst|IR\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(4),
	datab => \inst|R2\(4),
	datac => \inst|IR\(9),
	datad => \inst|IR\(8),
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y38_N4
\inst|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst|IR\(8) & ((\inst|Mux3~0_combout\ & (\inst|R3\(4))) # (!\inst|Mux3~0_combout\ & ((\inst|R1\(4)))))) # (!\inst|IR\(8) & (((\inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(8),
	datab => \inst|R3\(4),
	datac => \inst|R1\(4),
	datad => \inst|Mux3~0_combout\,
	combout => \inst|Mux3~1_combout\);

-- Location: FF_X21_Y38_N5
\inst|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux3~1_combout\,
	ena => \inst|A[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(4));

-- Location: LCCOMB_X23_Y39_N4
\inst|Mux68~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux68~4_combout\ = (\inst|R0[4]~12_combout\ & (((\inst|Mux28~1_combout\)) # (!\inst|IR\(13)))) # (!\inst|R0[4]~12_combout\ & (\inst|IR\(13) & ((\inst|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~12_combout\,
	datab => \inst|IR\(13),
	datac => \inst|Mux28~1_combout\,
	datad => \inst|Add0~8_combout\,
	combout => \inst|Mux68~4_combout\);

-- Location: LCCOMB_X23_Y39_N26
\inst|Mux68~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux68~5_combout\ = (\inst|Mux68~4_combout\ & (((\inst|R0\(3)) # (!\inst|R0[4]~11_combout\)))) # (!\inst|Mux68~4_combout\ & (\inst|R0\(5) & ((\inst|R0[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(5),
	datab => \inst|R0\(3),
	datac => \inst|Mux68~4_combout\,
	datad => \inst|R0[4]~11_combout\,
	combout => \inst|Mux68~5_combout\);

-- Location: LCCOMB_X19_Y37_N12
\inst|Mux68~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux68~0_combout\ = (\inst|A\(4) & ((\inst|IR\(12)) # (!\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(12),
	datac => \inst|A\(4),
	combout => \inst|Mux68~0_combout\);

-- Location: LCCOMB_X19_Y37_N24
\inst|Mux68~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux68~2_combout\ = (\inst|R0\(4) & (\inst|IR\(13) $ (((\inst|IR\(12) & \inst|Mux68~0_combout\))))) # (!\inst|R0\(4) & (\inst|IR\(13) & ((\inst|Mux68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(4),
	datab => \inst|IR\(13),
	datac => \inst|IR\(12),
	datad => \inst|Mux68~0_combout\,
	combout => \inst|Mux68~2_combout\);

-- Location: LCCOMB_X19_Y37_N30
\inst|Mux68~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux68~1_combout\ = (\inst|IR\(13) & (\inst|R0\(4) $ (((!\inst|Mux68~0_combout\) # (!\inst|IR\(12)))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|Mux68~0_combout\) # (!\inst|R0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(4),
	datab => \inst|IR\(13),
	datac => \inst|IR\(12),
	datad => \inst|Mux68~0_combout\,
	combout => \inst|Mux68~1_combout\);

-- Location: LCCOMB_X19_Y37_N22
\inst|Mux68~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux68~3_combout\ = (\inst|Mux68~2_combout\ & (((!\inst|Mux68~1_combout\)) # (!\inst|IR\(11)))) # (!\inst|Mux68~2_combout\ & (((!\inst|Mux68~1_combout\ & \inst|Add4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|Mux68~2_combout\,
	datac => \inst|Mux68~1_combout\,
	datad => \inst|Add4~8_combout\,
	combout => \inst|Mux68~3_combout\);

-- Location: LCCOMB_X23_Y39_N16
\inst|Mux68~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux68~6_combout\ = (\inst|R0[4]~9_combout\ & (\inst|R0[4]~10_combout\)) # (!\inst|R0[4]~9_combout\ & ((\inst|R0[4]~10_combout\ & ((\inst|Mux68~3_combout\))) # (!\inst|R0[4]~10_combout\ & (\inst|Mux68~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~9_combout\,
	datab => \inst|R0[4]~10_combout\,
	datac => \inst|Mux68~5_combout\,
	datad => \inst|Mux68~3_combout\,
	combout => \inst|Mux68~6_combout\);

-- Location: LCCOMB_X23_Y39_N0
\inst|Mux68~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux68~7_combout\ = (\inst|R0[4]~9_combout\ & ((\inst|Mux68~6_combout\ & (\inst2|altsyncram_component|auto_generated|q_a\(4))) # (!\inst|Mux68~6_combout\ & ((\inst|A\(4)))))) # (!\inst|R0[4]~9_combout\ & (((\inst|Mux68~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst|A\(4),
	datac => \inst|R0[4]~9_combout\,
	datad => \inst|Mux68~6_combout\,
	combout => \inst|Mux68~7_combout\);

-- Location: FF_X23_Y39_N1
\inst|R0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux68~7_combout\,
	ena => \inst|R0[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R0\(4));

-- Location: LCCOMB_X22_Y39_N28
\inst|Mux69~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux69~4_combout\ = (\inst|R0[4]~12_combout\ & (((\inst|R0\(2)) # (!\inst|R0[4]~11_combout\)))) # (!\inst|R0[4]~12_combout\ & (\inst|R0\(4) & ((\inst|R0[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(4),
	datab => \inst|R0[4]~12_combout\,
	datac => \inst|R0\(2),
	datad => \inst|R0[4]~11_combout\,
	combout => \inst|Mux69~4_combout\);

-- Location: LCCOMB_X22_Y39_N8
\inst|Mux69~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux69~2_combout\ = (\inst|R0\(3) & (\inst|IR\(13) $ (((\inst|IR\(12) & \inst|Mux69~0_combout\))))) # (!\inst|R0\(3) & (((\inst|IR\(13) & \inst|Mux69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(3),
	datab => \inst|IR\(12),
	datac => \inst|IR\(13),
	datad => \inst|Mux69~0_combout\,
	combout => \inst|Mux69~2_combout\);

-- Location: LCCOMB_X22_Y39_N26
\inst|Mux69~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux69~1_combout\ = (\inst|IR\(13) & (\inst|R0\(3) $ (((!\inst|Mux69~0_combout\) # (!\inst|IR\(12)))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|Mux69~0_combout\) # (!\inst|R0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(3),
	datab => \inst|IR\(12),
	datac => \inst|IR\(13),
	datad => \inst|Mux69~0_combout\,
	combout => \inst|Mux69~1_combout\);

-- Location: LCCOMB_X22_Y39_N18
\inst|Mux69~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux69~3_combout\ = (\inst|Mux69~2_combout\ & (((!\inst|Mux69~1_combout\)) # (!\inst|IR\(11)))) # (!\inst|Mux69~2_combout\ & (((!\inst|Mux69~1_combout\ & \inst|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|Mux69~2_combout\,
	datac => \inst|Mux69~1_combout\,
	datad => \inst|Add4~6_combout\,
	combout => \inst|Mux69~3_combout\);

-- Location: LCCOMB_X22_Y39_N16
\inst|Mux69~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux69~5_combout\ = (\inst|R0[4]~11_combout\ & (\inst|Mux69~4_combout\)) # (!\inst|R0[4]~11_combout\ & ((\inst|Mux69~4_combout\ & (\inst|Mux29~1_combout\)) # (!\inst|Mux69~4_combout\ & ((\inst|Mux69~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~11_combout\,
	datab => \inst|Mux69~4_combout\,
	datac => \inst|Mux29~1_combout\,
	datad => \inst|Mux69~3_combout\,
	combout => \inst|Mux69~5_combout\);

-- Location: LCCOMB_X22_Y39_N14
\inst|Mux69~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux69~6_combout\ = (\inst|R0[2]~19_combout\ & (((\inst|R0[2]~17_combout\) # (\inst|Mux69~5_combout\)))) # (!\inst|R0[2]~19_combout\ & (\inst|IR\(11) & (!\inst|R0[2]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|R0[2]~19_combout\,
	datac => \inst|R0[2]~17_combout\,
	datad => \inst|Mux69~5_combout\,
	combout => \inst|Mux69~6_combout\);

-- Location: LCCOMB_X25_Y39_N12
\inst|Mux69~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux69~7_combout\ = (\inst|R0[2]~17_combout\ & ((\inst|Mux69~6_combout\ & (\inst|A\(3))) # (!\inst|Mux69~6_combout\ & ((\inst|Add0~6_combout\))))) # (!\inst|R0[2]~17_combout\ & (((\inst|Mux69~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(3),
	datab => \inst|R0[2]~17_combout\,
	datac => \inst|Add0~6_combout\,
	datad => \inst|Mux69~6_combout\,
	combout => \inst|Mux69~7_combout\);

-- Location: LCCOMB_X25_Y39_N30
\inst|R0[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[3]~feeder_combout\ = \inst|Mux69~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux69~7_combout\,
	combout => \inst|R0[3]~feeder_combout\);

-- Location: FF_X25_Y39_N31
\inst|R0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R0[3]~feeder_combout\,
	asdata => \inst2|altsyncram_component|auto_generated|q_a\(3),
	sload => \inst|status\(2),
	ena => \inst|R0[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R0\(3));

-- Location: LCCOMB_X23_Y40_N28
\inst|MDR[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MDR[3]~feeder_combout\ = \inst|R0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|R0\(3),
	combout => \inst|MDR[3]~feeder_combout\);

-- Location: FF_X23_Y40_N29
\inst|MDR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|MDR[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|MDR[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR\(3));

-- Location: LCCOMB_X23_Y40_N22
\inst|MDR[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MDR[4]~feeder_combout\ = \inst|R0\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|R0\(4),
	combout => \inst|MDR[4]~feeder_combout\);

-- Location: FF_X23_Y40_N23
\inst|MDR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|MDR[4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|MDR[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR\(4));

-- Location: FF_X23_Y40_N1
\inst|MDR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|R0\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|MDR[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR\(5));

-- Location: LCCOMB_X23_Y40_N30
\inst|MDR[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MDR[6]~feeder_combout\ = \inst|R0\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|R0\(6),
	combout => \inst|MDR[6]~feeder_combout\);

-- Location: FF_X23_Y40_N31
\inst|MDR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|MDR[6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|MDR[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR\(6));

-- Location: FF_X23_Y40_N5
\inst|MDR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|R0\(7),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|MDR[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR\(7));

-- Location: M9K_X24_Y39_N0
\inst2|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E40000000000000000000000003C00013002C0001D00340001900300001E00340007B000B400280014400840018400A100104001E00380003100250001F003400024000540000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM_1:inst2|altsyncram:altsyncram_component|altsyncram_6qh1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|write_read~combout\,
	portare => VCC,
	clk0 => \ALT_INV_clock~inputclkctrl_outclk\,
	portadatain => \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X23_Y39_N29
\inst|IR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst2|altsyncram_component|auto_generated|q_a\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|Decoder3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(8));

-- Location: LCCOMB_X23_Y40_N24
\inst|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst|IR\(9) & ((\inst|R2\(0)) # ((\inst|IR\(8))))) # (!\inst|IR\(9) & (((\inst|R0\(0) & !\inst|IR\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(0),
	datab => \inst|R0\(0),
	datac => \inst|IR\(9),
	datad => \inst|IR\(8),
	combout => \inst|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y38_N12
\inst|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux7~1_combout\ = (\inst|IR\(8) & ((\inst|Mux7~0_combout\ & (\inst|R3\(0))) # (!\inst|Mux7~0_combout\ & ((\inst|R1\(0)))))) # (!\inst|IR\(8) & (((\inst|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(0),
	datab => \inst|IR\(8),
	datac => \inst|Mux7~0_combout\,
	datad => \inst|R1\(0),
	combout => \inst|Mux7~1_combout\);

-- Location: FF_X22_Y38_N13
\inst|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux7~1_combout\,
	ena => \inst|A[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(0));

-- Location: LCCOMB_X22_Y37_N28
\inst|R3[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3[0]~5_combout\ = (\inst|R3~21_combout\ & (\inst|A\(0))) # (!\inst|R3~21_combout\ & ((\inst|R3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|A\(0),
	datac => \inst|R3\(0),
	datad => \inst|R3~21_combout\,
	combout => \inst|R3[0]~5_combout\);

-- Location: LCCOMB_X22_Y39_N22
\inst|Mux40~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux40~2_combout\ = (\inst|R3\(0) & (((\inst|IR\(14)) # (!\inst|IR\(10))) # (!\inst|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|R3\(0),
	datac => \inst|IR\(10),
	datad => \inst|IR\(14),
	combout => \inst|Mux40~2_combout\);

-- Location: LCCOMB_X21_Y37_N30
\inst|Mux40~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux40~3_combout\ = (\inst|Mux40~2_combout\) # ((\inst|R3\(1) & (\inst|Decoder2~3_combout\ & \inst|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(1),
	datab => \inst|Mux40~2_combout\,
	datac => \inst|Decoder2~3_combout\,
	datad => \inst|Equal3~1_combout\,
	combout => \inst|Mux40~3_combout\);

-- Location: LCCOMB_X23_Y40_N26
\inst|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Decoder0~2_combout\ = (\inst|IR\(9) & \inst|IR\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(9),
	datad => \inst|IR\(8),
	combout => \inst|Decoder0~2_combout\);

-- Location: LCCOMB_X23_Y40_N12
\inst|Mux40~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux40~8_combout\ = (\inst|Decoder0~2_combout\ & ((\inst|Equal3~1_combout\ & (\inst|Mux32~1_combout\)) # (!\inst|Equal3~1_combout\ & ((\inst|R3\(0)))))) # (!\inst|Decoder0~2_combout\ & (((\inst|R3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux32~1_combout\,
	datab => \inst|R3\(0),
	datac => \inst|Decoder0~2_combout\,
	datad => \inst|Equal3~1_combout\,
	combout => \inst|Mux40~8_combout\);

-- Location: LCCOMB_X22_Y36_N0
\inst|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~0_combout\ = (\inst|R3\(0) & ((GND) # (!\inst|A\(0)))) # (!\inst|R3\(0) & (\inst|A\(0) $ (GND)))
-- \inst|Add7~1\ = CARRY((\inst|R3\(0)) # (!\inst|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(0),
	datab => \inst|A\(0),
	datad => VCC,
	combout => \inst|Add7~0_combout\,
	cout => \inst|Add7~1\);

-- Location: LCCOMB_X22_Y37_N4
\inst|Mux40~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux40~10_combout\ = (\inst|R3\(0) & (((!\inst|Mux56~6_combout\) # (!\inst|IR\(10))) # (!\inst|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|IR\(10),
	datac => \inst|Mux56~6_combout\,
	datad => \inst|R3\(0),
	combout => \inst|Mux40~10_combout\);

-- Location: LCCOMB_X21_Y37_N4
\inst|Mux40~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux40~6_combout\ = (\inst|Mux40~10_combout\) # ((\inst|Equal1~0_combout\ & (\inst|Add7~0_combout\ & \inst|Decoder2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|Add7~0_combout\,
	datac => \inst|Decoder2~3_combout\,
	datad => \inst|Mux40~10_combout\,
	combout => \inst|Mux40~6_combout\);

-- Location: LCCOMB_X21_Y37_N24
\inst|Mux40~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux40~4_combout\ = (\inst|Decoder2~3_combout\ & ((\inst|IR\(12) & ((\inst|Add3~0_combout\))) # (!\inst|IR\(12) & (\inst|A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(0),
	datab => \inst|Decoder2~3_combout\,
	datac => \inst|IR\(12),
	datad => \inst|Add3~0_combout\,
	combout => \inst|Mux40~4_combout\);

-- Location: LCCOMB_X21_Y37_N10
\inst|Mux40~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux40~5_combout\ = (\inst|Mux40~4_combout\) # ((\inst|R3\(0) & ((\inst|Equal1~0_combout\) # (!\inst|Decoder2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|R3\(0),
	datac => \inst|Decoder2~3_combout\,
	datad => \inst|Mux40~4_combout\,
	combout => \inst|Mux40~5_combout\);

-- Location: LCCOMB_X21_Y37_N22
\inst|Mux40~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux40~7_combout\ = (\inst|IR\(15) & (\inst|IR\(13))) # (!\inst|IR\(15) & ((\inst|IR\(13) & ((\inst|Mux40~5_combout\))) # (!\inst|IR\(13) & (\inst|Mux40~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(15),
	datab => \inst|IR\(13),
	datac => \inst|Mux40~6_combout\,
	datad => \inst|Mux40~5_combout\,
	combout => \inst|Mux40~7_combout\);

-- Location: LCCOMB_X22_Y37_N30
\inst|Mux40~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux40~9_combout\ = (\inst|IR\(15) & ((\inst|Mux40~7_combout\ & ((\inst|Mux40~8_combout\))) # (!\inst|Mux40~7_combout\ & (\inst|Mux40~3_combout\)))) # (!\inst|IR\(15) & (((\inst|Mux40~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(15),
	datab => \inst|Mux40~3_combout\,
	datac => \inst|Mux40~8_combout\,
	datad => \inst|Mux40~7_combout\,
	combout => \inst|Mux40~9_combout\);

-- Location: FF_X22_Y37_N29
\inst|R3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R3[0]~5_combout\,
	asdata => \inst|Mux40~9_combout\,
	sload => \inst|ALT_INV_status\(1),
	ena => \inst|R1[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R3\(0));

-- Location: LCCOMB_X19_Y36_N26
\inst|Mux91~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux91~5_combout\ = (\inst|Mux91~4_combout\ & ((\inst|IR\(11)) # ((!\inst|Mux91~3_combout\)))) # (!\inst|Mux91~4_combout\ & (((!\inst|Mux91~3_combout\ & \inst|Add7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|Mux91~4_combout\,
	datac => \inst|Mux91~3_combout\,
	datad => \inst|Add7~2_combout\,
	combout => \inst|Mux91~5_combout\);

-- Location: LCCOMB_X19_Y36_N16
\inst|Mux91~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux91~0_combout\ = (\inst|R0[4]~11_combout\ & (\inst|R3\(2) & (!\inst|R0[4]~12_combout\))) # (!\inst|R0[4]~11_combout\ & (((\inst|R0[4]~12_combout\) # (\inst|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(2),
	datab => \inst|R0[4]~11_combout\,
	datac => \inst|R0[4]~12_combout\,
	datad => \inst|Add3~2_combout\,
	combout => \inst|Mux91~0_combout\);

-- Location: LCCOMB_X19_Y36_N6
\inst|Mux91~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux91~1_combout\ = (\inst|R0[4]~12_combout\ & ((\inst|Mux91~0_combout\ & ((\inst|Mux31~1_combout\))) # (!\inst|Mux91~0_combout\ & (\inst|R3\(0))))) # (!\inst|R0[4]~12_combout\ & (((\inst|Mux91~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(0),
	datab => \inst|Mux31~1_combout\,
	datac => \inst|R0[4]~12_combout\,
	datad => \inst|Mux91~0_combout\,
	combout => \inst|Mux91~1_combout\);

-- Location: LCCOMB_X19_Y36_N24
\inst|R3[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3[1]~4_combout\ = (\inst|R0[4]~35_combout\ & (\inst|Mux91~5_combout\)) # (!\inst|R0[4]~35_combout\ & ((\inst|Mux91~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux91~5_combout\,
	datab => \inst|R0[4]~35_combout\,
	datad => \inst|Mux91~1_combout\,
	combout => \inst|R3[1]~4_combout\);

-- Location: FF_X19_Y36_N25
\inst|R3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R3[1]~4_combout\,
	asdata => \inst|A\(1),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R3[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R3\(1));

-- Location: LCCOMB_X19_Y38_N16
\inst|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst|IR\(9) & (\inst|IR\(8))) # (!\inst|IR\(9) & ((\inst|IR\(8) & ((\inst|R1\(1)))) # (!\inst|IR\(8) & (\inst|R0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(9),
	datab => \inst|IR\(8),
	datac => \inst|R0\(1),
	datad => \inst|R1\(1),
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y38_N30
\inst|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux6~1_combout\ = (\inst|IR\(9) & ((\inst|Mux6~0_combout\ & (\inst|R3\(1))) # (!\inst|Mux6~0_combout\ & ((\inst|R2\(1)))))) # (!\inst|IR\(9) & (((\inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(1),
	datab => \inst|R2\(1),
	datac => \inst|IR\(9),
	datad => \inst|Mux6~0_combout\,
	combout => \inst|Mux6~1_combout\);

-- Location: FF_X21_Y38_N31
\inst|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux6~1_combout\,
	ena => \inst|A[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(1));

-- Location: LCCOMB_X21_Y38_N16
\inst|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~4_combout\ = ((\inst|R2\(2) $ (\inst|A\(2) $ (\inst|Add6~3\)))) # (GND)
-- \inst|Add6~5\ = CARRY((\inst|R2\(2) & ((!\inst|Add6~3\) # (!\inst|A\(2)))) # (!\inst|R2\(2) & (!\inst|A\(2) & !\inst|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(2),
	datab => \inst|A\(2),
	datad => VCC,
	cin => \inst|Add6~3\,
	combout => \inst|Add6~4_combout\,
	cout => \inst|Add6~5\);

-- Location: LCCOMB_X21_Y39_N30
\inst|R2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2~20_combout\ = (\inst|R2\(2)) # ((\inst|IR\(11) & (!\inst|IR\(10) & \inst|A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|IR\(10),
	datac => \inst|R2\(2),
	datad => \inst|A\(2),
	combout => \inst|R2~20_combout\);

-- Location: LCCOMB_X21_Y39_N16
\inst|Mux98~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux98~2_combout\ = (\inst|IR\(12) & (((\inst|IR\(13))))) # (!\inst|IR\(12) & ((\inst|IR\(13) & ((\inst|R2~20_combout\))) # (!\inst|IR\(13) & (\inst|Add6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~4_combout\,
	datab => \inst|IR\(12),
	datac => \inst|R2~20_combout\,
	datad => \inst|IR\(13),
	combout => \inst|Mux98~2_combout\);

-- Location: LCCOMB_X21_Y39_N14
\inst|Mux98~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux98~3_combout\ = (\inst|A\(2) & (\inst|Mux98~2_combout\ $ (((\inst|IR\(12) & \inst|R2\(2)))))) # (!\inst|A\(2) & (\inst|Mux98~2_combout\ & ((\inst|R2\(2)) # (!\inst|IR\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(2),
	datab => \inst|IR\(12),
	datac => \inst|R2\(2),
	datad => \inst|Mux98~2_combout\,
	combout => \inst|Mux98~3_combout\);

-- Location: LCCOMB_X20_Y36_N30
\inst|Mux98~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux98~0_combout\ = (\inst|R0[4]~11_combout\ & ((\inst|R0[4]~12_combout\ & (\inst|R2\(1))) # (!\inst|R0[4]~12_combout\ & ((\inst|R2\(3)))))) # (!\inst|R0[4]~11_combout\ & (((\inst|R0[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(1),
	datab => \inst|R0[4]~11_combout\,
	datac => \inst|R2\(3),
	datad => \inst|R0[4]~12_combout\,
	combout => \inst|Mux98~0_combout\);

-- Location: LCCOMB_X20_Y36_N16
\inst|Mux98~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux98~1_combout\ = (\inst|Mux98~0_combout\ & ((\inst|R0[4]~11_combout\) # ((\inst|Mux30~1_combout\)))) # (!\inst|Mux98~0_combout\ & (!\inst|R0[4]~11_combout\ & ((\inst|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux98~0_combout\,
	datab => \inst|R0[4]~11_combout\,
	datac => \inst|Mux30~1_combout\,
	datad => \inst|Add2~4_combout\,
	combout => \inst|Mux98~1_combout\);

-- Location: LCCOMB_X20_Y39_N30
\inst|R2[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2[2]~7_combout\ = (\inst|R0[4]~35_combout\ & (\inst|Mux98~3_combout\)) # (!\inst|R0[4]~35_combout\ & ((\inst|Mux98~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~35_combout\,
	datab => \inst|Mux98~3_combout\,
	datad => \inst|Mux98~1_combout\,
	combout => \inst|R2[2]~7_combout\);

-- Location: FF_X20_Y39_N31
\inst|R2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R2[2]~7_combout\,
	asdata => \inst|A\(2),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R2[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R2\(2));

-- Location: LCCOMB_X22_Y39_N4
\inst|Mux97~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux97~2_combout\ = (\inst|IR\(13) & (\inst|R2\(3) $ (((!\inst|Mux69~0_combout\) # (!\inst|IR\(12)))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|Mux69~0_combout\) # (!\inst|R2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|R2\(3),
	datad => \inst|Mux69~0_combout\,
	combout => \inst|Mux97~2_combout\);

-- Location: LCCOMB_X21_Y39_N24
\inst|Mux97~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux97~4_combout\ = (\inst|Mux97~3_combout\ & ((\inst|IR\(11)) # ((!\inst|Mux97~2_combout\)))) # (!\inst|Mux97~3_combout\ & (((\inst|Add6~6_combout\ & !\inst|Mux97~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|Mux97~3_combout\,
	datac => \inst|Add6~6_combout\,
	datad => \inst|Mux97~2_combout\,
	combout => \inst|Mux97~4_combout\);

-- Location: LCCOMB_X20_Y39_N22
\inst|Mux97~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux97~0_combout\ = (\inst|R0[4]~12_combout\ & (((!\inst|R0[4]~11_combout\)))) # (!\inst|R0[4]~12_combout\ & ((\inst|R0[4]~11_combout\ & (\inst|R2\(4))) # (!\inst|R0[4]~11_combout\ & ((\inst|Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~12_combout\,
	datab => \inst|R2\(4),
	datac => \inst|Add2~6_combout\,
	datad => \inst|R0[4]~11_combout\,
	combout => \inst|Mux97~0_combout\);

-- Location: LCCOMB_X20_Y39_N0
\inst|Mux97~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux97~1_combout\ = (\inst|R0[4]~12_combout\ & ((\inst|Mux97~0_combout\ & ((\inst|Mux29~1_combout\))) # (!\inst|Mux97~0_combout\ & (\inst|R2\(2))))) # (!\inst|R0[4]~12_combout\ & (((\inst|Mux97~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(2),
	datab => \inst|R0[4]~12_combout\,
	datac => \inst|Mux97~0_combout\,
	datad => \inst|Mux29~1_combout\,
	combout => \inst|Mux97~1_combout\);

-- Location: LCCOMB_X20_Y39_N20
\inst|R2[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R2[3]~6_combout\ = (\inst|R0[4]~35_combout\ & (\inst|Mux97~4_combout\)) # (!\inst|R0[4]~35_combout\ & ((\inst|Mux97~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~35_combout\,
	datab => \inst|Mux97~4_combout\,
	datad => \inst|Mux97~1_combout\,
	combout => \inst|R2[3]~6_combout\);

-- Location: FF_X20_Y39_N21
\inst|R2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R2[3]~6_combout\,
	asdata => \inst|A\(3),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R2[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R2\(3));

-- Location: LCCOMB_X21_Y40_N8
\inst|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|IR\(8) & ((\inst|R1\(3)) # ((\inst|IR\(9))))) # (!\inst|IR\(8) & (((\inst|R0\(3) & !\inst|IR\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(3),
	datab => \inst|IR\(8),
	datac => \inst|R0\(3),
	datad => \inst|IR\(9),
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y38_N10
\inst|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux4~1_combout\ = (\inst|IR\(9) & ((\inst|Mux4~0_combout\ & ((\inst|R3\(3)))) # (!\inst|Mux4~0_combout\ & (\inst|R2\(3))))) # (!\inst|IR\(9) & (((\inst|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R2\(3),
	datab => \inst|R3\(3),
	datac => \inst|IR\(9),
	datad => \inst|Mux4~0_combout\,
	combout => \inst|Mux4~1_combout\);

-- Location: FF_X21_Y38_N11
\inst|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux4~1_combout\,
	ena => \inst|A[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(3));

-- Location: LCCOMB_X20_Y39_N6
\inst|Mux89~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux89~2_combout\ = (\inst|A\(3) & ((\inst|IR\(10)) # (\inst|IR\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(10),
	datac => \inst|A\(3),
	datad => \inst|IR\(12),
	combout => \inst|Mux89~2_combout\);

-- Location: LCCOMB_X19_Y39_N18
\inst|Mux89~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux89~3_combout\ = (\inst|IR\(13) & (\inst|R3\(3) $ (((!\inst|Mux89~2_combout\) # (!\inst|IR\(12)))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|Mux89~2_combout\) # (!\inst|R3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|R3\(3),
	datac => \inst|IR\(13),
	datad => \inst|Mux89~2_combout\,
	combout => \inst|Mux89~3_combout\);

-- Location: LCCOMB_X19_Y39_N12
\inst|Mux89~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux89~4_combout\ = (\inst|R3\(3) & (\inst|IR\(13) $ (((\inst|IR\(12) & \inst|Mux89~2_combout\))))) # (!\inst|R3\(3) & (((\inst|IR\(13) & \inst|Mux89~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|R3\(3),
	datac => \inst|IR\(13),
	datad => \inst|Mux89~2_combout\,
	combout => \inst|Mux89~4_combout\);

-- Location: LCCOMB_X19_Y39_N10
\inst|Mux89~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux89~5_combout\ = (\inst|Mux89~3_combout\ & (\inst|IR\(11) & ((\inst|Mux89~4_combout\)))) # (!\inst|Mux89~3_combout\ & (((\inst|Add7~6_combout\) # (\inst|Mux89~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|Mux89~3_combout\,
	datac => \inst|Add7~6_combout\,
	datad => \inst|Mux89~4_combout\,
	combout => \inst|Mux89~5_combout\);

-- Location: LCCOMB_X20_Y36_N2
\inst|Mux89~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux89~0_combout\ = (\inst|R0[4]~11_combout\ & (\inst|R3\(4) & ((!\inst|R0[4]~12_combout\)))) # (!\inst|R0[4]~11_combout\ & (((\inst|Add3~6_combout\) # (\inst|R0[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(4),
	datab => \inst|R0[4]~11_combout\,
	datac => \inst|Add3~6_combout\,
	datad => \inst|R0[4]~12_combout\,
	combout => \inst|Mux89~0_combout\);

-- Location: LCCOMB_X19_Y39_N16
\inst|Mux89~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux89~1_combout\ = (\inst|R0[4]~12_combout\ & ((\inst|Mux89~0_combout\ & ((\inst|Mux29~1_combout\))) # (!\inst|Mux89~0_combout\ & (\inst|R3\(2))))) # (!\inst|R0[4]~12_combout\ & (((\inst|Mux89~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(2),
	datab => \inst|Mux29~1_combout\,
	datac => \inst|R0[4]~12_combout\,
	datad => \inst|Mux89~0_combout\,
	combout => \inst|Mux89~1_combout\);

-- Location: LCCOMB_X19_Y39_N28
\inst|R3[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3[3]~6_combout\ = (\inst|R0[4]~35_combout\ & (\inst|Mux89~5_combout\)) # (!\inst|R0[4]~35_combout\ & ((\inst|Mux89~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux89~5_combout\,
	datab => \inst|R0[4]~35_combout\,
	datad => \inst|Mux89~1_combout\,
	combout => \inst|R3[3]~6_combout\);

-- Location: FF_X19_Y39_N29
\inst|R3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R3[3]~6_combout\,
	asdata => \inst|A\(3),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R3[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R3\(3));

-- Location: LCCOMB_X19_Y36_N22
\inst|Mux90~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux90~0_combout\ = (\inst|R0[4]~11_combout\ & ((\inst|R0[4]~12_combout\ & ((\inst|R3\(1)))) # (!\inst|R0[4]~12_combout\ & (\inst|R3\(3))))) # (!\inst|R0[4]~11_combout\ & (((\inst|R0[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(3),
	datab => \inst|R0[4]~11_combout\,
	datac => \inst|R0[4]~12_combout\,
	datad => \inst|R3\(1),
	combout => \inst|Mux90~0_combout\);

-- Location: LCCOMB_X19_Y36_N8
\inst|Mux90~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux90~1_combout\ = (\inst|Mux90~0_combout\ & ((\inst|Mux30~1_combout\) # ((\inst|R0[4]~11_combout\)))) # (!\inst|Mux90~0_combout\ & (((!\inst|R0[4]~11_combout\ & \inst|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux90~0_combout\,
	datab => \inst|Mux30~1_combout\,
	datac => \inst|R0[4]~11_combout\,
	datad => \inst|Add3~4_combout\,
	combout => \inst|Mux90~1_combout\);

-- Location: LCCOMB_X19_Y36_N10
\inst|R3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3~20_combout\ = (\inst|R3\(2)) # ((\inst|IR\(10) & (\inst|A\(2) & \inst|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(2),
	datab => \inst|IR\(10),
	datac => \inst|A\(2),
	datad => \inst|IR\(11),
	combout => \inst|R3~20_combout\);

-- Location: LCCOMB_X19_Y36_N20
\inst|Mux90~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux90~2_combout\ = (\inst|IR\(12) & (\inst|IR\(13))) # (!\inst|IR\(12) & ((\inst|IR\(13) & ((\inst|R3~20_combout\))) # (!\inst|IR\(13) & (\inst|Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|IR\(13),
	datac => \inst|Add7~4_combout\,
	datad => \inst|R3~20_combout\,
	combout => \inst|Mux90~2_combout\);

-- Location: LCCOMB_X19_Y36_N2
\inst|Mux90~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux90~3_combout\ = (\inst|R3\(2) & (\inst|Mux90~2_combout\ $ (((\inst|A\(2) & \inst|IR\(12)))))) # (!\inst|R3\(2) & (\inst|Mux90~2_combout\ & ((\inst|A\(2)) # (!\inst|IR\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R3\(2),
	datab => \inst|A\(2),
	datac => \inst|IR\(12),
	datad => \inst|Mux90~2_combout\,
	combout => \inst|Mux90~3_combout\);

-- Location: LCCOMB_X19_Y36_N30
\inst|R3[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R3[2]~7_combout\ = (\inst|R0[4]~35_combout\ & ((\inst|Mux90~3_combout\))) # (!\inst|R0[4]~35_combout\ & (\inst|Mux90~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~35_combout\,
	datab => \inst|Mux90~1_combout\,
	datad => \inst|Mux90~3_combout\,
	combout => \inst|R3[2]~7_combout\);

-- Location: FF_X19_Y36_N31
\inst|R3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R3[2]~7_combout\,
	asdata => \inst|A\(2),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R3[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R3\(2));

-- Location: LCCOMB_X20_Y37_N4
\inst|Mux30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux30~0_combout\ = (\inst|IR\(10) & (((\inst|IR\(11))))) # (!\inst|IR\(10) & ((\inst|IR\(11) & ((\inst|R2\(2)))) # (!\inst|IR\(11) & (\inst|R0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(2),
	datab => \inst|R2\(2),
	datac => \inst|IR\(10),
	datad => \inst|IR\(11),
	combout => \inst|Mux30~0_combout\);

-- Location: LCCOMB_X20_Y35_N24
\inst|Mux30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux30~1_combout\ = (\inst|IR\(10) & ((\inst|Mux30~0_combout\ & ((\inst|R3\(2)))) # (!\inst|Mux30~0_combout\ & (\inst|R1\(2))))) # (!\inst|IR\(10) & (((\inst|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(2),
	datab => \inst|R3\(2),
	datac => \inst|IR\(10),
	datad => \inst|Mux30~0_combout\,
	combout => \inst|Mux30~1_combout\);

-- Location: LCCOMB_X22_Y37_N6
\inst|Mux106~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux106~0_combout\ = (\inst|R0[4]~12_combout\ & ((\inst|R1\(1)) # ((!\inst|R0[4]~11_combout\)))) # (!\inst|R0[4]~12_combout\ & (((\inst|R1\(3) & \inst|R0[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(1),
	datab => \inst|R1\(3),
	datac => \inst|R0[4]~12_combout\,
	datad => \inst|R0[4]~11_combout\,
	combout => \inst|Mux106~0_combout\);

-- Location: LCCOMB_X23_Y37_N20
\inst|Mux106~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux106~1_combout\ = (\inst|Mux106~0_combout\ & ((\inst|Mux30~1_combout\) # ((\inst|R0[4]~11_combout\)))) # (!\inst|Mux106~0_combout\ & (((\inst|Add1~4_combout\ & !\inst|R0[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux30~1_combout\,
	datab => \inst|Mux106~0_combout\,
	datac => \inst|Add1~4_combout\,
	datad => \inst|R0[4]~11_combout\,
	combout => \inst|Mux106~1_combout\);

-- Location: LCCOMB_X18_Y37_N16
\inst|R1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1~17_combout\ = (\inst|R1\(2)) # ((\inst|A\(2) & (\inst|IR\(10) & !\inst|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(2),
	datab => \inst|R1\(2),
	datac => \inst|IR\(10),
	datad => \inst|IR\(11),
	combout => \inst|R1~17_combout\);

-- Location: LCCOMB_X18_Y37_N30
\inst|Mux106~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux106~2_combout\ = (\inst|IR\(13) & ((\inst|IR\(12)) # ((\inst|R1~17_combout\)))) # (!\inst|IR\(13) & (!\inst|IR\(12) & (\inst|Add5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|Add5~4_combout\,
	datad => \inst|R1~17_combout\,
	combout => \inst|Mux106~2_combout\);

-- Location: LCCOMB_X18_Y37_N24
\inst|Mux106~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux106~3_combout\ = (\inst|R1\(2) & (\inst|Mux106~2_combout\ $ (((\inst|IR\(12) & \inst|A\(2)))))) # (!\inst|R1\(2) & (\inst|Mux106~2_combout\ & ((\inst|A\(2)) # (!\inst|IR\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(2),
	datab => \inst|IR\(12),
	datac => \inst|Mux106~2_combout\,
	datad => \inst|A\(2),
	combout => \inst|Mux106~3_combout\);

-- Location: LCCOMB_X18_Y37_N8
\inst|R1[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R1[2]~7_combout\ = (\inst|R0[4]~35_combout\ & ((\inst|Mux106~3_combout\))) # (!\inst|R0[4]~35_combout\ & (\inst|Mux106~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux106~1_combout\,
	datab => \inst|R0[4]~35_combout\,
	datad => \inst|Mux106~3_combout\,
	combout => \inst|R1[2]~7_combout\);

-- Location: FF_X18_Y37_N9
\inst|R1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R1[2]~7_combout\,
	asdata => \inst|A\(2),
	sload => \inst|R1[1]~11_combout\,
	ena => \inst|R1[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R1\(2));

-- Location: LCCOMB_X21_Y39_N20
\inst|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst|IR\(9) & (((\inst|R2\(2)) # (\inst|IR\(8))))) # (!\inst|IR\(9) & (\inst|R0\(2) & ((!\inst|IR\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(2),
	datab => \inst|R2\(2),
	datac => \inst|IR\(9),
	datad => \inst|IR\(8),
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y38_N8
\inst|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = (\inst|IR\(8) & ((\inst|Mux5~0_combout\ & ((\inst|R3\(2)))) # (!\inst|Mux5~0_combout\ & (\inst|R1\(2))))) # (!\inst|IR\(8) & (((\inst|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R1\(2),
	datab => \inst|IR\(8),
	datac => \inst|R3\(2),
	datad => \inst|Mux5~0_combout\,
	combout => \inst|Mux5~1_combout\);

-- Location: FF_X21_Y38_N9
\inst|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux5~1_combout\,
	ena => \inst|A[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(2));

-- Location: LCCOMB_X22_Y39_N12
\inst|Mux70~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux70~6_combout\ = (\inst|R0[2]~17_combout\ & (((\inst|Add0~4_combout\) # (\inst|R0[2]~19_combout\)))) # (!\inst|R0[2]~17_combout\ & (\inst|IR\(10) & ((!\inst|R0[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|Add0~4_combout\,
	datac => \inst|R0[2]~17_combout\,
	datad => \inst|R0[2]~19_combout\,
	combout => \inst|Mux70~6_combout\);

-- Location: LCCOMB_X21_Y39_N4
\inst|Mux70~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux70~0_combout\ = (\inst|A\(2) & ((\inst|IR\(12)) # (!\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|IR\(10),
	datad => \inst|A\(2),
	combout => \inst|Mux70~0_combout\);

-- Location: LCCOMB_X21_Y39_N8
\inst|Mux70~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux70~2_combout\ = (\inst|R0\(2) & (\inst|IR\(13) $ (((\inst|Mux70~0_combout\ & \inst|IR\(12)))))) # (!\inst|R0\(2) & (\inst|IR\(13) & (\inst|Mux70~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(2),
	datab => \inst|IR\(13),
	datac => \inst|Mux70~0_combout\,
	datad => \inst|IR\(12),
	combout => \inst|Mux70~2_combout\);

-- Location: LCCOMB_X21_Y39_N22
\inst|Mux70~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux70~1_combout\ = (\inst|IR\(13) & (\inst|R0\(2) $ (((!\inst|IR\(12)) # (!\inst|Mux70~0_combout\))))) # (!\inst|IR\(13) & (\inst|IR\(12) & ((!\inst|Mux70~0_combout\) # (!\inst|R0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(2),
	datab => \inst|IR\(13),
	datac => \inst|Mux70~0_combout\,
	datad => \inst|IR\(12),
	combout => \inst|Mux70~1_combout\);

-- Location: LCCOMB_X21_Y39_N10
\inst|Mux70~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux70~3_combout\ = (\inst|Mux70~2_combout\ & (((!\inst|Mux70~1_combout\)) # (!\inst|IR\(11)))) # (!\inst|Mux70~2_combout\ & (((!\inst|Mux70~1_combout\ & \inst|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|Mux70~2_combout\,
	datac => \inst|Mux70~1_combout\,
	datad => \inst|Add4~4_combout\,
	combout => \inst|Mux70~3_combout\);

-- Location: LCCOMB_X21_Y39_N28
\inst|Mux70~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux70~4_combout\ = (\inst|R0[4]~12_combout\ & (((!\inst|R0[4]~11_combout\)))) # (!\inst|R0[4]~12_combout\ & ((\inst|R0[4]~11_combout\ & (\inst|R0\(3))) # (!\inst|R0[4]~11_combout\ & ((\inst|Mux70~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~12_combout\,
	datab => \inst|R0\(3),
	datac => \inst|R0[4]~11_combout\,
	datad => \inst|Mux70~3_combout\,
	combout => \inst|Mux70~4_combout\);

-- Location: LCCOMB_X21_Y39_N18
\inst|Mux70~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux70~5_combout\ = (\inst|R0[4]~12_combout\ & ((\inst|Mux70~4_combout\ & (\inst|Mux30~1_combout\)) # (!\inst|Mux70~4_combout\ & ((\inst|R0\(1)))))) # (!\inst|R0[4]~12_combout\ & (((\inst|Mux70~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux30~1_combout\,
	datab => \inst|R0[4]~12_combout\,
	datac => \inst|R0\(1),
	datad => \inst|Mux70~4_combout\,
	combout => \inst|Mux70~5_combout\);

-- Location: LCCOMB_X21_Y39_N0
\inst|Mux70~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux70~7_combout\ = (\inst|Mux70~6_combout\ & ((\inst|A\(2)) # ((!\inst|R0[2]~19_combout\)))) # (!\inst|Mux70~6_combout\ & (((\inst|R0[2]~19_combout\ & \inst|Mux70~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(2),
	datab => \inst|Mux70~6_combout\,
	datac => \inst|R0[2]~19_combout\,
	datad => \inst|Mux70~5_combout\,
	combout => \inst|Mux70~7_combout\);

-- Location: LCCOMB_X21_Y39_N12
\inst|R0[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[2]~feeder_combout\ = \inst|Mux70~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux70~7_combout\,
	combout => \inst|R0[2]~feeder_combout\);

-- Location: FF_X21_Y39_N13
\inst|R0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R0[2]~feeder_combout\,
	asdata => \inst2|altsyncram_component|auto_generated|q_a\(2),
	sload => \inst|status\(2),
	ena => \inst|R0[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R0\(2));

-- Location: FF_X22_Y39_N29
\inst|MDR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|R0\(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|MDR[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR\(2));

-- Location: FF_X23_Y39_N23
\inst|IR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst2|altsyncram_component|auto_generated|q_a\(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|Decoder3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(10));

-- Location: LCCOMB_X25_Y40_N28
\inst|Decoder2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Decoder2~0_combout\ = (\inst|IR\(11)) # (\inst|IR\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(11),
	datad => \inst|IR\(10),
	combout => \inst|Decoder2~0_combout\);

-- Location: LCCOMB_X22_Y38_N10
\inst|R0[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[1]~26_combout\ = (\inst|Decoder2~0_combout\ & (\inst|R0\(1))) # (!\inst|Decoder2~0_combout\ & ((\inst|Equal3~0_combout\ & ((\inst|A\(1)))) # (!\inst|Equal3~0_combout\ & (\inst|R0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder2~0_combout\,
	datab => \inst|R0\(1),
	datac => \inst|Equal3~0_combout\,
	datad => \inst|A\(1),
	combout => \inst|R0[1]~26_combout\);

-- Location: LCCOMB_X23_Y39_N28
\inst|Mux63~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux63~0_combout\ = (\inst|IR\(13) & ((\inst|IR\(9)) # ((\inst|IR\(8))))) # (!\inst|IR\(13) & (((\inst|R0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(9),
	datab => \inst|IR\(13),
	datac => \inst|IR\(8),
	datad => \inst|R0\(0),
	combout => \inst|Mux63~0_combout\);

-- Location: LCCOMB_X22_Y39_N6
\inst|Mux63~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux63~1_combout\ = (\inst|IR\(13) & ((\inst|IR\(12)) # ((\inst|Mux63~0_combout\)))) # (!\inst|IR\(13) & ((\inst|IR\(12) & ((\inst|Mux63~0_combout\))) # (!\inst|IR\(12) & (\inst|R0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|R0\(2),
	datad => \inst|Mux63~0_combout\,
	combout => \inst|Mux63~1_combout\);

-- Location: LCCOMB_X18_Y38_N0
\inst|Mux63~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux63~2_combout\ = (\inst|IR\(13) & (((\inst|Mux31~1_combout\)))) # (!\inst|IR\(13) & ((\inst|IR\(10)) # ((\inst|IR\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(11),
	datac => \inst|Mux31~1_combout\,
	datad => \inst|IR\(13),
	combout => \inst|Mux63~2_combout\);

-- Location: LCCOMB_X21_Y39_N6
\inst|Mux63~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux63~3_combout\ = (\inst|Mux63~1_combout\ & ((\inst|R0\(1)) # ((!\inst|IR\(13) & !\inst|Mux63~2_combout\)))) # (!\inst|Mux63~1_combout\ & (\inst|Mux63~2_combout\ & ((\inst|IR\(13)) # (\inst|R0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux63~1_combout\,
	datab => \inst|IR\(13),
	datac => \inst|R0\(1),
	datad => \inst|Mux63~2_combout\,
	combout => \inst|Mux63~3_combout\);

-- Location: LCCOMB_X22_Y38_N8
\inst|R0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0~37_combout\ = (\inst|IR\(10) & (\inst|R0\(1))) # (!\inst|IR\(10) & ((\inst|IR\(11) & (\inst|R0\(1))) # (!\inst|IR\(11) & ((\inst|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|R0\(1),
	datac => \inst|IR\(11),
	datad => \inst|Add0~2_combout\,
	combout => \inst|R0~37_combout\);

-- Location: LCCOMB_X18_Y38_N10
\inst|R0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0~27_combout\ = (\inst|IR\(10) & (\inst|R0\(1))) # (!\inst|IR\(10) & ((\inst|IR\(11) & (\inst|R0\(1))) # (!\inst|IR\(11) & ((\inst|A\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|R0\(1),
	datac => \inst|A\(1),
	datad => \inst|IR\(11),
	combout => \inst|R0~27_combout\);

-- Location: LCCOMB_X18_Y38_N16
\inst|Mux63~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux63~9_combout\ = (\inst|IR\(13) & (((\inst|IR\(12)) # (\inst|R0~27_combout\)))) # (!\inst|IR\(13) & (\inst|R0\(1) & (!\inst|IR\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|R0\(1),
	datac => \inst|IR\(12),
	datad => \inst|R0~27_combout\,
	combout => \inst|Mux63~9_combout\);

-- Location: LCCOMB_X22_Y38_N4
\inst|Mux63~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux63~10_combout\ = (\inst|IR\(12) & ((\inst|Mux63~9_combout\ & ((\inst|R0~37_combout\))) # (!\inst|Mux63~9_combout\ & (\inst|IR\(9))))) # (!\inst|IR\(12) & (((\inst|Mux63~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(9),
	datab => \inst|IR\(12),
	datac => \inst|R0~37_combout\,
	datad => \inst|Mux63~9_combout\,
	combout => \inst|Mux63~10_combout\);

-- Location: LCCOMB_X23_Y38_N30
\inst|Mux63~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux63~7_combout\ = (!\inst|IR\(11) & (!\inst|IR\(10) & \inst|A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(11),
	datac => \inst|IR\(10),
	datad => \inst|A\(1),
	combout => \inst|Mux63~7_combout\);

-- Location: LCCOMB_X23_Y38_N26
\inst|Mux63~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux63~4_combout\ = (\inst|IR\(11)) # ((\inst|IR\(10)) # (\inst|A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(11),
	datac => \inst|IR\(10),
	datad => \inst|A\(1),
	combout => \inst|Mux63~4_combout\);

-- Location: LCCOMB_X23_Y38_N2
\inst|Mux63~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux63~5_combout\ = (\inst|IR\(12) & (\inst|R0\(1))) # (!\inst|IR\(12) & ((\inst|Decoder2~0_combout\ & (\inst|R0\(1))) # (!\inst|Decoder2~0_combout\ & ((\inst|Add4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(1),
	datab => \inst|IR\(12),
	datac => \inst|Decoder2~0_combout\,
	datad => \inst|Add4~2_combout\,
	combout => \inst|Mux63~5_combout\);

-- Location: LCCOMB_X23_Y38_N28
\inst|Mux63~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux63~6_combout\ = (\inst|IR\(13) & (\inst|IR\(12))) # (!\inst|IR\(13) & (\inst|Mux63~5_combout\ & ((\inst|Mux63~4_combout\) # (!\inst|IR\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|Mux63~4_combout\,
	datad => \inst|Mux63~5_combout\,
	combout => \inst|Mux63~6_combout\);

-- Location: LCCOMB_X23_Y38_N24
\inst|Mux63~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux63~8_combout\ = (\inst|IR\(13) & ((\inst|R0\(1) & ((!\inst|Mux63~6_combout\) # (!\inst|Mux63~7_combout\))) # (!\inst|R0\(1) & (\inst|Mux63~7_combout\)))) # (!\inst|IR\(13) & (((\inst|Mux63~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(1),
	datab => \inst|IR\(13),
	datac => \inst|Mux63~7_combout\,
	datad => \inst|Mux63~6_combout\,
	combout => \inst|Mux63~8_combout\);

-- Location: LCCOMB_X22_Y38_N6
\inst|Mux63~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux63~11_combout\ = (\inst|IR\(15) & (\inst|IR\(14))) # (!\inst|IR\(15) & ((\inst|IR\(14) & ((\inst|Mux63~8_combout\))) # (!\inst|IR\(14) & (\inst|Mux63~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(15),
	datab => \inst|IR\(14),
	datac => \inst|Mux63~10_combout\,
	datad => \inst|Mux63~8_combout\,
	combout => \inst|Mux63~11_combout\);

-- Location: LCCOMB_X22_Y38_N0
\inst|Mux63~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux63~12_combout\ = (\inst|IR\(15) & ((\inst|Mux63~11_combout\ & (\inst|R0\(1))) # (!\inst|Mux63~11_combout\ & ((\inst|Mux63~3_combout\))))) # (!\inst|IR\(15) & (((\inst|Mux63~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(1),
	datab => \inst|IR\(15),
	datac => \inst|Mux63~3_combout\,
	datad => \inst|Mux63~11_combout\,
	combout => \inst|Mux63~12_combout\);

-- Location: LCCOMB_X22_Y38_N2
\inst|R0[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[1]~28_combout\ = (\inst|status\(1) & (\inst|R0[1]~26_combout\)) # (!\inst|status\(1) & ((\inst|Mux63~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[1]~26_combout\,
	datab => \inst|status\(1),
	datad => \inst|Mux63~12_combout\,
	combout => \inst|R0[1]~28_combout\);

-- Location: FF_X25_Y38_N31
\inst|R0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R0[1]~1_combout\,
	asdata => \inst|R0[1]~28_combout\,
	sload => \inst|ALT_INV_status\(2),
	ena => \inst|R0[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R0\(1));

-- Location: LCCOMB_X25_Y37_N12
\inst|always1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|always1~1_combout\ = (!\inst|R0\(1) & (!\inst|R0\(7) & (!\inst|R0\(0) & !\inst|R0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(1),
	datab => \inst|R0\(7),
	datac => \inst|R0\(0),
	datad => \inst|R0\(2),
	combout => \inst|always1~1_combout\);

-- Location: LCCOMB_X25_Y41_N0
\inst|always1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|always1~2_combout\ = (\inst|Equal6~0_combout\ & (\inst|always1~0_combout\ & \inst|always1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~0_combout\,
	datac => \inst|always1~0_combout\,
	datad => \inst|always1~1_combout\,
	combout => \inst|always1~2_combout\);

-- Location: LCCOMB_X25_Y41_N24
\inst|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = (\inst|MDR[7]~0_combout\ & ((\inst|Equal5~0_combout\) # ((\inst|always1~2_combout\) # (!\inst|MAR[11]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datab => \inst|MAR[11]~0_combout\,
	datac => \inst|MDR[7]~0_combout\,
	datad => \inst|always1~2_combout\,
	combout => \inst|Mux11~0_combout\);

-- Location: LCCOMB_X21_Y41_N10
\inst|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux18~0_combout\ = (\inst|Mux11~0_combout\ & (\inst|IR\(4))) # (!\inst|Mux11~0_combout\ & ((\inst|PC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datac => \inst|PC\(4),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux18~0_combout\);

-- Location: FF_X21_Y41_N11
\inst|MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux18~0_combout\,
	ena => \inst|MAR[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(4));

-- Location: LCCOMB_X26_Y39_N20
\inst|Mux113~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux113~0_combout\ = (\inst|status\(1) & \inst2|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|status\(1),
	datac => \inst2|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst|Mux113~0_combout\);

-- Location: FF_X26_Y39_N21
\inst|IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux113~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(3));

-- Location: LCCOMB_X23_Y41_N10
\inst|Mux81~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux81~0_combout\ = (\inst|Mux73~0_combout\ & ((\inst|IR\(3)))) # (!\inst|Mux73~0_combout\ & (\inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datac => \inst|IR\(3),
	datad => \inst|Mux73~0_combout\,
	combout => \inst|Mux81~0_combout\);

-- Location: FF_X22_Y41_N13
\inst|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|PC[3]~18_combout\,
	asdata => \inst|Mux81~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \inst|write_read~1_combout\,
	ena => \inst|PC[3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(3));

-- Location: LCCOMB_X23_Y41_N18
\inst|Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux19~0_combout\ = (\inst|Mux11~0_combout\ & ((\inst|IR\(3)))) # (!\inst|Mux11~0_combout\ & (\inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datac => \inst|IR\(3),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux19~0_combout\);

-- Location: FF_X23_Y41_N19
\inst|MAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux19~0_combout\,
	ena => \inst|MAR[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(3));

-- Location: LCCOMB_X25_Y41_N4
\inst|IR[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|IR[15]~feeder_combout\ = \inst2|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst|IR[15]~feeder_combout\);

-- Location: FF_X25_Y41_N5
\inst|IR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|IR[15]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|Decoder3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(15));

-- Location: LCCOMB_X26_Y38_N12
\inst|Decoder3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Decoder3~1_combout\ = (!\inst|status\(2) & !\inst|status\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|status\(2),
	datad => \inst|status\(1),
	combout => \inst|Decoder3~1_combout\);

-- Location: LCCOMB_X26_Y38_N0
\inst|R0[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[4]~9_combout\ = ((\inst|IR\(13) & (!\inst|IR\(15) & \inst|Equal3~1_combout\))) # (!\inst|Decoder3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(15),
	datac => \inst|Equal3~1_combout\,
	datad => \inst|Decoder3~1_combout\,
	combout => \inst|R0[4]~9_combout\);

-- Location: LCCOMB_X18_Y38_N18
\inst|Mux66~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux66~0_combout\ = (\inst|IR\(12) & (((!\inst|R0\(6))))) # (!\inst|IR\(12) & ((\inst|R0\(6)) # ((!\inst|IR\(10) & !\inst|IR\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(11),
	datac => \inst|IR\(12),
	datad => \inst|R0\(6),
	combout => \inst|Mux66~0_combout\);

-- Location: LCCOMB_X19_Y38_N14
\inst|Mux66~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux66~1_combout\ = (\inst|A\(6) & ((\inst|Mux66~0_combout\ $ (!\inst|IR\(13))))) # (!\inst|A\(6) & (\inst|R0\(6) & ((\inst|IR\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(6),
	datab => \inst|Mux66~0_combout\,
	datac => \inst|A\(6),
	datad => \inst|IR\(13),
	combout => \inst|Mux66~1_combout\);

-- Location: LCCOMB_X23_Y38_N0
\inst|Mux66~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux66~2_combout\ = (\inst|IR\(13) & (((\inst|Mux66~1_combout\)))) # (!\inst|IR\(13) & ((\inst|IR\(12) & ((\inst|Mux66~1_combout\))) # (!\inst|IR\(12) & (\inst|Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|Add4~12_combout\,
	datac => \inst|IR\(12),
	datad => \inst|Mux66~1_combout\,
	combout => \inst|Mux66~2_combout\);

-- Location: LCCOMB_X23_Y39_N2
\inst|Mux66~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux66~3_combout\ = (\inst|IR\(13) & ((\inst|R0[4]~12_combout\ & (\inst|Mux26~1_combout\)) # (!\inst|R0[4]~12_combout\ & ((\inst|Add0~12_combout\))))) # (!\inst|IR\(13) & (((\inst|R0[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux26~1_combout\,
	datab => \inst|IR\(13),
	datac => \inst|R0[4]~12_combout\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|Mux66~3_combout\);

-- Location: LCCOMB_X23_Y39_N20
\inst|Mux66~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux66~4_combout\ = (\inst|R0[4]~11_combout\ & ((\inst|Mux66~3_combout\ & (\inst|R0\(5))) # (!\inst|Mux66~3_combout\ & ((\inst|R0\(7)))))) # (!\inst|R0[4]~11_combout\ & (((\inst|Mux66~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(5),
	datab => \inst|R0[4]~11_combout\,
	datac => \inst|R0\(7),
	datad => \inst|Mux66~3_combout\,
	combout => \inst|Mux66~4_combout\);

-- Location: LCCOMB_X23_Y39_N6
\inst|Mux66~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux66~5_combout\ = (\inst|R0[4]~10_combout\ & ((\inst|Mux66~2_combout\) # ((\inst|R0[4]~9_combout\)))) # (!\inst|R0[4]~10_combout\ & (((!\inst|R0[4]~9_combout\ & \inst|Mux66~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux66~2_combout\,
	datab => \inst|R0[4]~10_combout\,
	datac => \inst|R0[4]~9_combout\,
	datad => \inst|Mux66~4_combout\,
	combout => \inst|Mux66~5_combout\);

-- Location: LCCOMB_X23_Y39_N12
\inst|Mux66~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux66~6_combout\ = (\inst|R0[4]~9_combout\ & ((\inst|Mux66~5_combout\ & ((\inst2|altsyncram_component|auto_generated|q_a\(6)))) # (!\inst|Mux66~5_combout\ & (\inst|A\(6))))) # (!\inst|R0[4]~9_combout\ & (((\inst|Mux66~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0[4]~9_combout\,
	datab => \inst|A\(6),
	datac => \inst2|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst|Mux66~5_combout\,
	combout => \inst|Mux66~6_combout\);

-- Location: FF_X23_Y39_N13
\inst|R0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux66~6_combout\,
	ena => \inst|R0[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R0\(6));

-- Location: LCCOMB_X23_Y40_N0
\inst|always1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|always1~0_combout\ = (!\inst|R0\(6) & (!\inst|R0\(4) & (!\inst|R0\(5) & !\inst|R0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(6),
	datab => \inst|R0\(4),
	datac => \inst|R0\(5),
	datad => \inst|R0\(3),
	combout => \inst|always1~0_combout\);

-- Location: LCCOMB_X25_Y41_N16
\inst|Mux73~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux73~0_combout\ = (\inst|Equal5~0_combout\) # ((\inst|always1~0_combout\ & (\inst|always1~1_combout\ & \inst|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|always1~0_combout\,
	datab => \inst|always1~1_combout\,
	datac => \inst|Equal6~0_combout\,
	datad => \inst|Equal5~0_combout\,
	combout => \inst|Mux73~0_combout\);

-- Location: LCCOMB_X23_Y41_N30
\inst|Mux84~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux84~0_combout\ = (\inst|Mux73~0_combout\ & (\inst|IR\(0))) # (!\inst|Mux73~0_combout\ & ((\inst|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datac => \inst|PC\(0),
	datad => \inst|Mux73~0_combout\,
	combout => \inst|Mux84~0_combout\);

-- Location: FF_X22_Y41_N7
\inst|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|PC[0]~12_combout\,
	asdata => \inst|Mux84~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \inst|write_read~1_combout\,
	ena => \inst|PC[3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(0));

-- Location: LCCOMB_X22_Y41_N8
\inst|PC[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PC[1]~14_combout\ = (\inst|PC\(1) & (!\inst|PC[0]~13\)) # (!\inst|PC\(1) & ((\inst|PC[0]~13\) # (GND)))
-- \inst|PC[1]~15\ = CARRY((!\inst|PC[0]~13\) # (!\inst|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(1),
	datad => VCC,
	cin => \inst|PC[0]~13\,
	combout => \inst|PC[1]~14_combout\,
	cout => \inst|PC[1]~15\);

-- Location: LCCOMB_X23_Y41_N12
\inst|Mux83~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux83~0_combout\ = (\inst|Mux73~0_combout\ & (\inst|IR\(1))) # (!\inst|Mux73~0_combout\ & ((\inst|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(1),
	datac => \inst|PC\(1),
	datad => \inst|Mux73~0_combout\,
	combout => \inst|Mux83~0_combout\);

-- Location: FF_X22_Y41_N9
\inst|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|PC[1]~14_combout\,
	asdata => \inst|Mux83~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \inst|write_read~1_combout\,
	ena => \inst|PC[3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(1));

-- Location: LCCOMB_X22_Y39_N2
\inst|Mux114~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux114~0_combout\ = (\inst2|altsyncram_component|auto_generated|q_a\(2) & \inst|status\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst|status\(1),
	combout => \inst|Mux114~0_combout\);

-- Location: FF_X22_Y39_N3
\inst|IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux114~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(2));

-- Location: LCCOMB_X22_Y41_N30
\inst|Mux82~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux82~0_combout\ = (\inst|Mux73~0_combout\ & ((\inst|IR\(2)))) # (!\inst|Mux73~0_combout\ & (\inst|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datab => \inst|IR\(2),
	datac => \inst|Mux73~0_combout\,
	combout => \inst|Mux82~0_combout\);

-- Location: FF_X22_Y41_N11
\inst|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|PC[2]~16_combout\,
	asdata => \inst|Mux82~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \inst|write_read~1_combout\,
	ena => \inst|PC[3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(2));

-- Location: LCCOMB_X22_Y41_N2
\inst|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux20~0_combout\ = (\inst|Mux11~0_combout\ & ((\inst|IR\(2)))) # (!\inst|Mux11~0_combout\ & (\inst|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datab => \inst|IR\(2),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux20~0_combout\);

-- Location: FF_X22_Y41_N3
\inst|MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux20~0_combout\,
	ena => \inst|MAR[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(2));

-- Location: LCCOMB_X23_Y41_N24
\inst|Mux115~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux115~0_combout\ = (\inst|status\(1) & \inst2|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|status\(1),
	datac => \inst2|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst|Mux115~0_combout\);

-- Location: FF_X23_Y41_N25
\inst|IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux115~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(1));

-- Location: LCCOMB_X23_Y41_N16
\inst|Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux21~0_combout\ = (\inst|Mux11~0_combout\ & (\inst|IR\(1))) # (!\inst|Mux11~0_combout\ & ((\inst|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(1),
	datac => \inst|PC\(1),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux21~0_combout\);

-- Location: FF_X23_Y41_N17
\inst|MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux21~0_combout\,
	ena => \inst|MAR[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(1));

-- Location: LCCOMB_X25_Y41_N10
\inst|IR[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|IR[13]~feeder_combout\ = \inst2|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst|IR[13]~feeder_combout\);

-- Location: FF_X25_Y41_N11
\inst|IR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|IR[13]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|Decoder3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(13));

-- Location: LCCOMB_X25_Y40_N14
\inst|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|IR\(13) & \inst|IR\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datad => \inst|IR\(15),
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X25_Y40_N30
\inst|Mux9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux9~5_combout\ = ((\inst|IR\(12) & (\inst|IR\(14) & \inst|Equal1~1_combout\))) # (!\inst|status\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|IR\(14),
	datac => \inst|status\(0),
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Mux9~5_combout\);

-- Location: LCCOMB_X25_Y39_N28
\inst|status[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|status[0]~0_combout\ = (\inst|status\(1) & ((!\inst|Mux9~3_combout\))) # (!\inst|status\(1) & (\inst|Mux9~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux9~5_combout\,
	datab => \inst|status\(1),
	datad => \inst|Mux9~3_combout\,
	combout => \inst|status[0]~0_combout\);

-- Location: FF_X25_Y39_N29
\inst|status[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|status[0]~0_combout\,
	asdata => \inst|status\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \inst|status\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|status\(0));

-- Location: LCCOMB_X25_Y39_N6
\inst|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux9~3_combout\ = (\inst|status\(0)) # (\inst|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|status\(0),
	datad => \inst|Equal3~0_combout\,
	combout => \inst|Mux9~3_combout\);

-- Location: LCCOMB_X25_Y40_N20
\inst|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux9~2_combout\ = (\inst|IR\(15) & ((\inst|IR\(14) & ((!\inst|IR\(13)) # (!\inst|IR\(12)))) # (!\inst|IR\(14) & ((\inst|IR\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|IR\(14),
	datac => \inst|IR\(13),
	datad => \inst|IR\(15),
	combout => \inst|Mux9~2_combout\);

-- Location: LCCOMB_X25_Y39_N18
\inst|Mux9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux9~6_combout\ = (\inst|Mux9~2_combout\ & (!\inst|status\(1) & (\inst|status\(0) & !\inst|status\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux9~2_combout\,
	datab => \inst|status\(1),
	datac => \inst|status\(0),
	datad => \inst|status\(2),
	combout => \inst|Mux9~6_combout\);

-- Location: LCCOMB_X25_Y39_N4
\inst|Mux9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux9~4_combout\ = (\inst|Mux9~6_combout\) # ((\inst|status\(1) & ((\inst|status\(2)) # (!\inst|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux9~3_combout\,
	datab => \inst|status\(2),
	datac => \inst|status\(1),
	datad => \inst|Mux9~6_combout\,
	combout => \inst|Mux9~4_combout\);

-- Location: FF_X25_Y39_N5
\inst|status[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux9~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|status\(1));

-- Location: LCCOMB_X23_Y41_N22
\inst|Mux116~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux116~0_combout\ = (\inst|status\(1) & \inst2|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|status\(1),
	datad => \inst2|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|Mux116~0_combout\);

-- Location: FF_X23_Y41_N23
\inst|IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux116~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(0));

-- Location: LCCOMB_X23_Y41_N2
\inst|Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux22~0_combout\ = (\inst|Mux11~0_combout\ & (\inst|IR\(0))) # (!\inst|Mux11~0_combout\ & ((\inst|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datac => \inst|PC\(0),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux22~0_combout\);

-- Location: FF_X23_Y41_N3
\inst|MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux22~0_combout\,
	ena => \inst|MAR[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(0));

-- Location: LCCOMB_X25_Y41_N14
\inst|IR[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|IR[12]~feeder_combout\ = \inst2|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst|IR[12]~feeder_combout\);

-- Location: FF_X25_Y41_N15
\inst|IR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|IR[12]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|Decoder3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(12));

-- Location: LCCOMB_X26_Y38_N6
\inst|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = ((\inst|IR\(13)) # ((!\inst|IR\(14)) # (!\inst|IR\(15)))) # (!\inst|IR\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(12),
	datab => \inst|IR\(13),
	datac => \inst|IR\(15),
	datad => \inst|IR\(14),
	combout => \inst|Equal7~0_combout\);

-- Location: LCCOMB_X25_Y38_N0
\inst|R0[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[0]~2_combout\ = (\inst|Equal7~0_combout\ & (\inst|R0\(0))) # (!\inst|Equal7~0_combout\ & ((\inst2|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~0_combout\,
	datac => \inst|R0\(0),
	datad => \inst2|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|R0[0]~2_combout\);

-- Location: LCCOMB_X25_Y38_N14
\inst|R0[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[0]~29_combout\ = (\inst|Equal3~0_combout\ & ((\inst|Decoder2~0_combout\ & ((\inst|R0\(0)))) # (!\inst|Decoder2~0_combout\ & (\inst|A\(0))))) # (!\inst|Equal3~0_combout\ & (((\inst|R0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(0),
	datab => \inst|R0\(0),
	datac => \inst|Equal3~0_combout\,
	datad => \inst|Decoder2~0_combout\,
	combout => \inst|R0[0]~29_combout\);

-- Location: LCCOMB_X25_Y37_N14
\inst|R0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0~31_combout\ = (\inst|R0\(1) & (!\inst|IR\(11) & !\inst|IR\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(1),
	datab => \inst|IR\(11),
	datad => \inst|IR\(10),
	combout => \inst|R0~31_combout\);

-- Location: LCCOMB_X25_Y37_N20
\inst|R0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0~32_combout\ = (\inst|R0\(0) & ((\inst|IR\(11)) # (\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(0),
	datac => \inst|IR\(11),
	datad => \inst|IR\(10),
	combout => \inst|R0~32_combout\);

-- Location: LCCOMB_X25_Y37_N26
\inst|Mux64~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux64~2_combout\ = (\inst|IR\(13) & (\inst|IR\(12))) # (!\inst|IR\(13) & ((\inst|R0~32_combout\) # ((!\inst|IR\(12) & \inst|R0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|R0~31_combout\,
	datad => \inst|R0~32_combout\,
	combout => \inst|Mux64~2_combout\);

-- Location: LCCOMB_X25_Y37_N24
\inst|R0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0~30_combout\ = (\inst|IR\(9) & (((\inst|R0\(0))))) # (!\inst|IR\(9) & ((\inst|IR\(8) & (\inst|R0\(0))) # (!\inst|IR\(8) & ((\inst|Mux32~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(9),
	datab => \inst|IR\(8),
	datac => \inst|R0\(0),
	datad => \inst|Mux32~1_combout\,
	combout => \inst|R0~30_combout\);

-- Location: LCCOMB_X25_Y37_N0
\inst|Mux64~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux64~3_combout\ = (\inst|IR\(13) & ((\inst|Mux64~2_combout\ & (\inst|R0\(0))) # (!\inst|Mux64~2_combout\ & ((\inst|R0~30_combout\))))) # (!\inst|IR\(13) & (\inst|Mux64~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|Mux64~2_combout\,
	datac => \inst|R0\(0),
	datad => \inst|R0~30_combout\,
	combout => \inst|Mux64~3_combout\);

-- Location: LCCOMB_X26_Y38_N22
\inst|R0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0~33_combout\ = (\inst|IR\(11) & (((\inst|R0\(0))))) # (!\inst|IR\(11) & ((\inst|IR\(10) & (\inst|R0\(0))) # (!\inst|IR\(10) & ((\inst|A\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(11),
	datab => \inst|IR\(10),
	datac => \inst|R0\(0),
	datad => \inst|A\(0),
	combout => \inst|R0~33_combout\);

-- Location: LCCOMB_X26_Y38_N24
\inst|Mux64~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux64~8_combout\ = (\inst|IR\(13) & (((\inst|IR\(12))))) # (!\inst|IR\(13) & ((\inst|IR\(12) & ((\inst|IR\(8)))) # (!\inst|IR\(12) & (\inst|R0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(0),
	datab => \inst|IR\(13),
	datac => \inst|IR\(12),
	datad => \inst|IR\(8),
	combout => \inst|Mux64~8_combout\);

-- Location: LCCOMB_X26_Y38_N2
\inst|R0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0~38_combout\ = (\inst|IR\(10) & (\inst|R0\(0))) # (!\inst|IR\(10) & ((\inst|IR\(11) & (\inst|R0\(0))) # (!\inst|IR\(11) & ((\inst|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(0),
	datab => \inst|IR\(10),
	datac => \inst|IR\(11),
	datad => \inst|Add0~0_combout\,
	combout => \inst|R0~38_combout\);

-- Location: LCCOMB_X26_Y38_N10
\inst|Mux64~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux64~9_combout\ = (\inst|Mux64~8_combout\ & (((\inst|R0~38_combout\) # (!\inst|IR\(13))))) # (!\inst|Mux64~8_combout\ & (\inst|R0~33_combout\ & (\inst|IR\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0~33_combout\,
	datab => \inst|Mux64~8_combout\,
	datac => \inst|IR\(13),
	datad => \inst|R0~38_combout\,
	combout => \inst|Mux64~9_combout\);

-- Location: LCCOMB_X23_Y38_N22
\inst|Mux64~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux64~5_combout\ = (\inst|IR\(13) & ((\inst|IR\(12)) # ((\inst|A\(0))))) # (!\inst|IR\(13) & (!\inst|IR\(12) & (\inst|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datab => \inst|IR\(12),
	datac => \inst|Add4~0_combout\,
	datad => \inst|A\(0),
	combout => \inst|Mux64~5_combout\);

-- Location: LCCOMB_X25_Y38_N12
\inst|Mux64~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux64~4_combout\ = (\inst|A\(0) & ((\inst|IR\(12)))) # (!\inst|A\(0) & (\inst|IR\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(13),
	datac => \inst|IR\(12),
	datad => \inst|A\(0),
	combout => \inst|Mux64~4_combout\);

-- Location: LCCOMB_X25_Y38_N10
\inst|Mux64~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux64~6_combout\ = (\inst|Mux64~4_combout\ & ((!\inst|Mux64~5_combout\) # (!\inst|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux64~4_combout\,
	datac => \inst|Add0~0_combout\,
	datad => \inst|Mux64~5_combout\,
	combout => \inst|Mux64~6_combout\);

-- Location: LCCOMB_X25_Y38_N20
\inst|Mux64~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux64~7_combout\ = (\inst|Decoder2~0_combout\ & (\inst|R0\(0))) # (!\inst|Decoder2~0_combout\ & ((\inst|Mux64~5_combout\ & ((!\inst|Mux64~6_combout\))) # (!\inst|Mux64~5_combout\ & (\inst|R0\(0) & \inst|Mux64~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(0),
	datab => \inst|Decoder2~0_combout\,
	datac => \inst|Mux64~5_combout\,
	datad => \inst|Mux64~6_combout\,
	combout => \inst|Mux64~7_combout\);

-- Location: LCCOMB_X25_Y38_N6
\inst|Mux64~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux64~10_combout\ = (\inst|IR\(14) & ((\inst|IR\(15)) # ((\inst|Mux64~7_combout\)))) # (!\inst|IR\(14) & (!\inst|IR\(15) & (\inst|Mux64~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(14),
	datab => \inst|IR\(15),
	datac => \inst|Mux64~9_combout\,
	datad => \inst|Mux64~7_combout\,
	combout => \inst|Mux64~10_combout\);

-- Location: LCCOMB_X25_Y38_N16
\inst|Mux64~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux64~11_combout\ = (\inst|IR\(15) & ((\inst|Mux64~10_combout\ & (\inst|R0\(0))) # (!\inst|Mux64~10_combout\ & ((\inst|Mux64~3_combout\))))) # (!\inst|IR\(15) & (((\inst|Mux64~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|R0\(0),
	datab => \inst|Mux64~3_combout\,
	datac => \inst|IR\(15),
	datad => \inst|Mux64~10_combout\,
	combout => \inst|Mux64~11_combout\);

-- Location: LCCOMB_X25_Y38_N22
\inst|R0[0]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|R0[0]~34_combout\ = (\inst|status\(1) & (\inst|R0[0]~29_combout\)) # (!\inst|status\(1) & ((\inst|Mux64~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|status\(1),
	datac => \inst|R0[0]~29_combout\,
	datad => \inst|Mux64~11_combout\,
	combout => \inst|R0[0]~34_combout\);

-- Location: FF_X25_Y38_N1
\inst|R0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|R0[0]~2_combout\,
	asdata => \inst|R0[0]~34_combout\,
	sload => \inst|ALT_INV_status\(2),
	ena => \inst|R0[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R0\(0));

-- Location: LCCOMB_X23_Y40_N16
\inst|MDR[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MDR[0]~feeder_combout\ = \inst|R0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|R0\(0),
	combout => \inst|MDR[0]~feeder_combout\);

-- Location: FF_X23_Y40_N17
\inst|MDR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|MDR[0]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|MDR[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR\(0));

-- Location: LCCOMB_X25_Y41_N28
\inst|IR[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|IR[14]~feeder_combout\ = \inst2|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst|IR[14]~feeder_combout\);

-- Location: FF_X25_Y41_N29
\inst|IR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|IR[14]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|Decoder3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(14));

-- Location: LCCOMB_X25_Y40_N4
\inst|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|IR\(14) & !\inst|IR\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(14),
	datad => \inst|IR\(12),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X25_Y40_N18
\inst|write_read\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|write_read~combout\ = (\inst|Equal1~0_combout\ & (\inst|write_read~1_combout\ & (\inst|write_read~0_combout\ & \inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|write_read~1_combout\,
	datac => \inst|write_read~0_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|write_read~combout\);

-- Location: LCCOMB_X22_Y41_N18
\inst|PC[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PC[6]~24_combout\ = (\inst|PC\(6) & (\inst|PC[5]~23\ $ (GND))) # (!\inst|PC\(6) & (!\inst|PC[5]~23\ & VCC))
-- \inst|PC[6]~25\ = CARRY((\inst|PC\(6) & !\inst|PC[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(6),
	datad => VCC,
	cin => \inst|PC[5]~23\,
	combout => \inst|PC[6]~24_combout\,
	cout => \inst|PC[6]~25\);

-- Location: LCCOMB_X26_Y39_N22
\inst|Mux110~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux110~0_combout\ = (\inst|status\(1) & \inst2|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|status\(1),
	datad => \inst2|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst|Mux110~0_combout\);

-- Location: FF_X26_Y39_N23
\inst|IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux110~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(6));

-- Location: LCCOMB_X22_Y41_N4
\inst|Mux78~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux78~0_combout\ = (\inst|Mux73~0_combout\ & ((\inst|IR\(6)))) # (!\inst|Mux73~0_combout\ & (\inst|PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(6),
	datac => \inst|Mux73~0_combout\,
	datad => \inst|IR\(6),
	combout => \inst|Mux78~0_combout\);

-- Location: FF_X22_Y41_N19
\inst|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|PC[6]~24_combout\,
	asdata => \inst|Mux78~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \inst|write_read~1_combout\,
	ena => \inst|PC[3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(6));

-- Location: LCCOMB_X22_Y41_N20
\inst|PC[7]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PC[7]~26_combout\ = (\inst|PC\(7) & (!\inst|PC[6]~25\)) # (!\inst|PC\(7) & ((\inst|PC[6]~25\) # (GND)))
-- \inst|PC[7]~27\ = CARRY((!\inst|PC[6]~25\) # (!\inst|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(7),
	datad => VCC,
	cin => \inst|PC[6]~25\,
	combout => \inst|PC[7]~26_combout\,
	cout => \inst|PC[7]~27\);

-- Location: LCCOMB_X23_Y41_N4
\inst|Mux109~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux109~0_combout\ = (\inst|status\(1) & \inst2|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|status\(1),
	datad => \inst2|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst|Mux109~0_combout\);

-- Location: FF_X23_Y41_N5
\inst|IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux109~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \inst|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(7));

-- Location: LCCOMB_X23_Y41_N14
\inst|Mux77~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux77~0_combout\ = (\inst|Mux73~0_combout\ & ((\inst|IR\(7)))) # (!\inst|Mux73~0_combout\ & (\inst|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(7),
	datac => \inst|IR\(7),
	datad => \inst|Mux73~0_combout\,
	combout => \inst|Mux77~0_combout\);

-- Location: FF_X22_Y41_N21
\inst|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|PC[7]~26_combout\,
	asdata => \inst|Mux77~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \inst|write_read~1_combout\,
	ena => \inst|PC[3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(7));

-- Location: LCCOMB_X22_Y41_N22
\inst|PC[8]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PC[8]~28_combout\ = (\inst|PC\(8) & (\inst|PC[7]~27\ $ (GND))) # (!\inst|PC\(8) & (!\inst|PC[7]~27\ & VCC))
-- \inst|PC[8]~29\ = CARRY((\inst|PC\(8) & !\inst|PC[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(8),
	datad => VCC,
	cin => \inst|PC[7]~27\,
	combout => \inst|PC[8]~28_combout\,
	cout => \inst|PC[8]~29\);

-- Location: LCCOMB_X21_Y41_N4
\inst|Mux76~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux76~0_combout\ = (\inst|Mux73~0_combout\ & (\inst|IR\(8))) # (!\inst|Mux73~0_combout\ & ((\inst|PC\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(8),
	datab => \inst|PC\(8),
	datad => \inst|Mux73~0_combout\,
	combout => \inst|Mux76~0_combout\);

-- Location: FF_X22_Y41_N23
\inst|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|PC[8]~28_combout\,
	asdata => \inst|Mux76~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \inst|write_read~1_combout\,
	ena => \inst|PC[3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(8));

-- Location: LCCOMB_X22_Y41_N24
\inst|PC[9]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PC[9]~30_combout\ = (\inst|PC\(9) & (!\inst|PC[8]~29\)) # (!\inst|PC\(9) & ((\inst|PC[8]~29\) # (GND)))
-- \inst|PC[9]~31\ = CARRY((!\inst|PC[8]~29\) # (!\inst|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(9),
	datad => VCC,
	cin => \inst|PC[8]~29\,
	combout => \inst|PC[9]~30_combout\,
	cout => \inst|PC[9]~31\);

-- Location: LCCOMB_X23_Y41_N0
\inst|Mux75~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux75~0_combout\ = (\inst|Mux73~0_combout\ & ((\inst|IR\(9)))) # (!\inst|Mux73~0_combout\ & (\inst|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(9),
	datac => \inst|IR\(9),
	datad => \inst|Mux73~0_combout\,
	combout => \inst|Mux75~0_combout\);

-- Location: FF_X22_Y41_N25
\inst|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|PC[9]~30_combout\,
	asdata => \inst|Mux75~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \inst|write_read~1_combout\,
	ena => \inst|PC[3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(9));

-- Location: LCCOMB_X22_Y41_N26
\inst|PC[10]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PC[10]~32_combout\ = (\inst|PC\(10) & (\inst|PC[9]~31\ $ (GND))) # (!\inst|PC\(10) & (!\inst|PC[9]~31\ & VCC))
-- \inst|PC[10]~33\ = CARRY((\inst|PC\(10) & !\inst|PC[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(10),
	datad => VCC,
	cin => \inst|PC[9]~31\,
	combout => \inst|PC[10]~32_combout\,
	cout => \inst|PC[10]~33\);

-- Location: LCCOMB_X21_Y41_N26
\inst|Mux74~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux74~0_combout\ = (\inst|Mux73~0_combout\ & ((\inst|IR\(10)))) # (!\inst|Mux73~0_combout\ & (\inst|PC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(10),
	datac => \inst|IR\(10),
	datad => \inst|Mux73~0_combout\,
	combout => \inst|Mux74~0_combout\);

-- Location: FF_X22_Y41_N27
\inst|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|PC[10]~32_combout\,
	asdata => \inst|Mux74~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \inst|write_read~1_combout\,
	ena => \inst|PC[3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(10));

-- Location: LCCOMB_X22_Y41_N28
\inst|PC[11]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PC[11]~34_combout\ = \inst|PC[10]~33\ $ (\inst|PC\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC\(11),
	cin => \inst|PC[10]~33\,
	combout => \inst|PC[11]~34_combout\);

-- Location: LCCOMB_X21_Y41_N16
\inst|Mux73~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux73~1_combout\ = (\inst|Mux73~0_combout\ & ((\inst|IR\(11)))) # (!\inst|Mux73~0_combout\ & (\inst|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(11),
	datac => \inst|IR\(11),
	datad => \inst|Mux73~0_combout\,
	combout => \inst|Mux73~1_combout\);

-- Location: FF_X22_Y41_N29
\inst|PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|PC[11]~34_combout\,
	asdata => \inst|Mux73~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \inst|write_read~1_combout\,
	ena => \inst|PC[3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(11));

-- Location: LCCOMB_X21_Y41_N0
\inst|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux11~1_combout\ = (\inst|Mux11~0_combout\ & ((\inst|IR\(11)))) # (!\inst|Mux11~0_combout\ & (\inst|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(11),
	datac => \inst|IR\(11),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux11~1_combout\);

-- Location: FF_X21_Y41_N1
\inst|MAR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux11~1_combout\,
	ena => \inst|MAR[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(11));

-- Location: LCCOMB_X21_Y41_N22
\inst|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\inst|Mux11~0_combout\ & ((\inst|IR\(10)))) # (!\inst|Mux11~0_combout\ & (\inst|PC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(10),
	datac => \inst|IR\(10),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux12~0_combout\);

-- Location: FF_X21_Y41_N23
\inst|MAR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux12~0_combout\,
	ena => \inst|MAR[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(10));

-- Location: LCCOMB_X23_Y41_N20
\inst|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (\inst|Mux11~0_combout\ & ((\inst|IR\(9)))) # (!\inst|Mux11~0_combout\ & (\inst|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(9),
	datac => \inst|IR\(9),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux13~0_combout\);

-- Location: FF_X23_Y41_N21
\inst|MAR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux13~0_combout\,
	ena => \inst|MAR[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(9));

-- Location: LCCOMB_X21_Y41_N12
\inst|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = (\inst|Mux11~0_combout\ & (\inst|IR\(8))) # (!\inst|Mux11~0_combout\ & ((\inst|PC\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(8),
	datab => \inst|PC\(8),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux14~0_combout\);

-- Location: FF_X21_Y41_N13
\inst|MAR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux14~0_combout\,
	ena => \inst|MAR[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(8));

-- Location: LCCOMB_X23_Y41_N6
\inst|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = (\inst|Mux11~0_combout\ & ((\inst|IR\(7)))) # (!\inst|Mux11~0_combout\ & (\inst|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(7),
	datac => \inst|IR\(7),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux15~0_combout\);

-- Location: FF_X23_Y41_N7
\inst|MAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux15~0_combout\,
	ena => \inst|MAR[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(7));

-- Location: LCCOMB_X22_Y41_N0
\inst|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (\inst|Mux11~0_combout\ & (\inst|IR\(6))) # (!\inst|Mux11~0_combout\ & ((\inst|PC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(6),
	datac => \inst|PC\(6),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux16~0_combout\);

-- Location: FF_X22_Y41_N1
\inst|MAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \inst|Mux16~0_combout\,
	ena => \inst|MAR[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(6));

-- Location: LCCOMB_X25_Y39_N8
\inst|overflow~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|overflow~1_combout\ = (\reset~input_o\ & (!\inst|status\(2) & (\inst|status\(0) & !\inst|status\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|status\(2),
	datac => \inst|status\(0),
	datad => \inst|status\(1),
	combout => \inst|overflow~1_combout\);

-- Location: LCCOMB_X25_Y37_N2
\inst|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|IR\(15)) # ((\inst|IR\(14) & ((\inst|IR\(12)) # (\inst|IR\(13)))) # (!\inst|IR\(14) & ((!\inst|IR\(13)) # (!\inst|IR\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(14),
	datab => \inst|IR\(12),
	datac => \inst|IR\(15),
	datad => \inst|IR\(13),
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X21_Y37_N2
\inst|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector0~1_combout\ = (\inst|Selector0~0_combout\ & \inst|overflow~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector0~0_combout\,
	datac => \inst|overflow~q\,
	combout => \inst|Selector0~1_combout\);

-- Location: LCCOMB_X22_Y39_N0
\inst|overflow~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|overflow~0_combout\ = (\inst|overflow~q\ & (((\inst|status\(2)) # (\inst|status\(1))) # (!\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|status\(2),
	datac => \inst|overflow~q\,
	datad => \inst|status\(1),
	combout => \inst|overflow~0_combout\);

-- Location: LCCOMB_X22_Y37_N26
\inst|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~16_combout\ = !\inst|Add5~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add5~15\,
	combout => \inst|Add5~16_combout\);

-- Location: LCCOMB_X22_Y36_N16
\inst|Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~16_combout\ = !\inst|Add7~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add7~15\,
	combout => \inst|Add7~16_combout\);

-- Location: LCCOMB_X23_Y38_N20
\inst|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~16_combout\ = !\inst|Add4~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add4~15\,
	combout => \inst|Add4~16_combout\);

-- Location: LCCOMB_X21_Y38_N28
\inst|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~16_combout\ = !\inst|Add6~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add6~15\,
	combout => \inst|Add6~16_combout\);

-- Location: LCCOMB_X21_Y37_N12
\inst|Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux24~0_combout\ = (\inst|IR\(10) & (\inst|IR\(11))) # (!\inst|IR\(10) & ((\inst|IR\(11) & ((!\inst|Add6~16_combout\))) # (!\inst|IR\(11) & (!\inst|Add4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|IR\(11),
	datac => \inst|Add4~16_combout\,
	datad => \inst|Add6~16_combout\,
	combout => \inst|Mux24~0_combout\);

-- Location: LCCOMB_X21_Y37_N14
\inst|Mux24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux24~1_combout\ = (\inst|IR\(10) & ((\inst|Mux24~0_combout\ & ((!\inst|Add7~16_combout\))) # (!\inst|Mux24~0_combout\ & (!\inst|Add5~16_combout\)))) # (!\inst|IR\(10) & (((\inst|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|Add5~16_combout\,
	datac => \inst|Add7~16_combout\,
	datad => \inst|Mux24~0_combout\,
	combout => \inst|Mux24~1_combout\);

-- Location: LCCOMB_X20_Y38_N24
\inst|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~16_combout\ = !\inst|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add2~15\,
	combout => \inst|Add2~16_combout\);

-- Location: LCCOMB_X21_Y36_N20
\inst|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~16_combout\ = !\inst|Add3~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add3~15\,
	combout => \inst|Add3~16_combout\);

-- Location: LCCOMB_X22_Y38_N30
\inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = !\inst|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\);

-- Location: LCCOMB_X23_Y37_N16
\inst|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~16_combout\ = !\inst|Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add1~15\,
	combout => \inst|Add1~16_combout\);

-- Location: LCCOMB_X21_Y37_N20
\inst|Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux23~0_combout\ = (\inst|IR\(10) & (((\inst|IR\(11)) # (\inst|Add1~16_combout\)))) # (!\inst|IR\(10) & (\inst|Add0~16_combout\ & (!\inst|IR\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~16_combout\,
	datab => \inst|IR\(10),
	datac => \inst|IR\(11),
	datad => \inst|Add1~16_combout\,
	combout => \inst|Mux23~0_combout\);

-- Location: LCCOMB_X21_Y37_N18
\inst|Mux23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux23~1_combout\ = (\inst|IR\(11) & ((\inst|Mux23~0_combout\ & ((\inst|Add3~16_combout\))) # (!\inst|Mux23~0_combout\ & (\inst|Add2~16_combout\)))) # (!\inst|IR\(11) & (((\inst|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~16_combout\,
	datab => \inst|IR\(11),
	datac => \inst|Add3~16_combout\,
	datad => \inst|Mux23~0_combout\,
	combout => \inst|Mux23~1_combout\);

-- Location: LCCOMB_X21_Y37_N0
\inst|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector0~2_combout\ = (!\inst|Selector0~0_combout\ & ((\inst|IR\(14) & (\inst|Mux24~1_combout\)) # (!\inst|IR\(14) & ((\inst|Mux23~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(14),
	datab => \inst|Selector0~0_combout\,
	datac => \inst|Mux24~1_combout\,
	datad => \inst|Mux23~1_combout\,
	combout => \inst|Selector0~2_combout\);

-- Location: LCCOMB_X21_Y37_N8
\inst|overflow~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|overflow~2_combout\ = (\inst|overflow~0_combout\) # ((\inst|overflow~1_combout\ & ((\inst|Selector0~1_combout\) # (\inst|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|overflow~1_combout\,
	datab => \inst|Selector0~1_combout\,
	datac => \inst|overflow~0_combout\,
	datad => \inst|Selector0~2_combout\,
	combout => \inst|overflow~2_combout\);

-- Location: FF_X21_Y37_N9
\inst|overflow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|overflow~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|overflow~q\);

ww_write_read <= \write_read~output_o\;

ww_M_address(11) <= \M_address[11]~output_o\;

ww_M_address(10) <= \M_address[10]~output_o\;

ww_M_address(9) <= \M_address[9]~output_o\;

ww_M_address(8) <= \M_address[8]~output_o\;

ww_M_address(7) <= \M_address[7]~output_o\;

ww_M_address(6) <= \M_address[6]~output_o\;

ww_M_address(5) <= \M_address[5]~output_o\;

ww_M_address(4) <= \M_address[4]~output_o\;

ww_M_address(3) <= \M_address[3]~output_o\;

ww_M_address(2) <= \M_address[2]~output_o\;

ww_M_address(1) <= \M_address[1]~output_o\;

ww_M_address(0) <= \M_address[0]~output_o\;

ww_overflow <= \overflow~output_o\;

ww_M_data_out(7) <= \M_data_out[7]~output_o\;

ww_M_data_out(6) <= \M_data_out[6]~output_o\;

ww_M_data_out(5) <= \M_data_out[5]~output_o\;

ww_M_data_out(4) <= \M_data_out[4]~output_o\;

ww_M_data_out(3) <= \M_data_out[3]~output_o\;

ww_M_data_out(2) <= \M_data_out[2]~output_o\;

ww_M_data_out(1) <= \M_data_out[1]~output_o\;

ww_M_data_out(0) <= \M_data_out[0]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(0) <= \q[0]~output_o\;

ww_status(2) <= \status[2]~output_o\;

ww_status(1) <= \status[1]~output_o\;

ww_status(0) <= \status[0]~output_o\;
END structure;


