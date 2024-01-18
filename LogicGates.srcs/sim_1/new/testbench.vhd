----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- Name: JABER-UL
-- last name: HUDA
-- Student ID: 101137524
-- Lab number: LAB 1
-- brief explanation:  we design a simple digital system using programmable logic. The programmable logic part
--                     in our labs designed and implemented using FPGA (Field Programmable logic Gate
--                     Array) part.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is

SIGNAL InA : STD_LOGIC :='0';
SIGNAL InB : STD_LOGIC :='0';
SIGNAL OutZ : STD_LOGIC_VECTOR (3 downto 0) :="0000";
    
component LogicGates is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Z : out STD_LOGIC_VECTOR (3 downto 0));
end component;

begin

LG1 : LogicGates
port map(
A => InA,
B => InB,
Z(0) => OutZ(0),
Z(1) => OutZ(1),
Z(2) => OutZ(2),
Z(3) => OutZ(3));

process begin
InA <= '0';
InB <= '0';
wait for 2 ns;
InA <= '1';
wait for 2 ns;
InA <= '0';
wait for 2 ns;
InB <= '1';
wait for 2 ns;
InB <= '0';
wait for 2 ns;
end process;


end Behavioral;
