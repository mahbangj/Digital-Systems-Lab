
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FA is
    Port ( cin  : in  STD_LOGIC;
           x    : in  STD_LOGIC;
           y    : in  STD_LOGIC;
           s    : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end FA;

architecture Behavioral of FA is

begin

	s <= x xor y xor cin;
	cout <= (x and y) or (x and cin) or (y and cin);
	
end Behavioral;

