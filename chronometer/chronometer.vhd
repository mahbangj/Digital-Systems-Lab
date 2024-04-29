library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity T18_Timer is
generic(ClockFrequencyHz : integer :=10);
port(
    Clk     : in std_logic;
	 Stop     : in   STD_LOGIC;
	 Alarm    : out  STD_LOGIC;
    nRst    : in std_logic; -- Negative reset
	 in_sec   : in   integer;
    in_min   : in   integer;
    in_hour  : in   integer;
    Seconds : out integer;
    Minutes : out integer;
    Hours   : out integer);
end entity;
 
architecture rtl of T18_Timer is
 
    -- Signal for counting clock periods
    signal Ticks : integer;
	 signal out_sec_int  : integer;
	 signal out_min_int  : integer;
    signal out_hour_int : integer;
 
begin
Seconds <= out_sec_int;
Minutes <= out_min_int;
Hours   <= out_hour_int;    
process(Clk) is
    begin
--	 	if(in_sec /= 0) then
--			out_sec_int <= in_sec;
--		end if;
--
--		if(in_min /= 0) then
--			out_min_int <= in_min;
--		end if;
--
--		if(in_hour /= 0) then
--			out_hour_int <= in_hour;
--		end if;

        if rising_edge(Clk) then
		  	if Stop='1' then
			 Alarm <= '1';
		  -- If the negative reset signal is active
            elsif nRst = '0' then
                Ticks   <= 0;
                out_sec_int<= 0;
                out_min_int <= 0;
                out_hour_int   <= 0;
            else
 
                -- True once every second
                if Ticks = ClockFrequencyHz - 1 then
                    Ticks <= 0;
 
                    -- True once every minute
                    if out_sec_int = 59 then
                        out_sec_int <= 0;
 
                        -- True once every hour
							   if out_min_int = 59 then
                            out_min_int <= 0;
 
                            -- True once a day
                            if out_hour_int = 23 then
                                out_hour_int <= 0;
                            else
                                out_hour_int <= out_hour_int + 1;
                            end if;
 
                        else
                            out_min_int <= out_min_int + 1;
                        end if;
 
                    else
                        out_sec_int <= out_sec_int + 1;
                    end if;
 
                else
                    Ticks <= Ticks + 1;
                end if;
 
            end if;
        end if;
    end process;
 
end architecture;