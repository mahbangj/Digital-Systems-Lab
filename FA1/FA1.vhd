
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FA1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end FA1;

architecture Behavioral of FA1 is

begin

	sum <= A xor B xor C;
	cout <= (A and B) or (A and C) or (C and B);

end Behavioral;

