library ieee;

use ieee.std_logic_1164.all;

entity exe_alu_test is
end exe_alu_test;

architecture eat_arch of exe_alu_test is
	
	signal clk : std_logic;
	signal reset : std_logic;
	
	signal ir_opcode : std_logic_vector(3 downto 0);
	
	signal rn : std_logic_vector(31 downto 0);
	signal rd : std_logic_vector(31 downto 0);
	signal rm : std_logic_vector(31 downto 0);
	signal rs : std_logic_vector(31 downto 0);
	
	signal imm : std_logic_vector(15 downto 0);
	
	signal rn_addr : std_logic_vector(3 downto 0);
	signal rd_addr : std_logic_vector(3 downto 0);
	signal rm_addr : std_logic_vector(3 downto 0);
	signal rs_addr : std_logic_vector(3 downto 0);
	
	signal f : std_logic;
	
	signal s : std_logic;
	
	signal shift_type : std_logic_vector (1 downto 0);
		
	signal dp_r : std_logic;
		
	signal resolver_out_a : std_logic_vector (31 downto 0);
	signal reg_no_a : std_logic_vector (3 downto 0);
	signal reg_wr_a : std_logic;
		
	signal resolver_out_b : std_logic_vector (31 downto 0);
	signal reg_no_b : std_logic_vector (3 downto 0);
	signal reg_wr_b : std_logic;
		
	signal mem_data : std_logic_vector (31 downto 0);
	signal mem_addr : std_logic_vector (31 downto 0);
	signal mem_write : std_logic;
	
	component exe_test is
		port(
	
		clk : in std_logic;
		reset : in std_logic;
		
		ir_opcode : in std_logic_vector (3 downto 0);
	
		rn : in std_logic_vector (31 downto 0);
		rd : in std_logic_vector (31 downto 0);
		rm : in std_logic_vector (31 downto 0);
		rs : in std_logic_vector (31 downto 0);
		
		imm : in std_logic_vector (15 downto 0);
		
		rn_addr : in std_logic_vector (3 downto 0);
		rd_addr : in std_logic_vector (3 downto 0);
		rm_addr : in std_logic_vector (3 downto 0);
		rs_addr : in std_logic_vector (3 downto 0);
		
		f : in std_logic;
		
		s: in std_logic;
		
		shift_type : in std_logic_vector (1 downto 0);
		
		dp_r : in std_logic;
		
		resolver_out_a : out std_logic_vector (31 downto 0);
		reg_no_a : out std_logic_vector (3 downto 0);
		reg_wr_a : out std_logic;
		
		resolver_out_b : out std_logic_vector (31 downto 0);
		reg_no_b : out std_logic_vector (3 downto 0);
		reg_wr_b : out std_logic;
		
		mem_data : out std_logic_vector (31 downto 0);
		mem_addr : out std_logic_vector (31 downto 0);
		mem_write : out std_logic
		
	
	);

	end component;
	
begin

	exe_alu : exe_test port map (
		clk, reset, ir_opcode, rn, rd, rm, rs, imm, rn_addr, rd_addr, rm_addr, rs_addr, f, s, shift_type, dp_r,
		resolver_out_a, reg_no_a, reg_wr_a, resolver_out_b, reg_no_b, reg_wr_b, mem_addr, mem_data, mem_write
	);
	
	process 
	begin
		clk <= '1';
		wait for 5 ns;
		clk <= '0';
		wait for 5 ns;
	end process;
	
	process
	begin
	
		reset <= '1';
		
		ir_opcode <= "0000";
		
		rn <= X"0000_0000";
		rm <= X"0000_0000";
		rd <= X"0000_0000";
		rs <= X"0000_0000";
		
		imm <= X"0000";
		
		rn_addr <= "0000";
		rd_addr <= "0000";
		rm_addr <= "0000";
		rs_addr <= "0000";
		
		f <= '0';
		s <= '0';
		
		shift_type <= "00";
		
		dp_r <= '0';
		
		wait until rising_edge(clk);
		
		reset <= '0';
		
		-- DP_R instructions
		-- ADD
		rn <= X"0000_000A";
		rm <= X"0000_0002";
		ir_opcode <= "0100";
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		-- SUB
		rn <= X"0000_000A";
		rm <= X"0000_0002";
		ir_opcode <= "0010";
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		-- ADD : create carry
		rn <= X"7FFF_FFFF";
		rm <= X"FFFF_FFFF";
		ir_opcode <= "0100";
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		-- ADC
		rn <= X"0000_0002";
		rm <= X"0000_0007";
		ir_opcode <= "0101";
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		-- SUB : create carry flag
		rn <= X"0000_0005";
		rm <= X"0000_000D";
		ir_opcode <= "0010";
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		-- SBC
		rn <= X"0000_000A";
		rm <= X"0000_0002";
		ir_opcode <= "0110";
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		-- AND
		rn <= X"0000_0005";
		rm <= X"0000_0003";
		ir_opcode <= "0000";
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		-- NOT
		rn <= X"FFFF_0000";
		rm <= X"0000_0003";
		ir_opcode <= "1111";
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		ir_opcode <= "0000";
		
		rn <= X"0000_0000";
		rm <= X"0000_0000";
		rd <= X"0000_0000";
		rs <= X"0000_0000";
		
		imm <= X"0000";
		
		rn_addr <= "0000";
		rd_addr <= "0000";
		rm_addr <= "0000";
		rs_addr <= "0000";
		
		f <= '0';
		s <= '0';
		
		shift_type <= "00";
		
		dp_r <= '0';
		
		wait until rising_edge(clk);
		
		-- DR_I instructions
		-- ADD
		rn <= X"0000_000A";
		imm <= X"0002";
		ir_opcode <= "0100";
		dp_r <= '0';
		s <= '1';
		
		wait until rising_edge(clk);
		
		-- SUB
		rn <= X"0000_000A";
		imm <= X"0002";
		ir_opcode <= "0010";
		dp_r <= '0';
		s <= '1';
		
		wait until rising_edge(clk);
		
		-- ADD : create carry
		rn <= X"7FFF_FFFF";
		imm <= X"FFFF";
		ir_opcode <= "0100";
		dp_r <= '0';
		s <= '1';
		
		wait until rising_edge(clk);
		
		-- ADC
		rn <= X"0000_0002";
		imm <= X"0007";
		ir_opcode <= "0101";
		dp_r <= '0';
		s <= '1';
		
		wait until rising_edge(clk);
		
		-- SUB : create carry flag
		rn <= X"0000_0005";
		imm <= X"000D";
		ir_opcode <= "0010";
		dp_r <= '0';
		s <= '1';
		
		wait until rising_edge(clk);
		
		-- SBC
		rn <= X"0000_000A";
		imm <= X"0002";
		ir_opcode <= "0110";
		dp_r <= '0';
		s <= '1';
		
		wait until rising_edge(clk);
		
		-- AND
		rn <= X"0000_0005";
		imm <= X"0003";
		ir_opcode <= "0000";
		dp_r <= '0';
		s <= '1';
		
		wait until rising_edge(clk);
		
		-- NOT
		rn <= X"FFFF_0000";
		imm <= X"0003";
		ir_opcode <= "1111";
		dp_r <= '0';
		s <= '1';
		
		wait until rising_edge(clk);
		
		ir_opcode <= "0000";
		
		rn <= X"0000_0000";
		rm <= X"0000_0000";
		rd <= X"0000_0000";
		rs <= X"0000_0000";
		
		imm <= X"0000";
		
		rn_addr <= "0000";
		rd_addr <= "0000";
		rm_addr <= "0000";
		rs_addr <= "0000";
		
		f <= '0';
		s <= '0';
		
		shift_type <= "00";
		
		dp_r <= '0';
		
		wait until rising_edge(clk);
		
		-- ROTATE TEST
		-- LRL
		rn <= X"0000_000C";
		rs <= X"0000_0004";
		rm <= X"0000_0001";
		ir_opcode <= "0100";
		shift_type <= "00";
		f <= '1';
		s <= '1';
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		-- LRR
		rn <= X"0000_000C";
		rs <= X"0000_0002";
		rm <= X"0000_0001";
		ir_opcode <= "0100";
		shift_type <= "01";
		f <= '1';
		s <= '1';
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		-- ARR
		rn <= X"F000_006C";
		rs <= X"0000_0005";
		rm <= X"0000_0001";
		ir_opcode <= "0100";
		shift_type <= "10";
		f <= '1';
		s <= '1';
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		-- NONE
		rn <= X"F000_006C";
		rs <= X"0000_0005";
		rm <= X"0000_0001";
		ir_opcode <= "0100";
		shift_type <= "11";
		f <= '1';
		s <= '1';
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		ir_opcode <= "0000";
		
		rn <= X"0000_0000";
		rm <= X"0000_0000";
		rd <= X"0000_0000";
		rs <= X"0000_0000";
		
		imm <= X"0000";
		
		rn_addr <= "0000";
		rd_addr <= "0000";
		rm_addr <= "0000";
		rs_addr <= "0000";
		
		f <= '0';
		s <= '0';
		
		shift_type <= "00";
		
		dp_r <= '0';
		
		wait until rising_edge(clk);
		
		-- SHIFTER TEST
		-- LSL
		rn <= X"0000_000C";
		rs <= X"0000_0004";
		rm <= X"0000_0001";
		ir_opcode <= "0100";
		shift_type <= "00";
		f <= '0';
		s <= '1';
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		-- LSR
		rn <= X"0000_000C";
		rs <= X"0000_0002";
		rm <= X"0000_0001";
		ir_opcode <= "0100";
		shift_type <= "01";
		f <= '0';
		s <= '1';
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		-- ASR
		rn <= X"F000_006C";
		rs <= X"0000_0005";
		rm <= X"0000_0001";
		ir_opcode <= "0100";
		shift_type <= "10";
		f <= '0';
		s <= '1';
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		-- NONE
		rn <= X"F000_006C";
		rs <= X"0000_0005";
		rm <= X"0000_0001";
		ir_opcode <= "0100";
		shift_type <= "11";
		f <= '0';
		s <= '1';
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		ir_opcode <= "0000";
		
		rn <= X"0000_0000";
		rm <= X"0000_0000";
		rd <= X"0000_0000";
		rs <= X"0000_0000";
		
		imm <= X"0000";
		
		rn_addr <= "0000";
		rd_addr <= "0000";
		rm_addr <= "0000";
		rs_addr <= "0000";
		
		f <= '0';
		s <= '0';
		
		shift_type <= "00";
		
		dp_r <= '0';
		
		wait until rising_edge(clk);
		
		-- NZ_UPDATER TEST
		-- N
		rn <= X"0000_0005";
		rm <= X"0000_000D";
		ir_opcode <= "0010";
		dp_r <= '1';
		
		wait until rising_edge(clk);
		
		-- Z
		rn <= X"0000_0005";
		imm <= X"0005";
		ir_opcode <= "0010";
		dp_r <= '0';
		
		wait until rising_edge(clk);
		
		-- SWAP TEST
		rm <= X"0000_AAAA";
		rd <= X"0000_BBBB";
		ir_opcode <= "1000";
		dp_r <= '1';
		
		wait until rising_edge(clk);
	
			
	wait;
	end process;
end eat_arch;