LIBRARY ieee;
USE std.textio.ALL;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM_example
    PORT(
         clock : IN  std_logic;
         outcom : OUT  unsigned(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';

 	--Outputs
   signal outcom : unsigned(9 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM_example PORT MAP (
          clock => clock,
          outcom => outcom
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;
	write1 : process(clock)
	file outfile1 : text open write_mode is "write.txt";
	variable li2 : line;
	begin
		if rising_edge(clock) then
			write(li2,to_integer(outcom));
			writeline(outfile1,li2);
		end if;
	end process;

END;
