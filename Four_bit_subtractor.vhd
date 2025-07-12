library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Four_bit_subtractor is
    Port (
        A     : in  std_logic_vector(3 downto 0);
        B     : in  std_logic_vector(3 downto 0);
        DIFF  : out std_logic_vector(7 downto 0)
    );
end Four_bit_subtractor;

architecture Structural of Four_bit_subtractor is

    component Four_bit_adder
        Port (
            A    : in  std_logic_vector(3 downto 0);
            B    : in  std_logic_vector(3 downto 0);
            SUM  : out std_logic_vector(7 downto 0)
        );
    end component;


    signal B_twos_comp   : std_logic_vector(3 downto 0);
	 
begin


	 B_twos_comp <= std_logic_vector(unsigned(not B) + 1 )  ;   


    ADDER_INST: Four_bit_adder
        port map (
            A   => A,
            B   => B_twos_comp,
            SUM => DIFF
        );
end Structural;
