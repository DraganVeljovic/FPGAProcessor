library ieee;

use ieee.std_logic_1164.all;

entity mem_chip is 

	port(
		
		cs : in std_logic;

		clk : in std_logic;
		
		mem_address : in std_logic_vector (14 downto 0);
		
		mem_data : inout std_logic_vector (31 downto 0);
		
		mem_read : in std_logic;
		mem_write : in std_logic
	
	);

end;

architecture mem_chip_behave of mem_chip is 
	
	signal cs0 : std_logic;
	signal cs1 : std_logic;
	signal cs2 : std_logic;
	signal cs3 : std_logic;

begin

	cs0 <= (not mem_address(1)) and (not mem_address(0)) and cs;
	cs1 <= (not mem_address(1)) and (mem_address(0)) and cs;
	cs2 <= (mem_address(1)) and (not mem_address(0)) and cs;
	cs3 <= (mem_address(1)) and (mem_address(0)) and cs;
	
	modul0 : entity work.module port map (cs0, clk, mem_address(14 downto 2), mem_data, mem_read, mem_write);
	modul1 : entity work.module port map (cs1, clk, mem_address(14 downto 2), mem_data, mem_read, mem_write);
	modul2 : entity work.module port map (cs2, clk, mem_address(14 downto 2), mem_data, mem_read, mem_write);
	modul3 : entity work.module port map (cs3, clk, mem_address(14 downto 2), mem_data, mem_read, mem_write);

end mem_chip_behave;