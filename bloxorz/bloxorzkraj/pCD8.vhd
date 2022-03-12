library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pCD8 is

	port 
	(
		X0	: in std_logic;
		X1	: in std_logic;
		X2	: in std_logic;
		X3	: in std_logic;
		X4	: in std_logic;
		X5	: in std_logic;
		X6	: in std_logic;
		X7	: in std_logic;
		D : out std_logic_vector(2 downto 0)
	);

end entity;

architecture rtl of pCD8 is
begin

	process (X0, X1, X2, X3, X4, X5, X6, X7)
	begin
		if X7 = '1' then
			D <= "111";
		elsif X6 = '1' then
			D <= "110";
		elsif X5 = '1' then
			D <= "101";
		elsif X4 = '1' then
			D <= "100";
		elsif X3 = '1' then
			D <= "011";
		elsif X2 = '1' then
			D <= "010";
		elsif X1 = '1' then
			D <= "001";
		else
			D <= "000";
		end if;
	end process;
end rtl;
