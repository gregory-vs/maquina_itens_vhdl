LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
	ENTITY my_and1 IS
		PORT(
		in1,in2 : IN STD_LOGIC;
		out1 : OUT STD_LOGIC);
	END my_and1;

	ARCHITECTURE my_and_arc1 OF my_and is
	BEGIN
		out1 <= in1 AND in2;
	END my_and_arc1;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
	ENTITY my_not1 IS
		PORT(
			in1 : IN STD_LOGIC;
			out1 : OUT STD_LOGIC);
		END my_not1;

		ARCHITECTURE my_not_arc1 OF my_not IS
		BEGIN
			out1 <= NOT in1;
		END my_not_arc1;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
	ENTITY my_or1 IS
		PORT(
			in1,in2 : IN STD_LOGIC;
			out1 : OUT STD_LOGIC);
		END my_or1;
		
		ARCHITECTURE my_or_arc1 OF my_or IS
		BEGIN
			out1 <= in1 OR in2;
		END my_or_arc1;

library ieee;
use ieee.std_logic_1164.all;

entity myfunc10 is
  port (
	  A,B,C : in std_logic;
	  F 	: out std_logic
	  	);
end myfunc10;

architecture arch_func1 of myfunc10 is

	--------------------
	-- COMPONENTE AND --
	--------------------
	COMPONENT my_and1 IS
		PORT(
			in1, in2 	: in std_logic;
			out1 		: out std_logic);
	END COMPONENT my_and1;

	--------------------
	-- COMPONENTE OR  --
	--------------------

	COMPONENT my_or1 IS
		PORT(
			in1, in2 	: in std_logic;
			out1 		: out std_logic);
	END COMPONENT my_or1;

	--------------------
	-- COMPONENTE NOT  --
	--------------------

	COMPONENT my_not1 IS
		PORT(
			in1 	: in std_logic;
			out1 	: out std_logic);
	END COMPONENT my_not1;

	----- INTERNAL SIGNAL ------

	SIGNAL notA, notB, notC : STD_LOGIC;
	SIGNAL and1out, and2out : STD_LOGIC;
begin
	Anot: my_not1 PORT MAP(
		in1 => A,
		out1 => notA
	);

	Bnot: my_not1 PORT MAP(
		in1 => B,
		out1 => notB
	);

	Cnot: my_not1 PORT MAP(
		in1 => C,
		out1 => notC
	);

	and1: my_and1 PORT MAP(
		in1 => A,
		in2 => notB,
		out1 => and1out
	);

	and2: my_and1 PORT MAP(
		in1 => notA,
		in2 => notC,
		out1 => and2out
	);

	or1: my_or1 PORT MAP(
		in1 => and1out,
		in2 => and2out,
		out1 => F
	);

  end arch_func1;