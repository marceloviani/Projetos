# Trabalho 1 - Multiplexa��o atrav�s de convers�o serial paralelo

Marcelo Viani Raulino Santos


Atrav�s dos exerc�cios feitos anteriormente e exemplos, tanto passados em aula, como os encontrados no livro base, foi realizada a implementa��o da Multiplexa��o atrav�s de convers�o serial paralelo, onde com 3 sa�das do microcontrolador puderam ser incrementados valores de 0 at� 0xff.
Onde foi visto como maior desafio ter que passar o d�gito para o segundo display, ao chegar no valor 16 (0x10), sendo resolvido ao deslocar o n�mero, em bin�rio, e vezes para a direita, assim excluindo o primeiro d�gito. Ap�s isso, feito o mesmo que foi aplicado no d�gito da unidade, ao utilizar um AND, comparando com 0xf, assim selecionando apenas o d�gito esperado para ser decodificado no display.
Outro ponto visto foi o entendimento do CI 4094, onde foi utilizada uma fun��o que �setava� os d�gitos para o display, e depois sendo acionado o strobe para completar o envio para o display.
