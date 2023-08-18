 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity MUX4 is
  port (I5,I2,I3,I4,S1,S2: in std_logic; Y: out std_logic);
end entity MUX4;
architecture Str of MUX4 is
  signal tC, tS: std_logic;
begin
  -- component instances
       
  m1:MUX2
       port map (I0 => I2, I1 => I3, S => S1, Y=> tC);
  -- propagate carry.
  m2: MUX2
  port map (I0 => I4, I1 => I5, S => S1,Y=>ts);
  
  m3:MUX2
  port map (I0=>tc,I1=>ts,S=>S2,Y=>Y);
end Str;
