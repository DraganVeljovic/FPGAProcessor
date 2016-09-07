library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity adder is
	
	port(
	
		a : in std_logic_vector (31 downto 0);
		b : in std_logic_vector (31 downto 0);
		
		cin : in std_logic;
		
		sum : out std_logic_vector (31 downto 0);
		
		cout : out std_logic;
		vout : out std_logic
		
	);
	
end adder;

architecture adder_behave of adder is
	
	constant cin_ext : std_logic_vector (32 downto 1) := (others => '0');
	signal sum_ext : std_logic_vector (32 downto 0);
	
begin

	process (a, b, cin, sum_ext) is
	begin
	
		sum_ext <= ('0' & a) + ('0' & b) + (cin_ext & cin);
		
		sum <= sum_ext(31 downto 0);
		
		cout <= sum_ext(32);
		
		vout <= (a(31) and b(31) and (not sum_ext(31))) or
					(not a(31) and not b(31) and sum_ext(31));
	
	end process;
end adder_behave;