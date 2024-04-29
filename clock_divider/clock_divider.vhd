
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;


entity clock_divider is
port ( x   : in   std_logic_vector(4 downto 0);
		 clk : in   std_logic;
		 o   : out  std_logic
	   );
end clock_divider;

architecture Behavioral of clock_divider is

signal temp : std_logic_vector(3 downto 0) := "0000" ;

begin
process(clk)
begin
	if rising_edge(clk) then
		case x is
			when "01101" =>
				o<=temp(0);
			when "01110" =>
				o<=temp(1);
			when "10010" =>
				o<=temp(2);
			when "11001" =>
				o<=temp(3);
			when others =>
			   null;
		end case;
	end if;
end process;

process(clk)

variable num1 : integer :=0;
variable num2 : integer :=0;
variable num3 : integer :=0;
variable num4 : integer :=0;

begin
 if ( falling_edge(clk) ) then
   num1 := num1 + 1;
	num2 := num2 + 1;
	num3 := num3 + 1;
	num4 := num4 + 1;
	
	if num1 = 13 then
		temp(0) <= '0';
		elsif num1 = 26 then
			temp(0) <= '1';
			num1 := 0;
		end if;

   if num2 = 14 then
		temp(1) <= '0';
		elsif num2 = 28 then
			temp(1)<='1';
			num2 := 0;
		end if;

	if num3 = 18 then
		temp(2) <= '0';
		elsif num3 = 36 then
			temp(2) <= '1';
			num3 := 0;
		end if;

   if num4 = 25 then
		temp(3) <= '0';
		elsif num4 = 50 then
			temp(3) <= '1';
			num4 := 0;
	end if;		
	
end if;
end process;
end Behavioral;

