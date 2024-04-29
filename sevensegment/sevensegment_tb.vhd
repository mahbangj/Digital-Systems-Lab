
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sevensegment_tb IS
END sevensegment_tb;
 
ARCHITECTURE behavior OF sevensegment_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sevensegment
    PORT(
         seven_segment : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         a : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal a : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal seven_segment : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sevensegment PORT MAP (
          seven_segment => seven_segment,
          clk => clk,
          a => a
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
		a <= "0000";
		wait for 100 ns;
		a <= "0001";
		wait for 100 ns;
		a <= "0010";
		wait for 100 ns;
		a <= "0011";
		wait for 100 ns;
		a <= "0100";
		wait for 100 ns;
		a <= "0101";
		wait for 100 ns;
		a <= "0110";
		wait for 100 ns;
		a <= "0111";
		wait for 100 ns;
		a <= "1000";
		wait for 100 ns;
		a <= "1001";
		wait for 100 ns;

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
