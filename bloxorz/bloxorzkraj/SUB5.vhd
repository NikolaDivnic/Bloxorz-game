library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SUB5 is
	port
	(
		-- Input ports
		a		: in std_logic_vector(4 downto 0);
		b		: in std_logic_vector(4 downto 0);
		e0		: in std_logic;
		
		-- Output ports
		f		:	out std_logic_vector(4 downto 0);
		e5		:	out std_logic
	);
end;

architecture sub5 of SUB5 is
	signal eVector	:	std_logic_vector(5 downto 0);
begin
	eVector(0)	<= e0;
	e5 			<= eVector(5);

	sub10 : entity work.sub1 port map(
		--input signals
		a		=>	a(0),
		b		=>	b(0),
		ein	=> eVector(0),
		
		--output signals
		f		=> f(0),
		eout	=> eVector(1)
	);
	
	
	sub11 : entity work.sub1 port map(
		--input signals
		a		=>	a(1),
		b		=>	b(1),
		ein	=> eVector(1),
		
		--output signals
		f		=> f(1),
		eout	=> eVector(2)
	);
	
	
	sub12 : entity work.sub1 port map(
		--input signals
		a		=>	a(2),
		b		=>	b(2),
		ein	=> eVector(2),
		
		--output signals
		f		=> f(2),
		eout	=> eVector(3)
	);
	
	
	sub13 : entity work.sub1 port map(
		--input signals
		a		=>	a(3),
		b		=>	b(3),
		ein	=> eVector(3),
		
		--output signals
		f		=> f(3),
		eout	=> eVector(4)
	);
	
	
	sub14 : entity work.sub1 port map(
		--input signals
		a		=>	a(4),
		b		=>	b(4),
		ein	=> eVector(4),
		
		--output signals
		f		=> f(4),
		eout	=> eVector(5)
	);
end;

