
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clock_divider
    PORT(
         x : IN  std_logic_vector(4 downto 0);
         clk : IN  std_logic;
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(4 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal o : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clock_divider PORT MAP (
          x => x,
          clk => clk,
          o => o
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
		x<="01101";
      wait for 700 ns;	
		x<="01110";
		wait for 700 ns;	
		x<="10010";
		wait for 700 ns;
		x<="11001";
		wait for 700 ns;
		x<="01101";
      wait for 700 ns;	
		x<="01110";
		wait for 700 ns;	
		x<="10010";
		wait for 700 ns;
		x<="11001";
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
