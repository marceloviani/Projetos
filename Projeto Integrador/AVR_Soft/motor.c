/*
 * motor.c
 *
 *  Created on: 24 de jul. de 2022
 *      Autor: Marcelo Viani
 */

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include "lib/avr_gpio.h"
#include "lib/avr_timer.h"
#include "lib/avr_adc.h"
#include "lib/bits.h"
#include "motor.h"


void robo_init(){



	/* Configura pinos PB4, PB5 e PB1 como entradas e PB3 como saida*/
    DDRB = 0b00001000;
    PORTB = 0b00110001;

	/* Habilita Interrupcao Externa de PCINT0 até PCINT7*/
    PCICR = 0b00000001;
	/* Habilita Interrupcao Externa em PCINT4 (PB4) e PCINT5 (PB5)*/
    PCMSK0 = 0b00110000;

	/* Habiltiação referencia do ADC em AVcc e Configura MUX para ler ADC2 (PC2) */
	ADCS->AD_MUX = SET(REFS0) | SET(MUX1);
	/* Configura registrador A para ADC e Interrupcao */
	ADCS->ADC_SRA = SET(ADEN)  |	// ADC Enable
					SET(ADSC)  | 	// ADC Start conversion
					SET(ADATE) |	// ADC Auto Trigger
					SET(ADIE)  |	// ADC Interrupt Enable
					SET(ADPS0) | SET(ADPS1) | SET(ADPS2);	//ADC Prescaler Selections -> Prescaler de 128

	/* Desabilita hardware digital de PC1 e PC2 */
	ADCS->DIDr0.BITS.ADC1 = 1;
	ADCS->DIDr0.BITS.ADC2 = 1;

	/* Habilita PD7, PD4 e PD2 como saidas */
	GPIO_D->DDR = SET(PD7) | SET(PD4) | SET(PD2);

	TCCR1B = (1<<ICES1)|(1<<CS11);	// TC1 com prescaler = 8, captura na borda de subida
	TIMSK1 = 1<<ICIE1;				// Habilita a interrupção por captura
	sei();							// Habilita a chave de interrupções globais

	/* PD3 (pino OC2B), PD5 (pino OC0B) e PD6 (pino OC0A) como saída */
	GPIO_D->DDR |= SET(PD3) | SET(PD5) | SET(PD6);
	/* PB3: pino OC2A como saída */
	GPIO_B->DDR |= SET(PB3);

	/* WGM01 e WGM00 setados no Timer_0: modo PWM rápido com TOP em 0XFF */
	TIMER_0->TCCRA = SET(WGM01) | SET(WGM00);
	/* CS00 e CS01 setados no Timer_0: prescaler = 64 */
	TIMER_0->TCCRB = SET(CS00)  | SET(CS01);

	/* WGM02, WGM01 WGM00 setados no Timer_2: modo PWM rápido com TOP em 0XFF */
	TIMER_2->TCCRA = SET(WGM21) | SET(WGM20);
	/* CS22 setado no Timer_2: prescaler = 64 */
	TIMER_2->TCCRB = SET(CS22);

}

void frente(uint8_t dutty_esq, uint8_t dutty_dir){

	TIMER_0->TCCRA = 0b10000011;
	TIMER_2->TCCRA = 0b10000011;
	TIMER_0->OCRA  = dutty_esq;
	TIMER_0->OCRB  = 0;
	TIMER_2->OCRA  = dutty_dir;
	TIMER_2->OCRB  = 0;

}

void reh(uint8_t dutty_esq, uint8_t dutty_dir){

	TIMER_0->TCCRA = 0b00100011;
	TIMER_2->TCCRA = 0b00100011;
	TIMER_0->OCRA  = 255;
	TIMER_0->OCRB  = dutty_esq;
	TIMER_2->OCRA  = 255;
	TIMER_2->OCRB  = dutty_dir;

}

void direita(uint8_t dutty_esq, uint8_t dutty_dir){

	TIMER_0->TCCRA = 0b10000011;
	TIMER_2->TCCRA = 0b00100011;
	TIMER_0->OCRA  = dutty_esq;
	TIMER_0->OCRB  = 0;
	TIMER_2->OCRA  = 255;
	TIMER_2->OCRB  = dutty_dir;

}

void esquerda(uint8_t dutty_esq, uint8_t dutty_dir){

	TIMER_0->TCCRA = 0b00100011;
	TIMER_2->TCCRA = 0b10000011;
	TIMER_0->OCRA  = 255;
	TIMER_0->OCRB  = dutty_esq;
	TIMER_2->OCRA  = dutty_dir;
	TIMER_2->OCRB  = 0;

}
void para(){

	TIMER_0->TCCRA = 0b00000011;
	TIMER_2->TCCRA = 0b00000011;

}
