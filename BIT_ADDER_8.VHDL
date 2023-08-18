 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity BIT_ADDER_8  is
  port (A, B: in std_logic_vector(7 downto 0); S: out std_logic_vector(8 downto 0));
end entity BIT_ADDER_8;
architecture Struct of BIT_ADDER_8 is
  signal t: std_logic_vector(6 downto 0);
begin
  -- component instances
  f1:FULL_ADDER 
       port map (A => A(0), B => B(0), Cin => '0', S=> S(0),Cout=>t(0));
		 f2:FULL_ADDER 
       port map (A => A(1), B => B(1), Cin => t(0), S=> S(1),Cout=>t(1));
		 f3:FULL_ADDER 
       port map (A => A(2), B => B(2), Cin => t(1), S=> S(2),Cout=>t(2));
		 f4:FULL_ADDER 
       port map (A => A(3), B => B(3), Cin => t(2), S =>S(3),Cout=>t(3));
		 f5:FULL_ADDER 
       port map (A => A(4), B => B(4), Cin => t(3), S => S(4),Cout=>t(4));
		 f6:FULL_ADDER 
       port map (A => A(5), B => B(5), Cin => t(4), S =>S(5),Cout=>t(5));
		 f7:FULL_ADDER 
       port map (A => A(6), B => B(6), Cin => t(5), S => S(6),Cout=>t(6));
		 f8:FULL_ADDER 
       port map (A => A(7), B => B(7), Cin => t(6), S =>S(7),Cout=>S(8));
	end Struct;

