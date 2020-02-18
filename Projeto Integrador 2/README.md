# Projeto Integrador II

Alunos:
Brian Azevedo
Marcelo Viani

## Apresentação do Projeto: https://www.youtube.com/watch?v=1ulSP8rSPV8

### INTRODUÇÃO

A necessidade de produção em grandes escalas, decorrente do aumento populacional e da migração das pessoas do campo para as cidades, levou, há anos atrás, uma mudança na forma em que eram produzidos os produtos, deixando de ser feitos de forma artesanal e passando a ser produzidos em larga escala por indústrias equipadas com máquinas e funcionários que as operavam. Assim foi o começo da primeira revolução industrial, que após anos de evolução, chegou à quarta revolução, chamada também de indústria 4.0.

A indústria 4.0 em muito se difere da primeira revolução, tendo em sua estrutura atual de organização máquinas que utilizam eletricidade e estão “conectadas”, tanto entre si, quanto na rede, onde podem receber e enviar informações do que fazem. Assim as máquinas que antes eram movidas a vapor e precisavam de operários, agora podem até ter autocontrole, fazendo o processo de fabricação completa de um produto sem interferência humana, com uma velocidade superior e já controlando a qualidade do que é feito.

O controle de linhas de montagens também pode ser feito de forma remota, onde uma pessoa pode monitorar e resolver problemas técnicos em outro continente. Como acontece com uma fábrica alemã instalada no Brasil, que visualiza o que é feito e da assistência diretamente da Alemanha, aumentando assim a eficiência e qualidade, sem aumentar custos.

Outra aplicação que está ainda começando a ser feita nas indústrias é a utilização do Machine Learning, que é, com uma programação inicial, a máquina fazer determinados serviços e a cada vez que executa novamente ela aprende e aprimora o que faz. Uma forma de fazer uso do Machine Learning é ao se colocar sensores numa linha industrial, ela ser capaz de ver, em mínimas diferenças, qual a melhor temperatura e velocidade devem ser aplicadas para gerar a melhor eficiência possível. Esses aspectos analisados são apenas alguns do que se é e ainda pode ser aplicado na indústria, com a inserção da tecnologia na indústria, visando ter uma melhor qualidade, agilidade, menos gastos e assim, no fim, gerando um maior lucro.



### CONCEPÇÃO
A concepção é a etapa do projeto em que serão conhecidos os requisitos do projeto e propostas as soluções para atender os requisitos exigidos.
O projeto consiste no controle da produção industrial de uma garrafa de 1,5L de suco. O processo de verificação é dividido em 4 etapas.

#### 1° Etapa - Medição de temperatura
O processo de medição da temperatura ambiente e do líquido é realizado atráves do sensor MLX90614.

#### 2° Etapa - Controle do nível de envase
Um sensor ultrassônico JSN-SR04T vai ser utilizado para verificar a altura do líquido da garrafa.

#### 3° Etapa - Análise de cor da matéria-prima
O sensor TCS230 vai analisar a cor do líquido contido na garrafa.

#### 4° Etapa - Leitura OCR
Utiliza-se uma webcam para a leitura do código de barras da garrafa.

### DESIGN
Nesta fase do projeto é definida a disposição dos sensores e a estrutura de apoio dos sensores e do módulo arduino que irá controlar o sistema completo.
Para definir como seria a estrutura, foi pensado em como seria feita a disposição dos sensores. Como o MLX90614(temperatura) e o TCS230(cor) precisam estar próximos ao que vai ser medido e o JSN-SR04T tem uma distância mínima de 25cm, foi utilizado uma placa que seria o teto, em que ficaria o arduino em cima e os sensores embaixo desse teto, com colunas para os sensores que precisam ficar mais próximos e para os sensores de presença foi feito um "piso" mais elevado visto que ele precisa estar na altura do rótulo.

### IMPLEMENTAÇÃO
Para implementar os sensores no arduino é necessário entender seu funcionamento e adaptar os códigos já disponíveis por isso será dada uma breve explicação dos sensores.

#### TCRT5000 - Sensor de presença
É um sensor composto por um emissor e um fototransistor. Quando algum objeto é colocado em frente sensor, o sinal infravermelho é refletido para o fototransistor. Quando isso acontece a saída vai para nível lógico baixo, sendo possível assim controlar os outros sensores utilizando o sinal recebido pelo TRCT5000.

#### MLX90614 - Sensor de temperatura
Este sensor detecta a temperatura absorvendo as ondas infravermelhas emitidas pelo objeto que está em sua direção. O sensor deve estar localizado próximo do objeto que se deseja a temperatura.

#### JSN-SR04T - Sensor Ultrassônico
Funciona emitindo ondas sonoras ciclicas que ao colidir com um objeto vai retornar e ter um tempo de resposta, utilizando esse tempo é possível calcular a distância. O sensor deve estar a uma distancia minima de 25cm para o correto funcionamento.

#### TCS230 - Sensor de cor
Vai dar uma onda quadrada de frequencia diretamente proporcional a intensidade de luz. O sensor deve estar o mais próximo possível e com a menor variação possível de iluminação, pois ele é extremamente sensível a luz ambiente, por isso foi colocado um pedaço de papelão para envolver o sensor, possibilitando assim medidas mais precisas.



## ReferÃªncias bibliogrÃ¡ficas
CÃ³digo para MLX90614 https://github.com/adafruit/Adafruit-MLX90614-Library
CÃ³digo para JSN-SR04T https://bitbucket.org/teckel12/arduino-new-ping/wiki/Home
Leitor de cÃ³digo de barras https://github.com/ZBar/ZBar
As fÃ³rmulas para o cÃ¡lculo do volume utilizadas foram providas pela equipe do Otavio e do Thiago https://github.com/LPAE/pi2_eng_19_1/blob/master/Otavio_Freire_Thiago_Lira/Documento_T%C3%A9cnico_Otavio_Thiago.md
