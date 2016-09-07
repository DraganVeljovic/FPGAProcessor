library ieee;

use ieee.std_logic_1164.all;

package memory_package is

	constant memory_bits : integer := 17;

	constant memory_size : integer := 2**memory_bits;
	
	constant delay_duration : integer := 11;

	type memory_type is array (memory_size - 1 downto 0) of std_logic_vector (31 downto 0);
	
	type delay_bit is array (delay_duration - 1 downto 0) of std_logic;
	
	type delay_vector is array (delay_duration - 1 downto 0) of std_logic_vector (31 downto 0);

end;