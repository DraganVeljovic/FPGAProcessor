library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity instruction_cache is
	generic
	(
		-- Direct Mapping parameters
		k : integer := 4;
		l : integer := 2
	);
	port
	(
		-- Conncetion with processor
		cpu_addr : in std_logic_vector (31 downto 0);
		cpu_data : out std_logic_vector (31 downto 0);
		
		-- HIT
		--hit : out std_logic;
		
		-- Control
		clk : in std_logic;
		reset : in std_logic;
		
		-- STALL
		wait_mem : out std_logic;
		
		-- ABUS
		mem_addr : out std_logic_vector (31 downto 0);
		--DBUS
		mem_data : inout std_logic_vector (31 downto 0);
		
		-- Read memory
		mem_read : out std_logic;
		
		-- Memory access
		req : out std_logic;
		ack : in std_logic
	);
end instruction_cache;


architecture instruction_cache_behave of instruction_cache is

	constant Z32 : std_logic_vector (31 downto 0) 
		:= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

	-- Cache state type
	type cache_state_type is (IDLE_STATE, READ_MEM_STATE, WAITING_STATE, READ_DBUS_STATE);

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

	-- Words counter
	signal words_counter : std_logic_vector (1 downto 0); 

	-- Wait for memory (13T)
	signal mem_wait_for : std_logic_vector (3 downto 0);
	
	-- Synchronization signals
	signal in_cache: std_logic;
	signal from_mem : std_logic;
	
	-- Stores temporary address
	signal temp_addr: std_logic_vector((k + l - 1) downto 0); 
	
	signal hit : std_logic;

begin

	process (reset, clk) is
	begin
	
		if (reset = '1') then 
		
			current_state <= IDLE_STATE;
		
			cpu_data <= Z32;
		
			mem_addr <= Z32;
			mem_data <= Z32;
			mem_read <= 'Z';
			
			from_mem <= '0';
			
			temp_addr <= (others => 'Z');
	
			for i in 0 to (2**k - 1) loop
			
				valid(i) <= '0';
			
			end loop;
			
		elsif (rising_edge(clk)) then
		
			cpu_data <= Z32;
			
			mem_addr <= Z32;
			mem_data <= Z32;
			mem_read <= 'Z';
				
			from_mem <= '0';
			
			temp_addr <= (others => 'Z');
			
			case current_state is
			
				when IDLE_STATE =>
				
					if (next_state = READ_MEM_STATE) then
						
						mem_addr <= cpu_addr(31 downto l) & B"00";
						mem_read <= '1';
					
						words_counter <= B"01";
					
					else
						
						words_counter <= B"00";
						
						if (in_cache = '1') then
							
							temp_addr <= cpu_addr((k + l - 1) downto 0);
							
						end if;
							
					end if;
				
				when READ_MEM_STATE => 
					
					mem_read <= '1';
					mem_addr <= cpu_addr(31 downto l) & words_counter;
				
					if (next_state = READ_MEM_STATE) then 
						words_counter <= words_counter + '1';
					else 
						words_counter <= B"00";
						mem_wait_for <= X"D";
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
				
					from_mem <= '1';
						
					temp_addr <= cpu_addr((k + l - 1) downto l) & words_counter;
					
				
					if (next_state = IDLE_STATE) then
					
						tag(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) <= cpu_addr(31 downto k + l);
						
						valid(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) <= '1';
							
					else 
						
						words_counter <= words_counter + '1';
					
					end if;
					
			end case;		
			
			current_state <= next_state;
			
			if (in_cache = '1') then
			
				cpu_data <= data(to_integer(unsigned(temp_addr((k + l - 1) downto 0))));
			
			elsif (from_mem = '1') then
				
				data(to_integer(unsigned(temp_addr((k + l - 1) downto 0)))) <= mem_data;
			
				end if;
		
		end if;
	
	end process;

	process (current_state, valid, tag, cpu_addr, words_counter, mem_wait_for, ack, reset) is
	begin
	
		next_state <= IDLE_STATE;
		
		wait_mem <= '0';
		
		req <= '0';
		
		hit <= '0';
		
		in_cache <= '0';
		
		case current_state is 
		
			when IDLE_STATE =>
							
				if (
					((tag(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) = cpu_addr(31 downto k + l))
						and valid(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) = '1') 
						or reset = '1' -- Cemu
						) then

					hit <= '1';
					
					in_cache <= '1';
							
					next_state <= IDLE_STATE;
					
				else 
				
					hit <= '0';
		
					req <= '1';
					
					if (ack = '1') then
						wait_mem <= '1';
						
						next_state <= READ_MEM_STATE;
					else
						in_cache <= '0';
						
						next_state <= IDLE_STATE;
					end if;
				
				end if;
				
			when READ_MEM_STATE =>
				req <= '1';
				wait_mem	<= '1';
				
				hit <= '0';
				
				if (words_counter = B"11") then
					next_state <= WAITING_STATE;
				else 
					next_state <= READ_MEM_STATE;
				end if;
				
			when WAITING_STATE =>
				req <= '1';
				wait_mem <= '1';
				
				hit <= '0';
				
				if (mem_wait_for = X"0") then
					req <= '1';
					next_state <= READ_DBUS_STATE;
				else 
					next_state <= WAITING_STATE;
				end if;
				
				
			when READ_DBUS_STATE => 
				req <= '1';
				wait_mem <= '1';
				
				hit <= '0';
				
				if (words_counter = B"11") then
					req <= '1'; -- Zasto?
					next_state <= IDLE_STATE;
				else 
					next_state <= READ_DBUS_STATE;
				end if;
		
		end case;
	
	end process;


end instruction_cache_behave;

