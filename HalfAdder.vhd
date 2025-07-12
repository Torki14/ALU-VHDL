library ieee;
use ieee.std_logic_1164.all;

entity HalfAdder is
    Port ( A, B : in  std_logic;
           Sum, Carry : out std_logic );
end HalfAdder;

architecture Behavioral of HalfAdder is
begin
    Sum <= A xor B;
    Carry <= A and B;
end Behavioral;
