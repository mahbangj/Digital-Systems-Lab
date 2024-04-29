
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity RAM_example is
	generic(
		RAM_width     : integer:=10;
		RAM_addrwidth : integer :=8
	);
	port(
		clock    : in std_logic;
		outcom   : out unsigned(9 downto 0)
	);
end RAM_example;

architecture Behavioral of RAM_example is

     signal      data_in_int     :  unsigned (RAM_width-1 downto 0)     :=(others=>'0');
     signal      data_out_int    :  unsigned (RAM_width-1 downto 0)     :=(others=>'0');
     signal      addr_write_int  :  unsigned (RAM_addrwidth-1 downto 0) :=(others=>'0');
     signal      addr_read_int   :  unsigned (RAM_addrwidth-1 downto 0) :=(others=>'0');
	  signal      counter         :  unsigned (RAM_addrwidth-1 downto 0) :=(others=>'0');
	  signal      we_int          : STD_LOGIC;


begin
	ins_my_ram1 : entity work.RAM 
	generic map(
		ram_width =>10,
		ram_add_width =>8
		)
	port map(
		data_in =>data_in_int ,
		data_out =>data_out_int ,
		addr_write =>addr_write_int ,
		addr_read =>addr_read_int ,
		we =>we_int ,
		clk =>clock
	);

process (clock)
begin
	if rising_edge(clock) then
		we_int <= '1';
		addr_write_int <= counter;
		data_in_int <= resize(counter,10);
		addr_read_int <= counter;
		counter <= counter +1;
	end if;
end process;
outcom<= data_out_int;
end Behavioral;

