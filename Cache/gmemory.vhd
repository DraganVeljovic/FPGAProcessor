library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gmemory is
  generic (
      tcq : time := 0 ns;
		
		address_width : integer := 6;
		data_width : integer := 32
  );
  
	port
	(
		clk : in std_logic;
		
		wr : in std_logic;

		addr : in std_logic_vector ((address_width - 1) downto 0);
		
		data_in : in std_logic_vector ((data_width - 1) downto 0);
		
		data_out : out std_logic_vector ((data_width - 1) downto 0)
	);
end gmemory;



architecture gmemory_behave of gmemory is
	
	type mem_type is array (2**address_width - 1 downto 0) of std_logic_vector((data_width - 1) downto 0);
	
	signal mem_reg, mem_next : mem_type;
	
	signal addr_reg, addr_next : std_logic_vector((address_width - 1) downto 0);
	
begin

	process (clk) 
	begin
		if (rising_edge(clk)) then
			mem_reg <= mem_next after tcq;
			addr_reg <= addr_next after tcq;
		end if;
	end process;
	
	process (mem_reg, wr, addr, data_in) is
	begin
		
		mem_next <= mem_reg after tcq;
		
		if (wr = '1') then			
			mem_next(to_integer(unsigned(addr))) <= data_in after tcq;
		end if;
		
		addr_next <= addr after tcq;
		
	end process;
	
	data_out <= mem_reg(to_integer(unsigned(addr_reg))) after tcq;
	
end gmemory_behave;
