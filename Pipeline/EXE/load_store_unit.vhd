library ieee;

use ieee.std_logic_1164.all;

entity load_store_unit is

	port(
		
		enable : in std_logic;
	
		l : in std_logic;
		
		cache_data : in std_logic_vector (31 downto 0);
		
		s : in std_logic;
		
		rd : in std_logic_vector (31 downto 0);
		rd_addr : in std_logic_vector (3 downto 0);
		
		reg_out : out std_logic_vector (31 downto 0);
		reg_no : out std_logic_vector (3 downto 0);
		reg_wr : out std_logic;
		
		nout : out std_logic;
		zout : out std_logic
		
	);

end load_store_unit;

architecture load_store_unit_behave of load_store_unit is
begin 

	process (enable, l, rd, rd_addr, cache_data, s) is
	begin 
	
		reg_out <= (others => '0');
		reg_no <= (others => '0');
		reg_wr <= '0';
		
		nout <= '0';
		zout <= '0';
		
		if (enable = '1') then
		
			if (l = '1') then				
			
				reg_out <= cache_data;
				reg_no <= rd_addr;
				reg_wr <= '1';
				
				if (cache_data(31) = '1' and s = '1') then
					nout <= '1';
				end if;
				
				if (cache_data = X"0000_0000") then
					zout <= '1';
				end if;
			
			end if;
		
		end if;
		
	end process;

end load_store_unit_behave;