library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Greater_than is
    Port (
        A       : in  std_logic_vector(3 downto 0);
        B       : in  std_logic_vector(3 downto 0);
        A_gt_B  : out std_logic_vector(7 downto 0)  
    );
end Greater_than;

architecture Behavioral of Greater_than is
begin
    process(A, B)
    begin
        if unsigned(A) > unsigned(B) then
            A_gt_B <= "00000001";  
        else
            A_gt_B <= "00000000"; 
        end if;
    end process;
end Behavioral;
