----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2020 12:25:51
-- Design Name: 
-- Module Name: 8bit_Synch_counter - Behavioral
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
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_synch is
Port (
clk,reset,up : in std_logic;
input_data: in std_logic_vector (7 downto 0);
counter_out  : out std_logic_vector (7 downto 0)
 );
end counter_synch;

architecture Behavioral of counter_synch is
signal temp : std_logic_vector (7 downto 0) := X"00";
begin
process(clk)
begin 
  if(reset = '1') then
      temp <= X"00";
   elsif(rising_edge(clk)) then
      if( up = '1') then
      temp <= temp +1;
      else 
       temp <= temp -1;
       end if;
    end if;
end process;
counter_out <= temp;
end Behavioral;
