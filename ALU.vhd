library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity ALU_file is
port(
  
  a, b : in std_logic_vector(7 downto 0); -- src1, src2
  op : in std_logic_vector(1 downto 0); -- select function
  alu_result : out std_logic_vector(7 downto 0)
);
end ALU_file;

architecture Behavioral of ALU_file is
signal result : std_logic_vector(7 downto 0);
begin 
  process(op,a,b)
    begin
	   case op is
		  when "00" =>
		    result <= a + b;
		  when "01" =>
		    result <= a - b;
		  when "10" =>
		    result <= a and b;
		  when "11" =>
		    result <= a or b;
		 end case;
  end process;
  alu_result <= result;
end Behavioral;
	   
		
    

