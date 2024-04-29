
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter
    PORT(
         stop     : IN  std_logic;
         reset    : IN  std_logic;
         in_sec   : IN  integer;
         in_min   : IN  integer;
         in_hour  : IN  integer;
         out_sec  : OUT  integer;
         out_min  : OUT  integer;
         out_hour : OUT  integer;
         alarm    : OUT  std_logic;
         clk      : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal stop : std_logic := '0';
   signal reset : std_logic := '0';
   signal in_sec : integer := 0;
   signal in_min : integer := 0;
   signal in_hour : integer := 0;
   signal clk : std_logic := '0';

 	--Outputs
   signal out_sec : integer;
   signal out_min : integer;
   signal out_hour : integer;
   signal alarm : std_logic;

   -- Clock period definitions
   constant clk_period : time := 1000000000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter PORT MAP (
          stop => stop,
          reset => reset,
          in_sec => in_sec,
          in_min => in_min,
          in_hour => in_hour,
          out_sec => out_sec,
          out_min => out_min,
          out_hour => out_hour,
          alarm => alarm,
          clk => clk
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

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
