/*
 * controle.c
 *
 *  Created on: 24 de jul. de 2022
 *      Autor: Marcelo Viani
 */


#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include "lib/avr_gpio.h"
#include "lib/avr_timer.h"
#include "lib/bits.h"
#include "controle.h"
#include "motor.h"

#define SENSOR_E PC5				// Cria definicao de nome para associar PC5 ao nome SENSOR_E
#define SENSOR_D PC4				// Cria definicao de nome para associar PC4 ao nome SENSOR_R


volatile uint16_t counter = 0;		// Cria variavel para contador do Encoder 1
volatile uint16_t counterB = 0;		// Cria variavel para contador do Encoder 2
volatile uint16_t voltaA = 0;		// Cria variavel para contar volta do Encoder 1
volatile uint16_t voltaB = 0;		// Cria variavel para contar volta do Encoder 2


/* Configura variaveis para leitura dos ADCs da bateria e para selecao*/
volatile uint16_t valor_adc = 0;
volatile uint16_t valor_adc1 = 0;
volatile uint16_t adc_read = 0;

/* Configura variaveis para leitura do sensor HC-SR04*/
unsigned int Inicio_Sinal, Distancia;



//volatile uint16_t conta_volta = 0;


ISR(TIMER1_CAPT_vect)  { 						//interrupção por captura do valor do TCNT1

	CPL_BIT(TCCR1B,ICES1);						//troca a borda de captura do sinal
	if(!TST_BIT(TCCR1B,ICES1))					//lê o valor de contagem do TC1 na borda de subida do sinal
		Inicio_Sinal = ICR1;					//salva a primeira contagem para determinar a largura do pulso
	else 										//lê o valor de contagem do TC1 na borda de descida do sinal
		Distancia = ((ICR1 - Inicio_Sinal)/58);	//agora ICR1 tem o valor do TC1 na borda de descida do sinal, então calcula a distância

}

ISR (PCINT0_vect)					// Interrupcao Externa
{
	if (!(PINB & (1<<5))) {			// Verifica se a Interrupcao foi pelo pino PB5
	    counter++;					// Incrementa contador Encoder 1
	    if (counter%20 == 0){
	    	voltaA++;				// Incrementa volta encoder 1 se completou 1 bloco
	    }
	} else if (!(PINB & (1<<4))) {	// Verifica se a Interrupcao foi pelo pino PB4
	    counterB++;					// Incrementa contador Encoder 2
	    if (counterB%20 == 0){
	    	voltaB++;				// Incrementa volta encoder 2 se completou 1 bloco
	    }
	}

}


ISR(ADC_vect)					// Interrupcao para leitura de consersor AD
{
	if (adc_read == 0){			// Se adc_read = 0 le ADC 2
		valor_adc = ADC;		// Grava valor de ADC
		adc_read = 1;			// Altera valor de adc_read
		ADMUX = 0b10000001;		// Altera MUX para ler ADC 1
	} else {					// Se adc_read = 1 le ADC 1
		valor_adc1 = ADC;		// Grava valor de ADC
		adc_read = 0;			// Altera valor de adc_read
		ADMUX = 0b1000010;		// Altera MUX para ler ADC 2
	}

}


void autonomo(){

	/* Cria variaveis para sensores TCRT5000 esquerdo e direito */
	uint8_t sensor_esq = 0;
	uint8_t sensor_dir = 0;

	/* Configura variavel para leitura do sensor HC-SR04*/
	uint8_t tempo = 0;

	/* Configura variaveis de Velocidade*/
	uint8_t l_spd=90, r_spd=90;

	/* Aciona PD2, para ativar aspirador */
	GPIO_SetBit(GPIO_D, PD4);

	/* Nivel baixo para saida PD4, de nivel de bateria */
	GPIO_ClrBit(GPIO_D, PD2);


    unsigned int ang=0, x=2000, y=2000, voltaA_comp=0, voltaB_comp=0;
    unsigned int limp_x[4000], limp_y[4000];		// Valor maximo para 1 vetor = 15 bits = 16.384


	_delay_ms(5000);
	SET_BIT(PORTD,PD2);
	SET_BIT(PORTD,PD4);

	while(1){


		/* Verifica sinal dos sensores TCRT5000 */
		sensor_esq = TST_BIT(PINC,SENSOR_E);
		sensor_dir = TST_BIT(PINC,SENSOR_D);


		/* Mede a distância a cada 500 ms */
		if (tempo%500 == 0) {
			SET_BIT(PORTD,PD7);						//pulso de disparo
			_delay_us(10);
			CLR_BIT(PORTD,PD7);
		}

		if (valor_adc > 420){						// Verifica se a tensao da bateria esta acima de 3V
			GPIO_ClrBit(GPIO_D, PD2);				// Nivel baixo para saida PD4

			if( ( Distancia >= 60 ) && ( !sensor_esq ) && ( !sensor_dir ) ) {	// Verifica Distancia e Piso
				if ( ((limp_x[x] == 2) && (limp_y[y] == 2)) | ((limp_x[x] == 3) && (limp_y[y] == 3))  ){	// Verifica se ja passou por X e Y
					esquerda(l_spd-20, r_spd-20);	// Vira para o lado caso ja tenha passado pelo caminho
					_delay_ms(200);
					tempo = tempo + 200;
					para();
					limp_x[x]++;					// Incrementa X
					limp_y[y]++;					// Incrementa Y
					ang++;							// Altera ang para o angulo novo
					if ( ang > 3 )					// Volta angulo para 0, caso complete uma volta
						ang = 0;
				} else if ((limp_x[x] == 4) && (limp_y[y] == 4)){		// Caso tenha passar pelo mesmo local mais de 3 vezes, ele pode passar novamente
					voltaA_comp = voltaA;		// Volta de comparacao A igualada a Volta A atual
					//voltaB_comp = voltaB;		// Volta de comparacao B igualada a Volta B atual
					while ( ( voltaA < voltaA_comp+3 ) /*&& ( voltaB < voltaB_comp+3 )*/ ){
						frente(l_spd, r_spd);	// Anda para frente ate dar 3 voltas
					}
					para();
					limp_x[x] = 2;				// Marca X como limpo
					limp_y[y] = 2;				// Marca Y como limpo
					if ( ang == 0 ){			// Incrementa ou Decrementa valor de X ou Y a depender do angulo
						x++;
					} else if ( ang == 1 ){
						y++;
					} else if ( ang == 2 ){
						x--;
					} else if ( ang == 3 ){
						y--;
					}
				}
				  else {		// Entra caso ainda nao tenha sido limpo
						voltaA_comp = voltaA;		// Volta de comparacao A igualada a Volta A atual
						//voltaB_comp = voltaB;		// Volta de comparacao B igualada a Volta B atual
						while ( ( voltaA < voltaA_comp+3 ) /*&& ( voltaB < voltaB_comp+3 )*/ ){
							frente(l_spd, r_spd);	// Anda para frente ate dar 3 voltas
						}
						para();
						limp_x[x] = 2;				// Marca X como limpo
						limp_y[y] = 2;				// Marca Y como limpo
						if ( ang == 0 ){			// Incrementa ou Decrementa valor de X ou Y a depender do angulo
							x++;
						} else if ( ang == 1 ){
							y++;
						} else if ( ang == 2 ){
							x--;
						} else if ( ang == 3 ){
							y--;
						}

				}

			} else {
				esquerda(l_spd-50, r_spd-50);		// Vira para o lado caso o caminho esteja bloqueado
				_delay_ms(200);
				tempo = tempo + 200;
				//para();
				ang++;								// Altera ang para o angulo novo
				if ( ang > 3 )						// Volta angulo para 0, caso complete uma volta
					ang = 0;
			}

		} else {									// Verifica se a tensao da bateria esta abaixo de 3V
			GPIO_SetBit(GPIO_D, PD2);				// Aciona saida PD2 para aviso de falta de bateria
			GPIO_ClrBit(GPIO_D, PD4);				// Nivel baixo em PD4, para desativar aspirador
			para();									// Para a movimentacao
		}


		tempo = tempo + 50;
		_delay_ms(50);
	}
}
