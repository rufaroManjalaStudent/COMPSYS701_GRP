library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Max is
    port(
        m_in1   : in std_logic_vector(15 downto 0);
        m_in2   : in std_logic_vector(15 downto 0);
        m_out   : out std_logic_vector(15 downto 0)
    );

end entity Max;

architecture behaviour of Max is
    begin
        m_out<= m_in1 when (m_in1>m_in2) else m_in2;  --finds the max of the two inputs

end architecture;