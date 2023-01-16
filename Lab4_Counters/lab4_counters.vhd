

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

library work;

entity lab4_counters is
	generic(
		-- Default frequency used in synthesis.
		constant CLK_FREQ         : positive := 12000000
	);
	port(
		-- On MAX1000.
		-- System signals.
		i_clk                      :  in std_logic; -- 12MHz clock.
		in_rst                     :  in std_logic; -- Active low reset.
		
		
		-- LEDs.
		o_led                      : out std_logic_vector(7 downto 0);
		
		
		
		-- On LPRS1_MAX1000_Shield.
		-- Semaphore.
		o_sem_r                    : out std_logic;
		o_sem_y                    : out std_logic;
		o_sem_g                    : out std_logic;
		
		
		-- RGB 8x8 LED matrix and 7-segm outputs.
		o_n_col_0_or_7segm_a       : out std_logic;
		o_n_col_1_or_7segm_b       : out std_logic;
		o_n_col_2_or_7segm_c       : out std_logic;
		o_n_col_3_or_7segm_d       : out std_logic;
		o_n_col_4_or_7segm_e       : out std_logic;
		o_n_col_5_or_7segm_f       : out std_logic;
		o_n_col_6_or_7segm_g       : out std_logic;
		o_n_col_7_or_7segm_dp      : out std_logic;
		
		o_mux_row_or_digit         : out std_logic_vector(2 downto 0);
		
		o_mux_sel_color_or_7segm   : out std_logic_vector(1 downto 0);
		
		
		-- Inputs.
		i_sw                       :  in std_logic_vector(7 downto 0);
		
		i_pb_up                    :  in std_logic;
		i_pb_center                :  in std_logic;
		i_pb_down                  :  in std_logic;
		i_pb_left                  :  in std_logic;
		i_pb_right                 :  in std_logic;
		i_pb_rst                   :  in std_logic
	);
end entity;

architecture lab4_counters_arch of lab4_counters is
	
	signal digit_sel    : std_logic_vector(1 downto 0);
	signal digit        : std_logic_vector(3 downto 0);
	signal digit_0      : std_logic_vector(3 downto 0);
	signal digit_1      : std_logic_vector(3 downto 0);
	signal digit_2      : std_logic_vector(3 downto 0);
	signal digit_3      : std_logic_vector(3 downto 0);
	
	signal segm_afbgecd : std_logic_vector(6 downto 0);
	signal segm_dp      : std_logic;
	
	-----nasi signali
	signal sCNT_120K: std_logic_vector(16 downto 0);
	signal sCNT0, sCNT1, sCNT2, sCNT3, sCNT4 : std_logic_vector(3 downto 0);
	
	signal sTC0, s_done: std_logic;
	signal sDEC: std_logic_vector(3 downto 0);
	signal sPLUS1,sMINUS1: std_logic_vector(1 downto 0);
	
	
	signal    prev_pb_up,prev_prev_pb_up, re_pb_up,re_pb_center,re_pb_down, re_pb_right,re_pb_left : std_logic;
	signal    prev_prev_pb_center,prev_pb_center : std_logic;
	signal    prev_prev_pb_down,prev_pb_down : std_logic;
	signal    prev_prev_pb_left,prev_pb_left : std_logic;
	signal    prev_prev_pb_right,prev_pb_right : std_logic;
	
	type t_cnt_dir is (CNT_PAUSE, CNT_DOWN, CNT_UP);
	signal s_cnt_dir_0, s_cnt_dir_1 , s_cnt_dir_2, s_cnt_dir_3 : t_cnt_dir;
	
	signal   s_run,sTC_UP_0,sTC_DOWN_0,s_TC0 : std_logic;
	signal  sCNT_UP_MUX0,sCNT_DOWN_MUX0,s_CNT_MUX_0 : std_logic_vector(3 downto 0);
	
	signal   sTC_UP_1,sTC_DOWN_1,s_TC1 : std_logic;
	signal  sCNT_UP_MUX1,sCNT_DOWN_MUX1,s_CNT_MUX_1 : std_logic_vector(3 downto 0);
	
	signal  sTC_UP_2,sTC_DOWN_2,s_TC2 : std_logic;
	signal  sCNT_UP_MUX2,sCNT_DOWN_MUX2,s_CNT_MUX_2 : std_logic_vector(3 downto 0);
	
	signal   sTC_UP_3,sTC_DOWN_3,s_TC3 : std_logic;
	signal  sCNT_UP_MUX3,sCNT_DOWN_MUX3,s_CNT_MUX_3 : std_logic_vector(3 downto 0);
begin
	o_led <= i_sw;
	o_sem_r <= i_pb_up;
	o_sem_y <= i_pb_center;
	o_sem_g <= i_pb_down;
	
--promena umesto x napisali sCNT
	digit_0 <= sCNT0;
	digit_1 <= sCNT1;
	digit_2 <= SCNT2;
	digit_3 <= sCNT3;
	
	
	digit_sel <= sCNT_120K(16 downto 15); -- TODO Connect to lowest bits of counters.
	
	
	-- Mux for digits.
	with digit_sel select digit <=
		digit_0 when "00",
		digit_1 when "01",
		digit_2 when "10",
		digit_3 when others;
	
	-- 7-segm decoder.
	with digit select segm_afbgecd <=
		     '1'&
		'1'&      '1'&
		     '0'&
		'1'&      '1'&
		     '1'
				when x"0",
		     '0'&
		'0'&      '1'&
		     '0'&
		'0'&      '1'&
		     '0'
				when x"1",
		     '1'&
		'0'&      '1'&
		     '1'&
		'1'&      '0'&
		     '1'
				when x"2",
		     '1'&
		'0'&      '1'&
		     '1'&
		'0'&      '1'&
		     '1'
				when x"3",
		     '0'&
		'1'&      '1'&
		     '1'&
		'0'&      '1'&
		     '0'
				when x"4",
		     '1'&
		'1'&      '0'&
		     '1'&
		'0'&      '1'&
		     '1'
				when x"5",
		     '1'&
		'1'&      '0'&
		     '1'&
		'1'&      '1'&
		     '1'
				when x"6",
		     '1'&
		'0'&      '1'&
		     '0'&
		'0'&      '1'&
		     '0'
				when x"7",
		     '1'&
		'1'&      '1'&
		     '1'&
		'1'&      '1'&
		     '1'
				when x"8",
		     '1'&
		'1'&      '1'&
		     '1'&
		'0'&      '1'&
		     '1'
				when x"9",
		     '0'&
		'0'&      '0'&
		     '0'&
		'0'&      '0'&
		     '0'
				when others;
	
	-- Set point on odd numbers.
	segm_dp <= '1' when digit_sel = "10" else '0';
	
	o_n_col_0_or_7segm_a  <= not segm_afbgecd(6);
	o_n_col_1_or_7segm_b  <= not segm_afbgecd(4);
	o_n_col_2_or_7segm_c  <= not segm_afbgecd(1);
	o_n_col_3_or_7segm_d  <= not segm_afbgecd(0);
	o_n_col_4_or_7segm_e  <= not segm_afbgecd(2);
	o_n_col_5_or_7segm_f  <= not segm_afbgecd(5);
	o_n_col_6_or_7segm_g  <= not segm_afbgecd(3);
	o_n_col_7_or_7segm_dp <= not segm_dp;
	
	o_mux_row_or_digit <= '0' & digit_sel;
	
	o_mux_sel_color_or_7segm <= "11";
	
	----------
process(i_clk,in_rst)  begin
	if(in_rst ='0')then	
		prev_pb_up<='0';
	elsif(rising_edge(i_clk))then
			if sTC0 = '1' then
				prev_prev_pb_up <= prev_pb_up;
				prev_pb_up <= i_pb_up;
			end if;
	end if;	  
end process;	
re_pb_up<= prev_pb_up and not prev_prev_pb_up and sTC0;	
 
process(i_clk,in_rst)  begin
	if(in_rst ='0')then	
		prev_pb_down<='0';
	elsif(rising_edge(i_clk))then
			if sTC0 = '1' then
				prev_prev_pb_down <= prev_pb_down;
				prev_pb_down <= i_pb_down;
			end if;
	end if;	  
end process;	
re_pb_down<= prev_pb_down and not prev_prev_pb_down and sTC0;	 

process(i_clk,in_rst)  begin
	if(in_rst ='0')then	
		prev_pb_center<='0';
	elsif(rising_edge(i_clk))then
			if sTC0 = '1' then
				prev_prev_pb_center <= prev_pb_center;
				prev_pb_center <= i_pb_center;
			end if;
	end if;	  
end process;	
re_pb_center<= prev_pb_center and not prev_prev_pb_center and sTC0;	 

process(i_clk,in_rst)  begin
	if(in_rst ='0')then	
		prev_pb_right<='0';
	elsif(rising_edge(i_clk))then
			if sTC0 = '1' then
				prev_prev_pb_right <= prev_pb_right;
				prev_pb_right <= i_pb_right;
			end if;
	end if;	  
end process;	
re_pb_right<= prev_pb_right and not prev_prev_pb_right and sTC0;	 

process(i_clk,in_rst)  begin
	if(in_rst ='0')then	
		prev_pb_left<='0';
	elsif(rising_edge(i_clk))then
			if sTC0 = '1' then
				prev_prev_pb_left <= prev_pb_left;
				prev_pb_left <= i_pb_left;
			end if;
	end if;	  
end process;	
re_pb_left<= prev_pb_left and not prev_prev_pb_left and sTC0;
	 
----brojac po modulu 120k, sinhrono
process(i_clk)begin
	if(i_clk' event and i_clk ='1')then
		if(in_rst = '0') then
			sCNT_120K <= (others => '0');
		else 
			if(sCNT_120K = CLK_FREQ/100 - 1)then
				sCNT_120K <= (others => '0');
			else 
				sCNT_120K <= sCNT_120K + 1;
			end if;
		end if;
	end if;
end process;	

--sTC0	
sTC0 <= '1' when sCNT_120K = 0 else
		 '0';

--brojac po modulu 4 - za polozaj cifre
process(i_clk)begin
	if(i_clk' event and i_clk ='1')then
		if(in_rst = '0') then
			sCNT4 <= (others => '0');
		else 
			if(re_pb_left = '1' and re_pb_right = '0')then
				if(sCNT4 = 3) then
					sCNT4 <= (others => '0');
				else
					sCNT4 <= sCNT4 + 1;
				end if;	
			elsif(re_pb_left = '0' and re_pb_right = '1') then
				if(sCNT4 = 0) then
					sCNT4 <= "0011";
				else
					sCNT4 <= sCNT4 - 1;
				end if;
			end if;
		end if;
	end if;
end process;
	
--dekoder
sDEC <= "0001" when sCNT4 = 0 else
		  "0010" when sCNT4 = 1 else
		  "0100" when sCNT4 = 2 else
		  "1000";
		  
		  
		  



--------STOTINKE-------
		

process(i_clk)begin
	if(i_clk' event and i_clk ='1') then
		if(in_rst = '0') then
			s_run <= '0';
		else 
			if(re_pb_center = '1')then
				s_run <= not s_run;
			end if;
			if s_done = '1' then
				s_run <= '0';
			end if;
		end if;
	end if;
end process;	

s_done <= '1' when sCNT0 = 0 and sCNT1 = 0 and sCNT2 = 0 and sCNT3 = 0
				else '0';

process(s_run, sDEC(0), re_pb_down, re_pb_up, sTC0)begin
	if s_run = '0' then
		if sDEC(0) = '1' then 
			if re_pb_down = '1' then
				s_cnt_dir_0 <= CNT_DOWN;
			elsif re_pb_up = '1' then
				s_cnt_dir_0 <= CNT_UP;
			else
				s_cnt_dir_0 <= CNT_PAUSE;
			end if;
		else
			s_cnt_dir_0 <= CNT_PAUSE;
		end if;
	else
		if sTC0 = '1' then
			s_cnt_dir_0 <= CNT_DOWN;
		else
			s_cnt_dir_0 <= CNT_PAUSE;
		end if;
	end if;
end process;	


--multiplekser za up
sCNT_UP_MUX0 <= "0000" when sTC_UP_0 = '1' else
					 sCNT0+1;
--sTC_UP_0
sTC_UP_0 <= '1' when sCNT0 = "1001" else
				'0';
--multiplekser za down
sCNT_DOWN_MUX0 <= "1001" when sTC_DOWN_0 = '1' else
					   sCNT0+sMINUS1 ;--sCNT0-1
--sTC_DOWN_0
sTC_DOWN_0 <= '1' when sCNT0 = "0000" else
				  '0';
--multiplekser za s_TC0
s_TC0 <= sTC_UP_0 when s_cnt_dir_0  = CNT_UP else
		  sTC_DOWN_0 when s_cnt_dir_0  = CNT_DOWN else
			'0' ;
--multiplekser za s_CNT_MUX_0
s_CNT_MUX_0 <= sCNT_UP_MUX0 when s_cnt_dir_0  = CNT_UP else
			      sCNT_DOWN_MUX0 when s_cnt_dir_0  = CNT_DOWN else
					sCNT0 ;
--brojac za pamcenje prethodne vrednosti
process(i_clk)begin
	if(i_clk' event and i_clk ='1') then
		if(in_rst = '0') then
			sCNT0 <= (others => '0');
		else 
			sCNT0 <= s_CNT_MUX_0;
		end if;
	end if;
end process;	


--kombinaciona 
sMINUS1 <= not(sPLUS1) + 1; 
sPLUS1 <= "01";

			


--------------------------------------------------------------------------------
-------DESETINE STOTINKI-------------

	

process(s_run, sDEC(1), re_pb_down, re_pb_up, sTC0)begin
	if s_run = '0' then
		if sDEC(1) = '1' then 
			if re_pb_down = '1' then
				s_cnt_dir_1 <= CNT_DOWN;
			elsif re_pb_up = '1' then
				s_cnt_dir_1 <= CNT_UP;
			else
				s_cnt_dir_1 <= CNT_PAUSE;
			end if;
		else
			s_cnt_dir_1 <= CNT_PAUSE;
		end if;
	else
		if s_TC0 = '1' then
			s_cnt_dir_1 <= CNT_DOWN;
		else
			s_cnt_dir_1 <= CNT_PAUSE;
		end if;
	end if;
end process;	


--multiplekser za up
sCNT_UP_MUX1 <= "0000" when sTC_UP_1 = '1' else
					 sCNT1+1;
--sTC_UP_0
sTC_UP_1 <= '1' when sCNT0 = "1001" else
				'0';
--multiplekser za down
sCNT_DOWN_MUX1 <= "1001" when sTC_DOWN_1 = '1' else
					   sCNT1+sMINUS1 ;--sCNT0-1
--sTC_DOWN_0
sTC_DOWN_1 <= '1' when sCNT1 = "0000" else
				  '0';
--multiplekser za s_TC0
s_TC1 <= sTC_UP_1 when s_cnt_dir_1  = CNT_UP else
		  sTC_DOWN_1 when s_cnt_dir_1  = CNT_DOWN else
			'0' ;
--multiplekser za s_CNT_MUX_0
s_CNT_MUX_1 <= sCNT_UP_MUX1 when s_cnt_dir_1  = CNT_UP else
			      sCNT_DOWN_MUX1 when s_cnt_dir_1  = CNT_DOWN else
					sCNT1 ;
--brojac za pamcenje prethodne vrednosti
process(i_clk)begin
	if(i_clk' event and i_clk ='1') then
		if(in_rst = '0') then
			sCNT1 <= (others => '0');
		else 
			sCNT1 <= s_CNT_MUX_1;
		end if;
	end if;
end process;	



----------------------------------------------------------------------

-------------SEKUNDE-------------


process(s_run, sDEC(2), re_pb_down, re_pb_up, sTC0)begin
	if s_run = '0' then
		if sDEC(2) = '1' then 
			if re_pb_down = '1' then
				s_cnt_dir_2 <= CNT_DOWN;
			elsif re_pb_up = '1' then
				s_cnt_dir_2 <= CNT_UP;
			else
				s_cnt_dir_2 <= CNT_PAUSE;
			end if;
		else
			s_cnt_dir_2 <= CNT_PAUSE;
		end if;
	else
		if s_TC1 = '1' then
			s_cnt_dir_2 <= CNT_DOWN;
		else
			s_cnt_dir_2 <= CNT_PAUSE;
		end if;
	end if;
end process;	


--multiplekser za up
sCNT_UP_MUX2 <= "0000" when sTC_UP_2 = '1' else
					 sCNT2+1;
--sTC_UP_0
sTC_UP_2 <= '1' when sCNT2 = "1001" else
				'0';
--multiplekser za down
sCNT_DOWN_MUX2 <= "1001" when sTC_DOWN_2 = '1' else
					   sCNT2+sMINUS1 ;--sCNT0-1
--sTC_DOWN_0
sTC_DOWN_2 <= '1' when sCNT2 = "0000" else
				  '0';
--multiplekser za s_TC0
s_TC2 <= sTC_UP_2 when s_cnt_dir_2  = CNT_UP else
		  sTC_DOWN_2 when s_cnt_dir_2  = CNT_DOWN else
			'0' ;
--multiplekser za s_CNT_MUX_0
s_CNT_MUX_2 <= sCNT_UP_MUX2 when s_cnt_dir_2  = CNT_UP else
			      sCNT_DOWN_MUX2 when s_cnt_dir_2  = CNT_DOWN else
					sCNT2 ;
--brojac za pamcenje prethodne vrednosti
process(i_clk)begin
	if(i_clk' event and i_clk ='1') then
		if(in_rst = '0') then
			sCNT2 <= (others => '0');
		else 
			sCNT2 <= s_CNT_MUX_2;
		end if;
	end if;
end process;	



------------------------------------------------------------------------

------------DESETINE SEKUNDI--------------


process(s_run, sDEC(3), re_pb_down, re_pb_up, sTC0)begin
	if s_run = '0' then
		if sDEC(3) = '1' then 
			if re_pb_down = '1' then
				s_cnt_dir_3 <= CNT_DOWN;
			elsif re_pb_up = '1' then
				s_cnt_dir_3 <= CNT_UP;
			else
				s_cnt_dir_3 <= CNT_PAUSE;
			end if;
		else
			s_cnt_dir_3 <= CNT_PAUSE;
		end if;
	else
		if s_TC2 = '1' then
			s_cnt_dir_3 <= CNT_DOWN;
		else
			s_cnt_dir_3 <= CNT_PAUSE;
		end if;
	end if;
end process;	


--multiplekser za up
sCNT_UP_MUX3 <= "0000" when sTC_UP_3 = '1' else
					 sCNT3+1;
--sTC_UP_0
sTC_UP_3 <= '1' when sCNT3 = "1001" else
				'0';
--multiplekser za down
sCNT_DOWN_MUX3 <= "1001" when sTC_DOWN_3 = '1' else
					   sCNT3+sMINUS1 ;--sCNT0-1
--sTC_DOWN_0
sTC_DOWN_3 <= '1' when sCNT3 = "0000" else
				  '0';
--multiplekser za s_TC0
--s_TC3 <= sTC_UP_3 when s_cnt_dir_3  = CNT_UP else
--		  sTC_DOWN_3 when s_cnt_dir_3  = CNT_DOWN else
--			'0' ;

--multiplekser za s_CNT_MUX_0
s_CNT_MUX_3 <= sCNT_UP_MUX3 when s_cnt_dir_3  = CNT_UP else
			      sCNT_DOWN_MUX3 when s_cnt_dir_3  = CNT_DOWN else
					sCNT3 ;
--brojac za pamcenje prethodne vrednosti
process(i_clk)begin
	if(i_clk' event and i_clk ='1') then
		if(in_rst = '0') then
			sCNT3 <= (others => '0');
		else 
			sCNT3 <= s_CNT_MUX_3;
		end if;
	end if;
end process;		
	



end architecture;
