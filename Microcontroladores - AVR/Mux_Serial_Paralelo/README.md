# Multiplexação através de conversão serial paralelo


Através de conversão serial paralelo foi realizada a implementação da Multiplexação, onde com 3 saídas do microcontrolador atmega328p puderam ser incrementados valores de 0 até 0xff.

Foi visto como maior desafio ter que passar o dígito para o segundo display, ao chegar no valor 16 (0x10), sendo resolvido ao deslocar o número, em binário, para a direita, assim excluindo o primeiro dígito. Após isso, é feito o mesmo que foi aplicado no dígito da unidade, ao utilizar um AND, comparando com 0xf, assim selecionando apenas o dígito esperado para ser decodificado no display.

Outro ponto foi o entendimento do CI 4094, sendo utilizada uma função que “setava” os dígitos para o display, e depois sendo acionado o strobe para completar o envio para o display.
