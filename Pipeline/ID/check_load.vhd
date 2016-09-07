library ieee;

use ieee.std_logic_1164.all;

entity check_load_store is

	port(
	
		wait_mem : in std_logic;
	
		stall : in std_logic;
		
		stop : in std_logic;
		
		reset : in std_logic;
	
		instr : in std_logic_vector (2 downto 0);
		
		l : in std_logic;
		
		rn_addr : in std_logic_vector (3 downto 0);
		rn : in std_logic_vector (31 downto 0);
		
		rd_addr : in std_logic_vector (3 downto 0);
		rd : in std_logic_vector (31 downto 0);
		
		reg_a : in std_logic_vector (31 downto 0);
		reg_no_a : in std_logic_vector (3 downto 0);
		reg_wr_a : in std_logic;
		
		reg_b : in std_logic_vector (31 downto 0);
		reg_no_b : in std_logic_vector (3 downto 0);
		reg_wr_b : in std_logic;
		
		cache_addr : out std_logic_vector (31 downto 0);
	
		cache_data : out std_logic_vector (31 downto 0);
	
		cache_rd : out std_logic;
		
		cache_wr : out std_logic
		
	);
	
end check_load_store;

architecture check_load_store_behave of check_load_store is
begin

	process (wait_mem, stop, reset, stall, instr, l, rn_addr, rn, rd_addr, rd, reg_a, reg_no_a, reg_wr_a, reg_b, reg_no_b, reg_wr_b) is
		variable temp_rn : std_logic_vector (31 downto 0);
		variable temp_rd : std_logic_vector (31 downto 0);
	begin
			
		cache_addr <= (others => '0');
		cache_data <= (others => '0');
		cache_rd <= '0';
		cache_wr <= '0';
		
		if (stall = '0' and stop = '0' and reset = '0' and wait_mem = '0') then
	
		if (instr = B"010") then
		
			temp_rn := rn;
			temp_rd := rd;
		
			if (reg_no_a = rn_addr and reg_wr_a = '1') then
				temp_rn := reg_a;
			end if;
			
			if (reg_no_b = rn_addr and reg_wr_b = '1') then
				temp_rn := reg_b;
			end if;
			
			if (reg_no_a = rd_addr and reg_wr_a = '1') then
				temp_rd := reg_a;
			end if;
			
			if (reg_no_b = rd_addr and reg_wr_b = '1') then
				temp_rd := reg_b;
			end if;
			
			cache_addr <= temp_rn;
			
			if (l = '1') then 
			
				cache_rd <= '1';
			
			else 
			
				cache_data <= temp_rd;
				cache_wr <= '1';
			
			end if;
			
		end if;
		
		end if;
		
		
	end process;
	
end check_load_store_behave;