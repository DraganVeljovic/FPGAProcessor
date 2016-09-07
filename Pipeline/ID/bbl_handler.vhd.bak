library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

entity bbl_handler is

	port(
	
		enable : in std_logic;
	
		csr : in std_logic_vector (3 downto 0);
		
		pc : in std_logic_vector (31 downto 0);
		
		imm : in std_logic_vector (25 downto 0);
		
		link : in std_logic;
		
		cond : in std_logic_vector (1 downto 0);
		
		jmp_addr : out std_logic_vector (31 downto 0);
		
		link_reg : out std_logic_vector (31 downto 0);
		link_reg_no : out std_logic_vector (3 downto 0);
		link_reg_wr : out std_logic;
		
		bbl_flag_out : out std_logic
	
	);

end bbl_handler;

architecture bbl_handler_behave of bbl_handler is
begin

	process (enable, cond, link, csr, imm) is
		variable imm_ext : std_logic_vector (31 downto 0);
		variable address : std_logic_vector (31 downto 0);
	begin
		jmp_addr <= (others => '0');
		
		bbl_flag_out <= '0';
			
		link_reg <= (others => '0');
		link_reg_no <= (others => '0');
		link_reg_wr <= '0';
		
		if (enable = '1') then
		
			if ((cond = "00" and csr(2) = '1') or
				(cond = "01" and (((csr(3) xor csr(0)) or csr(2)) = '0')) or
				(cond = "10" and (csr(2) = '0' or csr(1) = '0')) or
				(cond = "11")) then
				
					imm_ext := std_logic_vector(resize(signed(imm), 32));
					
					address := pc + imm_ext;
					
					jmp_addr <= address;
					
					bbl_flag_out <= '1';
				
				if (link = '1') then
				
					-- Proveri koji pc treba da se pamti
					link_reg <= pc;
					link_reg_no <= "1110";
					link_reg_wr <= '1';
					
				end if;
				
			end if;
			
		else 
		
			null;
			
		end if;
	
	end process;

end bbl_handler_behave;
