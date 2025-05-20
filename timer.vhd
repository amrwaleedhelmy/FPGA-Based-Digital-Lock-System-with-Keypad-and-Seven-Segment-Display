library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity timer is
	port(
		i_clk, start_time : in STD_LOGIC;
		attempts : in Integer range 0 to 5:= 0;
		time_finished	: out std_logic;
		o_seg1: out STD_LOGIC_VECTOR(6 downto 0);
		o_seg2: out STD_LOGIC_VECTOR(6 downto 0);
		o_seg3: out STD_LOGIC_VECTOR(6 downto 0)
	);
	end entity timer;
	
	
architecture behav of timer is

signal s: integer range 0 to 9 := 0;
signal s1: integer range 0 to 9 := 0;
signal m: integer range 0 to 6 := 0;
signal prev_run, run: STD_LOGIC:= '0';
signal timer_counter, counter: integer := 0;

	begin 
	
	process(i_clk)
begin
  if rising_edge(i_clk) then
	 
    timer_counter <= timer_counter + 1;

    if timer_counter >= 10 then  
      timer_counter <= 0;

     
      if start_time = '1' and prev_run = '0' then
        run <= '1';
        prev_run <= '1';
        time_finished <= '0';

       
        case attempts is
          when 5 =>
            m <= 6; s1 <= 0; s <= 0;
          when 4 =>
            m <= 0; s1 <= 6; s <= 0;
          when 3 =>
            m <= 0; s1 <= 3; s <= 0;
          when others =>
            m <= 0; s1 <= 0; s <= 5;
        end case;

      elsif start_time = '0' then
        run <= '0';
        prev_run <= '0';
        time_finished <= '0'; 
      end if;
		
		

     
      if run = '1' then
        if s = 0 and s1 > 0 then
          s <= 9;
          s1 <= s1 - 1;
        elsif s > 0 then
          s <= s - 1;
        elsif s1 = 0 and s = 0 and m > 0 then
          s1 <= 9;
          s <= 9;
          m <= m - 1;
        elsif m = 0 and s1 = 0 and s = 0 then
          run <= '0';  
        end if;
      end if;

    end if;

	 	if prev_run = '1' and run = '0' and m = 0 and s1 = 0 and s = 0 then
      time_finished <= '1';
		prev_run <= '0';
    elsif start_time = '0' then
      time_finished <= '0';
    end if;
	 
  end if;
end process;



  o_seg1 <= "1111110" when s = 0 else "0110000" when s = 1 else "1101101" when s = 2 else "1111001" when s = 3 else "0110011" when s = 4
  else "1011011" when s = 5  else "1011111" when s = 6 else "1110000" when s = 7 else "1111111" when s = 8 else "1110011";
 
  o_seg2 <= "1111110" when s1 = 0 else "0110000" when s1 = 1 else "1101101" when s1 = 2 else "1111001" when s1 = 3 else "0110011" when s1 = 4
  else "1011011" when s1 = 5  else "1011111" when s1 = 6 else "1110000" when s1 = 7 else "1111111" when s1 = 8 else "1110011";
 
  o_seg3 <= "1111110" when m = 0 else "0110000" when m = 1 else "1101101" when m = 2 else "1111001" when m = 3 else "0110011" when m = 4 
  else "1011011" when m = 5  else "1011111";
			
			
end architecture behav;

