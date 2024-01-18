----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/16/2024 02:51:30 PM
-- Design Name: 
-- Module Name: LogicGates - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------------------------------
-- Name: JABER-UL
-- last name: HUDA
-- Student ID: 101137524
-- Lab number: LAB 1
-- brief explanation:  we design a simple digital system using programmable logic. The programmable logic part
--                     in our labs designed and implemented using FPGA (Field Programmable logic Gate
--                     Array) part.
----------------------------------------------------------------------------------

entity LogicGates is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Z : out STD_LOGIC_VECTOR (3 downto 0));
end LogicGates;

architecture Behavioral of LogicGates is

begin
    Z(0) <= A and B;
    Z(1) <= A or B;
    Z(2) <= A xor B;
    Z(3) <= A nor B;

end Behavioral;
