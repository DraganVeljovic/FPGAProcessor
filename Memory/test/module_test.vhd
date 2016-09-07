LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY module_test IS
END module_test;
ARCHITECTURE module_test_arch OF module_test IS
-- constants                                                 
-- signals                                                   
SIGNAL abus : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL dbus : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL rd : STD_LOGIC;
SIGNAL wr : STD_LOGIC;

component module
	port(
		cs : in std_logic;
		
		clk : in std_logic;
		
		module_addr : in std_logic_vector (12 downto 0); -- kao generik?
		
		module_data : inout std_logic_vector (31 downto 0);
		
		module_read : in std_logic;
		module_write : in std_logic
	);
end component;

BEGIN
	mdl : module
	PORT MAP (
		'1', clk, abus, dbus, rd, wr
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
	abus <= B"0000000000000";
	dbus <= X"0000_0001";
	wr <= '1';
	rd <= '0';
	
	wait until rising_edge(clk);
	
	dbus <= (others => 'Z');
	
	for i in 0 to 9 loop
		wait until rising_edge(clk);
	end loop;
	
	-- WRITE
	abus <= B"0000000000001";
	dbus <= X"0000_0002";
	wr <= '1';
	rd <= '0';
	
	wait until rising_edge(clk);
	
	dbus <= (others => 'Z');
	
	for i in 0 to 9 loop
		wait until rising_edge(clk);
	end loop;
	
	-- READ
	abus <= B"0000000000000";
	wr <= '0';
	rd <= '1';
	
	wait until rising_edge(clk);

WAIT;
END PROCESS;                                          
END module_test_arch;
