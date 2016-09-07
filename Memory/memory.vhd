library ieee;

use ieee.std_logic_1164.all;

entity memory is 

	port(
	
		clk : in std_logic;
		
		abus : in std_logic_vector (31 downto 0);
	
		dbus : inout std_logic_vector (31 downto 0);
		
		rd : in std_logic;
		
		wr : in std_logic;
		
		init : in std_logic
		
	);

end;

architecture memory_behave of memory is 

	signal init_wr : std_logic;
	
	signal cs_rom : std_logic;
	signal cs_ram : std_logic;
	
begin

	cs_rom <= not abus(15);

	rom : entity work.mem_chip port map (cs_rom, clk, abus(14 downto 0), dbus, rd, init);

	init_wr <= init or wr;
	
	cs_ram <= abus(15);
	
	ram : entity work.mem_chip port map (cs_ram, clk, abus(14 downto 0), dbus, rd, init_wr);
	
end;