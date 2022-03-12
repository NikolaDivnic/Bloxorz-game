-- DC24

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DC24 is

	port (
		i0	: in std_logic;
		i1	: in std_logic;
		en : in std_logic;
		
		d0	: out std_logic;
		d1	: out std_logic;
		d2	: out std_logic;
		d3	: out std_logic
	);

end entity;

architecture dc24 of DC24 is begin
	process (i0, i1, en) is begin
		d0 <= '0';
		d1 <= '0';
		d2 <= '0';
		d3 <= '0';
		
		if (en = '1') then
			if (i0 = '0' and i1 = '0') then
				d0 <= '1';
			elsif (i0 = '1' and i1 = '0') then
				d1 <= '1';
			elsif (i0 = '0' and i1 = '1') then
				d2 <= '1';
			else
				d3 <= '1';
			end if;
		end if;
	end process;
end dc24;
