#include <avr/pgmspace.h>
#include <util/delay.h>

#include "lib/avr_gpio.h"
#include "lib/bits.h"
#include "mux_serial_paralelo.h"

#define D PB0	// pino de dados para o 4094
#define CLK PB1	// pino clock para o 4094
#define STB PB2	// pino de strobe para o 4094
#define pulso_CLK() SET_BIT(PORTB,CLK); _delay_us(10); CLR_BIT(PORTB,CLK)		// pulso para o clock
#define pulso_STB() SET_BIT(PORTB,STB); _delay_us(10); CLR_BIT(PORTB,STB)		// pulso para o strobe

#define BOTAO PD0

/* Tabela de conversão: Anodo comum */
#ifdef COM_ANODO
unsigned char dados[16] = {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02,
		0x78, 0x00, 0x18, 0x08, 0x03, 0x46, 0x21, 0x06, 0x0E};
#endif

/* Tabela de conversão: Catodo comum */
#ifdef COM_CATODO
unsigned char dados[16] = {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02,
		0x78, 0x00, 0x18, 0x08, 0x03, 0x46, 0x21, 0x06, 0x0E};
#endif

void button(uint8_t valor)
{
	while(valor < 256){				// laço ate chegar em 0xff
		if(!TST_BIT(PIND,BOTAO))	// se o botão for pressionado executa
		{
			valor++;				// incrementa o valor
			mux_num(valor);
			_delay_ms(200);			// atraso
			if (valor == 255)		// sai do laço ao chegar em 0xff
				break;
		}
	}
}

void serial_paral(uint8_t c)
{
	c = dados[c];
	unsigned char i=8;		// envia primeiro o MSB

	do {
		i--;

		if(TST_BIT(c,i))	// se o bit for 1, ativa o pino de DADOS
			SET_BIT(PORTB,D);
		else 				// se não, o zera
			CLR_BIT(PORTB,D);
			pulso_CLK();
	} while (i!=0);
}

void mux_num(uint8_t y)
{
	serial_paral((y>>4)&0xf);	// implementa o digito do decimal no display, ao deslocar o numero em forma binaria e comparar em forma hexadecimal
	pulso_STB();
	serial_paral(y&0xf);		// implemanta o digito da unidade no display, ao comparar com o numero em hexadecimal 0xf
	pulso_STB();
}
