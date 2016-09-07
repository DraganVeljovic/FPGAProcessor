library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

use work.instructions_types.all;

entity alu is

	port(
		
		a : in std_logic_vector (31 downto 0);
		b : in std_logic_vector (31 downto 0);
		
		s : in std_logic;
		
		cin : in std_logic;
		vin : in std_logic;
		
		ir_opcode : in std_logic_vector (3 downto 0);
		
		alu_out : out std_logic_vector (31 downto 0);
		
		nout : out std_logic;
		zout : out std_logic;
		cout : out std_logic;
		vout : out std_logic
		
	);

end alu;

architecture alu_behave of alu is 

	signal sub_result : std_logic_vector (31 downto 0);
	signal add_result : std_logic_vector (31 downto 0);
	signal adc_result : std_logic_vector (31 downto 0);
	signal sbc_result : std_logic_vector (31 downto 0);
	
	signal sub_cout : std_logic;
	signal sub_vout : std_logic;
	
	signal add_cout : std_logic;
	signal add_vout : std_logic;
	
	signal adc_cout : std_logic;
	signal adc_vout : std_logic;
	
	signal sbc_cout : std_logic;
	signal sbc_vout : std_logic;


begin

	sub : entity work.suber port map(a, b, '0', sub_result, sub_cout, sub_vout);
	
	add : entity work.adder port map(a, b, '0', add_result, add_cout, add_vout);
	
	adc : entity work.adder port map(a, b, cin, adc_result, adc_cout, adc_vout);
	
	sbc : entity work.suber port map(a, b, cin, sbc_result, sbc_cout, sbc_vout);

	process (a, b, cin, vin, ir_opcode, s,
		sub_result, sub_cout, sub_vout, add_result, add_cout, add_vout, adc_result, adc_cout, adc_vout,
		sbc_result, sbc_cout, sbc_vout) is
		
		variable result : std_logic_vector (31 downto 0);
		
		variable temp_cout : std_logic;
		variable temp_vout : std_logic;
		
	begin
		
		result := (others => 'X');
		temp_cout := cin;
		temp_vout := vin;
	
		case ir_opcode is
			
			-- AND
			when "0000" =>
				result := a and b;
				temp_cout := cin;
				temp_vout := vin;
			
			-- SUB
			when "0010" =>
				result := sub_result;
				temp_cout := sub_cout;
				temp_vout := sub_vout;
			
			-- ADD
			when "0100" =>
				result := add_result;
				temp_cout := add_cout;
				temp_vout := add_vout;
			
			-- ADC
			when "0101" =>
				result := adc_result;
				temp_cout := adc_cout;
				temp_vout := adc_vout;
				
			-- SBC
			when "0110" =>
				result := sbc_result;
				temp_cout := sbc_cout;
				temp_vout := sbc_vout;
				
			-- SWAP
			when "1000" =>
				result := b;
				temp_cout := cin;
				temp_vout := vin;

			-- CMP
			when "1010" =>
				result := sub_result;
				temp_cout := sub_cout;
				temp_vout := sub_vout;
				
			-- MOV
			when "1101" =>
				result := b;
				temp_cout := cin;
				temp_vout := vin;
				
			-- NOT
			when "1111" =>
				result := not a;
				temp_cout := cin;
				temp_vout := vin;
				
			when others =>
				null;
				
		end case;
		
		alu_out <= result;
		
		if (result(31) = '1' and s = '1') then
			nout <= '1';
		else 
			nout <= '0';
		end if;
		
		if (result = X"0000_0000") then
			zout <= '1';
		else 
			zout <= '0';
		end if;
		
		cout <= temp_cout;
		vout <= temp_vout;

	end process;
	
end alu_behave;