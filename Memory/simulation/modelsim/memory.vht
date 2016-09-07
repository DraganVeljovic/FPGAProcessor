LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY memory_vhd_tst IS
END memory_vhd_tst;
ARCHITECTURE memory_arch OF memory_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL abus : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL dbus : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL init : STD_LOGIC;
SIGNAL rd : STD_LOGIC;
SIGNAL wr : STD_LOGIC;
COMPONENT memory
	PORT (
	abus : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	clk : IN STD_LOGIC;
	dbus : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	init : IN STD_LOGIC;
	rd : IN STD_LOGIC;
	wr : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : memory
	PORT MAP (
-- list connections between master ports and signals
	abus => abus,
	clk => clk,
	dbus => dbus,
	init => init,
	rd => rd,
	wr => wr
	);
PROCESS                                               
BEGIN                                                        

	clk <= '1';
	wait for 5 ns;
	clk <= '0';
	wait for 5 ns;

END PROCESS;                                           

PROCESS                                              
BEGIN  

	wait until rising_edge(clk);

	-- WRITE
	abus <= X"0000_8000";
	dbus <= X"0000_0001";
	wr <= '1';
	rd <= '0';
	
	wait until rising_edge(clk);
	
	-- WRITE
	abus <= X"0000_8001";
	dbus <= X"0000_0002";
	wr <= '1';
	rd <= '0';
	
	wait until rising_edge(clk);
	
	-- WRITE
	abus <= X"0000_F000";
	wr <= '1';
	rd <= '0';

WAIT;
END PROCESS;                                          
END memory_arch;
