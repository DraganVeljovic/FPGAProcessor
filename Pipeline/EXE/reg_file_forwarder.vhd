library ieee;

use ieee.std_logic_1164.all;

entity reg_file_forwarder is

	port(
	
		stall : in std_logic;
		
		reset : in std_logic;
		
		stop : in std_logic;
	
		-- SWAP_MEM_RESOLVER
		reg_a0 : in std_logic_vector (31 downto 0);
		reg_no_a0 : in std_logic_vector (3 downto 0);
		reg_wr_a0 : in std_logic;
		
		reg_b0 : in std_logic_vector (31 downto 0);
		reg_no_b0 : in std_logic_vector (3 downto 0);
		reg_wr_b0 : in std_logic;
		
		-- LOAD_STORE
		reg_a1 : in std_logic_vector (31 downto 0);
		reg_no_a1 : in std_logic_vector (3 downto 0);
		reg_wr_a1 : in std_logic;
		
		-- control signals
		swap_mem : in std_logic;
		load_store : in std_logic;
		
		-- output
		reg_a : out std_logic_vector (31 downto 0);
		reg_no_a : out std_logic_vector (3 downto 0);
		reg_wr_a : out std_logic;
		
		reg_b : out std_logic_vector (31 downto 0);
		reg_no_b : out std_logic_vector (3 downto 0);
		reg_wr_b : out std_logic;
		
		-- PC update
		pc_value : out std_logic_vector (31 downto 0);
		pc_update : out std_logic
		
	);

end reg_file_forwarder;

architecture reg_file_forwarder_behave of reg_file_forwarder is 
begin

	process (stall, stop, reset, reg_a0, reg_no_a0, reg_wr_a0, reg_b0, reg_no_b0, reg_wr_b0, 
		reg_a1, reg_no_a1, reg_wr_a1, swap_mem, load_store) 
	begin
		
		pc_value <= (others => '0');
		pc_update <= '0';

		if (swap_mem = '1') then
			
			reg_a <= reg_a0;
			reg_no_a <= reg_no_a0;
			reg_wr_a <= reg_wr_a0;
			
			reg_b <= reg_b0;
			reg_no_b <= reg_no_b0;
			reg_wr_b <= reg_wr_b0;
		
			if (reg_no_a0 = "1111") then
			
				pc_value <= reg_a0;
				pc_update <= '1';
			
			elsif (reg_no_b0 = "1111") then
				
					pc_value <= reg_b0;
					pc_update <= '1';
			
				end if;
			
		elsif (load_store = '1') then
			
				reg_a <= reg_a1;
				reg_no_a <= reg_no_a1;
				reg_wr_a <= reg_wr_a1;
				
				reg_b <= (others => '0');
				reg_no_b <= (others => '0');
				reg_wr_b <= '0';
				
				if (reg_no_a1 = "1111") then
			
					pc_value <= reg_a1;
					pc_update <= '1';
					
				end if;
			
			else 
				
					reg_a <= (others => '0');
					reg_no_a <= (others => '0');
					reg_wr_a <= '0';
					
					reg_b <= (others => '0');
					reg_no_b <= (others => '0');
					reg_wr_b <= '0';
				
				end if;
		
	end process;

end reg_file_forwarder_behave;