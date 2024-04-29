
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_withselsect is
    Port ( L1 : in  STD_LOGIC;
           L2 : in  STD_LOGIC;
           L3 : in  STD_LOGIC;
           L4 : in  STD_LOGIC;
			  S : in std_logic_vector(1 downto 0);
			  en : in STD_LOGIC;
           F : out  STD_LOGIC);
			  
end MUX_withselsect;

architecture Behavioral of MUX_withselsect is

begin

	with S select
		  F <= (L1 and en) when "00",
				 (L2 and en) when "01",
				 (L3 and en) when "10",
				 (L4 and en) when "11",
				 '0' when others;

end Behavioral;

