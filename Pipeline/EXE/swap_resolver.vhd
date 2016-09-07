library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity swap_resolver is
	
	port (
	
		enable : in std_logic;
	
		alu_result : in std_logic_vector (31 downto 0);
		
		rd : in std_logic_vector (31 downto 0);
		
		opcode : in std_logic_vector (3 downto 0);
		
		rm_addr : in std_logic_vector (3 downto 0);
		rd_addr : in std_logic_vector (3 downto 0);
		
		dp_r : in std_logic;
		
		resolver_out_a : out std_logic_vector (31 downto 0);
		reg_no_a : out std_logic_vector (3 downto 0);
		reg_wr_a : out std_logic;
		
		resolver_out_b : out std_logic_vector (31 downto 0);
		reg_no_b : out std_logic_vector (3 downto 0);		
		reg_wr_b : out std_logic
		
	);

end swap_resolver;

architecture swap_resolver_behave of swap_resolver is 
begin

	process (enable, alu_result, rd, opcode, rd_addr, rm_addr, dp_r) is
	begin
	
		resolver_out_a <= (others => '0');
		reg_no_a <= (others => '0');
		reg_wr_a <= '0';
						
		resolver_out_b <= (others => '0');
		reg_no_b <= (others => '0');
		reg_wr_b <= '0';
	
		if (enable = '1') then		
			
			if (dp_r = '1' or dp_r = '0') then
			
				case opcode is
				
					-- SWAP
					when "1000" =>
						resolver_out_a <= rd;
						reg_no_a <= rm_addr; -- address of rm
						reg_wr_a <= '1';
						
						resolver_out_b <= alu_result; -- rm
						reg_no_b <= rd_addr; -- address of rd
						reg_wr_b <= '1';
					
					-- CMP
					when "1010" =>
						resolver_out_a <= alu_result;
						reg_no_a <= rd_addr;
						reg_wr_a <= '0';
						
						resolver_out_b <= (others => '0');
						reg_no_b <= (others => '0');
						reg_wr_b <= '0';
					
					when others =>
						resolver_out_a <= alu_result;
						reg_no_a <= rd_addr;
						reg_wr_a <= '1';
						
						resolver_out_b <= (others => '0');
						reg_no_b <= (others => '0');
						reg_wr_b <= '0';
				
				end case;
			
			else 
				null;
			end if;
		
		else 
		
			null;
			
		end if;
	
	end process;

end swap_resolver_behave;