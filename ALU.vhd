library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
    Port (
        A       : in  std_logic_vector(3 downto 0);
        B       : in  std_logic_vector(3 downto 0);
        Opcode  : in  std_logic_vector(2 downto 0);
        Result  : out std_logic_vector(7 downto 0)
    );
end ALU;

architecture Behavioral of ALU is

    component Four_bit_adder is
        Port (
            A   : in  std_logic_vector(3 downto 0);
            B   : in  std_logic_vector(3 downto 0);
            SUM : out std_logic_vector(7 downto 0)
        );
    end component;

    component Four_bit_subtractor is
        Port (
            A    : in  std_logic_vector(3 downto 0);
            B    : in  std_logic_vector(3 downto 0);
            DIFF : out std_logic_vector(7 downto 0)
        );
    end component;

    component BinaryMultiplier4bit is
        Port (
            A : in  std_logic_vector(3 downto 0);
            B : in  std_logic_vector(3 downto 0);
            P : out std_logic_vector(7 downto 0)
        );
    end component;

    component Greater_than is
        Port (
            A      : in  std_logic_vector(3 downto 0);
            B      : in  std_logic_vector(3 downto 0);
            A_gt_B : out std_logic_vector(7 downto 0)
        );
    end component;

    component less_than is
        Port (
            A      : in  std_logic_vector(3 downto 0);
            B      : in  std_logic_vector(3 downto 0);
            A_lt_B : out std_logic_vector(7 downto 0)
        );
    end component;
 
    signal add_out    : std_logic_vector(7 downto 0);
    signal sub_out    : std_logic_vector(7 downto 0);
    signal mul_out    : std_logic_vector(7 downto 0);
    signal gt_out     : std_logic_vector(7 downto 0);
    signal lt_out     : std_logic_vector(7 downto 0);

begin

 
    ADDER: Four_bit_adder
        port map (
            A   => A,
            B   => B,
            SUM => add_out
        );

    SUBTRACTOR: Four_bit_subtractor
        port map (
            A    => A,
            B    => B,
            DIFF => sub_out
        );

    MULTIPLIER: BinaryMultiplier4bit
        port map (
            A => A,
            B => B,
            P => mul_out
        );

    GT: Greater_than
        port map (
            A      => A,
            B      => B,
            A_gt_B => gt_out
        );

    LT: less_than
        port map (
            A      => A,
            B      => B,
            A_lt_B => lt_out
        );

	 process(Opcode, add_out, sub_out, mul_out, gt_out, lt_out)
    begin
        case Opcode is
            when "000" =>  
					 Result(4)<='0';
                Result <= add_out;
					 Result(7)<='0';
					 Result(6)<='0';
					 Result(5)<='0';
            when "001" =>  
                Result <= sub_out;
            when "010" =>  
                Result <= mul_out;
            when "011" =>  
                Result <= gt_out;
            when "100" =>  
                Result <= lt_out;
            when others => 
                Result <= (others => '0');
        end case;
    end process;


end Behavioral;
