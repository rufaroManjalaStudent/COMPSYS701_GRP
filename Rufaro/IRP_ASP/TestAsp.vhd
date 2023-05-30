library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;
use work.all;

entity TestAsp is 
end entity;

architecture sim of TestAsp is
    --||Signals||
    signal t_clock :   std_logic;

    signal t_recv  :   tdma_min_port;
    signal t_send : tdma_min_port;

    signal t_data   :  std_logic_vector(16 downto 0);
    signal t_put : std_logic;

    signal t_h0 : std_logic_vector(6 downto 0);
    signal t_h1 : std_logic_vector(6 downto 0);
    signal t_h2 : std_logic_vector(6 downto 0);
    signal t_h3 : std_logic_vector(6 downto 0);
    signal t_h4 : std_logic_vector(6 downto 0);
    signal t_h5 : std_logic_vector(6 downto 0);

    


    begin

    --||DUTs||
        test_Asp: entity work.AspDac
        port map (
            clock => t_clock,
            put  => t_put,
            data => t_data,

            hex0 => t_h0,
            hex1 => t_h1,
            hex2 => t_h2,
            hex3 => t_h3,
            hex4 => t_h4,
            hex5 => t_h5,

            send => t_send,
            recv => t_recv

        );


    --||CONCURRENT STATEMENTS||
    t_recv.data <= "10110011010101100000000000000000"

    --||PROCESSES||
    clock: process 
     begin
        t_clock <= '1';
        wait for 50 ns;
        t_clock <= '0';
        wait for 50 ns;
    end process;

end architecture;