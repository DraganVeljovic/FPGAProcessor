LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;   
use work.instructions_types.all;                             

ENTITY cpu_vhd_tst IS
END cpu_vhd_tst;
ARCHITECTURE cpu_arch OF cpu_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL data_rd : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL data_rm : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL data_rn : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL data_rs : STD_LOGIC_VECTOR(31 DOWNTO 0);
--SIGNAL instr.BBL : STD_LOGIC;
--SIGNAL instr.DP_I : STD_LOGIC;
--SIGNAL instr.DP_R : STD_LOGIC;
--SIGNAL instr.INVALID : STD_LOGIC;
--SIGNAL instr.LS : STD_LOGIC;
--SIGNAL instr.S : STD_LOGIC;

signal instr : instruction_type;

SIGNAL ir_out_id : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mem_addr : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mem_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mem_read : STD_LOGIC;
SIGNAL mem_write : STD_LOGIC;
SIGNAL pc_init : STD_LOGIC;
SIGNAL pc_new_out_id : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pc_out_id : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reg_a : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reg_b : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reg_no_a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reg_no_b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reg_wr_a : STD_LOGIC;
SIGNAL reg_wr_b : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL check_status : STD_LOGIC;
COMPONENT cpu
	PORT (
	clk : IN STD_LOGIC;
	
	mem_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	mem_data : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	mem_read : OUT STD_LOGIC;
	mem_write : OUT STD_LOGIC;
	pc_init : IN STD_LOGIC;
	
	reset : IN STD_LOGIC;
	
	check_status : OUT STD_LOGIC
	);
END COMPONENT;

component memory 
	port(
	
		clk : in std_logic;
		reset : in std_logic;
		
		check_status : in std_logic;
			
		rd : in std_logic;
		wr : in std_logic; 
		
		addr : in std_logic_vector (31 downto 0);
		data : inout std_logic_vector (31 downto 0)
	
	);
end component;

BEGIN
	i1 : cpu
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,

	mem_addr => mem_addr,
	mem_data => mem_data,
	mem_read => mem_read,
	mem_write => mem_write,
	
	pc_init => pc_init,
	
	reset => reset,
	
	check_status => check_status
	);
	
	mem : memory port map(
		clk, reset, check_status, mem_read, mem_write, mem_addr, mem_data
	);
	
PROCESS                                               
BEGIN                                                        

	clk <= '1'; 
	wait for 5 ns;
	clk <= '0'; 
	wait for 5 ns;
                                                    
END PROCESS;

                                           
PROCESS                                                
BEGIN      

		reset <= '1';
		pc_init <= '1';
		
		wait until rising_edge(clk);	

		reset <= '0';		
		pc_init <= '0';
	

WAIT;                                                        
END PROCESS;                                          
END cpu_arch;
