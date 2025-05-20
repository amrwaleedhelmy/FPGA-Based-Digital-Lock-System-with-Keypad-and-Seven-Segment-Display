library ieee; 
  use ieee.std_logic_1164.all;
  use IEEE.NUMERIC_STD.ALL;

  
entity lock_system is
  port (
    i_clk  : in    std_logic;
	 i_x		: in std_logic_vector(11 downto 0) := "000000000000";
	 LED : out std_logic;
    o_seg, o_seg1, o_seg2, o_seg3, o_seg4, o_seg5		: out   std_logic_vector(6 downto 0):= "0000000"
  );
end entity lock_system;


architecture rtl of lock_system is

  type state_type is (s0, s1, s2, s3, s4, s5, s6, s7);

  signal current_state, next_state : state_type := s0;
	signal key_touch, start_time, time_finished : std_logic:= '0';
	signal key_input, I0, I1, I2, I3 : std_logic_vector(3 downto 0):= "0000";
	signal attempts : Integer range 0 to 5 := 0;
	signal t0, t1, t2, t3, f0, f1, f2 : std_logic_vector(6 downto 0):= "0000000";
	signal counter: integer := 0;
	
begin


 scan_keypad: entity work.Keypad port map(
		  i_clk => i_clk,
        i_x => i_x,
        key_valid  => key_touch,
        key_code => key_input
		  );
		  
	seven_segmentss: entity work.seven_Segments port map (
	I0, I1, I2, I3, t0, t1, t2, t3
	);
		  
  timers: entity work.timer port map(
		i_clk,
		start_time,
		attempts,
		time_finished,
		f0 ,
		f1 ,
		f2 
	);
	
	clk_process : process (i_clk) is
	begin 
	
	 if rising_edge(i_clk) then
	 
       current_state <= next_state;
		 
		 end if;
		
		end process clk_process; 

		
  state_advance : process (i_clk) is
  begin
  if falling_edge(i_clk) then
  
		   case current_state is

      when s0 =>
			
			o_seg <= "0000000"; -- display nothing
			o_seg1 <= "0000000";
			o_seg2 <= "0000000";
			o_seg3 <= "0000000";
			start_time <= '0';
			 LED <= '0';
			 
        if (key_touch = '1' and key_input <= "1001") then
          next_state  <= s1;
			 I0 <= key_input;
        else
          next_state  <= s0;
        end if;
			 
      when s1 =>
		
		 o_seg <= t0; 
		 o_seg1 <= "0000000";
		 o_seg2 <= "0000000";
		 o_seg3 <= "0000000";
		 start_time <= '0';
		 LED <= '0';

		     if (key_touch = '1' and key_input <= "1001") then
          next_state  <= s2;
			 I1 <= key_input;
        elsif key_input = "1010" then
          next_state <= s0;
			 else 
			 next_state <= s1;
        end if;
			 
      when s2 =>

			 o_seg <= t1; 
			 o_seg1 <= t0;
		    o_seg2 <= "0000000";
		    o_seg3 <= "0000000";
			 start_time <= '0';
			 LED <= '0';
			 
        if (key_touch = '1' and key_input <= "1001") then
          next_state  <= s3;
			 I2 <= key_input;
        elsif key_input = "1010" then
          next_state <= s0;
			 else 
			 next_state <= s2;
        end if;
		  
      when s3 =>

			 o_seg <= t2; 
			 o_seg1 <= t1;
		    o_seg2 <= t0;
		    o_seg3 <= "0000000";
			 start_time <= '0';
			 LED <= '0';
			 
        if (key_touch = '1' and key_input <= "1001") then
          next_state  <= s4;
			 I3 <= key_input;
        elsif key_input = "1010" then
          next_state <= s0;
			 else 
			 next_state <= s3;
        end if;
			 
		  when s4 =>
		  		  
			 o_seg <= t3; 
			 o_seg1 <= t2;
		    o_seg2 <= t1;
		    o_seg3 <= t0;
			 start_time <= '0';
			 LED <= '0';
			 
        if (key_touch = '1' and key_input = "1011") then
          next_state  <= s5;
        elsif key_input = "1010" then
          next_state <= s0;
			 else 
			 next_state <= s4;
        end if;
		  
		  when s5 =>
		  		  
		     o_seg <= t3; 
			 o_seg1 <= t2;
		    o_seg2 <= t1;
		    o_seg3 <= t0;
			 start_time <= '0';
			 LED <= '0';
			 
        if (I0 = "0100" and I1 = "0111" and I2 = "0000" and I3 = "0000") then
		  attempts <= 0;
       next_state  <= s6;
			else 
			
			if attempts < 5  then
			attempts <= attempts + 1;
			end if;
			next_state <= s7;
			
        end if;
	 
	 
	     when s6 =>
		  		  
			 o_seg <= "1100111"; 
			 o_seg1 <= "1111110";
		    o_seg2 <= "1100111";
		    o_seg3 <= "0000000";
			 start_time <= '1';
			 LED <= '1';
			 
        if (time_finished = '1') then
       next_state  <= s0;
        end if;
		
		  when s7 =>
		  		  
		    o_seg <= "1001111"; 
			 o_seg1 <= f0;
		    o_seg2 <= f1;
		    o_seg3 <= f2;
			 start_time <= '1';
			 LED <= '0';
			 
       if (time_finished = '1') then
       next_state  <= s0;
        end if;
		  
    end case;
	 
	 end if;
  end process state_advance;


end architecture rtl;
