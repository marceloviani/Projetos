# Projeto Carrinho da disciplina de microcontroladores I

O projeto tem o objetivo de controlar um carrinho de motores cc atraves do smartphone, por bluetooth com o aplicativo Bluetooth RC Controller, e tambem de forma seguidor, onde o carrinho segue uma linha feita de fita isolante e cuida para não bater em objetos a sua frente.

Para isso, foi utilizado o microcontrolador atmega328p, com programação em AVR.

Foram feitas funcoes para controle PWM, que atraves de uma ponte-H aciona os motores do lado esquerdo ou direito, para frente ou para tras, de forma individual (de cada lado) e tambem sendo feito o controle da velocidade.

Para seguir as linhas foi criada uma funcao, que tendo a resposta de dois sensores infravermelhos, faz o controle para manter o carrinho sobre a fita isolante.

Para se conectar ao celular foi utilizado um modulo bluetooth e feita a comunicacao atraves de usart. E ao conectar o modulo ao celular, e feito o controle do carrinho.

Existe tambem a protecao de um sensor ultrassonico, que faz a medicao com obstaculos a frente, parando, ou durante alguns testes, fazendo o carrinho voltar.
