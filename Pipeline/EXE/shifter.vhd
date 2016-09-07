library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shifter is

	port(
		
		rn : in std_logic_vector (31 downto 0);
		rs : in std_logic_vector (31 downto 0);
	
		f : in std_logic;
		
		-- 00 LSL
		-- 01 LSR
		-- 10 ASR
		-- 00 NONE
		shift_type : in std_logic_vector (1 downto 0);
		
		-- DP_R/ !DP_I
		dp_r : in std_logic;
		
		shifter_out : out std_logic_vector (31 downto 0)
		
	);
	
end;

architecture shifter_behave of shifter is	
begin
	
	process (rn, rs, f, shift_type, dp_r) is
		variable temp_rn : std_logic_vector (31 downto 0);
	begin
	
					temp_rn := (others => 'X');
		
					if (dp_r = '1') then 
					
						-- shift
						if (f = '0') then 
						
							case shift_type is
							
								when "00" =>
									temp_rn := std_logic_vector(shift_left(unsigned(rn), to_integer(unsigned(rs))));
								when "01" =>
									temp_rn := std_logic_vector(shift_right(unsigned(rn), to_integer(unsigned(rs))));
								when "10" =>
									temp_rn := std_logic_vector(shift_right(signed(rn), to_integer(unsigned(rs))));
								when "11" =>
									temp_rn := rn;
								
								when others =>
									temp_rn := (others => 'X');
								
							end case;
						
						-- rotate
						elsif (f = '1') then
									
								case shift_type is
								
									when "00" =>
										temp_rn := std_logic_vector(rotate_left(unsigned(rn), to_integer(unsigned(rs))));
									when "01" =>
										temp_rn := std_logic_vector(rotate_right(unsigned(rn), to_integer(unsigned(rs))));
									when "10" =>
										temp_rn := std_logic_vector(rotate_right(signed(rn), to_integer(unsigned(rs))));
									when "11" =>
										temp_rn := rn;									
										
									when others =>
										temp_rn := (others => 'X');
										
								end case;
								
							end if;
					
					elsif (dp_r = '0') then
					
							temp_rn := rn;
					
						end if;
						
						
					shifter_out <= temp_rn;
		
	end process;

end shifter_behave;