/*
 * =====================================================================================
 *
 *       Filename:  fireplace.h
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  27.10.17 18:40:20
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  vovan (), volodumurkoval0@gmail.com
 *   Organization:  
 *
 * =====================================================================================
 */

#include <avr/io.h>
#include <avr/interrupt.h>


# define F_CPU 8000000UL


//TIMER
#define T0_PRESC	1024UL
#define T0_FREQ		1000UL
#define T0_INIT		255 - (F_CPU/(T0_FREQ * T0_PRESC))

//Key port configuration
#define KEY_PORT	PORTD
#define KEY_DDR		DDRD
#define KEY_PIN		PIND

#define LED_COM		PD2
#define KEY_LOW		PD3
#define KEY_HIGH	PD4
#define KEY_ON		PD1
#define KEY_DIM		PD0


//Prototypes
void Timer0Init(void);
void Init(void);
