
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divider_13 is
    Port ( clk     : in  STD_LOGIC;
           divider : out  STD_LOGIC;
           set     : out  STD_LOGIC;
           reset   : out  STD_LOGIC);
end divider_13;

architecture Behavioral of divider_13 is

signal divider_int :STD_LOGIC :='0';
signal set_int     :STD_LOGIC :='0';
signal reset_int   :STD_LOGIC :='0';
signal counter     :unsigned(2 downto 0) :="000";

begin

divider_int <= set_int xor reset_int;
divider     <= divider_int;
set         <= set_int;
reset       <= reset_int;

end Behavioral;

