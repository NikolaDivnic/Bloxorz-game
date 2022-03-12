library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Code:
-- 00 - A + 1
-- 01 - A - 1
-- 10 - A + B
-- 11 - A - B

entity ALUX is

	generic
	(
		size : natural := 16
	);

	port 
	(
		A : in std_logic_vector(size-1 downto 0);
		B : in std_logic_vector(size-1 downto 0);
		code : in std_logic_vector(1 downto 0);
		F : out std_logic_vector(size-1 downto 0)
	);

end entity;

architecture rtl of ALUX is
begin

	process (A,B,code)
	begin
		
		case code is
			 when "00" => F <= std_logic_vector(to_unsigned(to_integer(unsigned(A)) + 1, size));
			 when "01" => F <= std_logic_vector(to_unsigned(to_integer(unsigned(A)) - 1, size));
			 when "10" => F <= std_logic_vector(to_unsigned(to_integer(unsigned(A)) + to_integer(unsigned(B)), size));
			 when "11" => F <= std_logic_vector(to_unsigned(to_integer(unsigned(A)) - to_integer(unsigned(B)), size));
		end case;
		
	end process;
end rtl;
