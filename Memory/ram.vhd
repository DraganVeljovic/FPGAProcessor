library ieee;

entity ram is 

	port(
		
		cs : in std_logic;

		clk : in std_logic;
		
		ram_address : in std_logic_vector (16 downto 0);
		
		ram_data : inout std_logic_vector (31 downto 0);
		
		ram_read : in std_logic;
		ram_write : in std_logic;
	
	);

end;

architecture ram_behave of ram is 
	
	signal cs0 : std_logic;
	signal cs1 : std_logic;
	signal cs2 : std_logic;
	signal cs3 : std_logic;

begin

	cs0 <= (not ram_address(3)) and (not ram_address(2)) and cs;
	cs1 <= (ram_address(3)) and (not ram_address(2)) and cs;
	cs2 <= (not ram_address(3)) and (ram_address(2)) and cs;
	cs3 <= (ram_address(3)) and (ram_address(2)) and cs;
	
	modul1 : entity work.module port map (cs0, clk, ram_address(16 downto 4), ram_data, ram_read, ram_write);
	modul1 : entity work.module port map (cs1, clk, ram_address(16 downto 4), ram_data, ram_read, ram_write);
	modul1 : entity work.module port map (cs2, clk, ram_address(16 downto 4), ram_data, ram_read, ram_write);
	modul1 : entity work.module port map (cs3, clk, ram_address(16 downto 4), ram_data, ram_read, ram_write);

end ram_behave;