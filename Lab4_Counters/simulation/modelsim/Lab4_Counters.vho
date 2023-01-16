-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "01/16/2023 12:43:18"

-- 
-- Device: Altera 10M16SAU169C8G Package UFBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_G1,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_F5,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_E7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_C4,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_C5,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab4_counters IS
    PORT (
	i_clk : IN std_logic;
	in_rst : IN std_logic;
	o_led : OUT std_logic_vector(7 DOWNTO 0);
	o_sem_r : OUT std_logic;
	o_sem_y : OUT std_logic;
	o_sem_g : OUT std_logic;
	o_n_col_0_or_7segm_a : OUT std_logic;
	o_n_col_1_or_7segm_b : OUT std_logic;
	o_n_col_2_or_7segm_c : OUT std_logic;
	o_n_col_3_or_7segm_d : OUT std_logic;
	o_n_col_4_or_7segm_e : OUT std_logic;
	o_n_col_5_or_7segm_f : OUT std_logic;
	o_n_col_6_or_7segm_g : OUT std_logic;
	o_n_col_7_or_7segm_dp : OUT std_logic;
	o_mux_row_or_digit : OUT std_logic_vector(2 DOWNTO 0);
	o_mux_sel_color_or_7segm : OUT std_logic_vector(1 DOWNTO 0);
	i_sw : IN std_logic_vector(7 DOWNTO 0);
	i_pb_up : IN std_logic;
	i_pb_center : IN std_logic;
	i_pb_down : IN std_logic;
	i_pb_left : IN std_logic;
	i_pb_right : IN std_logic;
	i_pb_rst : IN std_logic
	);
END lab4_counters;

-- Design Ports Information
-- o_led[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_led[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_led[2]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_led[3]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_led[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_led[5]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_led[6]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_led[7]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_sem_r	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_sem_y	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_sem_g	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_n_col_0_or_7segm_a	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_n_col_1_or_7segm_b	=>  Location: PIN_K10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_n_col_2_or_7segm_c	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_n_col_3_or_7segm_d	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_n_col_4_or_7segm_e	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_n_col_5_or_7segm_f	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_n_col_6_or_7segm_g	=>  Location: PIN_L12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_n_col_7_or_7segm_dp	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_mux_row_or_digit[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_mux_row_or_digit[1]	=>  Location: PIN_K11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_mux_row_or_digit[2]	=>  Location: PIN_K12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_mux_sel_color_or_7segm[0]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_mux_sel_color_or_7segm[1]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- i_pb_rst	=>  Location: PIN_F1,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- i_sw[0]	=>  Location: PIN_M3,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- i_sw[1]	=>  Location: PIN_L3,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- i_sw[2]	=>  Location: PIN_M2,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- i_sw[3]	=>  Location: PIN_M1,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- i_sw[4]	=>  Location: PIN_N3,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- i_sw[5]	=>  Location: PIN_N2,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- i_sw[6]	=>  Location: PIN_K2,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- i_sw[7]	=>  Location: PIN_K1,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- i_pb_up	=>  Location: PIN_E1,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- i_pb_center	=>  Location: PIN_C2,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- i_pb_down	=>  Location: PIN_C1,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- in_rst	=>  Location: PIN_E6,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- i_clk	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pb_right	=>  Location: PIN_E3,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- i_pb_left	=>  Location: PIN_D1,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF lab4_counters IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_in_rst : std_logic;
SIGNAL ww_o_led : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_sem_r : std_logic;
SIGNAL ww_o_sem_y : std_logic;
SIGNAL ww_o_sem_g : std_logic;
SIGNAL ww_o_n_col_0_or_7segm_a : std_logic;
SIGNAL ww_o_n_col_1_or_7segm_b : std_logic;
SIGNAL ww_o_n_col_2_or_7segm_c : std_logic;
SIGNAL ww_o_n_col_3_or_7segm_d : std_logic;
SIGNAL ww_o_n_col_4_or_7segm_e : std_logic;
SIGNAL ww_o_n_col_5_or_7segm_f : std_logic;
SIGNAL ww_o_n_col_6_or_7segm_g : std_logic;
SIGNAL ww_o_n_col_7_or_7segm_dp : std_logic;
SIGNAL ww_o_mux_row_or_digit : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_mux_sel_color_or_7segm : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_i_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_pb_up : std_logic;
SIGNAL ww_i_pb_center : std_logic;
SIGNAL ww_i_pb_down : std_logic;
SIGNAL ww_i_pb_left : std_logic;
SIGNAL ww_i_pb_right : std_logic;
SIGNAL ww_i_pb_rst : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_pb_rst~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \o_led[0]~output_o\ : std_logic;
SIGNAL \o_led[1]~output_o\ : std_logic;
SIGNAL \o_led[2]~output_o\ : std_logic;
SIGNAL \o_led[3]~output_o\ : std_logic;
SIGNAL \o_led[4]~output_o\ : std_logic;
SIGNAL \o_led[5]~output_o\ : std_logic;
SIGNAL \o_led[6]~output_o\ : std_logic;
SIGNAL \o_led[7]~output_o\ : std_logic;
SIGNAL \o_sem_r~output_o\ : std_logic;
SIGNAL \o_sem_y~output_o\ : std_logic;
SIGNAL \o_sem_g~output_o\ : std_logic;
SIGNAL \o_n_col_0_or_7segm_a~output_o\ : std_logic;
SIGNAL \o_n_col_1_or_7segm_b~output_o\ : std_logic;
SIGNAL \o_n_col_2_or_7segm_c~output_o\ : std_logic;
SIGNAL \o_n_col_3_or_7segm_d~output_o\ : std_logic;
SIGNAL \o_n_col_4_or_7segm_e~output_o\ : std_logic;
SIGNAL \o_n_col_5_or_7segm_f~output_o\ : std_logic;
SIGNAL \o_n_col_6_or_7segm_g~output_o\ : std_logic;
SIGNAL \o_n_col_7_or_7segm_dp~output_o\ : std_logic;
SIGNAL \o_mux_row_or_digit[0]~output_o\ : std_logic;
SIGNAL \o_mux_row_or_digit[1]~output_o\ : std_logic;
SIGNAL \o_mux_row_or_digit[2]~output_o\ : std_logic;
SIGNAL \o_mux_sel_color_or_7segm[0]~output_o\ : std_logic;
SIGNAL \o_mux_sel_color_or_7segm[1]~output_o\ : std_logic;
SIGNAL \i_sw[0]~input_o\ : std_logic;
SIGNAL \i_sw[1]~input_o\ : std_logic;
SIGNAL \i_sw[2]~input_o\ : std_logic;
SIGNAL \i_sw[3]~input_o\ : std_logic;
SIGNAL \i_sw[4]~input_o\ : std_logic;
SIGNAL \i_sw[5]~input_o\ : std_logic;
SIGNAL \i_sw[6]~input_o\ : std_logic;
SIGNAL \i_sw[7]~input_o\ : std_logic;
SIGNAL \i_pb_up~input_o\ : std_logic;
SIGNAL \i_pb_center~input_o\ : std_logic;
SIGNAL \i_pb_down~input_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sCNT_120K[0]~17_combout\ : std_logic;
SIGNAL \in_rst~input_o\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \sCNT_120K[15]~48\ : std_logic;
SIGNAL \sCNT_120K[16]~50_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \sCNT_120K[11]~49_combout\ : std_logic;
SIGNAL \sCNT_120K[0]~18\ : std_logic;
SIGNAL \sCNT_120K[1]~19_combout\ : std_logic;
SIGNAL \sCNT_120K[1]~20\ : std_logic;
SIGNAL \sCNT_120K[2]~21_combout\ : std_logic;
SIGNAL \sCNT_120K[2]~22\ : std_logic;
SIGNAL \sCNT_120K[3]~23_combout\ : std_logic;
SIGNAL \sCNT_120K[3]~24\ : std_logic;
SIGNAL \sCNT_120K[4]~25_combout\ : std_logic;
SIGNAL \sCNT_120K[4]~26\ : std_logic;
SIGNAL \sCNT_120K[5]~27_combout\ : std_logic;
SIGNAL \sCNT_120K[5]~28\ : std_logic;
SIGNAL \sCNT_120K[6]~29_combout\ : std_logic;
SIGNAL \sCNT_120K[6]~30\ : std_logic;
SIGNAL \sCNT_120K[7]~31_combout\ : std_logic;
SIGNAL \sCNT_120K[7]~32\ : std_logic;
SIGNAL \sCNT_120K[8]~33_combout\ : std_logic;
SIGNAL \sCNT_120K[8]~34\ : std_logic;
SIGNAL \sCNT_120K[9]~35_combout\ : std_logic;
SIGNAL \sCNT_120K[9]~36\ : std_logic;
SIGNAL \sCNT_120K[10]~37_combout\ : std_logic;
SIGNAL \sCNT_120K[10]~38\ : std_logic;
SIGNAL \sCNT_120K[11]~39_combout\ : std_logic;
SIGNAL \sCNT_120K[11]~40\ : std_logic;
SIGNAL \sCNT_120K[12]~41_combout\ : std_logic;
SIGNAL \sCNT_120K[12]~42\ : std_logic;
SIGNAL \sCNT_120K[13]~43_combout\ : std_logic;
SIGNAL \sCNT_120K[13]~44\ : std_logic;
SIGNAL \sCNT_120K[14]~45_combout\ : std_logic;
SIGNAL \sCNT_120K[14]~46\ : std_logic;
SIGNAL \sCNT_120K[15]~47_combout\ : std_logic;
SIGNAL \prev_pb_down~feeder_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \prev_pb_down~q\ : std_logic;
SIGNAL \prev_prev_pb_up~0_combout\ : std_logic;
SIGNAL \prev_prev_pb_down~q\ : std_logic;
SIGNAL \re_pb_down~combout\ : std_logic;
SIGNAL \prev_pb_up~q\ : std_logic;
SIGNAL \prev_prev_pb_up~q\ : std_logic;
SIGNAL \re_pb_up~combout\ : std_logic;
SIGNAL \i_pb_left~input_o\ : std_logic;
SIGNAL \prev_pb_left~q\ : std_logic;
SIGNAL \prev_prev_pb_left~q\ : std_logic;
SIGNAL \i_pb_right~input_o\ : std_logic;
SIGNAL \prev_pb_right~q\ : std_logic;
SIGNAL \prev_prev_pb_right~q\ : std_logic;
SIGNAL \process_6~0_combout\ : std_logic;
SIGNAL \process_6~1_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \sCNT4[0]~3_combout\ : std_logic;
SIGNAL \sCNT4[0]~4_combout\ : std_logic;
SIGNAL \sCNT4~2_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \sCNT4[0]~0_combout\ : std_logic;
SIGNAL \sCNT4[0]~1_combout\ : std_logic;
SIGNAL \Add1~1_cout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \sCNT4~5_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \s_cnt_dir_0.CNT_UP~0_combout\ : std_logic;
SIGNAL \sCNT0~2_combout\ : std_logic;
SIGNAL \sCNT0[0]~3_combout\ : std_logic;
SIGNAL \sCNT0[0]~4_combout\ : std_logic;
SIGNAL \Add3~1_cout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add3~7_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \sCNT0[0]~6_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \sCNT0~5_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \sCNT1[0]~5_combout\ : std_logic;
SIGNAL \sCNT1~2_combout\ : std_logic;
SIGNAL \s_cnt_dir_1.CNT_DOWN~0_combout\ : std_logic;
SIGNAL \s_cnt_dir_1.CNT_DOWN~1_combout\ : std_logic;
SIGNAL \s_cnt_dir_1.CNT_DOWN~2_combout\ : std_logic;
SIGNAL \sCNT1[0]~3_combout\ : std_logic;
SIGNAL \Add6~1_cout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5_combout\ : std_logic;
SIGNAL \Add6~7_combout\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \sCNT1~4_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \prev_pb_center~feeder_combout\ : std_logic;
SIGNAL \prev_pb_center~q\ : std_logic;
SIGNAL \prev_prev_pb_center~q\ : std_logic;
SIGNAL \s_run~0_combout\ : std_logic;
SIGNAL \s_cnt_dir_3.CNT_UP~0_combout\ : std_logic;
SIGNAL \s_cnt_dir_3.CNT_UP~1_combout\ : std_logic;
SIGNAL \sCNT3[0]~0_combout\ : std_logic;
SIGNAL \sCNT3[0]~1_combout\ : std_logic;
SIGNAL \sCNT3~2_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \s_cnt_dir_2.CNT_UP~0_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5_combout\ : std_logic;
SIGNAL \Add8~7_combout\ : std_logic;
SIGNAL \s_cnt_dir_2.CNT_DOWN~0_combout\ : std_logic;
SIGNAL \s_cnt_dir_2.CNT_DOWN~1_combout\ : std_logic;
SIGNAL \sCNT2[0]~3_combout\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \sCNT2~4_combout\ : std_logic;
SIGNAL \sCNT2[0]~0_combout\ : std_logic;
SIGNAL \sCNT2[0]~1_combout\ : std_logic;
SIGNAL \sCNT2~2_combout\ : std_logic;
SIGNAL \Add8~1_cout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \sCNT3[0]~3_combout\ : std_logic;
SIGNAL \sCNT3[0]~4_combout\ : std_logic;
SIGNAL \sCNT3[0]~5_combout\ : std_logic;
SIGNAL \Add10~1_cout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~5_combout\ : std_logic;
SIGNAL \Add10~7_combout\ : std_logic;
SIGNAL \Add10~6\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \sCNT3~6_combout\ : std_logic;
SIGNAL \s_run~1_combout\ : std_logic;
SIGNAL \s_run~2_combout\ : std_logic;
SIGNAL \s_run~q\ : std_logic;
SIGNAL \s_cnt_dir_1.CNT_UP~0_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL sCNT4 : std_logic_vector(3 DOWNTO 0);
SIGNAL sCNT3 : std_logic_vector(3 DOWNTO 0);
SIGNAL sCNT0 : std_logic_vector(3 DOWNTO 0);
SIGNAL sCNT2 : std_logic_vector(3 DOWNTO 0);
SIGNAL sCNT1 : std_logic_vector(3 DOWNTO 0);
SIGNAL sCNT_120K : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_in_rst~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clk <= i_clk;
ww_in_rst <= in_rst;
o_led <= ww_o_led;
o_sem_r <= ww_o_sem_r;
o_sem_y <= ww_o_sem_y;
o_sem_g <= ww_o_sem_g;
o_n_col_0_or_7segm_a <= ww_o_n_col_0_or_7segm_a;
o_n_col_1_or_7segm_b <= ww_o_n_col_1_or_7segm_b;
o_n_col_2_or_7segm_c <= ww_o_n_col_2_or_7segm_c;
o_n_col_3_or_7segm_d <= ww_o_n_col_3_or_7segm_d;
o_n_col_4_or_7segm_e <= ww_o_n_col_4_or_7segm_e;
o_n_col_5_or_7segm_f <= ww_o_n_col_5_or_7segm_f;
o_n_col_6_or_7segm_g <= ww_o_n_col_6_or_7segm_g;
o_n_col_7_or_7segm_dp <= ww_o_n_col_7_or_7segm_dp;
o_mux_row_or_digit <= ww_o_mux_row_or_digit;
o_mux_sel_color_or_7segm <= ww_o_mux_sel_color_or_7segm;
ww_i_sw <= i_sw;
ww_i_pb_up <= i_pb_up;
ww_i_pb_center <= i_pb_center;
ww_i_pb_down <= i_pb_down;
ww_i_pb_left <= i_pb_left;
ww_i_pb_right <= i_pb_right;
ww_i_pb_rst <= i_pb_rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_in_rst~input_o\ <= NOT \in_rst~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y19_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X19_Y17_N9
\o_led[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_sw[0]~input_o\,
	devoe => ww_devoe,
	o => \o_led[0]~output_o\);

-- Location: IOOBUF_X19_Y17_N16
\o_led[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_sw[1]~input_o\,
	devoe => ww_devoe,
	o => \o_led[1]~output_o\);

-- Location: IOOBUF_X16_Y17_N9
\o_led[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_sw[2]~input_o\,
	devoe => ww_devoe,
	o => \o_led[2]~output_o\);

-- Location: IOOBUF_X16_Y17_N2
\o_led[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_sw[3]~input_o\,
	devoe => ww_devoe,
	o => \o_led[3]~output_o\);

-- Location: IOOBUF_X19_Y17_N23
\o_led[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_sw[4]~input_o\,
	devoe => ww_devoe,
	o => \o_led[4]~output_o\);

-- Location: IOOBUF_X19_Y17_N2
\o_led[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_sw[5]~input_o\,
	devoe => ww_devoe,
	o => \o_led[5]~output_o\);

-- Location: IOOBUF_X21_Y17_N30
\o_led[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_sw[6]~input_o\,
	devoe => ww_devoe,
	o => \o_led[6]~output_o\);

-- Location: IOOBUF_X16_Y17_N16
\o_led[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_sw[7]~input_o\,
	devoe => ww_devoe,
	o => \o_led[7]~output_o\);

-- Location: IOOBUF_X50_Y10_N2
\o_sem_r~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pb_up~input_o\,
	devoe => ww_devoe,
	o => \o_sem_r~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\o_sem_y~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pb_center~input_o\,
	devoe => ww_devoe,
	o => \o_sem_y~output_o\);

-- Location: IOOBUF_X25_Y23_N23
\o_sem_g~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pb_down~input_o\,
	devoe => ww_devoe,
	o => \o_sem_g~output_o\);

-- Location: IOOBUF_X50_Y11_N16
\o_n_col_0_or_7segm_a~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \o_n_col_0_or_7segm_a~output_o\);

-- Location: IOOBUF_X50_Y2_N23
\o_n_col_1_or_7segm_b~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \o_n_col_1_or_7segm_b~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\o_n_col_2_or_7segm_c~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \o_n_col_2_or_7segm_c~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\o_n_col_3_or_7segm_d~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \o_n_col_3_or_7segm_d~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\o_n_col_4_or_7segm_e~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \o_n_col_4_or_7segm_e~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\o_n_col_5_or_7segm_f~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \o_n_col_5_or_7segm_f~output_o\);

-- Location: IOOBUF_X50_Y2_N2
\o_n_col_6_or_7segm_g~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \o_n_col_6_or_7segm_g~output_o\);

-- Location: IOOBUF_X50_Y8_N16
\o_n_col_7_or_7segm_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \o_n_col_7_or_7segm_dp~output_o\);

-- Location: IOOBUF_X50_Y10_N9
\o_mux_row_or_digit[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sCNT_120K(15),
	devoe => ww_devoe,
	o => \o_mux_row_or_digit[0]~output_o\);

-- Location: IOOBUF_X50_Y2_N9
\o_mux_row_or_digit[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sCNT_120K(16),
	devoe => ww_devoe,
	o => \o_mux_row_or_digit[1]~output_o\);

-- Location: IOOBUF_X50_Y8_N23
\o_mux_row_or_digit[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_mux_row_or_digit[2]~output_o\);

-- Location: IOOBUF_X50_Y2_N16
\o_mux_sel_color_or_7segm[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_mux_sel_color_or_7segm[0]~output_o\);

-- Location: IOOBUF_X50_Y10_N16
\o_mux_sel_color_or_7segm[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_mux_sel_color_or_7segm[1]~output_o\);

-- Location: IOIBUF_X0_Y3_N15
\i_sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sw(0),
	o => \i_sw[0]~input_o\);

-- Location: IOIBUF_X0_Y3_N22
\i_sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sw(1),
	o => \i_sw[1]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\i_sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sw(2),
	o => \i_sw[2]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\i_sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sw(3),
	o => \i_sw[3]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\i_sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sw(4),
	o => \i_sw[4]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\i_sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sw(5),
	o => \i_sw[5]~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\i_sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sw(6),
	o => \i_sw[6]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\i_sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sw(7),
	o => \i_sw[7]~input_o\);

-- Location: IOIBUF_X25_Y22_N22
\i_pb_up~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_pb_up,
	o => \i_pb_up~input_o\);

-- Location: IOIBUF_X25_Y25_N22
\i_pb_center~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_pb_center,
	o => \i_pb_center~input_o\);

-- Location: IOIBUF_X25_Y23_N15
\i_pb_down~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_pb_down,
	o => \i_pb_down~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\i_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G4
\i_clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X36_Y15_N16
\sCNT_120K[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[0]~17_combout\ = sCNT_120K(0) $ (VCC)
-- \sCNT_120K[0]~18\ = CARRY(sCNT_120K(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sCNT_120K(0),
	datad => VCC,
	combout => \sCNT_120K[0]~17_combout\,
	cout => \sCNT_120K[0]~18\);

-- Location: IOIBUF_X12_Y17_N29
\in_rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_rst,
	o => \in_rst~input_o\);

-- Location: LCCOMB_X36_Y14_N20
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!sCNT_120K(11) & (!sCNT_120K(9) & (!sCNT_120K(6) & !sCNT_120K(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(11),
	datab => sCNT_120K(9),
	datac => sCNT_120K(6),
	datad => sCNT_120K(8),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X36_Y14_N14
\sCNT_120K[15]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[15]~47_combout\ = (sCNT_120K(15) & (!\sCNT_120K[14]~46\)) # (!sCNT_120K(15) & ((\sCNT_120K[14]~46\) # (GND)))
-- \sCNT_120K[15]~48\ = CARRY((!\sCNT_120K[14]~46\) # (!sCNT_120K(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sCNT_120K(15),
	datad => VCC,
	cin => \sCNT_120K[14]~46\,
	combout => \sCNT_120K[15]~47_combout\,
	cout => \sCNT_120K[15]~48\);

-- Location: LCCOMB_X36_Y14_N16
\sCNT_120K[16]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[16]~50_combout\ = sCNT_120K(16) $ (!\sCNT_120K[15]~48\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(16),
	cin => \sCNT_120K[15]~48\,
	combout => \sCNT_120K[16]~50_combout\);

-- Location: FF_X36_Y14_N17
\sCNT_120K[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[16]~50_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(16));

-- Location: LCCOMB_X36_Y14_N28
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (((!sCNT_120K(1)) # (!sCNT_120K(0))) # (!sCNT_120K(15))) # (!sCNT_120K(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(16),
	datab => sCNT_120K(15),
	datac => sCNT_120K(0),
	datad => sCNT_120K(1),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X36_Y15_N10
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (((!sCNT_120K(2)) # (!sCNT_120K(5))) # (!sCNT_120K(4))) # (!sCNT_120K(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(3),
	datab => sCNT_120K(4),
	datac => sCNT_120K(5),
	datad => sCNT_120K(2),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X36_Y14_N22
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (sCNT_120K(13)) # (((\Equal1~1_combout\) # (\Equal1~2_combout\)) # (!\Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(13),
	datab => \Equal2~1_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X36_Y14_N26
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (((!sCNT_120K(14)) # (!sCNT_120K(12))) # (!sCNT_120K(10))) # (!sCNT_120K(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(7),
	datab => sCNT_120K(10),
	datac => sCNT_120K(12),
	datad => sCNT_120K(14),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X36_Y15_N12
\sCNT_120K[11]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[11]~49_combout\ = ((!\Equal1~3_combout\ & !\Equal1~0_combout\)) # (!\in_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_rst~input_o\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~0_combout\,
	combout => \sCNT_120K[11]~49_combout\);

-- Location: FF_X36_Y15_N17
\sCNT_120K[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[0]~17_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(0));

-- Location: LCCOMB_X36_Y15_N18
\sCNT_120K[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[1]~19_combout\ = (sCNT_120K(1) & (!\sCNT_120K[0]~18\)) # (!sCNT_120K(1) & ((\sCNT_120K[0]~18\) # (GND)))
-- \sCNT_120K[1]~20\ = CARRY((!\sCNT_120K[0]~18\) # (!sCNT_120K(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sCNT_120K(1),
	datad => VCC,
	cin => \sCNT_120K[0]~18\,
	combout => \sCNT_120K[1]~19_combout\,
	cout => \sCNT_120K[1]~20\);

-- Location: FF_X36_Y15_N19
\sCNT_120K[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[1]~19_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(1));

-- Location: LCCOMB_X36_Y15_N20
\sCNT_120K[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[2]~21_combout\ = (sCNT_120K(2) & (\sCNT_120K[1]~20\ $ (GND))) # (!sCNT_120K(2) & (!\sCNT_120K[1]~20\ & VCC))
-- \sCNT_120K[2]~22\ = CARRY((sCNT_120K(2) & !\sCNT_120K[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sCNT_120K(2),
	datad => VCC,
	cin => \sCNT_120K[1]~20\,
	combout => \sCNT_120K[2]~21_combout\,
	cout => \sCNT_120K[2]~22\);

-- Location: FF_X36_Y15_N21
\sCNT_120K[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[2]~21_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(2));

-- Location: LCCOMB_X36_Y15_N22
\sCNT_120K[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[3]~23_combout\ = (sCNT_120K(3) & (!\sCNT_120K[2]~22\)) # (!sCNT_120K(3) & ((\sCNT_120K[2]~22\) # (GND)))
-- \sCNT_120K[3]~24\ = CARRY((!\sCNT_120K[2]~22\) # (!sCNT_120K(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(3),
	datad => VCC,
	cin => \sCNT_120K[2]~22\,
	combout => \sCNT_120K[3]~23_combout\,
	cout => \sCNT_120K[3]~24\);

-- Location: FF_X36_Y15_N23
\sCNT_120K[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[3]~23_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(3));

-- Location: LCCOMB_X36_Y15_N24
\sCNT_120K[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[4]~25_combout\ = (sCNT_120K(4) & (\sCNT_120K[3]~24\ $ (GND))) # (!sCNT_120K(4) & (!\sCNT_120K[3]~24\ & VCC))
-- \sCNT_120K[4]~26\ = CARRY((sCNT_120K(4) & !\sCNT_120K[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sCNT_120K(4),
	datad => VCC,
	cin => \sCNT_120K[3]~24\,
	combout => \sCNT_120K[4]~25_combout\,
	cout => \sCNT_120K[4]~26\);

-- Location: FF_X36_Y15_N25
\sCNT_120K[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[4]~25_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(4));

-- Location: LCCOMB_X36_Y15_N26
\sCNT_120K[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[5]~27_combout\ = (sCNT_120K(5) & (!\sCNT_120K[4]~26\)) # (!sCNT_120K(5) & ((\sCNT_120K[4]~26\) # (GND)))
-- \sCNT_120K[5]~28\ = CARRY((!\sCNT_120K[4]~26\) # (!sCNT_120K(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(5),
	datad => VCC,
	cin => \sCNT_120K[4]~26\,
	combout => \sCNT_120K[5]~27_combout\,
	cout => \sCNT_120K[5]~28\);

-- Location: FF_X36_Y15_N27
\sCNT_120K[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[5]~27_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(5));

-- Location: LCCOMB_X36_Y15_N28
\sCNT_120K[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[6]~29_combout\ = (sCNT_120K(6) & (\sCNT_120K[5]~28\ $ (GND))) # (!sCNT_120K(6) & (!\sCNT_120K[5]~28\ & VCC))
-- \sCNT_120K[6]~30\ = CARRY((sCNT_120K(6) & !\sCNT_120K[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sCNT_120K(6),
	datad => VCC,
	cin => \sCNT_120K[5]~28\,
	combout => \sCNT_120K[6]~29_combout\,
	cout => \sCNT_120K[6]~30\);

-- Location: FF_X36_Y15_N29
\sCNT_120K[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[6]~29_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(6));

-- Location: LCCOMB_X36_Y15_N30
\sCNT_120K[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[7]~31_combout\ = (sCNT_120K(7) & (!\sCNT_120K[6]~30\)) # (!sCNT_120K(7) & ((\sCNT_120K[6]~30\) # (GND)))
-- \sCNT_120K[7]~32\ = CARRY((!\sCNT_120K[6]~30\) # (!sCNT_120K(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(7),
	datad => VCC,
	cin => \sCNT_120K[6]~30\,
	combout => \sCNT_120K[7]~31_combout\,
	cout => \sCNT_120K[7]~32\);

-- Location: FF_X36_Y15_N31
\sCNT_120K[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[7]~31_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(7));

-- Location: LCCOMB_X36_Y14_N0
\sCNT_120K[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[8]~33_combout\ = (sCNT_120K(8) & (\sCNT_120K[7]~32\ $ (GND))) # (!sCNT_120K(8) & (!\sCNT_120K[7]~32\ & VCC))
-- \sCNT_120K[8]~34\ = CARRY((sCNT_120K(8) & !\sCNT_120K[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sCNT_120K(8),
	datad => VCC,
	cin => \sCNT_120K[7]~32\,
	combout => \sCNT_120K[8]~33_combout\,
	cout => \sCNT_120K[8]~34\);

-- Location: FF_X36_Y14_N1
\sCNT_120K[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[8]~33_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(8));

-- Location: LCCOMB_X36_Y14_N2
\sCNT_120K[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[9]~35_combout\ = (sCNT_120K(9) & (!\sCNT_120K[8]~34\)) # (!sCNT_120K(9) & ((\sCNT_120K[8]~34\) # (GND)))
-- \sCNT_120K[9]~36\ = CARRY((!\sCNT_120K[8]~34\) # (!sCNT_120K(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sCNT_120K(9),
	datad => VCC,
	cin => \sCNT_120K[8]~34\,
	combout => \sCNT_120K[9]~35_combout\,
	cout => \sCNT_120K[9]~36\);

-- Location: FF_X36_Y14_N3
\sCNT_120K[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[9]~35_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(9));

-- Location: LCCOMB_X36_Y14_N4
\sCNT_120K[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[10]~37_combout\ = (sCNT_120K(10) & (\sCNT_120K[9]~36\ $ (GND))) # (!sCNT_120K(10) & (!\sCNT_120K[9]~36\ & VCC))
-- \sCNT_120K[10]~38\ = CARRY((sCNT_120K(10) & !\sCNT_120K[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sCNT_120K(10),
	datad => VCC,
	cin => \sCNT_120K[9]~36\,
	combout => \sCNT_120K[10]~37_combout\,
	cout => \sCNT_120K[10]~38\);

-- Location: FF_X36_Y14_N5
\sCNT_120K[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[10]~37_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(10));

-- Location: LCCOMB_X36_Y14_N6
\sCNT_120K[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[11]~39_combout\ = (sCNT_120K(11) & (!\sCNT_120K[10]~38\)) # (!sCNT_120K(11) & ((\sCNT_120K[10]~38\) # (GND)))
-- \sCNT_120K[11]~40\ = CARRY((!\sCNT_120K[10]~38\) # (!sCNT_120K(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(11),
	datad => VCC,
	cin => \sCNT_120K[10]~38\,
	combout => \sCNT_120K[11]~39_combout\,
	cout => \sCNT_120K[11]~40\);

-- Location: FF_X36_Y14_N7
\sCNT_120K[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[11]~39_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(11));

-- Location: LCCOMB_X36_Y14_N8
\sCNT_120K[12]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[12]~41_combout\ = (sCNT_120K(12) & (\sCNT_120K[11]~40\ $ (GND))) # (!sCNT_120K(12) & (!\sCNT_120K[11]~40\ & VCC))
-- \sCNT_120K[12]~42\ = CARRY((sCNT_120K(12) & !\sCNT_120K[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sCNT_120K(12),
	datad => VCC,
	cin => \sCNT_120K[11]~40\,
	combout => \sCNT_120K[12]~41_combout\,
	cout => \sCNT_120K[12]~42\);

-- Location: FF_X36_Y14_N9
\sCNT_120K[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[12]~41_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(12));

-- Location: LCCOMB_X36_Y14_N10
\sCNT_120K[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[13]~43_combout\ = (sCNT_120K(13) & (!\sCNT_120K[12]~42\)) # (!sCNT_120K(13) & ((\sCNT_120K[12]~42\) # (GND)))
-- \sCNT_120K[13]~44\ = CARRY((!\sCNT_120K[12]~42\) # (!sCNT_120K(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(13),
	datad => VCC,
	cin => \sCNT_120K[12]~42\,
	combout => \sCNT_120K[13]~43_combout\,
	cout => \sCNT_120K[13]~44\);

-- Location: FF_X36_Y14_N11
\sCNT_120K[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[13]~43_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(13));

-- Location: LCCOMB_X36_Y14_N12
\sCNT_120K[14]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT_120K[14]~45_combout\ = (sCNT_120K(14) & (\sCNT_120K[13]~44\ $ (GND))) # (!sCNT_120K(14) & (!\sCNT_120K[13]~44\ & VCC))
-- \sCNT_120K[14]~46\ = CARRY((sCNT_120K(14) & !\sCNT_120K[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(14),
	datad => VCC,
	cin => \sCNT_120K[13]~44\,
	combout => \sCNT_120K[14]~45_combout\,
	cout => \sCNT_120K[14]~46\);

-- Location: FF_X36_Y14_N13
\sCNT_120K[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[14]~45_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(14));

-- Location: FF_X36_Y14_N15
\sCNT_120K[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT_120K[15]~47_combout\,
	sclr => \sCNT_120K[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT_120K(15));

-- Location: LCCOMB_X27_Y9_N22
\prev_pb_down~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \prev_pb_down~feeder_combout\ = \i_pb_down~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pb_down~input_o\,
	combout => \prev_pb_down~feeder_combout\);

-- Location: LCCOMB_X36_Y14_N30
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!sCNT_120K(16) & (!sCNT_120K(15) & (!sCNT_120K(0) & !sCNT_120K(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(16),
	datab => sCNT_120K(15),
	datac => sCNT_120K(0),
	datad => sCNT_120K(1),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X36_Y15_N0
\Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!sCNT_120K(3) & (!sCNT_120K(4) & (!sCNT_120K(5) & !sCNT_120K(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(3),
	datab => sCNT_120K(4),
	datac => sCNT_120K(5),
	datad => sCNT_120K(2),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X36_Y14_N24
\Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (!sCNT_120K(13) & (\Equal2~1_combout\ & (\Equal2~2_combout\ & \Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(13),
	datab => \Equal2~1_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~3_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X36_Y14_N18
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!sCNT_120K(7) & (!sCNT_120K(10) & (!sCNT_120K(12) & !sCNT_120K(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(7),
	datab => sCNT_120K(10),
	datac => sCNT_120K(12),
	datad => sCNT_120K(14),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X27_Y9_N2
\Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (\Equal2~4_combout\ & \Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~4_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~5_combout\);

-- Location: FF_X27_Y9_N23
prev_pb_down : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \prev_pb_down~feeder_combout\,
	clrn => \in_rst~input_o\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_pb_down~q\);

-- Location: LCCOMB_X27_Y9_N4
\prev_prev_pb_up~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \prev_prev_pb_up~0_combout\ = (\in_rst~input_o\ & (\Equal2~4_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_rst~input_o\,
	datab => \Equal2~4_combout\,
	datad => \Equal2~0_combout\,
	combout => \prev_prev_pb_up~0_combout\);

-- Location: FF_X27_Y9_N11
prev_prev_pb_down : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \prev_pb_down~q\,
	sload => VCC,
	ena => \prev_prev_pb_up~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_prev_pb_down~q\);

-- Location: LCCOMB_X27_Y9_N12
re_pb_down : fiftyfivenm_lcell_comb
-- Equation(s):
-- \re_pb_down~combout\ = (\prev_pb_down~q\ & (!\prev_prev_pb_down~q\ & (\Equal2~4_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_pb_down~q\,
	datab => \prev_prev_pb_down~q\,
	datac => \Equal2~4_combout\,
	datad => \Equal2~0_combout\,
	combout => \re_pb_down~combout\);

-- Location: FF_X27_Y9_N5
prev_pb_up : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_pb_up~input_o\,
	clrn => \in_rst~input_o\,
	sload => VCC,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_pb_up~q\);

-- Location: FF_X27_Y9_N25
prev_prev_pb_up : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \prev_pb_up~q\,
	sload => VCC,
	ena => \prev_prev_pb_up~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_prev_pb_up~q\);

-- Location: LCCOMB_X27_Y9_N24
re_pb_up : fiftyfivenm_lcell_comb
-- Equation(s):
-- \re_pb_up~combout\ = (\prev_pb_up~q\ & (\Equal2~4_combout\ & (!\prev_prev_pb_up~q\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_pb_up~q\,
	datab => \Equal2~4_combout\,
	datac => \prev_prev_pb_up~q\,
	datad => \Equal2~0_combout\,
	combout => \re_pb_up~combout\);

-- Location: IOIBUF_X25_Y25_N15
\i_pb_left~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_pb_left,
	o => \i_pb_left~input_o\);

-- Location: FF_X27_Y9_N17
prev_pb_left : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_pb_left~input_o\,
	clrn => \in_rst~input_o\,
	sload => VCC,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_pb_left~q\);

-- Location: FF_X27_Y9_N27
prev_prev_pb_left : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \prev_pb_left~q\,
	sload => VCC,
	ena => \prev_prev_pb_up~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_prev_pb_left~q\);

-- Location: IOIBUF_X25_Y24_N15
\i_pb_right~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_pb_right,
	o => \i_pb_right~input_o\);

-- Location: FF_X27_Y9_N15
prev_pb_right : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_pb_right~input_o\,
	clrn => \in_rst~input_o\,
	sload => VCC,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_pb_right~q\);

-- Location: FF_X27_Y9_N19
prev_prev_pb_right : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \prev_pb_right~q\,
	sload => VCC,
	ena => \prev_prev_pb_up~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_prev_pb_right~q\);

-- Location: LCCOMB_X27_Y9_N18
\process_6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_6~0_combout\ = (\prev_prev_pb_left~q\) # (((\prev_pb_right~q\ & !\prev_prev_pb_right~q\)) # (!\prev_pb_left~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_prev_pb_left~q\,
	datab => \prev_pb_right~q\,
	datac => \prev_prev_pb_right~q\,
	datad => \prev_pb_left~q\,
	combout => \process_6~0_combout\);

-- Location: LCCOMB_X33_Y16_N16
\process_6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_6~1_combout\ = (\process_6~0_combout\) # ((!\Equal2~4_combout\) # (!\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_6~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~4_combout\,
	combout => \process_6~1_combout\);

-- Location: LCCOMB_X33_Y16_N26
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((sCNT4(2) $ (\process_6~1_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((sCNT4(2) & ((\process_6~1_combout\) # (!\Add1~3\))) # (!sCNT4(2) & (\process_6~1_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT4(2),
	datab => \process_6~1_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X33_Y16_N28
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = \process_6~1_combout\ $ (\Add1~5\ $ (sCNT4(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \process_6~1_combout\,
	datad => sCNT4(3),
	cin => \Add1~5\,
	combout => \Add1~6_combout\);

-- Location: LCCOMB_X33_Y16_N20
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add1~6_combout\ & \sCNT4[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datad => \sCNT4[0]~1_combout\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X27_Y9_N26
\sCNT4[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT4[0]~3_combout\ = (\prev_pb_left~q\ & (\prev_prev_pb_left~q\ $ (((\prev_pb_right~q\ & !\prev_prev_pb_right~q\))))) # (!\prev_pb_left~q\ & (((\prev_prev_pb_right~q\)) # (!\prev_pb_right~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_pb_left~q\,
	datab => \prev_pb_right~q\,
	datac => \prev_prev_pb_left~q\,
	datad => \prev_prev_pb_right~q\,
	combout => \sCNT4[0]~3_combout\);

-- Location: LCCOMB_X33_Y16_N30
\sCNT4[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT4[0]~4_combout\ = ((!\sCNT4[0]~3_combout\ & (\Equal2~0_combout\ & \Equal2~4_combout\))) # (!\in_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sCNT4[0]~3_combout\,
	datab => \in_rst~input_o\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~4_combout\,
	combout => \sCNT4[0]~4_combout\);

-- Location: FF_X33_Y16_N21
\sCNT4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	ena => \sCNT4[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT4(3));

-- Location: LCCOMB_X33_Y16_N8
\sCNT4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT4~2_combout\ = (\sCNT4[0]~1_combout\ & (((!sCNT4(0))))) # (!\sCNT4[0]~1_combout\ & (\in_rst~input_o\ & ((\process_6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sCNT4[0]~1_combout\,
	datab => \in_rst~input_o\,
	datac => sCNT4(0),
	datad => \process_6~1_combout\,
	combout => \sCNT4~2_combout\);

-- Location: FF_X33_Y16_N9
\sCNT4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT4~2_combout\,
	ena => \sCNT4[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT4(0));

-- Location: LCCOMB_X33_Y16_N4
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (sCNT4(2)) # ((sCNT4(3)) # ((sCNT4(0)) # (sCNT4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT4(2),
	datab => sCNT4(3),
	datac => sCNT4(0),
	datad => sCNT4(1),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X33_Y16_N2
\sCNT4[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT4[0]~0_combout\ = (sCNT4(2)) # ((sCNT4(3)) # ((!sCNT4(1)) # (!sCNT4(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT4(2),
	datab => sCNT4(3),
	datac => sCNT4(0),
	datad => sCNT4(1),
	combout => \sCNT4[0]~0_combout\);

-- Location: LCCOMB_X33_Y16_N12
\sCNT4[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT4[0]~1_combout\ = (\in_rst~input_o\ & ((\process_6~1_combout\ & (\Equal4~0_combout\)) # (!\process_6~1_combout\ & ((\sCNT4[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \sCNT4[0]~0_combout\,
	datac => \in_rst~input_o\,
	datad => \process_6~1_combout\,
	combout => \sCNT4[0]~1_combout\);

-- Location: LCCOMB_X33_Y16_N22
\Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~1_cout\ = CARRY(sCNT4(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sCNT4(0),
	datad => VCC,
	cout => \Add1~1_cout\);

-- Location: LCCOMB_X33_Y16_N24
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (sCNT4(1) & ((\process_6~1_combout\ & (\Add1~1_cout\ & VCC)) # (!\process_6~1_combout\ & (!\Add1~1_cout\)))) # (!sCNT4(1) & ((\process_6~1_combout\ & (!\Add1~1_cout\)) # (!\process_6~1_combout\ & ((\Add1~1_cout\) # (GND)))))
-- \Add1~3\ = CARRY((sCNT4(1) & (!\process_6~1_combout\ & !\Add1~1_cout\)) # (!sCNT4(1) & ((!\Add1~1_cout\) # (!\process_6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT4(1),
	datab => \process_6~1_combout\,
	datad => VCC,
	cin => \Add1~1_cout\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X33_Y16_N10
\sCNT4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT4~5_combout\ = (\sCNT4[0]~1_combout\ & (((\Add1~2_combout\)))) # (!\sCNT4[0]~1_combout\ & (\process_6~1_combout\ & (\in_rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sCNT4[0]~1_combout\,
	datab => \process_6~1_combout\,
	datac => \in_rst~input_o\,
	datad => \Add1~2_combout\,
	combout => \sCNT4~5_combout\);

-- Location: FF_X33_Y16_N11
\sCNT4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT4~5_combout\,
	ena => \sCNT4[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT4(1));

-- Location: LCCOMB_X33_Y16_N6
\Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (\Add1~4_combout\ & \sCNT4[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~4_combout\,
	datad => \sCNT4[0]~1_combout\,
	combout => \Add1~9_combout\);

-- Location: FF_X33_Y16_N7
\sCNT4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~9_combout\,
	ena => \sCNT4[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT4(2));

-- Location: LCCOMB_X33_Y16_N0
\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!sCNT4(2) & (!sCNT4(3) & (sCNT4(0) & !sCNT4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT4(2),
	datab => sCNT4(3),
	datac => sCNT4(0),
	datad => sCNT4(1),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X30_Y11_N8
\s_cnt_dir_0.CNT_UP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_dir_0.CNT_UP~0_combout\ = (\re_pb_up~combout\ & (!\re_pb_down~combout\ & (!\s_run~q\ & !\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re_pb_up~combout\,
	datab => \re_pb_down~combout\,
	datac => \s_run~q\,
	datad => \Equal4~0_combout\,
	combout => \s_cnt_dir_0.CNT_UP~0_combout\);

-- Location: LCCOMB_X28_Y3_N16
\sCNT0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT0~2_combout\ = (\sCNT0[0]~6_combout\ & (((!sCNT0(0))))) # (!\sCNT0[0]~6_combout\ & (!\s_cnt_dir_0.CNT_UP~0_combout\ & ((\in_rst~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sCNT0[0]~6_combout\,
	datab => \s_cnt_dir_0.CNT_UP~0_combout\,
	datac => sCNT0(0),
	datad => \in_rst~input_o\,
	combout => \sCNT0~2_combout\);

-- Location: LCCOMB_X30_Y11_N10
\sCNT0[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT0[0]~3_combout\ = (\s_run~q\ & (\Equal2~5_combout\)) # (!\s_run~q\ & (((\re_pb_down~combout\ & !\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_run~q\,
	datab => \Equal2~5_combout\,
	datac => \re_pb_down~combout\,
	datad => \Equal4~0_combout\,
	combout => \sCNT0[0]~3_combout\);

-- Location: LCCOMB_X28_Y3_N28
\sCNT0[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT0[0]~4_combout\ = ((\s_cnt_dir_0.CNT_UP~0_combout\) # (\sCNT0[0]~3_combout\)) # (!\in_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_rst~input_o\,
	datac => \s_cnt_dir_0.CNT_UP~0_combout\,
	datad => \sCNT0[0]~3_combout\,
	combout => \sCNT0[0]~4_combout\);

-- Location: FF_X28_Y3_N17
\sCNT0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT0~2_combout\,
	ena => \sCNT0[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT0(0));

-- Location: LCCOMB_X28_Y3_N6
\Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~1_cout\ = CARRY(sCNT0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sCNT0(0),
	datad => VCC,
	cout => \Add3~1_cout\);

-- Location: LCCOMB_X28_Y3_N8
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (sCNT0(1) & ((\s_cnt_dir_0.CNT_UP~0_combout\ & (!\Add3~1_cout\)) # (!\s_cnt_dir_0.CNT_UP~0_combout\ & (\Add3~1_cout\ & VCC)))) # (!sCNT0(1) & ((\s_cnt_dir_0.CNT_UP~0_combout\ & ((\Add3~1_cout\) # (GND))) # 
-- (!\s_cnt_dir_0.CNT_UP~0_combout\ & (!\Add3~1_cout\))))
-- \Add3~3\ = CARRY((sCNT0(1) & (\s_cnt_dir_0.CNT_UP~0_combout\ & !\Add3~1_cout\)) # (!sCNT0(1) & ((\s_cnt_dir_0.CNT_UP~0_combout\) # (!\Add3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT0(1),
	datab => \s_cnt_dir_0.CNT_UP~0_combout\,
	datad => VCC,
	cin => \Add3~1_cout\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X28_Y3_N26
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\sCNT0[0]~6_combout\ & \Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sCNT0[0]~6_combout\,
	datac => \Add3~2_combout\,
	combout => \Add3~4_combout\);

-- Location: FF_X28_Y3_N27
\sCNT0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add3~4_combout\,
	ena => \sCNT0[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT0(1));

-- Location: LCCOMB_X28_Y3_N10
\Add3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~5_combout\ = ((sCNT0(2) $ (\s_cnt_dir_0.CNT_UP~0_combout\ $ (\Add3~3\)))) # (GND)
-- \Add3~6\ = CARRY((sCNT0(2) & ((!\Add3~3\) # (!\s_cnt_dir_0.CNT_UP~0_combout\))) # (!sCNT0(2) & (!\s_cnt_dir_0.CNT_UP~0_combout\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT0(2),
	datab => \s_cnt_dir_0.CNT_UP~0_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~5_combout\,
	cout => \Add3~6\);

-- Location: LCCOMB_X28_Y3_N4
\Add3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~7_combout\ = (\Add3~5_combout\ & \sCNT0[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~5_combout\,
	datac => \sCNT0[0]~6_combout\,
	combout => \Add3~7_combout\);

-- Location: FF_X28_Y3_N5
\sCNT0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add3~7_combout\,
	ena => \sCNT0[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT0(2));

-- Location: LCCOMB_X28_Y3_N2
\Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!sCNT0(3) & (!sCNT0(0) & (!sCNT0(2) & !sCNT0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT0(3),
	datab => sCNT0(0),
	datac => sCNT0(2),
	datad => sCNT0(1),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X28_Y3_N30
\sCNT0[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT0[0]~6_combout\ = (\in_rst~input_o\ & ((\s_cnt_dir_0.CNT_UP~0_combout\ & ((\Equal11~0_combout\))) # (!\s_cnt_dir_0.CNT_UP~0_combout\ & (!\Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \in_rst~input_o\,
	datac => \s_cnt_dir_0.CNT_UP~0_combout\,
	datad => \Equal11~0_combout\,
	combout => \sCNT0[0]~6_combout\);

-- Location: LCCOMB_X28_Y3_N12
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = sCNT0(3) $ (\s_cnt_dir_0.CNT_UP~0_combout\ $ (!\Add3~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT0(3),
	datab => \s_cnt_dir_0.CNT_UP~0_combout\,
	cin => \Add3~6\,
	combout => \Add3~8_combout\);

-- Location: LCCOMB_X28_Y3_N22
\sCNT0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT0~5_combout\ = (\sCNT0[0]~6_combout\ & (((\Add3~8_combout\)))) # (!\sCNT0[0]~6_combout\ & (\in_rst~input_o\ & (!\s_cnt_dir_0.CNT_UP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sCNT0[0]~6_combout\,
	datab => \in_rst~input_o\,
	datac => \s_cnt_dir_0.CNT_UP~0_combout\,
	datad => \Add3~8_combout\,
	combout => \sCNT0~5_combout\);

-- Location: FF_X28_Y3_N23
\sCNT0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT0~5_combout\,
	ena => \sCNT0[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT0(3));

-- Location: LCCOMB_X28_Y3_N24
\Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (((sCNT0(2)) # (sCNT0(1))) # (!sCNT0(0))) # (!sCNT0(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT0(3),
	datab => sCNT0(0),
	datac => sCNT0(2),
	datad => sCNT0(1),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X30_Y13_N28
\sCNT1[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT1[0]~5_combout\ = (\in_rst~input_o\ & ((\s_cnt_dir_1.CNT_UP~0_combout\ & (\Equal11~0_combout\)) # (!\s_cnt_dir_1.CNT_UP~0_combout\ & ((!\Equal8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_rst~input_o\,
	datab => \Equal11~0_combout\,
	datac => \s_cnt_dir_1.CNT_UP~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \sCNT1[0]~5_combout\);

-- Location: LCCOMB_X30_Y13_N2
\sCNT1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT1~2_combout\ = (\sCNT1[0]~5_combout\ & (((!sCNT1(0))))) # (!\sCNT1[0]~5_combout\ & (\in_rst~input_o\ & (!\s_cnt_dir_1.CNT_UP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_rst~input_o\,
	datab => \s_cnt_dir_1.CNT_UP~0_combout\,
	datac => sCNT1(0),
	datad => \sCNT1[0]~5_combout\,
	combout => \sCNT1~2_combout\);

-- Location: LCCOMB_X27_Y9_N10
\s_cnt_dir_1.CNT_DOWN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_dir_1.CNT_DOWN~0_combout\ = (\s_run~q\ & (((\Equal7~0_combout\)))) # (!\s_run~q\ & (\prev_pb_down~q\ & ((!\prev_prev_pb_down~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_pb_down~q\,
	datab => \Equal7~0_combout\,
	datac => \prev_prev_pb_down~q\,
	datad => \s_run~q\,
	combout => \s_cnt_dir_1.CNT_DOWN~0_combout\);

-- Location: LCCOMB_X27_Y9_N20
\s_cnt_dir_1.CNT_DOWN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_dir_1.CNT_DOWN~1_combout\ = (\Equal6~0_combout\) # (\s_run~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal6~0_combout\,
	datad => \s_run~q\,
	combout => \s_cnt_dir_1.CNT_DOWN~1_combout\);

-- Location: LCCOMB_X27_Y9_N6
\s_cnt_dir_1.CNT_DOWN~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_dir_1.CNT_DOWN~2_combout\ = (\s_cnt_dir_1.CNT_DOWN~0_combout\ & (\s_cnt_dir_1.CNT_DOWN~1_combout\ & (\Equal2~4_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_cnt_dir_1.CNT_DOWN~0_combout\,
	datab => \s_cnt_dir_1.CNT_DOWN~1_combout\,
	datac => \Equal2~4_combout\,
	datad => \Equal2~0_combout\,
	combout => \s_cnt_dir_1.CNT_DOWN~2_combout\);

-- Location: LCCOMB_X27_Y9_N14
\sCNT1[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT1[0]~3_combout\ = ((\s_cnt_dir_1.CNT_UP~0_combout\) # (\s_cnt_dir_1.CNT_DOWN~2_combout\)) # (!\in_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_rst~input_o\,
	datab => \s_cnt_dir_1.CNT_UP~0_combout\,
	datad => \s_cnt_dir_1.CNT_DOWN~2_combout\,
	combout => \sCNT1[0]~3_combout\);

-- Location: FF_X30_Y13_N3
\sCNT1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT1~2_combout\,
	ena => \sCNT1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT1(0));

-- Location: LCCOMB_X30_Y13_N12
\Add6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~1_cout\ = CARRY(sCNT1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sCNT1(0),
	datad => VCC,
	cout => \Add6~1_cout\);

-- Location: LCCOMB_X30_Y13_N14
\Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (sCNT1(1) & ((\s_cnt_dir_1.CNT_UP~0_combout\ & (!\Add6~1_cout\)) # (!\s_cnt_dir_1.CNT_UP~0_combout\ & (\Add6~1_cout\ & VCC)))) # (!sCNT1(1) & ((\s_cnt_dir_1.CNT_UP~0_combout\ & ((\Add6~1_cout\) # (GND))) # 
-- (!\s_cnt_dir_1.CNT_UP~0_combout\ & (!\Add6~1_cout\))))
-- \Add6~3\ = CARRY((sCNT1(1) & (\s_cnt_dir_1.CNT_UP~0_combout\ & !\Add6~1_cout\)) # (!sCNT1(1) & ((\s_cnt_dir_1.CNT_UP~0_combout\) # (!\Add6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT1(1),
	datab => \s_cnt_dir_1.CNT_UP~0_combout\,
	datad => VCC,
	cin => \Add6~1_cout\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X30_Y13_N16
\Add6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~5_combout\ = ((sCNT1(2) $ (\s_cnt_dir_1.CNT_UP~0_combout\ $ (\Add6~3\)))) # (GND)
-- \Add6~6\ = CARRY((sCNT1(2) & ((!\Add6~3\) # (!\s_cnt_dir_1.CNT_UP~0_combout\))) # (!sCNT1(2) & (!\s_cnt_dir_1.CNT_UP~0_combout\ & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT1(2),
	datab => \s_cnt_dir_1.CNT_UP~0_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~5_combout\,
	cout => \Add6~6\);

-- Location: LCCOMB_X30_Y13_N6
\Add6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~7_combout\ = (\Add6~5_combout\ & \sCNT1[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~5_combout\,
	datad => \sCNT1[0]~5_combout\,
	combout => \Add6~7_combout\);

-- Location: FF_X30_Y13_N7
\sCNT1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add6~7_combout\,
	ena => \sCNT1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT1(2));

-- Location: LCCOMB_X30_Y13_N18
\Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = \s_cnt_dir_1.CNT_UP~0_combout\ $ (\Add6~6\ $ (!sCNT1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_cnt_dir_1.CNT_UP~0_combout\,
	datad => sCNT1(3),
	cin => \Add6~6\,
	combout => \Add6~8_combout\);

-- Location: LCCOMB_X30_Y13_N24
\sCNT1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT1~4_combout\ = (\sCNT1[0]~5_combout\ & (((\Add6~8_combout\)))) # (!\sCNT1[0]~5_combout\ & (\in_rst~input_o\ & ((!\s_cnt_dir_1.CNT_UP~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_rst~input_o\,
	datab => \Add6~8_combout\,
	datac => \s_cnt_dir_1.CNT_UP~0_combout\,
	datad => \sCNT1[0]~5_combout\,
	combout => \sCNT1~4_combout\);

-- Location: FF_X30_Y13_N25
\sCNT1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT1~4_combout\,
	ena => \sCNT1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT1(3));

-- Location: LCCOMB_X30_Y13_N10
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!sCNT1(2) & (!sCNT1(3) & (!sCNT1(1) & !sCNT1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT1(2),
	datab => sCNT1(3),
	datac => sCNT1(1),
	datad => sCNT1(0),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X31_Y13_N26
\prev_pb_center~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \prev_pb_center~feeder_combout\ = \i_pb_center~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pb_center~input_o\,
	combout => \prev_pb_center~feeder_combout\);

-- Location: FF_X31_Y13_N27
prev_pb_center : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \prev_pb_center~feeder_combout\,
	clrn => \in_rst~input_o\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_pb_center~q\);

-- Location: FF_X31_Y13_N25
prev_prev_pb_center : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \prev_pb_center~q\,
	sload => VCC,
	ena => \prev_prev_pb_up~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_prev_pb_center~q\);

-- Location: LCCOMB_X31_Y13_N24
\s_run~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_run~0_combout\ = \s_run~q\ $ (((\prev_pb_center~q\ & (\Equal2~5_combout\ & !\prev_prev_pb_center~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_pb_center~q\,
	datab => \Equal2~5_combout\,
	datac => \prev_prev_pb_center~q\,
	datad => \s_run~q\,
	combout => \s_run~0_combout\);

-- Location: LCCOMB_X33_Y16_N14
\s_cnt_dir_3.CNT_UP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_dir_3.CNT_UP~0_combout\ = (sCNT4(2)) # ((sCNT4(3)) # ((sCNT4(0) & sCNT4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT4(2),
	datab => sCNT4(3),
	datac => sCNT4(0),
	datad => sCNT4(1),
	combout => \s_cnt_dir_3.CNT_UP~0_combout\);

-- Location: LCCOMB_X35_Y16_N0
\s_cnt_dir_3.CNT_UP~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_dir_3.CNT_UP~1_combout\ = (!\re_pb_down~combout\ & (\re_pb_up~combout\ & (\s_cnt_dir_3.CNT_UP~0_combout\ & !\s_run~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re_pb_down~combout\,
	datab => \re_pb_up~combout\,
	datac => \s_cnt_dir_3.CNT_UP~0_combout\,
	datad => \s_run~q\,
	combout => \s_cnt_dir_3.CNT_UP~1_combout\);

-- Location: LCCOMB_X35_Y16_N2
\sCNT3[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT3[0]~0_combout\ = (!sCNT3(2) & !sCNT3(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sCNT3(2),
	datad => sCNT3(1),
	combout => \sCNT3[0]~0_combout\);

-- Location: LCCOMB_X35_Y16_N28
\sCNT3[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT3[0]~1_combout\ = ((\s_cnt_dir_3.CNT_UP~1_combout\ & ((!sCNT3(0)) # (!sCNT3(3)))) # (!\s_cnt_dir_3.CNT_UP~1_combout\ & ((sCNT3(3)) # (sCNT3(0))))) # (!\sCNT3[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sCNT3[0]~0_combout\,
	datab => \s_cnt_dir_3.CNT_UP~1_combout\,
	datac => sCNT3(3),
	datad => sCNT3(0),
	combout => \sCNT3[0]~1_combout\);

-- Location: LCCOMB_X35_Y16_N24
\sCNT3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT3~2_combout\ = (\in_rst~input_o\ & ((\sCNT3[0]~1_combout\ & (!sCNT3(0))) # (!\sCNT3[0]~1_combout\ & ((!\s_cnt_dir_3.CNT_UP~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_rst~input_o\,
	datab => \sCNT3[0]~1_combout\,
	datac => sCNT3(0),
	datad => \s_cnt_dir_3.CNT_UP~1_combout\,
	combout => \sCNT3~2_combout\);

-- Location: LCCOMB_X33_Y16_N18
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (sCNT4(2)) # ((sCNT4(3)) # ((sCNT4(0)) # (!sCNT4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT4(2),
	datab => sCNT4(3),
	datac => sCNT4(0),
	datad => sCNT4(1),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X27_Y9_N8
\s_cnt_dir_2.CNT_UP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_dir_2.CNT_UP~0_combout\ = (!\re_pb_down~combout\ & (\re_pb_up~combout\ & (!\Equal5~0_combout\ & !\s_run~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re_pb_down~combout\,
	datab => \re_pb_up~combout\,
	datac => \Equal5~0_combout\,
	datad => \s_run~q\,
	combout => \s_cnt_dir_2.CNT_UP~0_combout\);

-- Location: LCCOMB_X28_Y7_N2
\Add8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (sCNT2(1) & ((\s_cnt_dir_2.CNT_UP~0_combout\ & (!\Add8~1_cout\)) # (!\s_cnt_dir_2.CNT_UP~0_combout\ & (\Add8~1_cout\ & VCC)))) # (!sCNT2(1) & ((\s_cnt_dir_2.CNT_UP~0_combout\ & ((\Add8~1_cout\) # (GND))) # 
-- (!\s_cnt_dir_2.CNT_UP~0_combout\ & (!\Add8~1_cout\))))
-- \Add8~3\ = CARRY((sCNT2(1) & (\s_cnt_dir_2.CNT_UP~0_combout\ & !\Add8~1_cout\)) # (!sCNT2(1) & ((\s_cnt_dir_2.CNT_UP~0_combout\) # (!\Add8~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT2(1),
	datab => \s_cnt_dir_2.CNT_UP~0_combout\,
	datad => VCC,
	cin => \Add8~1_cout\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X28_Y7_N4
\Add8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~5_combout\ = ((\s_cnt_dir_2.CNT_UP~0_combout\ $ (sCNT2(2) $ (\Add8~3\)))) # (GND)
-- \Add8~6\ = CARRY((\s_cnt_dir_2.CNT_UP~0_combout\ & (sCNT2(2) & !\Add8~3\)) # (!\s_cnt_dir_2.CNT_UP~0_combout\ & ((sCNT2(2)) # (!\Add8~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_cnt_dir_2.CNT_UP~0_combout\,
	datab => sCNT2(2),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~5_combout\,
	cout => \Add8~6\);

-- Location: LCCOMB_X28_Y7_N20
\Add8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~7_combout\ = (\Add8~5_combout\ & \sCNT2[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~5_combout\,
	datad => \sCNT2[0]~1_combout\,
	combout => \Add8~7_combout\);

-- Location: LCCOMB_X27_Y9_N0
\s_cnt_dir_2.CNT_DOWN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_dir_2.CNT_DOWN~0_combout\ = (\s_run~q\ & (\Equal8~0_combout\)) # (!\s_run~q\ & ((!\Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \s_run~q\,
	combout => \s_cnt_dir_2.CNT_DOWN~0_combout\);

-- Location: LCCOMB_X27_Y9_N30
\s_cnt_dir_2.CNT_DOWN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_dir_2.CNT_DOWN~1_combout\ = (\s_cnt_dir_2.CNT_DOWN~0_combout\ & ((\s_run~q\ & ((\s_cnt_dir_1.CNT_DOWN~2_combout\))) # (!\s_run~q\ & (\re_pb_down~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re_pb_down~combout\,
	datab => \s_cnt_dir_2.CNT_DOWN~0_combout\,
	datac => \s_cnt_dir_1.CNT_DOWN~2_combout\,
	datad => \s_run~q\,
	combout => \s_cnt_dir_2.CNT_DOWN~1_combout\);

-- Location: LCCOMB_X27_Y9_N16
\sCNT2[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT2[0]~3_combout\ = (\s_cnt_dir_2.CNT_DOWN~1_combout\) # ((\s_cnt_dir_2.CNT_UP~0_combout\) # (!\in_rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_cnt_dir_2.CNT_DOWN~1_combout\,
	datab => \s_cnt_dir_2.CNT_UP~0_combout\,
	datad => \in_rst~input_o\,
	combout => \sCNT2[0]~3_combout\);

-- Location: FF_X28_Y7_N21
\sCNT2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add8~7_combout\,
	ena => \sCNT2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT2(2));

-- Location: LCCOMB_X28_Y7_N6
\Add8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = sCNT2(3) $ (\Add8~6\ $ (!\s_cnt_dir_2.CNT_UP~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT2(3),
	datad => \s_cnt_dir_2.CNT_UP~0_combout\,
	cin => \Add8~6\,
	combout => \Add8~8_combout\);

-- Location: LCCOMB_X28_Y7_N22
\sCNT2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT2~4_combout\ = (\sCNT2[0]~1_combout\ & (\Add8~8_combout\)) # (!\sCNT2[0]~1_combout\ & (((!\s_cnt_dir_2.CNT_UP~0_combout\ & \in_rst~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~8_combout\,
	datab => \s_cnt_dir_2.CNT_UP~0_combout\,
	datac => \in_rst~input_o\,
	datad => \sCNT2[0]~1_combout\,
	combout => \sCNT2~4_combout\);

-- Location: FF_X28_Y7_N23
\sCNT2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT2~4_combout\,
	ena => \sCNT2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT2(3));

-- Location: LCCOMB_X28_Y7_N24
\sCNT2[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT2[0]~0_combout\ = (sCNT2(1)) # (((sCNT2(2)) # (!sCNT2(3))) # (!sCNT2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT2(1),
	datab => sCNT2(0),
	datac => sCNT2(3),
	datad => sCNT2(2),
	combout => \sCNT2[0]~0_combout\);

-- Location: LCCOMB_X28_Y7_N28
\sCNT2[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT2[0]~1_combout\ = (\in_rst~input_o\ & ((\s_cnt_dir_2.CNT_UP~0_combout\ & ((\sCNT2[0]~0_combout\))) # (!\s_cnt_dir_2.CNT_UP~0_combout\ & (!\Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \s_cnt_dir_2.CNT_UP~0_combout\,
	datac => \in_rst~input_o\,
	datad => \sCNT2[0]~0_combout\,
	combout => \sCNT2[0]~1_combout\);

-- Location: LCCOMB_X28_Y7_N16
\sCNT2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT2~2_combout\ = (\sCNT2[0]~1_combout\ & (((!sCNT2(0))))) # (!\sCNT2[0]~1_combout\ & (\in_rst~input_o\ & (!\s_cnt_dir_2.CNT_UP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_rst~input_o\,
	datab => \s_cnt_dir_2.CNT_UP~0_combout\,
	datac => sCNT2(0),
	datad => \sCNT2[0]~1_combout\,
	combout => \sCNT2~2_combout\);

-- Location: FF_X28_Y7_N17
\sCNT2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT2~2_combout\,
	ena => \sCNT2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT2(0));

-- Location: LCCOMB_X28_Y7_N0
\Add8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~1_cout\ = CARRY(sCNT2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sCNT2(0),
	datad => VCC,
	cout => \Add8~1_cout\);

-- Location: LCCOMB_X28_Y7_N10
\Add8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (\Add8~2_combout\ & \sCNT2[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~2_combout\,
	datad => \sCNT2[0]~1_combout\,
	combout => \Add8~4_combout\);

-- Location: FF_X28_Y7_N11
\sCNT2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add8~4_combout\,
	ena => \sCNT2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT2(1));

-- Location: LCCOMB_X28_Y7_N26
\Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!sCNT2(1) & (!sCNT2(0) & (!sCNT2(3) & !sCNT2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT2(1),
	datab => sCNT2(0),
	datac => sCNT2(3),
	datad => sCNT2(2),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X35_Y16_N22
\sCNT3[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT3[0]~3_combout\ = ((!\re_pb_down~combout\ & !\re_pb_up~combout\)) # (!\s_cnt_dir_3.CNT_UP~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re_pb_down~combout\,
	datac => \s_cnt_dir_3.CNT_UP~0_combout\,
	datad => \re_pb_up~combout\,
	combout => \sCNT3[0]~3_combout\);

-- Location: LCCOMB_X35_Y16_N8
\sCNT3[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT3[0]~4_combout\ = (\in_rst~input_o\ & ((\s_run~q\ & (!\Equal9~0_combout\)) # (!\s_run~q\ & ((\sCNT3[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \in_rst~input_o\,
	datac => \sCNT3[0]~3_combout\,
	datad => \s_run~q\,
	combout => \sCNT3[0]~4_combout\);

-- Location: LCCOMB_X35_Y16_N26
\sCNT3[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT3[0]~5_combout\ = (!\sCNT3[0]~4_combout\ & (((\s_cnt_dir_2.CNT_DOWN~1_combout\) # (!\in_rst~input_o\)) # (!\s_run~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_run~q\,
	datab => \in_rst~input_o\,
	datac => \sCNT3[0]~4_combout\,
	datad => \s_cnt_dir_2.CNT_DOWN~1_combout\,
	combout => \sCNT3[0]~5_combout\);

-- Location: FF_X35_Y16_N25
\sCNT3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT3~2_combout\,
	ena => \sCNT3[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT3(0));

-- Location: LCCOMB_X35_Y16_N14
\Add10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add10~1_cout\ = CARRY(sCNT3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sCNT3(0),
	datad => VCC,
	cout => \Add10~1_cout\);

-- Location: LCCOMB_X35_Y16_N16
\Add10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (sCNT3(1) & ((\s_cnt_dir_3.CNT_UP~1_combout\ & (!\Add10~1_cout\)) # (!\s_cnt_dir_3.CNT_UP~1_combout\ & (\Add10~1_cout\ & VCC)))) # (!sCNT3(1) & ((\s_cnt_dir_3.CNT_UP~1_combout\ & ((\Add10~1_cout\) # (GND))) # 
-- (!\s_cnt_dir_3.CNT_UP~1_combout\ & (!\Add10~1_cout\))))
-- \Add10~3\ = CARRY((sCNT3(1) & (\s_cnt_dir_3.CNT_UP~1_combout\ & !\Add10~1_cout\)) # (!sCNT3(1) & ((\s_cnt_dir_3.CNT_UP~1_combout\) # (!\Add10~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT3(1),
	datab => \s_cnt_dir_3.CNT_UP~1_combout\,
	datad => VCC,
	cin => \Add10~1_cout\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X35_Y16_N10
\Add10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (\Add10~2_combout\ & (\in_rst~input_o\ & \sCNT3[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datac => \in_rst~input_o\,
	datad => \sCNT3[0]~1_combout\,
	combout => \Add10~4_combout\);

-- Location: FF_X35_Y16_N11
\sCNT3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add10~4_combout\,
	ena => \sCNT3[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT3(1));

-- Location: LCCOMB_X35_Y16_N18
\Add10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add10~5_combout\ = ((sCNT3(2) $ (\s_cnt_dir_3.CNT_UP~1_combout\ $ (\Add10~3\)))) # (GND)
-- \Add10~6\ = CARRY((sCNT3(2) & ((!\Add10~3\) # (!\s_cnt_dir_3.CNT_UP~1_combout\))) # (!sCNT3(2) & (!\s_cnt_dir_3.CNT_UP~1_combout\ & !\Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT3(2),
	datab => \s_cnt_dir_3.CNT_UP~1_combout\,
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~5_combout\,
	cout => \Add10~6\);

-- Location: LCCOMB_X35_Y16_N4
\Add10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add10~7_combout\ = (\Add10~5_combout\ & (\in_rst~input_o\ & \sCNT3[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~5_combout\,
	datac => \in_rst~input_o\,
	datad => \sCNT3[0]~1_combout\,
	combout => \Add10~7_combout\);

-- Location: FF_X35_Y16_N5
\sCNT3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add10~7_combout\,
	ena => \sCNT3[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT3(2));

-- Location: LCCOMB_X35_Y16_N20
\Add10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = sCNT3(3) $ (\Add10~6\ $ (!\s_cnt_dir_3.CNT_UP~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT3(3),
	datad => \s_cnt_dir_3.CNT_UP~1_combout\,
	cin => \Add10~6\,
	combout => \Add10~8_combout\);

-- Location: LCCOMB_X35_Y16_N30
\sCNT3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT3~6_combout\ = (\in_rst~input_o\ & ((\sCNT3[0]~1_combout\ & (\Add10~8_combout\)) # (!\sCNT3[0]~1_combout\ & ((!\s_cnt_dir_3.CNT_UP~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~8_combout\,
	datab => \sCNT3[0]~1_combout\,
	datac => \in_rst~input_o\,
	datad => \s_cnt_dir_3.CNT_UP~1_combout\,
	combout => \sCNT3~6_combout\);

-- Location: FF_X35_Y16_N31
\sCNT3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \sCNT3~6_combout\,
	ena => \sCNT3[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT3(3));

-- Location: LCCOMB_X35_Y16_N12
\s_run~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_run~1_combout\ = (sCNT3(3)) # (((sCNT3(0)) # (!\Equal9~0_combout\)) # (!\sCNT3[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT3(3),
	datab => \sCNT3[0]~0_combout\,
	datac => \Equal9~0_combout\,
	datad => sCNT3(0),
	combout => \s_run~1_combout\);

-- Location: LCCOMB_X30_Y13_N0
\s_run~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_run~2_combout\ = (\s_run~0_combout\ & (((\s_run~1_combout\) # (!\Equal7~0_combout\)) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \s_run~0_combout\,
	datac => \Equal7~0_combout\,
	datad => \s_run~1_combout\,
	combout => \s_run~2_combout\);

-- Location: FF_X30_Y13_N1
s_run : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_run~2_combout\,
	sclr => \ALT_INV_in_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_run~q\);

-- Location: LCCOMB_X27_Y9_N28
\s_cnt_dir_1.CNT_UP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_dir_1.CNT_UP~0_combout\ = (!\re_pb_down~combout\ & (\re_pb_up~combout\ & (\Equal6~0_combout\ & !\s_run~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re_pb_down~combout\,
	datab => \re_pb_up~combout\,
	datac => \Equal6~0_combout\,
	datad => \s_run~q\,
	combout => \s_cnt_dir_1.CNT_UP~0_combout\);

-- Location: LCCOMB_X30_Y13_N20
\Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\Add6~2_combout\ & \sCNT1[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~2_combout\,
	datad => \sCNT1[0]~5_combout\,
	combout => \Add6~4_combout\);

-- Location: FF_X30_Y13_N21
\sCNT1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add6~4_combout\,
	ena => \sCNT1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT1(1));

-- Location: LCCOMB_X33_Y10_N12
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (sCNT_120K(15) & ((sCNT1(1)) # ((sCNT_120K(16))))) # (!sCNT_120K(15) & (((sCNT0(1) & !sCNT_120K(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(15),
	datab => sCNT1(1),
	datac => sCNT0(1),
	datad => sCNT_120K(16),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X33_Y10_N6
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((sCNT3(1)) # ((!sCNT_120K(16))))) # (!\Mux2~0_combout\ & (((sCNT2(1) & sCNT_120K(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => sCNT3(1),
	datac => sCNT2(1),
	datad => sCNT_120K(16),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X33_Y10_N8
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (sCNT_120K(15) & (((sCNT_120K(16))))) # (!sCNT_120K(15) & ((sCNT_120K(16) & (sCNT2(0))) # (!sCNT_120K(16) & ((sCNT0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT_120K(15),
	datab => sCNT2(0),
	datac => sCNT0(0),
	datad => sCNT_120K(16),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X33_Y10_N18
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & ((sCNT3(0)) # ((!sCNT_120K(15))))) # (!\Mux3~0_combout\ & (((sCNT1(0) & sCNT_120K(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT3(0),
	datab => \Mux3~0_combout\,
	datac => sCNT1(0),
	datad => sCNT_120K(15),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X33_Y10_N20
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (sCNT_120K(16) & (((sCNT_120K(15))))) # (!sCNT_120K(16) & ((sCNT_120K(15) & ((sCNT1(3)))) # (!sCNT_120K(15) & (sCNT0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT0(3),
	datab => sCNT_120K(16),
	datac => sCNT1(3),
	datad => sCNT_120K(15),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X33_Y10_N30
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((sCNT3(3)) # (!sCNT_120K(16))))) # (!\Mux0~0_combout\ & (sCNT2(3) & ((sCNT_120K(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT2(3),
	datab => \Mux0~0_combout\,
	datac => sCNT3(3),
	datad => sCNT_120K(16),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X33_Y10_N16
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (sCNT_120K(16) & (((sCNT2(2)) # (sCNT_120K(15))))) # (!sCNT_120K(16) & (sCNT0(2) & ((!sCNT_120K(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT0(2),
	datab => sCNT_120K(16),
	datac => sCNT2(2),
	datad => sCNT_120K(15),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X33_Y10_N10
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & ((sCNT3(2)) # ((!sCNT_120K(15))))) # (!\Mux1~0_combout\ & (((sCNT1(2) & sCNT_120K(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT3(2),
	datab => \Mux1~0_combout\,
	datac => sCNT1(2),
	datad => sCNT_120K(15),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X33_Y10_N0
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux2~1_combout\ & (((\Mux0~1_combout\)))) # (!\Mux2~1_combout\ & (\Mux1~1_combout\ $ (((\Mux3~1_combout\ & !\Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X33_Y10_N2
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux0~1_combout\ & ((\Mux2~1_combout\) # ((\Mux1~1_combout\)))) # (!\Mux0~1_combout\ & (\Mux1~1_combout\ & (\Mux2~1_combout\ $ (\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X33_Y10_N28
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux1~1_combout\ & (((\Mux0~1_combout\)))) # (!\Mux1~1_combout\ & (\Mux2~1_combout\ & ((\Mux0~1_combout\) # (!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X33_Y10_N22
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux2~1_combout\ & ((\Mux0~1_combout\) # ((\Mux3~1_combout\ & \Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (\Mux1~1_combout\ $ (((\Mux3~1_combout\ & !\Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X33_Y10_N24
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux3~1_combout\) # ((\Mux2~1_combout\ & (\Mux0~1_combout\)) # (!\Mux2~1_combout\ & ((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X33_Y10_N26
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux3~1_combout\ & ((\Mux2~1_combout\) # (\Mux0~1_combout\ $ (!\Mux1~1_combout\)))) # (!\Mux3~1_combout\ & ((\Mux1~1_combout\ & ((\Mux0~1_combout\))) # (!\Mux1~1_combout\ & (\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X33_Y10_N4
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux2~1_combout\ & (!\Mux0~1_combout\ & ((!\Mux1~1_combout\) # (!\Mux3~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux0~1_combout\ $ (\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X49_Y8_N16
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!sCNT_120K(15) & sCNT_120K(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sCNT_120K(15),
	datac => sCNT_120K(16),
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X25_Y22_N15
\i_pb_rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_pb_rst,
	o => \i_pb_rst~input_o\);

-- Location: UNVM_X0_Y18_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y28_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_o_led(0) <= \o_led[0]~output_o\;

ww_o_led(1) <= \o_led[1]~output_o\;

ww_o_led(2) <= \o_led[2]~output_o\;

ww_o_led(3) <= \o_led[3]~output_o\;

ww_o_led(4) <= \o_led[4]~output_o\;

ww_o_led(5) <= \o_led[5]~output_o\;

ww_o_led(6) <= \o_led[6]~output_o\;

ww_o_led(7) <= \o_led[7]~output_o\;

ww_o_sem_r <= \o_sem_r~output_o\;

ww_o_sem_y <= \o_sem_y~output_o\;

ww_o_sem_g <= \o_sem_g~output_o\;

ww_o_n_col_0_or_7segm_a <= \o_n_col_0_or_7segm_a~output_o\;

ww_o_n_col_1_or_7segm_b <= \o_n_col_1_or_7segm_b~output_o\;

ww_o_n_col_2_or_7segm_c <= \o_n_col_2_or_7segm_c~output_o\;

ww_o_n_col_3_or_7segm_d <= \o_n_col_3_or_7segm_d~output_o\;

ww_o_n_col_4_or_7segm_e <= \o_n_col_4_or_7segm_e~output_o\;

ww_o_n_col_5_or_7segm_f <= \o_n_col_5_or_7segm_f~output_o\;

ww_o_n_col_6_or_7segm_g <= \o_n_col_6_or_7segm_g~output_o\;

ww_o_n_col_7_or_7segm_dp <= \o_n_col_7_or_7segm_dp~output_o\;

ww_o_mux_row_or_digit(0) <= \o_mux_row_or_digit[0]~output_o\;

ww_o_mux_row_or_digit(1) <= \o_mux_row_or_digit[1]~output_o\;

ww_o_mux_row_or_digit(2) <= \o_mux_row_or_digit[2]~output_o\;

ww_o_mux_sel_color_or_7segm(0) <= \o_mux_sel_color_or_7segm[0]~output_o\;

ww_o_mux_sel_color_or_7segm(1) <= \o_mux_sel_color_or_7segm[1]~output_o\;
END structure;


