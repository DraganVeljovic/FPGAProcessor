library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

use work.memory_package.all;

entity module is 

	port(
	
		cs : in std_logic;
		
		clk : in std_logic;
		
		module_addr : in std_logic_vector (12 downto 0); -- kao generik?
		
		module_data : inout std_logic_vector (31 downto 0);
		
		module_read : in std_logic;
		module_write : in std_logic
		
	);
	
end;

architecture module_behave of module is

	signal data : memory_type;
	
	-- Access Time
	signal counter : std_logic_vector (3 downto 0) := X"9";
	
	-- Flags
	signal reading : std_logic := '0';
	signal writing : std_logic := '0';
	
	-- Temporay address and data storage
	signal temp_addr : std_logic_vector (12 downto 0);
	signal temp_data : std_logic_vector (31 downto 0);
	
begin

	process (clk) is
	begin	
		
		if (rising_edge(clk)) then
		
			module_data <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
			
			-- Establish write process through write demand
			if (module_write = '1' and writing = '0' and cs = '1') then 
				
				writing <= '1';
				temp_addr <= module_addr;
				temp_data <= module_data;
				
			end if;
			
			if (module_read = '1' and reading = '0' and cs = '1') then
			
				reading <= '1';
				temp_addr <= module_addr;
			
			end if;
			
			if (writing = '1') then
				
				if (counter = X"0") then
					
					counter <= X"9";
					writing <= '0';
					data(to_integer(unsigned(temp_addr))) <= temp_data;
					
				else 
					counter <= counter - '1';
				end if;
				
			end if;
			
			if (reading = '1') then
			
				if (counter = X"0") then
					
					counter <= X"9";
					reading <= '0';
					module_data <= data(to_integer(unsigned(temp_addr)));
					
				else 
					counter <= counter - '1';
				end if;
			
			end if;
			
		end if;
		
	end process;

end module_behave;