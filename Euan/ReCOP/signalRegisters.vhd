library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity signalRegisters is
	port (
		clk : in std_logic;
		SIP_in : in std_logic_vector(7 downto 0);
		SIP_out : out std_logic_vector(15 downto 0);
		load_sip : in std_logic;
		load_sop : std_logic;
		SOP_out : out std_logic_vector(7 downto 0);
		SOP_in : in std_logic_vector(15 downto 0)
	);
end entity signalRegisters;

architecture behaviour of signalRegisters is
	signal SIP_reg : std_logic_vector(7 downto 0);
	signal SOP_reg : std_logic_vector(7 downto 0) := X"00";
begin

	process (clk)
	begin
		if rising_edge(clk) then
			if load_sip = '1' then
				SIP_reg <= SIP_in;
			end if;
			
			if load_sop = '1' then
				SOP_reg <= SOP_in(7 downto 0);
			end if;
		end if;
	end process;
	
	SIP_out <= "00000000" & SIP_reg;
	SOP_out <=  SOP_reg;

end architecture behaviour;