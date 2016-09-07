library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

use work.memory_package.all;

entity memory is
	generic (
		
		init_file_name : string := "test_input.txt";
		expected_output_file_name : string := "test_output.txt"
		
	);

	port(
	
		clk : in std_logic;
		reset : in std_logic;
		
		check_status : in std_logic;
		
		rd : in std_logic;
		wr : in std_logic;
		
		addr : in std_logic_vector (31 downto 0);
		
		data : inout std_logic_vector (31 downto 0)
	
	);
	
end memory;

architecture memory_behave of memory is 

	signal mem : memory_type;
	
	signal rd_req_addr : std_logic_vector (31 downto 0);
	signal rd_req : std_logic;
	
	-- Delay mechanism
	signal rd_delay : delay_bit;
	signal wr_delay : delay_bit;
	
	signal status_delay : delay_bit;
	
	signal addr_delay : delay_vector;
	signal data_delay : delay_vector;
	
	signal pc_init_value : std_logic_vector (31 downto 0);
	
begin
	
	process (clk, reset, status_delay) is
	
		file init_file : text open read_mode is init_file_name;
		file exp_out_file : text open read_mode is expected_output_file_name;
		
		variable input_line : line;
		variable addr_input : std_logic_vector (31 downto 0);
		variable data_input : std_logic_vector (31 downto 0);
		variable read_status : boolean;
		
		variable pc_not_initialize : boolean := true;
		
		variable failed : boolean := false;
		
	begin
	
		if (reset = '1') then
			
			-- Memory initialization
			init: while (not endfile(init_file)) loop
			
				readline(init_file, input_line);
					
				hread(input_line, addr_input, read_status);
					
				if (not read_status) then
						
					report "error reading address from line: " & input_line.all
					severity warning;
					next init;
						
				end if;
				
				
				if (pc_not_initialize) then
				
					pc_init_value <= addr_input;
					
					pc_not_initialize := false;
				
				else
					
				read(input_line, data_input, read_status);
					
				if (not read_status) then
						
					report "error reading data from line: " & input_line.all
					severity warning;
					next init;
						
				end if;
					
				report "Address: " & integer'image(to_integer(unsigned(addr_input))) & ", data: " & integer'image(to_integer(unsigned(data_input)))
				severity note;
					
				mem(to_integer(unsigned(addr_input((memory_bits - 1) downto 0)))) <= data_input;
				
				end if;
				
			end loop init;
			
		elsif (status_delay(status_delay'high) = '1') then
			
				status: while (not endfile(exp_out_file)) loop
			
					readline(exp_out_file, input_line);
					
					hread(input_line, addr_input, read_status);
					
					if (not read_status) then
							
						report "error reading address from line: " & input_line.all
						severity warning;
						next status;
							
					end if;
					
					read(input_line, data_input, read_status);
					
					if (not read_status) then
							
						report "error reading data from line: " & input_line.all
						severity warning;
						next status;
							
					end if;
						
					if (mem(to_integer(unsigned(addr_input((memory_bits - 1) downto 0)))) /= data_input) then
						
						report "Address: " & integer'image(to_integer(unsigned(addr_input))) 
							& ", data: " & integer'image(to_integer(unsigned(mem(to_integer(unsigned(addr_input((memory_bits - 1) downto 0)))))))
							& " - expected data: " & integer'image(to_integer(unsigned(data_input)))
						severity warning;
						failed := true;
				
					end if;
					
				end loop status;
				
				if (failed) then
					
					report "FAILED!"
					severity note;
						
				else 
					
					report "SUCCESS!"
					severity note;
						
				end if;
		
				status_delay <= status_delay(status_delay'high-1 downto 0) & check_status;
		
			elsif (rising_edge(clk)) then
			
					-- Shift requests
					rd_delay <= rd_delay(rd_delay'high-1 downto 0) & rd;
					wr_delay <= wr_delay(wr_delay'high-1 downto 0) & wr;
					
					status_delay <= status_delay(status_delay'high-1 downto 0) & check_status; 
					
					addr_delay <= addr_delay(addr_delay'high-1 downto 0) & addr;
					
					data_delay <= data_delay(data_delay'high-1 downto 0) & data;
					
					-- Set output in next clock cicle
					rd_req <= rd_delay(rd_delay'high);				
					rd_req_addr <= addr_delay(addr_delay'high);
					
					if (wr_delay(wr_delay'high) = '1') then
						mem(to_integer(unsigned(addr_delay(addr_delay'high)((memory_bits - 1) downto 0)))) <= data_delay(data_delay'high);
					end if;
					
				end if;
			
	
	end process;
	
	process (reset, pc_init_value, rd_req, rd_req_addr, mem) is
	begin
	
		if (reset = '1') then
		
			data <=	pc_init_value;
		
		else 
		
			if (rd_req = '1') then
		
			data <= mem(to_integer(unsigned(rd_req_addr((memory_bits - 1) downto 0))));
		
			else 
			
				data <= (others => 'Z');
			
			end if;
			
		end if;
		
	end process;
	
end memory_behave;