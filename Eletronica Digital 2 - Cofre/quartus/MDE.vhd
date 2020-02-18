library ieee;
use ieee.std_logic_1164.all;

entity MDE is
port(SIG: in std_logic;
	  RST: in std_logic;
	  T_SEN: in std_logic;
	  G: in std_logic;
	  CLK: in std_logic;
	  EN1,EN2,EN3,EN4,EN5,EN6:out std_logic;
	  CLR123: out std_logic;
	  CLR456: out std_logic;
	  VER_DIG: out std_logic);
end MDE;

architecture Comportamento of MDE is
	TYPE ESTADO IS (S0,S1,S2,S3,S4,S5,S6,S7,S8,S9);
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
			 CLR123 <= '0';
			 CLR456 <= '1';
			 EN1 <= '0';
			 EN2 <= '0';
			 EN3 <= '0';
			 EN4 <= '0';
			 EN5 <= '0';
			 EN6 <= '0';
			 VER_DIG <='0';
				proximo_estado <= S1;
		  
		  
		  WHEN S1 =>
			 CLR123 <= '1';
			 CLR456 <= '0';
			 EN1 <= '0';
			 EN2 <= '0';
			 EN3 <= '0';
			 EN4 <= '0';
			 EN5 <= '0';
			 EN6 <= '0';
			 VER_DIG <='0';
			 
			IF (SIG='0' or (SIG='1' and RST='1')) THEN
				proximo_estado <= S1;
			ELSE
				proximo_estado <= S2;
			END IF;
				
				
		  WHEN S2 =>
			 CLR123 <= '0';
			 CLR456 <= '0';
			 EN1 <= '1';
			 EN2 <= '0';
			 EN3 <= '0';
			 EN4 <= '0';
			 EN5 <= '0';
			 EN6 <= '0';
			 VER_DIG <='0';
				
			IF (SIG='0') THEN
				proximo_estado <= S2;
			ELSIF (SIG='1'and RST='1') THEN
				proximo_estado <= S1;
			ELSE 
				proximo_estado <= S3;
			END IF;
				
			
		  WHEN S3 =>
			 CLR123 <= '0';
			 CLR456 <= '0';
			 EN1 <= '0';
			 EN2 <= '1';
			 EN3 <= '0';
			 EN4 <= '0';
			 EN5 <= '0';
			 EN6 <= '0';
			 VER_DIG <='0';
				
			IF (SIG='0') THEN
				proximo_estado <= S3;
			ELSIF (SIG='1'and RST='1') THEN
				proximo_estado <= S1;
			ELSE
				proximo_estado <= S4;
			END IF;
				
				
			WHEN S4 =>	
			 CLR123 <= '0';
			 CLR456 <= '0';
			 EN1 <= '0';
			 EN2 <= '0';
			 EN3 <= '1';
			 EN4 <= '0';
			 EN5 <= '0';
			 EN6 <= '0';
			 VER_DIG <='0';
				
			IF (SIG='0') THEN
				proximo_estado <= S4;
			ELSIF (SIG='1'and RST='1') THEN
				proximo_estado <= S1;
			ELSE
				proximo_estado <= S5;
			END IF;
			
			
			WHEN S5 =>	
			 CLR123 <= '0';
			 CLR456 <= '0';
			 EN1 <= '0';
			 EN2 <= '0';
			 EN3 <= '0';
			 EN4 <= '0';
			 EN5 <= '0';
			 EN6 <= '0';
			 VER_DIG <='1';
				
			IF (SIG='1' and T_SEN='1' and G='1' and RST='0') THEN
				proximo_estado <= S6;
			ELSIF (SIG='0') THEN
				proximo_estado <= S5;
			ELSE
				proximo_estado <= S1;
			END IF;
				
			WHEN S6 =>
			 CLR123 <= '0';
			 CLR456 <= '1';
			 EN1 <= '0';
			 EN2 <= '0';
			 EN3 <= '0';
			 EN4 <= '0';
			 EN5 <= '0';
			 EN6 <= '0';
			 VER_DIG <='0';
			 
			IF (SIG='0') THEN
				proximo_estado <= S6;
			ELSE
				proximo_estado <= S7;
			END IF;
				
			WHEN S7 =>
			 CLR123 <= '0';
			 CLR456 <= '0';
			 EN1 <= '0';
			 EN2 <= '0';
			 EN3 <= '0';
			 EN4 <= '1';
			 EN5 <= '0';
			 EN6 <= '0';
			 VER_DIG <='0';
			 
			IF (SIG='0') THEN
				proximo_estado <= S7;
			ELSE
				proximo_estado <= S8;
			END IF;
				
				
			WHEN S8 =>	
			 CLR123 <= '0';
			 CLR456 <= '0';
			 EN1 <= '0';
			 EN2 <= '0';
			 EN3 <= '0';
			 EN4 <= '0';
			 EN5 <= '1';
			 EN6 <= '0';
			 VER_DIG <='0';
				
			IF (SIG='0') THEN
				proximo_estado <= S8;
			ELSE
				proximo_estado <= S9;
			END IF;
				
				
			WHEN S9 =>
			 CLR123 <= '0';
			 CLR456 <= '0';
			 EN1 <= '0';
			 EN2 <= '0';
			 EN3 <= '0';
			 EN4 <= '0';
			 EN5 <= '0';
			 EN6 <= '1';
			 VER_DIG <='0';
			
			IF (SIG='0') THEN
				proximo_estado <= S9;
			ELSE
				proximo_estado <= S1;
			END IF;
			
		END CASE;

	END PROCESS;
	
END Comportamento; 