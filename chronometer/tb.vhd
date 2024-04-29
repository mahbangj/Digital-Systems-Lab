library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity T18_TimerTb is
end entity;
 
architecture sim of T18_TimerTb is
 
    -- We're slowing down the clock to speed up simulation time
    constant ClockFrequencyHz : integer := 10; -- 10 Hz
    constant ClockPeriod      : time := 1000 ms / ClockFrequencyHz;
 
    signal Clk     : std_logic := '1';
    signal nRst    : std_logic := '0';
	 signal Stop     :STD_LOGIC;
	 signal Alarm    :STD_LOGIC;
	 signal in_sec   : integer;
    signal in_min   : integer;
    signal in_hour  : integer;
    signal Seconds : integer;
    signal Minutes : integer;
    signal Hours   : integer;
 
begin
 
    -- The Device Under Test (DUT)
    i_Timer : entity work.T18_Timer(rtl)
    generic map(ClockFrequencyHz => ClockFrequencyHz)
    port map (
        Clk     => Clk,
        nRst    => nRst,
		  Stop    => Stop,
		  Alarm   => Alarm,
		  in_sec  => in_sec,
		  in_min  => in_min,
		  in_hour => in_hour,
        Seconds => Seconds,
        Minutes => Minutes,
        Hours   => Hours);
 
    -- Process for generating the clock
    Clk <= not Clk after ClockPeriod / 2;
 
    -- Testbench sequence
    process is
    begin
        wait until rising_edge(Clk);
        wait until rising_edge(Clk);
 
        -- Take the DUT out of reset
        nRst <= '1';
 
        wait;
    end process;
 
end architecture;