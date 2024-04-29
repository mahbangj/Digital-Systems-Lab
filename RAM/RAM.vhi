
-- VHDL Instantiation Created from source file RAM.vhd -- 11:06:22 05/26/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT RAM
	PORT(
		data_in : IN std_logic_vector(15 downto 0);
		addr_write : IN std_logic_vector(5 downto 0);
		addr_read : IN std_logic_vector(5 downto 0);
		we : IN std_logic;
		clk : IN std_logic;          
		data_out : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	Inst_RAM: RAM PORT MAP(
		data_in => ,
		data_out => ,
		addr_write => ,
		addr_read => ,
		we => ,
		clk => 
	);


