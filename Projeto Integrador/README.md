## Robô Aspirador de Pó

- Instituto Federal da Santa Catarina - Campus Florianópolis
- Nomes: Marcelo Viani e Matheus Rodrigues da Cunha
- Curso: Engenharia Eletrônica
- Unidade Curricular: Projeto Integrador 3


### INTRODUÇÃO

Um dos aparelhos eletrônicos que tem sido destaque nos últimos anos é o robô aspirador, esse equipamento limpa os locais de uma residência sem a necessidade de estar sendo manuseado por uma pessoa durante o seu funcionamento. Este dispositivo tem em comum em todos os modelos se movimentar em um ambiente de forma autônoma.

A grande maioria desse tipo de robô possui um sistema que anda de forma aleatória, podendo ou não realizar uma boa limpeza com uma baixa autonomia. Já os mais avançados, começam a ter funções como poder programar o horário de funcionamento, avisar quando a bateria estiver acabando, voltar de forma autônoma para a base de carregamento e realizar o mapeamento completo do ambiente.

Nossa proposta é montar um protótipo de robô aspirador, que possua todas as funções básicas vistas nesse tipo de dispositivo, como a limpeza autônoma, avisar quando a bateria estiver em nível baixo, evitar quedas e possíveis batidas. Há o objetivo de tentar realizar algumas atividades mais avançadas, sendo a principal, o desenvolvimento de um software que consiga realizar um mapeamento do ambiente ou que o robô trace uma rota de forma a passar em toda a área do local onde ele for colocado.


        
Necessidades:

- 1 Base/Case
- 2 Aspirar
- 3 Bateria
- 5 Evitar batidas
- 6 Evitar quedas
- 7 Registrar Movimentação
- 8 Controle

1 Base
- Como base para nosso projeto, utilizamos o [carrinho feito por Lucas Odair](https://github.com/luscasos/PI3-carro), para a locomoção do robô.
Para a parte de aspiração foi reaproveitado a base de armazenamento de poeira de um aspirador de pó convencional.


2 Aspirar
- Para girar a ventoinha de sucção foi utilizado um motor de 3V.

3 Bateria
- Para a movimentação do robô foram utilizadas em série duas baterias LIPO de 3,7V e 1200mAh.
- Para a aspiração foi utilizada separadamente uma bateria Li-ion de 3,7V e 4200mAh.

5 Evitar batidas
- Para evitar batidas foi utilizado o Sensor Ultrassônico HC-SR04, que permite a leitura de distâncias de 2 centímetros até 4 metros.

6 Evitar quedas
- Para evitar quedas, foram utilizados 2 Sensores ópticos TCRT5000, que possui um emissor infravermelho e um fototransistor como receptor.

7 Registrar Movimentação
- Para o registro da movimentação foram utilizados 2 sensores de velocidade encoder, que verificam a quantidade vezes que a transmissão de um sensor infravermelho é interrompida, para se saber o quanto foi andado.

8 Controle
- Para realizar o controle foi utilizado o controlador ATmega328p, devido a disponibilidade e conhecimento de uso.


Peças                                                                   | Valor       | Link
:---------------------------------------------------------------------: | :------:    | :----------------------:
Kit Chassi Robô (Utilizado do IFSC)                                     | R$ 132,90   | https://www.eletrogate.com/kit-chassi-4wd-robo-para-arduino
Motor DC 3V                                                             | R$ 6,90     | https://www.filipeflop.com/produto/mini-motor-dc-3v/
ATmega328p - Arduino UNO (Já possuía)                                   | R$ 106,95   | https://www.baudaeletronica.com.br/arduino-uno-r3-compativel-cabo-usb-atmega328-smd.html
BATERIA 3,7V 4200MAH (Já possuía)                                       | R$ 115,00   | https://www.casadapilha.com.br/bateria-icr26650-lith-recarregavel
Sensor HC-SR04 (Utilizado do IFSC)                                      | R$ 12,50    | https://www.robocore.net/sensor-robo/sensor-de-distancia-ultrassonico-hc-sr04
Sensor óptico TCRT5000 (Utilizado do IFSC)                              | R$ 3,70     | https://www.eletrogate.com/sensor-optico-reflexivo-tcrt5000
Sensor de Velocidade Encoder (Utilizado do IFSC)                        | R$ 7,50    | https://www.eletrogate.com/sensor-de-velocidade-encoder


## Desenvolvimento:

Foi desenvolvido todo suporte para que pudéssemos acoplar o módulo de aspiração no carrinho, para isso, foi utilizada a impressora 3D, que também foi utilizada para conseguirmos acoplar o motor comprado na peça de aspiração do aspirador. 
A produção da placa de circuito impresso foi realizada no IFSC utilizando software Kicad, com o circuito sendo apresentado na figura abaixo, tendo o motor e um capacitor em paralelo com o diodo 1N4181, que ficaram acoplados diretamente na base do aspirador:

![esquematico](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador/PDFs/circuito_placa_robo.png?raw=true)


 Placa de desenvolvida: 
 
![Foto (1)](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador/PDFs/placa_kicad.png?raw=true)
 
![Foto (2)](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador/PDFs/placa_para_corroer.png?raw=true)

![Foto (3)](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador/PDFs/placa_pronta.png?raw=true)


O protótipo do robô está apresentado na figura abaixo:

![Foto final](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador/PDFs/robo_pronto.png?raw=true)



O código foi desenvolvido utilizando o software eclipse, configurado para a programação de microcontroladores AVR.



## Conclusão:

Durante o desenvolvimento do projeto, foi visto que o mapeamento de um lugar pode ser feito de diversas formas, sendo possível aplicar novas tecnologias que possibilitam até um completo mapeamento tridimensional, porém, para isso é necessário o uso de controladores de maior capacidade e o uso de softwares que ajudem na criação desses mapas.

Contudo, é possível a aplicação de controladores mais simples, realizando um mapeamento mais simples ou simplesmente conduzindo o robô para fazer uma rota de forma mais eficiente, algo que pode ser mais vantajoso que a pesada aplicação de software.

Apesar das dificuldades, conseguimos montar o robô aspirador, que apesar de se forem somados os valores de seus componentes, esse valor ultrapassar os 300 reais, nosso maior gasto foi a compra de um motor de 3V, pois todo o resto foi reaproveitado do que tínhamos, do que poderíamos utilizar do IFSC e de materiais que conseguimos reaproveitar.

## Referência e Bibliografia:


- https://cdn.sparkfun.com/datasheets/Sensors/Proximity/HCSR04.pdf
- https://www.tecmundo.com.br/produto/207430-aspiradores-robo-tiveram-aumento-vendas-372-em-2020.htm
- https://www.teses.usp.br/teses/disponiveis/3/3139/tde-17012022-100444/fr.php
