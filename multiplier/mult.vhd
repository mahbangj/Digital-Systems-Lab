
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mult is
	generic (N  : INTEGER:= 4);
	port    (A  : in std_logic_vector (N-1 downto 0);
				B  : in std_logic_vector (N-1 downto 0);
				clk: in std_logic;
	         P  : out std_logic_vector (2*N-1 downto 0));
end mult;

architecture Behavioral of mult is
	COMPONENT FA
	PORT(
		cin  : IN  std_logic;
		x    : IN  std_logic;
		y    : IN  std_logic;          
		s    : OUT std_logic;
		cout : OUT std_logic
		);
	END COMPONENT;
	
	signal m: std_logic_vector(N downto 0):= (others => '0');
	signal s: std_logic_vector(N-1 downto 0):= (others => '0');
	signal c: std_logic_vector(N-1 downto 0):= (others => '0');
	
begin
process(clk)
	begin
	if rising_edge (clk) then
		for i in 0 to (N-1) loop
			for j in 0 to (N-1) loop
				m(i,j) <= A(i) and B(j);
				if i /= N-1 and j /= N-1 then
					Inst_FA1: FA PORT MAP (
						cin => c(i,j),
						x => s(i,j+1) ,
						y => m(i+1,j),
						s => s(i+1,j), 
						cout => c(i+1,j)
						);
				end if;
				if i = 0 then
					s(i,j) <= m(i,j);
				end if;
			end loop;
		end loop;
		m(N,0) <= '0';
		for j in 0 to N-2 loop
			c(0,j) <= '0';
			s(j+1,N-1) <= m(j+1,N-1);
			P(j+1) <= s(j+1,0);
			Inst_FA2: FA PORT MAP (
				cin => c(N-1,j),
				x => s(N-1,j+1), 
				y => m(N,j), 
				s => p(N+j),
				cout => m(N,j+1)
				);
		end loop;
		P(0) <= m(0,0);
		P(2*N-1) <= m(N,N-1);
	end if;
end process;
end Behavioral;

