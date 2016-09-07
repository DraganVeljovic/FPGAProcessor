library ieee;

use ieee.std_logic_1164.all;

use work.instructions_types.all;

entity operation_decoder is
	port(
		
		ir_31_29 : in std_logic_vector (2 downto 0);
		
		instr_type : out instruction_type;
		
		brnch_enable : out std_logic;
		
		stop_if : out std_logic
		
	);
end operation_decoder;

architecture operation_decoder_behave of operation_decoder is
begin

	process (ir_31_29) is
	begin
	
		instr_type <= INVALID;
		brnch_enable <= '0';
		stop_if <= '0';
	
		case ir_31_29 is
		
			when "000" =>
				instr_type <= DP_R;
			
			when "001" =>
				instr_type <= DP_I;
			
			when "010" =>
				instr_type <= LS;

			when "100" =>
				instr_type <= BBL;
				brnch_enable <= '1';
			
			when "101" =>
				instr_type <= STP;
				stop_if <= '1';
			
			when others =>
				instr_type <= INVALID;
			
		end case;
	end process;
end operation_decoder_behave;