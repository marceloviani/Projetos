library ieee;
use ieee.std_logic_1164.all;

entity RegPP4bits is

port (D: in std_logic_vector(3 downto 0);
		EN: in std_logic;
		CLEAR: in std_logic;
		CLK: in std_logic;
		Q: out std_logic_vector(3 downto 0));
end RegPP4bits;

architecture Comportamento of RegPP4bits is

Begin

	Process(CLK)
	Begin
		IF (CLEAR='1') THEN
			Q <= "0000";
		ELSIF (CLK'EVENT AND CLK='1' AND EN ='1') THEN
			Q <= D;
		END IF;
		
	END Process;
	
end Comportamento;