library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Four_bit_adder is
    Port (
        A       : in  std_logic_vector(3 downto 0);
        B       : in  std_logic_vector(3 downto 0);
        SUM     : out std_logic_vector(7 downto 0)  
    );
end Four_bit_adder;

architecture Behavioral of Four_bit_adder is
begin
    SUM <= std_logic_vector(resize(signed(A),8) + resize(signed(B),8));
end Behavioral;
