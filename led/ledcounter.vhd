
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ledcounter is
    Port ( led : out  STD_LOGIC;
           clk : in  STD_LOGIC);
end ledcounter;

architecture Behavioral of ledcounter is

signal count: unsigned(25 downto 0) := (others => '0');

begin

process (clk)
begin
	if ( rising_edge(clk)) then
		if(count = 50000000-1) then 
			count <= (others => '0');
         led <= '1';
		else
		   led <= '0';
         count <= count +1; 
		end if;
	end if;

end process;
end Behavioral;

