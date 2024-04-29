library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity RAM is
	 generic(
	 ram_width     :integer :=16;
	 ram_add_width :integer :=6
	 );
    Port ( data_in     : in  unsigned (ram_width-1 downto 0);
           data_out    : out unsigned (ram_width-1 downto 0);
           addr_write  : in  unsigned (ram_add_width-1 downto 0);
           addr_read   : in  unsigned (ram_add_width-1 downto 0);
           we          : in  STD_LOGIC;
           clk         : in  STD_LOGIC);
end RAM;

architecture Behavioral of RAM is

type memory_type is array ( 0 to 2**ram_add_width-1) of unsigned ( ram_width-1 downto 0);
signal my_memory : memory_type :=(others =>(others=>'0'));

begin
	process(clk)
	begin
		if rising_edge (clk) then
			if we ='1' then
				my_memory(to_integer(addr_write)) <= data_in;
			end if;
			data_out <= my_memory(to_integer(addr_read));
		end if;
	end process;
end Behavioral;

