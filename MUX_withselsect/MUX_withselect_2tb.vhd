
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MUX_withselect_2tb IS
END MUX_withselect_2tb;
 
ARCHITECTURE behavior OF MUX_withselect_2tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_withselsect
    PORT(
         L1 : IN  std_logic;
         L2 : IN  std_logic;
         L3 : IN  std_logic;
         L4 : IN  std_logic;
         S : IN  std_logic_vector(1 downto 0);
         en : IN  std_logic;
         F : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal L1 : std_logic := '0';
   signal L2 : std_logic := '0';
   signal L3 : std_logic := '0';
   signal L4 : std_logic := '0';
   signal S : std_logic_vector(1 downto 0) := (others => '0');
   signal en : std_logic := '0';

 	--Outputs
   signal F : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_withselsect PORT MAP (
          L1 => L1,
          L2 => L2,
          L3 => L3,
          L4 => L4,
          S => S,
          en => en,
          F => F
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
----		<clock> <= '0';
----		wait for <clock>_period/2;
----		<clock> <= '1';
----		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		en <= '0';
--      wait for <clock>_period*10;
      wait for 100 ns;	
		en <= '1';
		L1 <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
