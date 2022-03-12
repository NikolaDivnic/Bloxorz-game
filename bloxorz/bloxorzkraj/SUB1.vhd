library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SUB1 is
	port
	(
		-- Input ports
		a		: in std_logic;
		b		: in std_logic;
		ein	: in std_logic;
		
		-- Output ports
		f		:	out std_logic;
		eout	:	out std_logic
	);
end;

architecture sub1 of SUB1 is
begin
	f 		<= a xor b xor ein;
	eout 	<= ((not a) and b) or (ein and((not a) or b));
end;

