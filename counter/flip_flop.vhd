----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2020 23:50:48
-- Design Name: 
-- Module Name: flip_flop - Behavioral
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
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
Port ( 
clk : in std_logic;
start: in std_logic;
dout : out std_logic_vector (7 downto 0)
);
end counter;

architecture Behavioral of counter is
signal temp: std_logic_vector(7 downto 0):= X"00";
begin
process 
begin
if(rising_edge(clk)) then
   if(start = '1') then
      temp <= temp +1;
      else 
      temp <= X"00";
      end if; 
end if;
end process;

end Behavioral;
