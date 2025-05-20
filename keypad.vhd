library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Keypad is
    Port (
        i_clk : in  std_logic;
		  i_x		: in std_logic_vector(11 downto 0) := "000000000000";
        key_valid   : out std_logic;
        key_code    : out std_logic_vector(3 downto 0) 
    );
end Keypad;


architecture rtl of Keypad is
signal prev_i_x : std_logic_vector(11 downto 0) := "000000000000";

begin


  process(i_clk)
    begin
        if rising_edge(i_clk) then
            key_valid <= '0';
            if i_x(0) = '1' and prev_i_x(0) = '0' then
                key_valid <= '1';
                key_code <= "0000";
            elsif i_x(1) = '1' and prev_i_x(1) = '0' then
                key_valid <= '1';
                key_code <= "0001";
            elsif i_x(2) = '1' and prev_i_x(2) = '0' then
                key_valid <= '1';
                key_code <= "0010";
            elsif i_x(3) = '1' and prev_i_x(3) = '0' then
                key_valid <= '1';
                key_code <= "0011";
            elsif i_x(4) = '1' and prev_i_x(4) = '0' then
                key_valid <= '1';
                key_code <= "0100";
            elsif i_x(5) = '1' and prev_i_x(5) = '0' then
                key_valid <= '1';
                key_code <= "0101";
            elsif i_x(6) = '1' and prev_i_x(6) = '0' then
                key_valid <= '1';
                key_code <= "0110";
            elsif i_x(7) = '1' and prev_i_x(7) = '0' then
                key_valid <= '1';
                key_code <= "0111";
            elsif i_x(8) = '1' and prev_i_x(8) = '0' then
                key_valid <= '1';
                key_code <= "1000";
            elsif i_x(9) = '1' and prev_i_x(9) = '0' then
                key_valid <= '1';
                key_code <= "1001";
				elsif i_x(10) = '1' and prev_i_x(10) = '0' then
                key_valid <= '1';
                key_code <= "1010";
				elsif i_x(11) = '1' and prev_i_x(11) = '0' then
                key_valid <= '1';
                key_code <= "1011";
					 else 
					 key_valid <= '0';
            end if;

            
            prev_i_x <= i_x;
        end if;
		  
    end process;

end rtl;
