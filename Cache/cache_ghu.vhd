library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

entity cache is
	generic
	(
		-- Direct mapping parameters
		k : integer := 4;
		l : integer := 2
	);
	port
	(
		-- Connecion with processor
		cpu_addr : in std_logic_vector(31 downto 0);
		cpu_data_in : in std_logic_vector(31 downto 0);
		cpu_data_out : out std_logic_vector(31 downto 0);
		
		cpu_rd : in std_logic;
		cpu_wr : in std_logic;
		
		-- stop instruction
		stop_instr : in std_logic;
		
		-- Control
		clk : in std_logic;
		reset : in std_logic;
		
		-- STALL
		wait_mem : out std_logic;
		
		-- ABUS
		mem_addr : out std_logic_vector(31 downto 0);
		-- DBUS
		mem_data : inout std_logic_vector(31 downto 0);
		
		-- Read memory
		mem_read : out std_logic;
		-- Write memory
		mem_write : out std_logic;
		
		-- Memory access
		req : out std_logic;
		ack : in std_logic
	);
end cache;

architecture cache_behave of cache is

	constant Z32 : std_logic_vector (31 downto 0) 
		:= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

	-- Cache state type
	type cache_state_type is (IDLE_STATE, READ_MEM_STATE, WAITING_STATE, READ_DBUS_STATE, WRITE_BACK_STATE,
		WAITING_WB_STATE);

	-- Cache states
	signal current_state, next_state : cache_state_type;
	
	type data_mem_type is array (2**(k + l) - 1 downto 0) of std_logic_vector (31 downto 0);
	type tag_mem_type is array (2**k - 1 downto 0) of std_logic_vector ((31 - k - l) downto 0);
	
	-- Tag segment
	signal tag : tag_mem_type;
	-- Data segment
	signal data : data_mem_type;
	
	-- Valid bits
	signal valid : std_logic_vector (2**k - 1 downto 0);
	
	-- Dirty bits
	signal dirty : std_logic_vector (2**k - 1 downto 0);

	-- Words counter
	signal words_counter : std_logic_vector (1 downto 0); 

	-- Wait for memory (13T)
	signal mem_wait_for : std_logic_vector (3 downto 0); 
	
	-- Synchronization signals
	signal in_cache: std_logic;
	
	-- flush demand by stop instruction
	signal stop : std_logic;
	
	-- Temporary address
	signal temp_addr : std_logic_vector(31 downto 0);
		
	-- Data flow flags
	signal to_mem : std_logic;

begin
	
	process (clk, reset) is
		-- Temporary address
		variable flush_addr : std_logic_vector((k + l - 1) downto 0);
		
		-- Data flow variables
		variable from_cpu : std_logic;
		variable from_mem : std_logic;
	
	begin
	
		if (reset = '1') then
		
			current_state <= IDLE_STATE;
			
			from_cpu := '0';
			from_mem := '0';
			
			for i in 0 to (2**k - 1) loop
				valid(i) <= '0';
				dirty(i) <= '0';
			end loop;
			
		elsif (rising_edge(clk)) then
		
			from_cpu := '0';
			from_mem := '0';
		
			case current_state is
			
				when IDLE_STATE =>
					if (next_state = WRITE_BACK_STATE) then
						words_counter<= B"01";
								
					elsif (next_state = READ_MEM_STATE) then
							words_counter <= B"01";
							
						else 
						
							words_counter <= B"00";
							
							if (in_cache = '1') then
							
								if (cpu_wr = '1') then
									from_cpu := '1';
								end if;
							
							end if;
							
						end if;
					
				when WRITE_BACK_STATE =>
					
					if (next_state = WAITING_WB_STATE) then
						
						words_counter <= B"00";
						
						mem_wait_for <= X"7";
						
						-- clear valid and dirty bits
						
					else 
						
						words_counter <= words_counter + '1';
						
					end if;
					
				when WAITING_WB_STATE =>
					if (next_state = WAITING_WB_STATE) then
						mem_wait_for <= mem_wait_for - '1';
						words_counter <= B"00";
					else 
						mem_wait_for <= X"0";
						words_counter <= B"00";
					end if;
					
				when READ_MEM_STATE =>
					mem_addr <= tag(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) &
						cpu_addr((k + l - 1) downto l) & words_counter;
						
					mem_read <= '1';
				
					if (next_state = READ_MEM_STATE) then
						words_counter <= words_counter + '1';
					else 
						words_counter <= B"00";
						mem_wait_for <= X"7";
					end if;
					
				when WAITING_STATE =>
					if (next_state = WAITING_STATE) then
						mem_wait_for <= mem_wait_for - '1';
						words_counter <= B"00";
					else 
						mem_wait_for <= X"0";
						words_counter <= B"00";
					end if;
					
				when READ_DBUS_STATE =>
				
					from_mem := '1';
						
					if (next_state = IDLE_STATE) then
					
						words_counter <= B"00";
					
						tag(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) <= cpu_addr(31 downto k + l);
						
						valid(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) <= '1';
						
					else 
						
						words_counter <= words_counter + '1';
					
					end if;
					
			end case;	
			
			current_state <= next_state;
			
			if (in_cache = '1') then
			
				if (from_cpu = '1') then
					data(to_integer(unsigned(temp_addr((k + l - 1) downto 0)))) <= cpu_data_in;
					dirty(to_integer(unsigned(temp_addr((k + l - 1) downto l)))) <= '1';
				else
					cpu_data_out <= data(to_integer(unsigned(temp_addr((k + l - 1) downto 0))));
				end if;
			
			elsif (from_mem = '1') then
				
				data(to_integer(unsigned(temp_addr((k + l - 1) downto 0)))) <= mem_data;
			
				elsif (to_mem = '1') then
						
						mem_addr <= tag(to_integer(unsigned(temp_addr((k + l - 1) downto 0)))) & temp_addr((k + l - 1) downto 0);
						mem_data <= data(to_integer(unsigned(temp_addr((k + l - 1) downto 0))));
						mem_write <= '1';
						
					end if;
		
		end if;
	
	end process;

	process (current_state, valid, dirty, tag, data, cpu_addr, cpu_data_in, cpu_rd, cpu_wr, 
		words_counter, mem_wait_for, ack, stop_instr) is
		
		variable var_entry : std_logic_vector(k - 1 downto 0);
		
	begin
	
		next_state <= IDLE_STATE;
		
		in_cache <= '0';
		
		to_mem <= '0';
	
		wait_mem <= '0';
		
		req <= '0';
		
		stop <= '0';
	
		temp_addr <= (others => 'Z');
		
		case current_state is
		
			when IDLE_STATE =>
			
				if (cpu_rd = '1' or cpu_wr = '1') then
				
					if (
						tag(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) = cpu_addr(31 downto k + l) and
						valid(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) = '1'
						) then
						
						in_cache <= '1';
						
						temp_addr <= cpu_addr;
						
						next_state <= IDLE_STATE;
							
					else
					
						req <= '1';
						
						if (ack = '1') then
							
							wait_mem <= '1';
						
							if (valid(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) = '1' and
								dirty(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) = '1') then
								
								to_mem <= '1';
								
								temp_addr <= tag(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) &
									cpu_addr((k + l - 1) downto l) & B"00";
							
								next_state <= WRITE_BACK_STATE;
							
							else
							
								temp_addr <= cpu_addr;
							
								next_state <= READ_MEM_STATE;
							
							end if;
						
						else 
						
							next_state <= IDLE_STATE;
							
						end if;
					
					end if;
				
				elsif (stop_instr = '1') then
				
					in_cache <= '0';
				
					if (and_reduce(dirty) = '0') then
						
							next_state <= IDLE_STATE;
						
						else 
						
							req <= '1';
							
							if (ack = '1') then
							
								var_entry := (others => '0');
							
								for i in 0 to 2**k - 1 loop
								
									if (valid(i) = '1' and dirty(i) = '1') then
									
										var_entry := std_logic_vector((to_unsigned(i, k)));
									
									end if;
								
								end loop;
								
								stop <= '1';
								
								wait_mem <= '1';
								
								to_mem <= '1';
								
								temp_addr <= tag(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) &
									cpu_addr((k + l - 1) downto l) & B"00";
							
								next_state <= WRITE_BACK_STATE;
								
							else 
							
								next_state <= IDLE_STATE;
						
							end if;
						
						end if;
					
					else 
					
						next_state <= IDLE_STATE;
						
					end if;
				
			when WRITE_BACK_STATE =>
				req <= '1';
				wait_mem <= '1';
				
				to_mem <= '1';
				
				temp_addr <= tag(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) &
					cpu_addr((k + l - 1) downto l) & words_counter;
				
				if (words_counter = B"11") then
					next_state <= WAITING_WB_STATE;
				else 
					next_state <= WRITE_BACK_STATE;
				end if;
			
			when WAITING_WB_STATE =>
				req <= '1';
				wait_mem <= '1';
				
				if (mem_wait_for = X"0") then
					next_state <= IDLE_STATE;
				else 
					next_state <= WAITING_WB_STATE;
				end if;
					
			when READ_MEM_STATE =>
				req <= '1';
				wait_mem <= '1';
				
				temp_addr <= cpu_addr(31 downto l) & words_counter;
				
				if (words_counter = B"11") then
					next_state <= WAITING_STATE;
				else 
					next_state <= READ_MEM_STATE;
				end if;
			
			when WAITING_STATE =>
				req <= '1';
				wait_mem <= '1';
				
				if (mem_wait_for = X"0") then
					next_state <= READ_DBUS_STATE;
				else 
					next_state <= WAITING_STATE;
				end if;
				
			when READ_DBUS_STATE =>
				req <= '1';
				wait_mem <= '1';
				
				if (words_counter = B"11") then
					next_state <= IDLE_STATE;
				else 
					next_state <= READ_DBUS_STATE;
				end if; 
				
		end case;
				
	end process;

end cache_behave;
