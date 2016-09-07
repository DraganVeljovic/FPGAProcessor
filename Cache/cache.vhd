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
		ack : in std_logic;
		
		-- Check memory status
		check_status : out std_logic
		
	);
end cache;

architecture cache_behave of cache is

	-- Cache state type
	type cache_state_type is (IDLE_STATE, READ_MEM_STATE, WAITING_STATE, READ_DBUS_STATE,
		EXECUTE_STATE, WRITE_BACK_STATE, WAITING_WB_STATE, STOPED_STATE, ACK_WAIT_RM, ACK_WAIT_WB, ACK_WAIT_STP);

	-- Cache states
	signal current_state, next_state : cache_state_type;
	
	type tag_mem_type is array (2**k - 1 downto 0) of std_logic_vector ((31 - k - l) downto 0);
	
	-- Tag segment
	signal tag : tag_mem_type;
	
	-- Data segment's signals
	signal d_write : std_logic;
	signal d_addr : std_logic_vector ((k + l - 1) downto 0);
	signal d_data_in : std_logic_vector (31 downto 0);
	signal d_data_out : std_logic_vector (31 downto 0);
	
	-- Valid bits
	signal valid : std_logic_vector (2**k - 1 downto 0);
	
	-- Dirty bits
	signal dirty : std_logic_vector (2**k - 1 downto 0);

	-- Words counter
	signal words_counter : std_logic_vector (1 downto 0); 

	-- Wait for memory (13T)
	signal mem_wait_for : std_logic_vector (3 downto 0); 
	
	-- flush demand by stop instruction
	signal stop_reg, stop_next : std_logic;
	
	-- entry choosen to be written back
	signal entry_reg, entry_next : std_logic_vector (k - 1 downto 0);
	signal entry_tag_reg, entry_tag_next : std_logic_vector (31 - k - l downto 0);
		
	-- Latched values
	signal cpu_addr_reg, cpu_addr_next : std_logic_vector (31 downto 0);
	signal cpu_data_in_reg, cpu_data_in_next : std_logic_vector (31 downto 0);
	signal cpu_rd_reg, cpu_rd_next : std_logic;
	signal cpu_wr_reg, cpu_wr_next : std_logic;
	
	signal data_out_reg, data_out_next : std_logic_vector (31 downto 0);
	
	signal wait_mem_next : std_logic;
	
	signal check_status_next : std_logic;

begin

	data : entity work.gmemory port map (clk, d_write, d_addr, d_data_in, d_data_out);
	
	process (clk, reset) is
	begin
	
		if (reset = '1') then
		
			current_state <= IDLE_STATE;
			
			wait_mem <= '0';
			
			valid <= (others => '0');
			dirty <= (others => '0');
			
		elsif (rising_edge(clk)) then
		
			wait_mem <= wait_mem_next;
			
			cpu_addr_reg <= cpu_addr_next;
			cpu_data_in_reg <= cpu_data_in_next;
			cpu_rd_reg <= cpu_rd_next;
			cpu_wr_reg <= cpu_wr_next;
			
			data_out_reg <= data_out_next;
			
			entry_reg <= entry_next;
			entry_tag_reg <= entry_tag_next;
			
			stop_reg <= stop_next;
			
			check_status  <= check_status_next;
			
			case current_state is
			
				when IDLE_STATE =>					
					words_counter <= B"00";
					
					if (cpu_wr_reg = '1') then
						dirty(to_integer(unsigned(cpu_addr_reg((k + l - 1) downto l)))) <= '1';
					end if;
					
				when WRITE_BACK_STATE =>
					if (next_state = WAITING_WB_STATE) then
						
						words_counter <= B"00";
						mem_wait_for <= X"7";
						
						if (stop_reg = '1') then
							valid(to_integer(unsigned(entry_reg))) <= '0';
							dirty(to_integer(unsigned(entry_reg))) <= '0';
						else 
							valid(to_integer(unsigned(cpu_addr_reg((k + l - 1) downto l)))) <= '0';
							dirty(to_integer(unsigned(cpu_addr_reg((k + l - 1) downto l)))) <= '0';
						end if;
						
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
				
					if (next_state = EXECUTE_STATE) then
					
						words_counter <= B"00";
						
						tag(to_integer(unsigned(cpu_addr_reg((k + l - 1) downto l)))) <= cpu_addr_reg(31 downto k + l);
							
						valid(to_integer(unsigned(cpu_addr_reg((k + l - 1) downto l)))) <= '1';						
						
						
					else 
						
						words_counter <= words_counter + '1';
					
					end if;
					
				when EXECUTE_STATE =>
					if (cpu_wr_reg = '1') then
						dirty(to_integer(unsigned(cpu_addr_reg((k + l - 1) downto l)))) <= '1';
					end if;
				
				-- Check
				when STOPED_STATE =>
					null;
					
				when ACK_WAIT_RM | ACK_WAIT_WB | ACK_WAIT_STP =>
					words_counter <= B"00";
					
					
			end case;
			
			current_state <= next_state;
			
		end if;
	
	end process;

	process (current_state, valid, dirty, tag, cpu_addr, cpu_addr_reg, cpu_data_in, cpu_data_in_reg, cpu_rd, cpu_rd_reg, 
		cpu_wr, cpu_wr_reg, d_data_out, words_counter, mem_wait_for, ack, stop_instr, mem_data,
		stop_reg, entry_reg, entry_tag_reg, data_out_reg) is
		
		variable var_entry : std_logic_vector(k - 1 downto 0);
		variable var_entry_tag : std_logic_vector(31 - k - l downto 0);
		
		variable data_word_counter : std_logic_vector (1 downto 0);
		
	begin
		
		next_state <= IDLE_STATE;
		
		cpu_data_out <= data_out_reg;
		
		mem_addr <= (others => 'Z');
		mem_data <= (others => 'Z');
		mem_read <= '0';
		mem_write <= '0';
		
		d_write <= '0';
		d_addr <= (others => '0');
		d_data_in <= (others => '0');
			
		wait_mem_next <= '0';
		
		req <= '0';
		
		cpu_addr_next <= cpu_addr_reg;
		cpu_data_in_next <= cpu_data_in_reg;
		cpu_rd_next <= cpu_rd_reg;
		cpu_wr_next <= cpu_wr_reg;
		
		data_out_next <= data_out_reg;
		
		entry_next <= entry_reg;
		entry_tag_next <= entry_tag_reg;
		
		stop_next <= stop_reg;
		
		check_status_next <= '0';
		
		case current_state is
		
			when IDLE_STATE =>
			
				-- Latching
				cpu_rd_next <= cpu_rd;
				cpu_wr_next <= cpu_wr;
				
				if (cpu_rd = '1') then
					cpu_addr_next <= cpu_addr;
				end if;
				
				if (cpu_wr = '1') then
					cpu_addr_next <= cpu_addr; 
					cpu_data_in_next <= cpu_data_in;
				end if;
				
				if (cpu_rd_reg = '1') then
					cpu_data_out <= d_data_out;
					data_out_next <= d_data_out;
				end if;
			
				if (cpu_rd = '1' or cpu_wr = '1') then
				
					-- HIT
					if (
						tag(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) = cpu_addr(31 downto k + l) and
						valid(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) = '1'
						) then
						
						if (cpu_wr = '1') then
							d_addr <= cpu_addr((k + l - 1) downto 0);
							d_data_in <= cpu_data_in;
							d_write <= '1';
						elsif (cpu_rd = '1') then
							d_addr <= cpu_addr((k + l - 1) downto 0);
						end if;
						
						next_state <= IDLE_STATE;
							
					-- MISS		
					else
					
						req <= '1';
						wait_mem_next <= '1';
							
						if (ack = '1') then
						
							if (valid(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) = '1' and 
								dirty(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) = '1') then
								
								d_addr <= cpu_addr((k + l - 1) downto l) & B"00";
									
								next_state <= WRITE_BACK_STATE;
								
								
							else
								
								next_state <= READ_MEM_STATE;
							
							end if;
							
						else 
						
							if (valid(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) = '1' and 
								dirty(to_integer(unsigned(cpu_addr((k + l - 1) downto l)))) = '1') then
						
								next_state <= ACK_WAIT_WB;
							
							else 
							
								next_state <= ACK_WAIT_RM;
							
							end if;
							
						end if;
					
					end if;
				
				elsif (stop_instr = '1') then
				
						stop_next <= '1';
				
						req <= '1';
					
						if (or_reduce(dirty) = '0') then
						
							next_state <= STOPED_STATE;
							check_status_next <= '1';
					
						else 

							if (ack = '1') then
							
								var_entry := (others => '0');
								var_entry_tag := (others => '0');
							
								for i in 0 to 2**k - 1 loop
								
									if (valid(i) = '1' and dirty(i) = '1') then
									
										var_entry := std_logic_vector((to_unsigned(i, k)));
										var_entry_tag := tag(i);
										
										exit;
									
									end if;
								
								end loop;
								
								entry_next <= var_entry;
								
								entry_tag_next <= var_entry_tag;
								
								wait_mem_next <= '1';
								
								d_addr <= var_entry & B"00";
								
								next_state <= WRITE_BACK_STATE;
								
							else 
							
								next_state <= ACK_WAIT_STP;
						
							end if;
						
						end if;
					
					else 
					
						next_state <= IDLE_STATE;
						
					end if;
				
			when WRITE_BACK_STATE =>
				req <= '1';
				wait_mem_next <= '1';
				
				if (stop_reg = '1') then
					
					mem_addr <= entry_tag_reg & 
						entry_reg & words_counter;
				
				else 
					mem_addr <= tag(to_integer(unsigned(cpu_addr_reg((k + l - 1) downto l)))) & 
						cpu_addr_reg((k + l - 1) downto l) & words_counter;
						
				end if;
				
				mem_data <= d_data_out;
	
				mem_write <= '1';
				
				if (words_counter = B"11") then
					next_state <= WAITING_WB_STATE;
					
				else 
					
					if (stop_reg = '1') then
						data_word_counter := words_counter + '1';
						d_addr <= entry_reg & data_word_counter;
					else 
						data_word_counter := words_counter + '1';
						d_addr <= cpu_addr_reg((k + l - 1) downto l) & data_word_counter;
					end if;
						
					next_state <= WRITE_BACK_STATE;
				end if;
			
			when WAITING_WB_STATE =>
				req <= '1';
				wait_mem_next <= '1';
				
				if (mem_wait_for = X"0") then
				
					req <= '1';
				
					next_state <= IDLE_STATE;
				else 
					next_state <= WAITING_WB_STATE;
				end if;
					
			when READ_MEM_STATE =>
				req <= '1';
				wait_mem_next <= '1';
				
				mem_addr <= cpu_addr_reg(31 downto l) & words_counter;
				
				mem_read <= '1';
				
				if (words_counter = B"11") then
					next_state <= WAITING_STATE;
				else 
					next_state <= READ_MEM_STATE;
				end if;
			
			when WAITING_STATE =>
				req <= '1';
				wait_mem_next <= '1';
				
				if (mem_wait_for = X"0") then
					
					req <= '1';
					
					next_state <= READ_DBUS_STATE;
				else 
					next_state <= WAITING_STATE;
				end if;
				
			when READ_DBUS_STATE =>
				req <= '1';
				wait_mem_next <= '1';
				
				d_addr <= cpu_addr_reg((k + l - 1) downto l) & words_counter;
				d_data_in <= mem_data;
				d_write <= '1';
						
				
				if (words_counter = B"11") then
				
					req <= '1';
					
					next_state <= EXECUTE_STATE;
				else 
					next_state <= READ_DBUS_STATE;
				end if; 
			
			when EXECUTE_STATE =>
				wait_mem_next <= '0';
				
				if (cpu_wr_reg = '1') then
					d_addr <= cpu_addr_reg((k + l - 1) downto 0);
					d_data_in <= cpu_data_in_reg;
					d_write <= '1';
				elsif (cpu_rd_reg = '1') then	
					d_addr <= cpu_addr_reg((k + l - 1) downto 0);
				end if;
				
				next_state <= IDLE_STATE;
				
			when STOPED_STATE =>
				check_status_next <= '0';
				next_state <= STOPED_STATE;
				
			when ACK_WAIT_RM =>
				req <= '1';
				wait_mem_next <= '1';
				
				if (ack = '1') then
					
					next_state <= READ_MEM_STATE;
					
				else 
				
					next_state <= ACK_WAIT_RM;
				
				end if;
				
			when ACK_WAIT_WB =>
				req <= '1';
				wait_mem_next <= '1';
				
				if (ack = '1') then
				
					d_addr <= cpu_addr_reg((k + l - 1) downto l) & B"00";
									
					data_word_counter := B"00";

					next_state <= WRITE_BACK_STATE;
					
				else 
				
					next_state <= ACK_WAIT_WB;
				
				end if;
				
			when ACK_WAIT_STP =>
				req <= '1';
				wait_mem_next <= '1';
				
				if (ack = '1') then
							
					var_entry := (others => '0');
					var_entry_tag := (others => '0');
							
					for i in 0 to 2**k - 1 loop
								
						if (valid(i) = '1' and dirty(i) = '1') then
									
							var_entry := std_logic_vector((to_unsigned(i, k)));
							var_entry_tag := tag(i);
										
							exit;
									
						end if;
								
					end loop;
								
					entry_next <= var_entry;
					
					entry_tag_next <= var_entry_tag;
								
					wait_mem_next <= '1';
								
					d_addr <= var_entry & B"00";
								
					data_word_counter := B"00";
							
					next_state <= WRITE_BACK_STATE;
				
				else
				
					next_state <= ACK_WAIT_STP;
					
				end if;
				
		end case;
				
	end process;

end cache_behave;

