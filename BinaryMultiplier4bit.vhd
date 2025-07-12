library ieee;
use ieee.std_logic_1164.all;

entity BinaryMultiplier4bit is
    Port (
        A : in  std_logic_vector(3 downto 0);
        B : in  std_logic_vector(3 downto 0);
        P : out std_logic_vector(7 downto 0)
    );
end BinaryMultiplier4bit;

architecture Structural of BinaryMultiplier4bit is

    component HalfAdder
        Port ( A, B : in std_logic; Sum, Carry : out std_logic );
    end component;

    component FullAdder
        Port ( A, B, Cin : in std_logic; Sum, Cout : out std_logic );
    end component;

    signal pp : std_logic_vector(15 downto 0); 

    signal s1, s2, s3, s4, s5, s6, s7, s8, s9, s10 : std_logic;
    signal c1, c2, c3, c4, c5, c6, c7, c8, c9, c10,c11 : std_logic;

begin

    pp(0)  <= A(0) and B(0);
    pp(1)  <= A(1) and B(0);
    pp(2)  <= A(2) and B(0);
    pp(3)  <= A(3) and B(0);
	 
    pp(4)  <= A(0) and B(1);
    pp(5)  <= A(1) and B(1);
    pp(6)  <= A(2) and B(1);
    pp(7)  <= A(3) and B(1);
	 
    pp(8)  <= A(0) and B(2);
    pp(9)  <= A(1) and B(2);
    pp(10) <= A(2) and B(2);
    pp(11) <= A(3) and B(2);
	 
    pp(12) <= A(0) and B(3);
    pp(13) <= A(1) and B(3);
    pp(14) <= A(2) and B(3);
    pp(15) <= A(3) and B(3);


    P(0) <= pp(0);

    HA1: HalfAdder port map (A => pp(1), B => pp(4), Sum => s1, Carry => c1);
	 
    FA1: FullAdder port map (A => pp(2), B => pp(5), Cin => c1, Sum => s2, Cout => c2);
    FA2: FullAdder port map (A => pp(3), B => pp(6), Cin => c2, Sum => s3, Cout => c3);
    HA2: HalfAdder port map (A => pp(7), B => c3, Sum => s4, Carry => c4);

    HA3: HalfAdder port map (A => s2, B => pp(8), Sum => s5, Carry => c5);
    FA3: FullAdder port map (A => s3, B => pp(9), Cin => c5, Sum => s6, Cout => c6);
    FA4: FullAdder port map (A => s4, B => pp(10), Cin => c6, Sum => s7, Cout => c7);
    FA5: FullAdder port map (A => c4, B => pp(11), Cin => c7, Sum => s8, Cout => c8);

    HA4: HalfAdder port map (A => s6, B => pp(12), Sum => s9, Carry => c9);
    FA6: FullAdder port map (A => s7, B => pp(13), Cin => c9, Sum => s10, Cout => c10);
    FA7: FullAdder port map (A => s8, B => pp(14), Cin => c10, Sum => P(5), Cout => c11);
	 FA8: FullAdder port map (A => c8, B => pp(15), Cin => c11, Sum => p(6), Cout => p(7));

    P(1) <= s1;
    P(2) <= s5;
    P(3) <= s9;
    P(4) <= s10;

end Structural;
