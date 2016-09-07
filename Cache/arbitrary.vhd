--library ieee;
--
--use ieee.std_logic_1164.all;
--
--entity arbitrary is
--
--	port (
--	
--		reset : in std_logic;
--	
--		instrution_cache_req: in std_logic;
--		data_cache_req: in std_logic;
--		
--		instrution_cache_ack: out std_logic;
--		data_cache_ack: out std_logic
--	
--	);
--
--end arbitrary;
--
--architecture arbitrary_behave of arbitrary is
--		
--		signal instr_in_progress : std_logic;
--		
--		signal instr_req : std_logic;
--		signal data_req : std_logic;
--
--begin
--
--	process(reset, instrution_cache_req, data_cache_req) is
--	begin
--	
--		instrution_cache_ack <= '0';
--		data_cache_ack <= '0';
--	
--		if (reset = '1') then
--		
--			instrution_cache_ack <= '0';
--			data_cache_ack <= '0';
--			instr_in_progress <= '0';
--			
--		else
--		
--			instrution_cache_ack <= '0';
--			data_cache_ack <= '0';
--		
--			if (data_cache_req = '1') then
--				
--				if (instr_in_progress = '0') then
--				
--					data_cache_ack <= '1';
--					instrution_cache_ack <='0';
--				
--				end if;
--				
--			elsif (instrution_cache_req = '1') then
--				
--					instrution_cache_ack <= '1';
--					instr_in_progress <= '1';
--					
--					data_cache_ack <= '0';
--				
--				else
--					
--					instr_in_progress <= '0';
--					
--			end if;
--		
--		end if;
--
--	end process;
--end arbitrary_behave;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity arbiter is
	port(
			clk, reset: in std_logic;
			r: in std_logic_vector(1 downto 0);
			g: out std_logic_vector(1 downto 0)
		);
end arbiter;

architecture arbiter_arch of arbiter is
	type state_type is (waitr, grant0, grant1);
	signal state_reg, state_next: state_type;
begin
	process (clk, reset) is
	begin
		if (reset = '1') then
			state_reg <= waitr;
		elsif (clk = '1' and clk'event) then
			state_reg <= state_next;
		end if;
	end process;
	
	process(state_reg, r) is
	begin
		g <= "00";
		case state_reg is
			when waitr =>
				if (r(1) = '1') then
					state_next <= grant1;
				elsif (r(0) = '1') then
					state_next <= grant0;
				else
					state_next <= waitr;
				end if;
			when grant1 =>
				if (r(1) = '1') then
					state_next <= grant1;
				else
					state_next <= waitr;
				end if;
				g(1) <= '1';
			when grant0 =>
				if (r(0) = '1') then
					state_next <= grant0;
				else
					state_next <= waitr;
				end if;
				g(0) <= '1';
		end case;
	end process;
end arbiter_arch;