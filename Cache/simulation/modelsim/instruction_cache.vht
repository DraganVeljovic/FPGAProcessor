LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY instruction_cache_vhd_tst IS
END instruction_cache_vhd_tst;
ARCHITECTURE instruction_cache_arch OF instruction_cache_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ack : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL cpu_addr : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL cpu_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL hit : STD_LOGIC;
SIGNAL mem_addr : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mem_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mem_read : STD_LOGIC;
SIGNAL req : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL wait_mem : STD_LOGIC;
COMPONENT instruction_cache
	PORT (
	ack : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	cpu_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	cpu_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	hit : OUT STD_LOGIC;
	mem_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	mem_data : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	mem_read : OUT STD_LOGIC;
	req : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	wait_mem : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : instruction_cache
	PORT MAP (
-- list connections between master ports and signals
	ack => ack,
	clk => clk,
	cpu_addr => cpu_addr,
	cpu_data => cpu_data,
	hit => hit,
	mem_addr => mem_addr,
	mem_data => mem_data,
	mem_read => mem_read,
	req => req,
	reset => reset,
	wait_mem => wait_mem
	);

PROCESS                                               
variable clk_next : std_logic := 0;
BEGIN 	
		loop 
			clk <= clk_next;
			clk_next <= not clk_next;
			wait 5 ns;
		end loop;
END PROCESS;

                                           
PROCESS                                              
BEGIN                                            

END PROCESS;
                                          
END instruction_cache_arch;
