# Trabalho 1 - Multiplexação através de conversão serial paralelo

Marcelo Viani Raulino Santos


Através dos exercícios feitos anteriormente e exemplos, tanto passados em aula, como os encontrados no livro base, foi realizada a implementação da Multiplexação através de conversão serial paralelo, onde com 3 saídas do microcontrolador puderam ser incrementados valores de 0 até 0xff.
Onde foi visto como maior desafio ter que passar o dígito para o segundo display, ao chegar no valor 16 (0x10), sendo resolvido ao deslocar o número, em binário, e vezes para a direita, assim excluindo o primeiro dígito. Após isso, feito o mesmo que foi aplicado no dígito da unidade, ao utilizar um AND, comparando com 0xf, assim selecionando apenas o dígito esperado para ser decodificado no display.
Outro ponto visto foi o entendimento do CI 4094, onde foi utilizada uma função que “setava” os dígitos para o display, e depois sendo acionado o strobe para completar o envio para o display.
