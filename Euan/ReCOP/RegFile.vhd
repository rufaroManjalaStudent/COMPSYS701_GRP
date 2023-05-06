library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity regfile is
	generic (width: integer range 1 to 5 := 4);
	port (
		clk : in std_logic := 'X';
		rx_out : out std_logic_vector(15 downto 0);
		rz : out std_logic_vector(15 downto 0);
		flmr : out std_logic_vector(15 downto 0);
		ir_hold : in std_logic_vector(15 downto 0);
		m_out : in std_logic_vector(15 downto 0);
		rx : in std_logic_vector(15 downto 0);
		aluout : in std_logic_vector(15 downto 0);
		rz_max : in std_logic_vector(15 downto 0);
		--sip_hold : in std_logic_vector(15 downto 0);
		--er_temp : in std_logic;
		--mem_hp_low : in std_logic_vector(6 downto 0);
		
		ir_hold_x : in std_logic_vector(3 downto 0);
		ir_hold_z : in std_logic_vector(3 downto 0);
		cu_selx : in std_logic_vector(3 downto 0);
		cu_selz : in std_logic_vector(3 downto 0);
		
		z_control : in std_logic_vector(2 downto 0);
		selz_control : in std_logic := 'X';
		selx_control : in std_logic := 'X';
		write_en : in std_logic := 'X'
	);
	
end entity regfile;

architecture behaviour of regfile is
	type register_array is array (0 to 15) of std_logic_vector(15 downto 0);
	signal regs: register_array;
	signal selx : std_logic_vector(3 downto 0);
	signal selz : std_logic_vector(3 downto 0);
	signal z : std_logic_vector(15 downto 0);
	signal sip_hold : std_logic_vector(15 downto 0) := X"0000";
	signal er_temp : std_logic := '0';
	signal mem_hp_low : std_logic_vector(6 downto 0) := "0000000";
	
begin
	selx <= ir_hold_x when (selx_control = '0') else
			  cu_selx;
	selz <= ir_hold_z when (selz_control = '0') else
			  cu_selz;
			  
	z <= ir_hold when (z_control = "000") else
		  m_out when (z_control = "001") else
		  rx when (z_control = "010") else
		  aluout when (z_control = "011") else
		  rz_max when (z_control = "100") else
		  sip_hold when (z_control = "101") else
		  ((15 downto 1 => '0') & er_temp) when (z_control = "110") else
		  (('0' & (8 downto 1 => '0')) & mem_hp_low);
		  
	process (clk)
	begin
		if rising_edge(clk) then
			if write_en = '1' then
				regs(to_integer(unsigned(selz))) <= z;
			end if;
		end if;
	end process;
	
	
	rx_out <= regs(to_integer(unsigned(selx)));
	rz <= regs(to_integer(unsigned(selz)));
	flmr <= regs(10);
end architecture behaviour;