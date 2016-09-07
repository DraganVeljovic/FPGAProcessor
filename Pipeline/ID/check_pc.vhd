library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

entity check_pc is
	
	port(
	
		clk : in std_logic;
		reset : in std_logic;
		
		instr_type : in std_logic_vector (3 downto 0);
	
		enable : in std_logic_vector (3 downto 0);

		opcode : in std_logic_vector (3 downto 0);
		
		possible_swap : in std_logic_vector (3 downto 0);
		
		output : out std_logic
	
	);

end check_pc;

architecture check_pc_behave of check_pc is

	signal status, status_next : std_logic;
	
	signal reduction : std_logic_vector (3 downto 0);
	
begin
	
	process (clk, reset) is
	begin
	
		if (reset = '1') then
			
			status <= '0';

		elsif (rising_edge(clk)) then
				status <= status_next;
			end if;
			
	end process;
	
	process (enable, instr_type, status, opcode, possible_swap) is
	begin
	
		status_next <= '1';
		
		reduction <= "0000";
		
		if (enable = "1111" or (possible_swap = "1111" and opcode = "1000")) then
		
			if (instr_type(3 downto 1) = "000" or (instr_type(3 downto 1) = "000" and opcode = "1000")
					or instr_type(3 downto 1) = "001"
					or instr_type(3 downto 0) = "0101") then
					
				status_next <= '0';
				
				reduction <= "1111";
			
			end if;
				
		end if;
		
	end process;

	output <= '0' when enable = "UUUU" else status and and_reduce(reduction);

end check_pc_behave;