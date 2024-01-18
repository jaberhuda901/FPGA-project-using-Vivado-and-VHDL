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

entity Top_LogicGates is
    Port ( sw : in STD_LOGIC_VECTOR (1 downto 0);
           led : out STD_LOGIC_VECTOR (3 downto 0));
end Top_LogicGates;

architecture Behavioral of Top_LogicGates is

component LogicGates is
Port ( A : in STD_LOGIC;
B : in STD_LOGIC;
Z : out STD_LOGIC_VECTOR (3 downto 0));
end component;

begin

LG1 : LogicGates
port map(
A => sw(0),
B => sw(1),
Z(0) => led(0),
Z(1) => led(1),
Z(2) => led(2),
Z(3) => led(3));


end Behavioral;
