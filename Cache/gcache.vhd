library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gcache is
	generic
	(
		data_width : integer :=	32;
		address_width : integer :=	32
	);


	port
	(
		-- Control
		clk : in std_logic;		
		reset : in std_logic;
		
		-- Connection with CPU
		cpu_wr : std_logic;
		cpu_addr : in std_logic_vector ((address_width - 1) downto 0);
		cpu_data : inout std_logic_vector ((data_width - 1) downto 0);
		
		-- Connection with memory
		mem_wr : std_logic;
		mem_addr : in std_logic_vector ((address_width - 1) downto 0);
		mem_data : inout std_logic_vector ((data_width - 1) downto 0)
		 
	);
end gcache;

architecture gcache_behave of gcache is

	component gmemory is
		generic(tcq : time; address_width, data_width : integer);
		port(clk, wr : in std_logic; addr : in std_logic_vector(address_width - 1 downto 0);
			data : inout std_logic_vector(data_width - 1 downto 0));
	end component gmemory;

begin
		
	data : entity gmemory 
		generic map (tcq => 2 ns, address_width => 32, data_width => 32) 
		port map (clk => clk, wr => cpu_wr, wr => mem_wr, addr => cpu_addr, addr => mem_addr,
			data => cpu_data, data => mem_data);
	
end gcache_behave;

