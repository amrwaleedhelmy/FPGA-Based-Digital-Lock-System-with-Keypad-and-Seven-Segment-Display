library IEEE; 
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity seven_segments is
    port(
        s0, s1, s2, s3 : in STD_LOGIC_VECTOR(3 downto 0);
        o_seg0, o_seg1, o_seg2, o_seg3 : out STD_LOGIC_VECTOR(6 downto 0)
    );
end entity seven_segments;

architecture Hz of seven_segments is
begin

    o_seg0 <= "1111110" when s0 = "0000" else
              "0110000" when s0 = "0001" else
              "1101101" when s0 = "0010" else
              "1111001" when s0 = "0011" else
              "0110011" when s0 = "0100" else
              "1011011" when s0 = "0101" else
              "1011111" when s0 = "0110" else
              "1110000" when s0 = "0111" else
              "1111111" when s0 = "1000" else
              "1111011";

    o_seg1 <= "1111110" when s1 = "0000" else
              "0110000" when s1 = "0001" else
              "1101101" when s1 = "0010" else
              "1111001" when s1 = "0011" else
              "0110011" when s1 = "0100" else
              "1011011" when s1 = "0101" else
              "1011111" when s1 = "0110" else
              "1110000" when s1 = "0111" else
              "1111111" when s1 = "1000" else
              "1111011";

    o_seg2 <= "1111110" when s2 = "0000" else
              "0110000" when s2 = "0001" else
              "1101101" when s2 = "0010" else
              "1111001" when s2 = "0011" else
              "0110011" when s2 = "0100" else
              "1011011" when s2 = "0101" else
              "1011111" when s2 = "0110" else
              "1110000" when s2 = "0111" else
              "1111111" when s2 = "1000" else
              "1111011";

    o_seg3 <= "1111110" when s3 = "0000" else
              "0110000" when s3 = "0001" else
              "1101101" when s3 = "0010" else
              "1111001" when s3 = "0011" else
              "0110011" when s3 = "0100" else
              "1011011" when s3 = "0101" else
              "1011111" when s3 = "0110" else
              "1110000" when s3 = "0111" else
              "1111111" when s3 = "1000" else
              "1111011";

end architecture Hz;
