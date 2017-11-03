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
#include <avr/eeprom.h>


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

#define LED_COM		PD5
#define LED_LOW		PD3
#define LED_HIGH	PD4
#define LED_ON		PD1
#define LED_DIM		PD0
#define LED_MASK	((1 << LED_LOW)|(1 << LED_HIGH)|(1 << LED_ON)|(1 << LED_DIM)|(1 << LED_COM))

//Times
#define PERIOD_KEY_SCAN		20
#define PERIOD_LED_UPDATE	1
#define PERIOD_BUZZER		50

//Outputs
#define OUT_PORT	PORTC
#define OUT_DDR		DDRC

#define OUT_BUZ		PC0
#define OUT_100_W	PC1
#define OUT_SWING	PC2
#define OUT_1000W	PC3
#define OUT_FAN		PC4
#define OUT_LAMP	PC5

#define OUT_MASK	((1 << OUT_LAMP) | (1 << OUT_BUZ)|(1 << OUT_100_W)|(1 << OUT_SWING)|(1 << OUT_1000W)|(1 << OUT_FAN))


//Timer 2 defines
/* #define StartT2		TIMSK |= (1 << TOIE2) */
/* #define StopT2		TIMSK &= ~(1 << TOIE2) */
#define StartT2		TCCR2 |= (1 << CS22) | (1 << CS21) | (1 << CS20)
#define StopT2		TCCR2 &= ~((1 << CS22) | (1 << CS21) | (1 << CS20))

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
	uint16_t keyScan:		1;
	uint16_t ledUpdate:		1;
	uint16_t stateOn:		1;
	uint16_t stateDimmer:	1;
	uint16_t stateLow:		1;
	uint16_t stateHigh:		1;
	uint16_t startCom:		1;
	uint16_t newCom:		1;
	uint16_t buzzer:		1;
}flag;


//Prototypes
void Timer0Init(void);
void Init(void);
uint8_t KeyScan(void);
void LedUpdate(void);
void OutControll(void);
