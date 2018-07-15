library ieee;
use ieee.std_logic_1164.all;

entity control_unit is
port( instruction : in std_logic_vector(1 downto 0);
      reg_wr      : out std_logic; -- if 1 avtive write register
      alu_op      : out std_logic_vector(1 downto 0)		
  );
end control_unit;

architecture dataflow of control_unit is
begin 
  with instruction select
    reg_wr <= '1' when "00", -- add
	           '1' when "01", -- sub
              '1' when "10", -- and 
				  '1' when "11"; -- or 
  with instruction select
    alu_op <= "00" when "00",
	           "01" when "01",
				  "10" when "10",
				  "11" when "11";
end dataflow;
