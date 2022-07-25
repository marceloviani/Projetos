/*
 * main.c
 *
 *  Created on: 24 de jul. de 2022
 *      Autor: Marcelo Viani
 */

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include "motor.h"
#include "controle.h"


int main(){

	robo_init();

	autonomo();

}
