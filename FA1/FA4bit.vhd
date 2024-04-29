
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FA4bit is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           c : in  STD_LOGIC;
           sum_out : out  STD_LOGIC_VECTOR (3 downto 0);
           c_out : out  STD_LOGIC);
end FA4bit;

architecture Behavioral of FA4bit is

signal C_internal : std_logic_vector( 2 downto 0 ) :="000" ;

	COMPONENT FA1
	PORT(
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	sum : OUT std_logic;
	cout : OUT std_logic
	);
	END COMPONENT;
	
begin
	
	FA1_0: FA1 PORT MAP(
	A=>a(0),
	B=>b(0),
	C=>c ,
	sum=>sum_out(0) ,
	cout=>C_internal(0)
	);
	
	FA1_1: FA1 PORT MAP(
	A=>a(1) ,
	B=>b(1) ,
	C=>C_internal(0) ,
	sum=>sum_out(1) ,
	cout=>C_internal(1)
	);
	
	FA1_2: FA1 PORT MAP(
	A=>a(2) ,
	B=>b(2) ,
	C=>C_internal(1) ,
	sum=>sum_out(2) ,
	cout=>C_internal(2)
	);
	
	FA1_3: FA1 PORT MAP(
	A=>a(3) ,
	B=>b(3) ,
	C=>C_internal(2) ,
	sum=>sum_out(3) ,
	cout=>c_out
	);
	
end Behavioral;

