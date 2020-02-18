/*
 * motor.c
 *
 *  Created on: 7 de out de 2019
 *      Author: Marcelo
 */

#include <avr/io.h>
#include <util/delay.h>
#include "motor.h"
#define RIGHT_SPEED 150
#define LEFT_SPEED 100


int main(){

	timer_pwm_init();
	uint8_t r_spd = RIGHT_SPEED;
	uint8_t l_spd = LEFT_SPEED;


	while(1){

		frente(l_spd, r_spd);
		_delay_ms(3000);

		reh(l_spd, r_spd);
		_delay_ms(3000);

		esquerda(l_spd, r_spd);
		_delay_ms(3000);

		direita(l_spd, r_spd);
		_delay_ms(3000);

	}


	return 0;
}
