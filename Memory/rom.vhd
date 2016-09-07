library ieee;

entity rom is 

	port(
		
		cs : in std_logic;

		clk : in std_logic;
		
		rom_address : in std_logic_vector (16 downto 0);
		
		rom_data : inout std_logic_vector (31 downto 0);
		
		rom_read : in std_logic;
		rom_write : in std_logic;
	
	);

end;

architecture rom_behave of rom is 
	
	signal cs0 : std_logic;
	signal cs1 : std_logic;
	signal cs2 : std_logic;
	signal cs3 : std_logic;

begin

	cs0 <= (not rom_address(3)) and (not rom_address(2)) and cs;
	cs1 <= (rom_address(3)) and (not rom_address(2)) and cs;
	cs2 <= (not rom_address(3)) and (rom_address(2)) and cs;
	cs3 <= (rom_address(3)) and (rom_address(2)) and cs;
	
	modul1 : entity work.module port map (cs0, clk, rom_address(16 downto 4), rom_data, rom_read, rom_write);
	modul1 : entity work.module port map (cs1, clk, rom_address(16 downto 4), rom_data, rom_read, rom_write);
	modul1 : entity work.module port map (cs2, clk, rom_address(16 downto 4), rom_data, rom_read, rom_write);
	modul1 : entity work.module port map (cs3, clk, rom_address(16 downto 4), rom_data, rom_read, rom_write);

end rom_behave;