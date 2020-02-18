/*
 * main_mux_serial_paralelo.c
 *
 *  Created on: Sep 20, 2019
 *      Author: Marcelo Viani Raulino Santos
 *      Instituto Federal de Santa Catarina
 */

/* Bibliotecas */
#include <avr/io.h>
#include "lib/avr_gpio.h"
#include "mux_serial_paralelo.h"

//----------------------------------------------------------------------------------
int main(void)
{
	DDRB = 0b00000111;	// pinos PB0:2 como saídas
	PORTB = 0b11111000;	// zera saídas
	DDRD = 0b11111110;	// PB0 como pino de entrada, os demais pinos como saída
	PORTD= 0x01;		// habilita o pull-up do PB0

	mux_num(0);		// deixa em 00 os displays

	button(0);			// faz a leitura do botão

	while(1)
	{
	} //laço infinito
}
