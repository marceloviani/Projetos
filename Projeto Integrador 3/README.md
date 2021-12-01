# Projeto Integrador III

Aluno:
Marcelo Viani

### INTRODUÇÃO

Em automóveis, é visível que a cada nova geração, os carros com mais opções de conforto, lazer e segurança. Em grande parte, inovações surgidas devido a cada vez maior eletrônica embarcada vista. Os equipamentos eletrônicos são os responsáveis por gerir o controle de temperatura interno, posição com memória de bancos, da central multimidia, acionamento automático de faróis e limpadores, acionando os sistemas de controle de tração, ABS e Airbags, além de inúmeras outras funcionalidades.

Visto isso, a eletrônica também está presente como uma área da equipe Atlas E-Racing, uma equipe de competição do IFSC que visa construir um veículo fórmula para participar da competição Fórmula SAE BRASIL, na categoria elétrico. Que é uma competição que reúne equipes do país inteiro, que assim como a Atlas, buscam aplicar o conhecimento adquirido na engenharia para que o veículo montado passe por todas as normas e obtenha o melhor desempenho, visando a primeira colocação na competição para poder participar da competição internacional, que corre nos EUA e reúne equipes de diversos países.

Assim, foi passado para a área da eletrônica, que fizesse um sistema de telemetria, para que realizasse a leitura em tempo real de sensores espalhados pelo veículo e que esses dados pudessem ser tanto armazenados internamente, como fossem transmitidos, para que pudesse ser feita uma análise dos dados de forma remota.

Esses dados como, velocidade, temperatura do motor e das baterias, rotação do motor, posição do acelerador, do freio e do volante, força G e tensão das baterias, devem então ser lidos por um microcontrolador, armazenados, transmitidos e apresentados em uma interface gráfica.

Este trabalho tem o objetivo de formar uma estrutura que realize a transmissão dos dados necessários, a uma distância mínima de 200m e máxima de 1km. Que evite a perda de dados durante a transmissão, havendo uma forma de identificar possíveis perdas ou o recebimento de dados errados. E que tenha um baixo consumo energético.


### CONCEPÇÃO
A concepção é a etapa do projeto em que serão conhecidos os requisitos do projeto e propostas as soluções para atender aos requisitos exigidos.

#### 1° Etapa - Medição de dados

Necessidades: Aquisição de dados a cada 10ms, confiabilidade, baixo consumo, facilidade de implementação e portabilidade.

Opções: Controladores Atmel, ST, ESP, Microchip ou MSP.

Escolha: ATmega2560 pela disponibilidade, facilidade no uso e por cumprir as necessidades apresentadas.


#### 2° Etapa - Gravar dados

Necessidades: Recebimento de dados, espaço de armazenamento, dimensões pequenas e compatibilidade com o sistema de medição.

Opções: Módulo de Cartão SD e Cartão SD ou Módulo de Cartão Micro SD e Cartão Micro SD.

Escolha: Módulo de Cartão SD e Cartão de memória SD.


#### 3° Etapa - Transmissão

Necessidades: Transmissão e recebimento de dados, entre 200m e 2Km, dimensões pequenas, compatibilidade com o sistema de medição, baixo consumo de energia, confiabilidade, facilidade de implementação.

Opções: NRF24L01 Wireless, RF Wireless LoRa, RF 433MHz AM, Bluetooth RS232 HC-05, ZigBee/XBee, WiFi ESP ou GSM SIM808.

Escolha: Módulo Xbee PRO S2C, devido a disponibilidade, cumprimento dos requisitos e pela vasta documentação obtida em pesquisas.

#### 4° Etapa - Exibição de forma gráfica

Necessidades: Recebimento de dados e atualização instantânea de gráficos a partir deles.

Opções:

Escolha:



### IMPLEMENTAÇÃO

#### ATmega2560 - Medição de dados

#### Módulo de Cartão SD - Gravar dados

#### Xbee - Transmissão


## Referências bibliográficas
