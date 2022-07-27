## Robo Aspirador de Pó

- Instituto Federal da Santa Catarina - Câmpus Florianópolis
- Nomes: Marcelo Viani e Matheus Rodrigues da Cunha
- Curso: Engenharia Eletrôncia
- Unidade Curricular: Projeto Integrador 3


### INTRODUÇÃO

Um dos aparelhos eletrônicos que tem sido destaque nos ultimos anos é o robô aspirador, esse equipamento limpa os locais de uma residência
sem a necessidade de estar sendo manuseado por uma pessoa durante o seu funcionamento. Este dispositivo tem em comum em todos os modelos se movimentar 
em um ambiente de forma autônoma.

A grande  maioria desse tipo de robô possui um sistema que anda de forma aleatória, podendo ou não realizar uma boa limpeza com uma 
baixa autonomia. Já os mais avançados, começam a ter funções como poder programar o horário de funcionamento, avisar 
quando a bateria estiver acabando, voltar de forma autonoma para a base de carregamento e realizar o mapeamento 
completo do ambiente.

Nossa proposta é montar um protótipo de robô aspirador, que possua todas as funções básicas vistas nesse tipo de
dispositivo, como a limpeza autônoma, a definição de horário de funcionamento, avisar quando a bateria estiver 
em nível baixo, evitar quedas e possúveis batidas. Ele também irá realizar algumas atividades mais avançadas, sendo a principal, o 
desenvolvimento de um software que consiga realizar um mapeamento do ambiente ou que o robô trace uma 
rota de forma a passar em toda a área do local onde ele for colocado.


### Conteudo:

## Introdução:

A idea do projeto é montar um robô aspirador 


  Materias | Tipo Exemplo  
  -------  |--------------                    
 ATMEGA328P | Microcontrolador ATMEGA328P
 Sensor Ultrassonico  |  Smart Sensor Ultrassônico Hc-sr04
 Sensor infravermelho | Módulo Sensor de Obstáculo Infravermelho IR
 Sensor de Velocidade | Módulo Sensor de Velocidade Encoder
 Motores DC | Colocar nome?

 
 ## Características do Projeto:
 
 ![Screenshot](https://camo.githubusercontent.com/37648960f68d08493e41f3fcc5146b1b937f7c9ef2aada56c4b2bb4528fb5139/68747470733a2f2f692e6962622e636f2f796e787a3664532f494d472d32303139303632362d3135343832312e6a7067)

        
Necessidades:

- 1 Base/Case
- 2 Aspirar
- 3 Bateria
- 5 Evitar batidas
- 6 Evitar quedas
- 7 Registrar Movimentação
- 8 Conhecer ponto de partida

      
2 Aspirar

Forma de Aspirar                                                        | Valor       | Dificuldade | Link
:---------------------------------------------------------------------: | :------:    | :----------:| :----------------------:
Utilizar aspirador de 12V                                               | R$ 55,00    | Menor       | https://www.ifsc.edu.br/
Fazer um aspirador a partir de um motor DC                              | R$ 20,00    | Média       | https://www.ifsc.edu.br/
Utilizar  motores para empurrar a sujeira                               | R$ 30,00    | Média       | https://www.ifsc.edu.br/


3 Bateria
-Tensão necessária e corrente consumida

5 Evitar batidas
- Sensor Ultrassônico
- Sensor infravermelho

6 Evitar quedas
- Sensor infravermelho

7 Registrar Movimentação
- Sensor Ultrassônico
- Sensor infravermelho


## Desenvolvimento:

Foi desenvolvido todo suporte para que pudessemos colocar o aspirador no carrinho cedido pela instituição, nessa etapa foi utilizado
a impressora 3D para produzir esse suporte. A produção da placa de circuito impresso foi realizada no ifsc utilizando software kicad, o circuito 
apresentado na figura abaixo:

![WhatsApp Image 2022-07-25 at 18 32 27](https://user-images.githubusercontent.com/49212881/181155702-2795e9e1-bb1e-406f-bac3-10c58a8a2c25.jpeg)


 Placa de desenvolvida: 
 
![Foto de Matheus](https://user-images.githubusercontent.com/49212881/181152398-ed8179f2-7202-4dd7-9a8b-27abda26b18e.jpg)

![Foto de Matheus (1)](https://user-images.githubusercontent.com/49212881/181152434-42a68ec9-9845-44c8-80d9-8b70f4dac7f5.jpg)

 
 
## Colocar fotos do robô

O protótipo do robô está apresentado na figura abaixo:




## colocar trecho do código?

O código foi desenvolvido utilizando a ide eclipse, com essa ide é possível programar utilizando o 
microcontrolador avr. Elá possui uma ótima interface e um desempenho estável para diversas aplicações envolvendo microcontroladores. 

## Referência e Bibliografia:


- https://cdn.sparkfun.com/datasheets/Sensors/Proximity/HCSR04.pdf
- https://www.tecmundo.com.br/produto/207430-aspiradores-robo-tiveram-aumento-vendas-372-em-2020.htm
- https://www.teses.usp.br/teses/disponiveis/3/3139/tde-17012022-100444/fr.php
