library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

entity if_complete is
	port(
		
		stall : in std_logic;
	
		stop : in std_logic;
		
		clk : in std_logic;
		reset : in std_logic;
		
		pc : in std_logic_vector (31 downto 0);
		
		ir_out : out std_logic_vector (31 downto 0);
		
		pc_out : out std_logic_vector (31 downto 0);
		
		brnch : in std_logic;
		jmp_addr : in std_logic_vector (31 downto 0);
		
		mem_addr : out std_logic_vector (31 downto 0);
		mem_data : inout std_logic_vector (31 downto 0);
		
		mem_read : out std_logic;	
		wait_mem : out std_logic;
		
		req : out std_logic;
		ack : in std_logic;
		
		pc_mod : in std_logic;
		
		stop_from_id : in std_logic
		
	);
end if_complete;

architecture if_complete_behave of if_complete is

	signal cache_rd : std_logic;
	signal cache_addr : std_logic_vector (31 downto 0);
	
	signal wait_mem_signal : std_logic;
	
	signal req_signal : std_logic;
	
	signal pc_reg, pc_next : std_logic_vector (31 downto 0);

begin

	instr_cache : entity work.cache port map (
		cpu_addr => cache_addr,
		cpu_data_in => (others => 'Z'),
		cpu_data_out => ir_out,	
		cpu_rd => cache_rd, 
		cpu_wr => '0',
		stop_instr => stop_from_id,
		clk => clk,
		reset => reset,
		wait_mem => wait_mem_signal,
		mem_addr => mem_addr,
		mem_data => mem_data,
		mem_read => mem_read,
		req => req_signal,
		ack => ack		
	);
	
	process (reset, stop, stall, pc, wait_mem_signal, brnch, jmp_addr, pc_mod, stop_from_id) is
	begin
	
		cache_rd <= '0';
		cache_addr <= pc;
		pc_out <= pc;
	
		if (reset = '0' and stop = '0' and stall = '0' and pc_mod = '0' and wait_mem_signal = '0' 
			and stop_from_id = '0') then
		
			cache_rd <= '1';
			
			if (brnch = '1') then
				cache_addr <= jmp_addr;
				pc_out <= jmp_addr + 1;
			elsif (req_signal = '0') then 
					pc_out <= pc + 1;
				else 
					cache_rd <= '0';
				end if;
		
		end if;

	end process;
	
	wait_mem <= wait_mem_signal;
	req <= req_signal;

end if_complete_behave;