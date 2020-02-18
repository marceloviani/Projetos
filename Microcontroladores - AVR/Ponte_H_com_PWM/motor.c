/*
 * motor.c
 *
 *  Created on: 7 de out de 2019
 *      Author: Marcelo
 */

#include <avr/io.h>
#include <util/delay.h>
#include "lib/bits.h"
#include "lib/avr_timer.h"
#include "lib/avr_gpio.h"
#include "motor.h"


void timer_pwm_init(){

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
