# Projeto Integrador III

Aluno:
Marcelo Viani
<p> <br />
</p>

### INTRODUÇÃO

Em automóveis, é visível que a cada nova geração, os carros com mais opções de conforto, lazer e segurança. Em grande parte, inovações surgidas devido a cada vez maior eletrônica embarcada vista. Os equipamentos eletrônicos são os responsáveis por gerir o controle de temperatura interno, posição com memória de bancos, da central multimidia, acionamento automático de faróis e limpadores, acionando os sistemas de controle de tração, ABS e Airbags, além de inúmeras outras funcionalidades.

Visto isso, a eletrônica também está presente como uma área da equipe Atlas E-Racing, uma equipe de competição do IFSC que visa construir um veículo fórmula para participar da competição Fórmula SAE BRASIL, na categoria elétrico. Que é uma competição que reúne equipes do país inteiro, que assim como a Atlas, buscam aplicar o conhecimento adquirido na engenharia para que o veículo montado passe por todas as normas e obtenha o melhor desempenho, visando a primeira colocação na competição para poder participar da competição internacional, que corre nos EUA e reúne equipes de diversos países.

Assim, foi passado para a área da eletrônica, que fizesse um sistema de telemetria, para que realizasse a leitura em tempo real de sensores espalhados pelo veículo e que esses dados pudessem ser tanto armazenados internamente, como fossem transmitidos, para que pudesse ser feita uma análise dos dados de forma remota.

Esses dados como, velocidade, temperatura do motor e das baterias, rotação do motor, posição do acelerador, do freio e do volante, força G e tensão das baterias, devem então ser lidos por um microcontrolador, armazenados, transmitidos e apresentados em uma interface gráfica.

Este trabalho tem o objetivo de formar uma estrutura que realize a transmissão dos dados necessários, a uma distância mínima de 1m e máxima de 500m. Que evite a perda de dados durante a transmissão, havendo uma forma de identificar possíveis perdas ou o recebimento de dados errados. E que tenha um baixo consumo energético.
 ![](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador%203/Images/Autodromo.png?raw=true)
<p> <br />
</p>

### CONCEPÇÃO
A concepção é a etapa do projeto em que serão conhecidos os requisitos do projeto e propostas as soluções para atender aos requisitos exigidos.

#### 1° Etapa - Medição de dados

Necessidades: Aquisição de dados a cada 100us (10kHz), confiabilidade, baixo consumo, facilidade de implementação e portabilidade.

Opções: Controladores Atmel, ST, ESP, Microchip ou MSP.

Escolha: Atmega328p pela disponibilidade, facilidade no uso e por cumprir as necessidades apresentadas.


#### 2° Etapa - Transmissão

Necessidades: Transmissão e recebimento de dados, entre 1m e 500m, dimensões pequenas, compatibilidade com o sistema de medição, baixo consumo de energia, confiabilidade e facilidade de implementação.

Opções: NRF24L01 Wireless, RF Wireless LoRa, Bluetooth RS232 HC-05, ZigBee/XBee, WiFi ESP ou GSM SIM808.

Escolha: Módulo Xbee PRO S2C, devido a disponibilidade, cumprimento dos requisitos e pela vasta documentação obtida em pesquisas.


#### 3° Etapa - Exibição de forma gráfica

Necessidades: Recebimento de dados via serial/porta COM e atualização instantânea de gráficos a partir deles.

Opções: Software desenvolvido para receber e exibir os dados (via Python por exemplo) ou Recebimento Via Plotter Serial, IDE Arduino.

Escolha: A preferência seria pela implementação de um programa próprio para exibição gráfica, porém pela disponibilidade imediata foi utilizado o Plotter Serial encontrado no Software IDE Arduino.


#### 4° Etapa - Gravar dados

Necessidades: Recebimento de dados, espaço de armazenamento e compatibilidade com o sistema de medição.

Opções: Módulo de Cartão SD embarcado na transmissão dos dados ou gravação pelo software XCTU na recepção dos dados.

Escolha: Devido a implementação já contida no Software XCTU, foi escolhida esta forma para gravar os dados, sob o risco de perder os dados que não forem recebidos.
<p> <br />
</p>

### IMPLEMENTAÇÃO

#### Medição de dados

Para a medição dos dados, que devem ser recebidos de sensores instalados no veículo, foi utilizado primeiramente um Arduino Mega, com o microprocessador Atmega2560. Sendo escolhido visando a facilidade do uso inicial dos módulos para transmissão de dados e a sua vasta pinagem para entrada de dados, possibilitando um maior número de sensores conectados diretamente a ele.

Porém, após diversos testes para a transmissão do que era lido no Atmega2560, se viu que da forma como estava sendo implementado, para testes iniciais, utilizando a IDE do Arduino para a programação, o Arduino Mega não estava sendo compatível com o módulo de transmissão, ocasionando a não comunicação entre os Xbees, pois havia um cruzamento de dados via transmissão serial Tx/Rx, que impedia o seu devido funcionamento.

Após isso, o controlador para medida de dados foi substituído por um Arduino Uno, que contém o microprocessador Atmega328p. Com isso, o problema encontrado anteriormente foi solucionado, com a comunicação entre os módulos de transmissão ocorrendo em simultâneo com o funcionamento da medição de dados.

O programa feito para testes realiza a leitura de um sensor ultrassônico, simulando um sensor que passe via digital a rotação do motor, para que se calcule a velocidade, e 3 potenciômetros, servindo como entradas de leitura analógica, simulando dados como porcentagem do acelerador, posição do freio e angulação do volante.

Após realizar as medidas e conversões, os dados são escritos de forma serial, para que sejam transmitidos pelo módulo de transmissão. A leitura é feita em uma taxa de 10kHz, onde é possível se obter uma boa visualização das mudanças nas medições e ao mesmo tempo realizar as aquisições e cálculos dos dados.

 ![](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador%203/Images/transmissor.jpg?raw=true)

#### Transmissão

Para a transmissão e recepção foram utilizados dois módulos XBee PRO S2C, juntamente com um Shield para conectar ao Arduino que ficará embarcado ao Veiculo SAE e um adaptador Explorer USB, para a conexão do XBee ao computador que receberá os dados.

 ![](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador%203/Images/receptor.jpeg?raw=true)

O XBee utiliza as especificações de ZigBee para a comunicação entre si, que seguem a norma IEEE 802.15.4. Esse padrão visa o baixo consumo, sendo ideal para implementações em sistemas embarcados. O módulo conta com um software próprio, que facilita a configuração dos XBees.

No software XCTU, os XBees foram configurados, dando um mesmo nome para a rede (ID) dos dois, com um sendo configurado como coordenador (CE = 1) e outro como roteador (CE = 0), para que realizem a comunicação direta entre os dois. Cada módulo possui um endereço próprio, sendo configurado em um o endereço (DH e DL) do outro. Por último, foi dado um nome (NI) diferente para cada um dos dois XBees. Também é possível realizar outras configurações de acordo com as necessidades que se tem, como por exemplo a mudança na taxa de transmissão serial, criptografia, modo de hibernação e potência de transmissão, mas que para os testes feitos foram deixados nas configurações padrão.

 ![](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador%203/Images/ConfigXCTU.png?raw=true)

Com os módulos configurados, ao estarem energizados a rede é criada entre eles e eles iniciam a comunicação, que ocorre com o envio via transmissão serial entre Tx e Rx.

 ![](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador%203/Images/ForcaSinal.png?raw=true)


O XCTU disponibiliza uma ferramenta para o teste de distância transmissão de dados, que envia e recebe pacotes de dados, mostrando a quantidade de pacotes que foram recebidos corretamente, quantos foram perdidos e a força do sinal.  Em testes realizados em ambiente urbano, foi obtida uma taxa de recebimento correto entre 78% e 86%, até que em cerca de 140 metros de distância o sinal foi perdido, devido a construções que haviam entre o transmissor e o receptor. Os dados foram inseridos em uma tabela, removendo os 37 primeiros pacotes, pois o teste começou a partir do pacote 38.

 ![](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador%203/Images/Teste1max.png?raw=true)
 ![](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador%203/Images/testerange1.gif?raw=true)
 ![](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador%203/Images/TabelaDados.png?raw=true)
 
 Foi realizado mais um teste, em um local próximo, desta vez a 350 metros de distância, onde os dois XBees conseguiram realizar a conexão e trocar corretamente 4 pacotes, de 37 enviados.
 
 ![](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador%203/Images/Teste2max.png?raw=true)
 ![](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador%203/Images/TesteDistancia2.jpg?raw=true)

#### Exibição de forma gráfica

A exibição gráfica foi feita a partir da ferramenta Plotter Serial, encontrada no software IDE Arduino. Onde é selecionada a porta COM onde o XBee é alocado no computador e com os dados recebidos via serial é feito um gráfico em tempo real dos dados recebidos pelo tempo atual.

Com os dados recebidos de forma serial, o projeto é facilmente escalonável para que seja feito um software que receba os dados e exiba em uma interface gráfica própria, para se ter melhor aproveitamento dos dados colhidos.

![](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador%203/Images/PlotDados.png?raw=true)


#### Gravar dados
Os dados foram armazenados através do monitor serial que o XCTU possui, onde se tem a possibilidade de armazenar os dados recebidos em um arquivo com a terminação .log que pode ser lido por ele ou aberto como texto, onde são armazenados os dados recebidos de forma hexadecimal e a data e horário em que foram recebidos.

![](https://github.com/marceloviani/Projetos/blob/master/Projeto%20Integrador%203/Images/serialXCTU.jpeg?raw=true)

Assim como foi relatado da parte gráfica, os dados armazenados após o recebimento também podem ser gravados da maneira que seja preferida ao se fazer um software próprio.

Outro ponto visto é que os dados foram armazenados após o recebimento, porém é mais indicado, caso seja possível, realizar o armazenamento de forma embarcada no veículo, assim, evitando que sejam perdidos dados durante a transmissão.
<p> <br />
</p>

## Conclusões
Com os transmissores criando uma rede e comunicando-se, a parte de aquisição de dados varia conforme o sensor utilizado, apenas se tendo cuidado para que não interfira na comunicação serial.

As propostas apresentadas foram concluídas, porém de forma simples, com o projeto podendo ser melhorado, ao se programar em nível mais baixo, podendo ser priorizada a eficiência do controlador. Como já mencionado, outra melhoria seria a inclusão de uma interface gráfica própria, que tornam mais utilizáveis os dados adquiridos. 

É recomentado também que se faça um teste em local aberto e fora de vias urbanas, que se assemelhe ao local do autódromo em Piracicaba-SP, onde a formula SAE ocorre, para que se saiba exatamente como o sistema irá se comportar no local do evento.
<p> <br />
</p>

## Referências bibliográficas

DIGI. XBee®/XBee-PRO S2C Zigbee® RF Module. Aaa: Aaa, 2021. 333 p. Disponível em: https://www.digi.com/resources/documentation/digidocs/pdfs/90002002.pdf. Acesso em: 16 mar. 2022.
