
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_register is
    Port ( 			a_input 			: in  STD_LOGIC;
						p 					: in  unsigned (7 downto 0);
						clk 				: in  STD_LOGIC;
						reset			   : in  STD_LOGIC;
						output		   : out  unsigned (7 downto 0);
						control		   : in  STD_LOGIC);
end shift_register;

architecture Behavioral of shift_register is

	signal output_int : unsigned (7 downto 0) :=(others=>'0');
	signal p_int : unsigned (7 downto 0) :=(others=>'0');
	signal a_input_int :STD_LOGIC :='0';
	signal control_int :STD_LOGIC :='0';

begin

	output <= output_int;
	a_input_int <= a_input;
	control_int <= control;
	p_int<=p;
	
	process(clk)
	begin
		
			if rising_edge(clk) then
				output_int(7)<= a_input_int;
				output_int(6)<= output_int(7);
				output_int(5)<= output_int(6);
				output_int(4)<= output_int(5);
				output_int(3)<= output_int(4);
				output_int(2)<= output_int(3);
				output_int(1)<= output_int(2);
				output_int(0)<= output_int(1);				
			
				if control_int= '1' then
					output_int <= p_int;
				end if;
				
				if reset = '1' then
					output_int <= (others=>'0');
				end if;
			end if;
				
		
	end process;

end Behavioral;

