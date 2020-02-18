library ieee;
use ieee.std_logic_1164.all;

entity GeradorDePulso is
port(X: in std_logic;
	  CLK: in std_logic;
	  Y: out std_logic);
end GeradorDePulso;

architecture Comportamento of GeradorDePulso is
	TYPE ESTADO IS (S0,S1,S2,S3);
	SIGNAL estado_atual, proximo_estado: ESTADO;

begin	
	
	process(CLK)
	BEGIN
			  IF (CLK'EVENT AND CLK='1') THEN
				  estado_atual <= proximo_estado;
			  END IF;
	END PROCESS;

	PROCESS(estado_atual)
	BEGIN
		CASE estado_atual is

		  WHEN S0 =>
			 Y <= '0';
			 
			IF (X='1') THEN
				proximo_estado <= S1;
			ELSE
				proximo_estado <= S0;
			END IF;  
		  
		  
		  WHEN S1 =>
			 Y <= '1';
				proximo_estado <= S2;
				
				
		  WHEN S2 =>
			 Y <= '0';
				
			IF (X='1') THEN
				proximo_estado <= S2;
			ELSE 
				proximo_estado <= S0;
			END IF;
				
			
		  WHEN S3 =>
			 Y <= '0';
				proximo_estado <= S0;
			
		END CASE;

	END PROCESS;
	
END Comportamento; 