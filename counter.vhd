
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;


entity counter is
    Port ( stop     : in   STD_LOGIC;
           reset    : in   STD_LOGIC;
           in_sec   : in   integer;
           in_min   : in   integer;
           in_hour  : in   integer;
           out_sec  : out  integer;
           out_min  : out  integer;
           out_hour : out  integer;
           alarm    : out  STD_LOGIC;
			  clk      : in   STD_LOGIC);
end counter;

architecture Behavioral of counter is

signal counter      : integer;
signal out_sec_int  : integer;
signal out_min_int  : integer;
signal out_hour_int : integer;

begin
out_sec <= out_sec_int;
out_min <= out_min_int;
out_hour<= out_hour_int;
process(clk)
begin
	if(in_sec /= 0) then
		out_sec_int <= in_sec;
	end if;

	if(in_min /= 0) then
		out_min_int <= in_min;
	end if;

	if(in_hour /= 0) then
		out_hour_int <= in_hour;
	end if;

	if rising_edge(clk) then
		if stop='1' then
			alarm <= '1';
		else
			if reset='1' then
				counter <= 0;
				out_sec_int <= 0;
				out_min_int <= 0;
				out_hour_int<= 0;
				else
					out_sec_int <= out_sec_int + 1;
						if (out_sec_int = 59) then
							out_sec_int <= 0;
							out_min_int <= out_min_int + 1;
							if (out_min_int = 59) then
								out_min_int <= 0;
								out_hour_int <= out_hour_int + 1;
								if (out_hour_int = 23) then
									out_hour_int <= 0;						
								end if;			
							end if;					
						end if;
					end if;
			end if;
		end if;
end process;
end Behavioral;

