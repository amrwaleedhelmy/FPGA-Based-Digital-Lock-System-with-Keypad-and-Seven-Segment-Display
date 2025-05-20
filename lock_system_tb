library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity lock_system_tb is
	end entity lock_system_tb;
	
	
architecture rtl of lock_system_tb is
    signal  i_clk, LED : std_logic:= '0';
	  signal i_x:  std_logic_vector(11 downto 0) := "000000000000";
    signal o_seg, o_seg1, o_seg2, o_seg3	:  std_logic_vector(6 downto 0):= "0000000";
	 
begin

    DUT: entity work.lock_system
        port map (
		   i_clk => i_clk, i_x => i_x, LED => LED, o_seg => o_seg, o_seg1 => o_seg1, 
			o_seg2 => o_seg2, o_seg3 => o_seg3);

    clk_process: process
    begin
	 
	 while now < 40000 ns loop
            i_clk <= '1';
            wait for 1 ns;
            i_clk <= '0';
            wait for 1 ns;
	 end loop;
	 
	 wait;
				
    end process;

	 
	 
    system: process
	 begin 
	 
	 i_x(0) <= '1';
	 wait for 2 ns;
	 i_x(0) <= '0';
	 i_x(1) <= '1';
	 wait for 2 ns;
	  i_x(0) <= '1';
	 i_x(1) <= '0';
	 wait for 2 ns;
	 i_x(0) <= '0';
	 i_x(1) <= '1';
	 wait for 2 ns;
	 i_x(11) <= '1';
	 i_x(1) <= '0';
	 wait for 2 ns;
	 i_x(11) <= '0';
	wait for 146 ns;
	
	
	
	i_x(4) <= '1';
	wait for 2 ns;
	i_x(4) <= '0';
	i_x(7) <= '1';
	wait for 2 ns;
	i_x(0) <= '1';
	i_x(7) <= '0';
	wait for 2 ns;
	i_x(0) <= '0';
  wait for 2 ns;
	i_x(0) <= '1';
	wait for 2 ns;
	i_x(11) <= '1';
	 i_x(0) <= '0';
	 wait for 2 ns;
	 i_x(11) <= '0';
	wait for 146 ns;
	
	
	i_x(0) <= '1';
	 wait for 2 ns;
	 i_x(0) <= '0';
	 i_x(1) <= '1';
	 wait for 2 ns;
	  i_x(0) <= '1';
	 i_x(1) <= '0';
	 wait for 2 ns;
	 i_x(0) <= '0';
	 i_x(1) <= '1';
	 wait for 2 ns;
	 i_x(11) <= '1';
	 i_x(1) <= '0';
	 wait for 2 ns;
	 i_x(11) <= '0';
	wait for 146 ns;
	
	
	
	i_x(0) <= '1';
	 wait for 2 ns;
	 i_x(0) <= '0';
	 i_x(1) <= '1';
	 wait for 2 ns;
	  i_x(0) <= '1';
	 i_x(1) <= '0';
	 wait for 2 ns;
	 i_x(0) <= '0';
	 i_x(1) <= '1';
	 wait for 2 ns;
	 i_x(11) <= '1';
	 i_x(1) <= '0';
	 wait for 2 ns;
	 i_x(11) <= '0';
	wait for 160 ns;
	
	
	i_x(0) <= '1';
	 wait for 2 ns;
	 i_x(0) <= '0';
	 i_x(1) <= '1';
	 wait for 2 ns;
	  i_x(0) <= '1';
	 i_x(1) <= '0';
	 wait for 2 ns;
	 i_x(0) <= '0';
	 i_x(1) <= '1';
	 wait for 2 ns;
	 i_x(11) <= '1';
	 i_x(1) <= '0';
	 wait for 2 ns;
	 i_x(11) <= '0';
	wait for 710 ns;
	
	
	
	i_x(0) <= '1';
	 wait for 2 ns;
	 i_x(0) <= '0';
	 i_x(1) <= '1';
	 wait for 2 ns;
	  i_x(0) <= '1';
	 i_x(1) <= '0';
	 wait for 2 ns;
	 i_x(0) <= '0';
	 i_x(1) <= '1';
	 wait for 2 ns;
	 i_x(11) <= '1';
	 i_x(1) <= '0';
	 wait for 2 ns;
	 i_x(11) <= '0';
	wait for 1500 ns;
	
	
	
	i_x(0) <= '1';
	 wait for 2 ns;
	 i_x(0) <= '0';
	 i_x(1) <= '1';
	 wait for 2 ns;
	  i_x(0) <= '1';
	 i_x(1) <= '0';
	 wait for 2 ns;
	 i_x(0) <= '0';
	 i_x(1) <= '1';
	 wait for 2 ns;
	 i_x(11) <= '1';
	 i_x(1) <= '0';
	 wait for 2 ns;
	 i_x(11) <= '0';
	wait for 16000 ns;
	
	i_x(0) <= '1';
	 wait for 2 ns;
	 i_x(0) <= '0';
	 i_x(1) <= '1';
	 wait for 2 ns;
	  i_x(0) <= '1';
	 i_x(1) <= '0';
	 wait for 2 ns;
	 i_x(0) <= '0';
	 i_x(1) <= '1';
	 wait for 2 ns;
	 i_x(11) <= '1';
	 i_x(1) <= '0';
	 wait for 2 ns;
	 i_x(11) <= '0';
	wait for 16000 ns;
	
	i_x(4) <= '1';
	wait for 2 ns;
	i_x(4) <= '0';
	i_x(7) <= '1';
	wait for 2 ns;
	i_x(0) <= '1';
	i_x(7) <= '0';
	wait for 2 ns;
	i_x(0) <= '0';
  wait for 2 ns;
	i_x(0) <= '1';
	wait for 2 ns;
	i_x(11) <= '1';
	 i_x(0) <= '0';
	 wait for 2 ns;
	 i_x(11) <= '0';

	 wait;
    end process;
	 
	 
end architecture rtl;
