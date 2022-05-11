# Robo Aspirador de Pó

- Instituto Federal da Santa Catarina - Câmpus Florianópolis
- Nomes: Marcelo Viani e Matheus Rodrigues da Cunha
- Curso: Engenharia Eletrôncia
- Unidade Curricular: Projeto Integrador 3


### INTRODUÇÃO

Um dos aparelhos eletrônicos que tem sido destaque nos ultimos anos é o aspirador que limpa os locais sem a necessidade 
de estar sendo manuseado por uma pessoa durante o seu funcionamento. Este dispositivo é conhecido como robô aspirador,
e tem em comum em todas os modelos se movimentar em um ambiente de forma autonoma, evitar ficar preso e ter baixa altura.

A maioria de menor custo possue um sistema que anda de forma aleatória, podendo ou não realizar uma boa limpeza e uma 
baixa autonomia. Já os mais avançados, começam a ter funções como poder programar o horário de funcionamento, avisar 
quando a bateria estiver acabando, ter uma maior autonomia, voltar de forma autonoma para a base de carregamento, 
realizar o mapeamento completo do ambiente e diversas outras funções que os fabricantes projetam.

Nossa proposta para a disciplina de projeto integrador III é montar um protótipo de robô aspirador, que possua todas as
funções básicas vistas nesses dispositivos, como a limpeza autônoma, a definição de horário de funcionamento, avisar 
quando a bateria estiver em nível baixo e evitar quedas e batidas. E realizar algumas atividades mais avançadas, sendo 
a principal o desenvolvimento de um software que consiga realizar um mapeamento do ambiente ou que o robô trace uma 
rota de forma a passar o aspirador em toda a área do local onde ele for colocado.


### Conteudo:

- [Concepção do Projeto](#Concepção do Projeto)

## Concepção do Projeto
A idea do projeto é construir um robo aspirador que possa limpar uma sala. Esse 
## Introdução:

A idea do projeto é montar um robô aspirador 


  Materias | Tipo Exemplo  | Custos      |
  -------  |-------------- | ----------- |
 Microcontrolador |                      | R$14,16
 GPS |
 Sensor LIDAR |
 Sensor Ultrassonico | Smart Sensor Ultrassônico Hc-sr04
 Sensor infravermelho | Módulo Sensor de Obstáculo Infravermelho IR
 Câmera |
 Sensor de Velocidade | Módulo Sensor de Velocidade Encoder
 Motores DC |
 Leds |
 LCD | Display LCD 16x2
 Fonte | 
 Módulo Sensor de bluetooth 
 
 ## Características do Projeto:
 
 ![Screenshot](https://camo.githubusercontent.com/37648960f68d08493e41f3fcc5146b1b937f7c9ef2aada56c4b2bb4528fb5139/68747470733a2f2f692e6962622e636f2f796e787a3664532f494d472d32303139303632362d3135343832312e6a7067)
 
 ![Screenshot](https://s2.glbimg.com/KyoOd8SuhrHEAtqUq6Upr2UmpKA=/0x0:1280x720/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2020/J/c/3ttmiFQQS4N4WJhZd1tw/robo-aspirador-de-po-vale-a-pena2.png)
 
        
Necessidades:

- 1 Base/Case
- 2 Aspirar
- 3 Bateria
- 4 Movimentação
- 5 Evitar batidas
- 6 Evitar quedas
- 7 Registrar Movimentação
- 8 Conhecer ponto de partida
- 9 Base para Carregar
- 10 Agendar Limpeza


1 Base/Case:
- Utilizar a base em acrilico já existente
      
2 Aspirar

Forma de Aspirar                                                        | Valor       | Dificuldade | Link
:---------------------------------------------------------------------: | :------:    | :----------:| :----------------------:
Utilizar aspirador de 12V                                               | R$ 55,00    | Menor       | https://www.ifsc.edu.br/
Fazer um aspirador a partir de um motor DC                              | R$ 20,00    | Média       | https://www.ifsc.edu.br/
Utilizar escovas e motores para empurrar a sujeira até um reservatório  | R$ 30,00    | Média       | https://www.ifsc.edu.br/

3 Bateria
- Necessário saber tensão necessária e corrente consumida

4 Movimentação
- Motores DC 
- 
- Motores de Passo

5 Evitar batidas
- Parte Móvel que funcione como um botão e amortecedor de impactos
- Sensor Ultrassonico
- Sensor infravermelho
- Câmera

6 Evitar quedas
- Sensor infravermelho

7 Registrar Movimentação
- GPS
- Sensor LIDAR
- Sensor Ultrassonico
- Sensor infravermelho
- Câmera
- Sensor de Velocidade


8 Conhecer ponto de partida
- GPS
- Comunicação a Distância  (verificar intencidade do sinal)

9 Base para Carregar
- Fonte com Conector que o robo consiga encaixar

10 Agendar Limpeza
- Botões
- Leds
- LCD

## Referência e Bibliografia:


- https://cdn.sparkfun.com/datasheets/Sensors/Proximity/HCSR04.pdf
- https://www.tecmundo.com.br/produto/207430-aspiradores-robo-tiveram-aumento-vendas-372-em-2020.htm
