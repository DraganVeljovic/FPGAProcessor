library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity imm_handler is

	port(
		
		rm : in std_logic_vector (31 downto 0);
		
		imm : in std_logic_vector (15 downto 0);
		
		s : in std_logic;
		
		dp_r : in std_logic;
		
		imm_handler_out : out std_logic_vector (31 downto 0)
		
	);

end imm_handler;

architecture imm_handler_behave of imm_handler is 
begin

	process (rm, imm, s, dp_r) is
		variable temp_operand : std_logic_vector (31 downto 0);
	begin 
	
		temp_operand := (others => 'X');
	
		if (dp_r = '1') then
			temp_operand := rm;
		elsif (dp_r = '0') then
			
				-- unsigned
				if (s = '0') then
				
					temp_operand := std_logic_vector(resize(unsigned(imm), 32));
					
				-- signed
				elsif (s = '1') then
					
						temp_operand := std_logic_vector(resize(signed(imm), 32));
						
					end if;
			
			end if;
			
			imm_handler_out <= temp_operand;
			
	end process;
	
end imm_handler_behave;