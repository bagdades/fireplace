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

#define KEY_LOW		PD3
#define KEY_HIGH	PD4
#define KEY_ON		PD1
#define KEY_DIM		PD0
#define KEY_MASK	((1 << KEY_LOW)|(1 << KEY_HIGH)|(1 << KEY_ON)|(1 << KEY_DIM))

#define DELAY_SHORT	1
#define DELAY_LONG	30

//Led port configuration
#define LED_PORT	PORTD
#define LED_DDR		DDRD
#define LED_PIN		PIND

#define LED_COM		PD2
#define LED_LOW		PD3
#define LED_HIGH	PD4
#define LED_ON		PD1
#define LED_DIM		PD0
#define LED_MASK	((1 << LED_LOW)|(1 << LED_HIGH)|(1 << LED_ON)|(1 << LED_DIM))

//Times
#define PERIOD_KEY_SCAN		15
#define PERIOD_LED_UPDATE	7

//Enumerations
enum keypad {
	_ON_OFF = 1,
	_DIMMER,
	_LOW,
	_HIGH,
	_FALSE
};

enum {
	FALSE = 0,
	TRUE
};

volatile struct Flags {
	uint8_t keyScan:	1;
	uint8_t ledUpdate:	1;
	uint8_t stateOn:	1;
	uint8_t stateDimmer:	1;
	uint8_t stateLow:	1;
	uint8_t	stateHigh:	1;
}flag;


//Prototypes
void Timer0Init(void);
void Init(void);
uint8_t KeyScan(void);
void LedUpdate(void);
