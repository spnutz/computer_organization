library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity register_file is
port(
  clk : in std_logic;
  wr  : in std_logic; -- write control
  write_data : in std_logic_vector(7 downto 0); -- write data to destination
  
  src1_addr : in std_logic_vector(1 downto 0); -- source 1 address
  src2_addr : in std_logic_vector(1 downto 0); -- source 2 address
  dst_addr : in std_logic_vector(1 downto 0); -- destination address
  
  src1_out : out std_logic_vector(7 downto 0);-- source 1 address
  src2_out : out std_logic_vector(7 downto 0) -- source 2 address
);
end register_file;
architecture Behavioral of register_file is
type registerFile is array (0 to 3) of  std_logic_vector(7 downto 0);
signal reg : registerFile := (
    "00000101", 
	 "00000111", 
	 "00000110",
	 "00001111"  
	 );
begin
  process(clk)
  begin
    if falling_edge(clk) then
	   if(wr = '1') then
		  reg(to_integer(unsigned(src1_addr)))<= write_data;
		end if;
    end if;
  end process; 
  src1_out <= reg(to_integer(unsigned(src1_addr)));
  src2_out <= reg(to_integer(unsigned(src2_addr)));
end Behavioral;
		  
	 
  
	 
  
