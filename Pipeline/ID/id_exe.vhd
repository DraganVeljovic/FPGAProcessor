library ieee;
use ieee.std_logic_1164.all;

use work.instructions_types.all;

entity id_exe is

	port
	(
		clk : in std_logic;
		reset : in std_logic;
		
		stall : in std_logic;
		
		stop : in std_logic;
		
		wait_mem : in std_logic;
		
		instr_type_in : in instruction_type;
		instr_type_out : out instruction_type;
		
		ir_in : in std_logic_vector(31 downto 0);
		ir_out : out std_logic_vector(31 downto 0);
		
		rn_in, rd_in, rm_in, rs_in : in std_logic_vector(31 downto 0);
		
		reg_no_a : in std_logic_vector (3 downto 0);						
		data_in_a : in std_logic_vector (31 downto 0);
		reg_wr_a : in std_logic;
		
		reg_no_b : in std_logic_vector (3 downto 0);	
		data_in_b : in std_logic_vector (31 downto 0);
		reg_wr_b : in std_logic;
		
		rn_out, rd_out, rm_out, rs_out : out std_logic_vector(31 downto 0)
		
	);
end id_exe;


architecture id_exe_behave of id_exe is
begin
	
	process (clk, reset, stall, stop, instr_type_in, ir_in, rn_in, rd_in, rm_in, rs_in) is
	begin
		
		if (reset = '1') then
			
			rn_out <= (others => 'Z');
			rd_out <= (others => 'Z');
			rm_out <= (others => 'Z');
			rs_out <= (others => 'Z');
			instr_type_out <= INVALID;
			ir_out <= (others => 'Z');
			
		elsif (rising_edge(clk)) then
			
			if (stall = '0' and stop = '0' and reset = '0' and wait_mem = '0') then
			
				if (ir_in(24 downto 21) = reg_no_a and reg_wr_a = '1') then
					rn_out <= data_in_a;
				elsif (ir_in(24 downto 21) = reg_no_b and reg_wr_b = '1') then 
						rn_out <= data_in_b;
					else
						rn_out <= rn_in;
						
					end if;
					
				if (ir_in(15 downto 12) = reg_no_a and reg_wr_a = '1') then
					rm_out <= data_in_a;
				elsif (ir_in(15 downto 12) = reg_no_b and reg_wr_b = '1') then 
						rm_out <= data_in_b;
					else
						rm_out <= rm_in;
						
					end if;
					
				if (ir_in(11 downto 8) = reg_no_a and reg_wr_a = '1') then
					rs_out <= data_in_a;
				elsif (ir_in(11 downto 8) = reg_no_b and reg_wr_b = '1') then 
						rs_out <= data_in_b;
					else
						rs_out <= rs_in;
						
					end if;
					
				if (ir_in(20 downto 17) = reg_no_a and reg_wr_a = '1') then
					rd_out <= data_in_a;
				elsif (ir_in(20 downto 17) = reg_no_b and reg_wr_b = '1') then 
						rd_out <= data_in_b;
					else
						rd_out <= rd_in;
						
					end if;
				
				instr_type_out <= instr_type_in;
				
				ir_out <= ir_in;

			end if;
			
		end if;
	end process;

end id_exe_behave;