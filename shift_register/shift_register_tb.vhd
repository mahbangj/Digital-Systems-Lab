
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY shift_register_tb IS
END shift_register_tb;
 
ARCHITECTURE behavior OF shift_register_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_register
    PORT(
         a_input : IN  std_logic;
         p : IN  unsigned(7 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         output : OUT  unsigned(7 downto 0);
         control : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a_input : std_logic := '0';
   signal p : unsigned(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal control : std_logic := '0';

 	--Outputs
   signal output :unsigned(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_register PORT MAP (
          a_input => a_input,
          p => p,
          clk => clk,
          reset => reset,
          output => output,
          control => control
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			a_input<='1';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
