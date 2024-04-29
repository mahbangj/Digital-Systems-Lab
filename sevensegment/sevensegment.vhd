
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevensegment is
    Port ( seven_segment : out  STD_LOGIC_VECTOR (7 downto 0);
			  clk				 : in   STD_LOGIC;
           a             : in   STD_LOGIC_VECTOR (3 downto 0));
end sevensegment;

architecture Behavioral of sevensegment is

begin
	process(clk)
	begin
		if rising_edge(clk) then
		
			case a is
				when "0000" =>
				Seven_Segment <= "00000001"; --0
				when "0001" =>
				Seven_Segment <= "01001111"; --1
				when "0010" =>
				Seven_Segment <= "00010010"; --2
				when "0011" =>
				Seven_Segment <= "00000110"; --3
				when "0100" =>
				Seven_Segment <= "01001100"; --4
				when "0101" =>
				Seven_Segment <= "00100100"; --5
				when "0110" =>
				Seven_Segment <= "00100000"; --6
				when "0111" =>
				Seven_Segment <= "00001111"; --7
				when "1000" =>
				Seven_Segment <= "00000000"; --8
				when "1001" =>
				Seven_Segment <= "00000100"; --9
				when others =>
				Seven_Segment <= "01111111"; --null
			end case;
		
		end if;
	end process;
end Behavioral;

