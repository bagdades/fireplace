/*
 * =====================================================================================
 *
 *       Filename:  fireplace.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  27.10.17 18:39:51
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  vovan (), volodumurkoval0@gmail.com
 *   Organization:  
 *
 * =====================================================================================
 */


/*-----------------------------------------------------------------------------
 *  IR Decoder  ~data, data, user_code2, user_code1
 *	uPD6121
 *	user code1=00
 *	user code2=FF
 *	data= 	C4	C1  C8  C9
 *	~data=	3B  3E  37  36
 *	All 32-bit
 *	ON/OFF	3BC4FF00
 *	DIMMER	3EC1FF00
 *	LOW		37C8FF00
 *	HIGH	36C9FF00
 *-----------------------------------------------------------------------------*/

#include "fireplace.h"

volatile uint8_t countTimeKeyScan = PERIOD_KEY_SCAN;
volatile uint8_t countTimeLedUpdate;


void Init(void)
{
	OUT_PORT &= ~OUT_MASK;//Set output 0
	OUT_DDR |= OUT_MASK;//Output port config out;
	sei();
}

void Timer0Init(void) 
{
#if(F_CPU != 8000000)
#error ***You must set TCCR0
#endif
	TCCR0 |= (1 << CS02) | (1 << CS00);  //T0_PRESC = 1024
	TCNT0 = T0_INIT;
	TIMSK |= (1 << TOIE0);  //enable interrupt overllow timer0
}

ISR(TIMER0_OVF_vect) 
{
	TCNT0 = T0_INIT;
	countTimeKeyScan--;
	if (!countTimeKeyScan) 
	{
		countTimeKeyScan = PERIOD_KEY_SCAN;
		flag.keyScan = TRUE;
	}
	if(countTimeLedUpdate)
	{
		countTimeLedUpdate--;
		if(countTimeLedUpdate == 0)
			flag.ledUpdate = FALSE;
	}
}

uint8_t KeyScan(void)
{
	static uint8_t temp = 0;
	uint8_t key = 0;

	LED_PORT |= (1 << LED_COM); /* Led common set 1 (Led Off) */
	KEY_PORT |= KEY_MASK; /* Pull-up */
	KEY_DDR &= ~(KEY_MASK); /* Port in */

	countTimeLedUpdate = PERIOD_LED_UPDATE;

	if (bit_is_clear(KEY_PIN, KEY_ON)) 
		key = _ON_OFF;
	else if(bit_is_clear(KEY_PIN, KEY_DIM))
		key = _DIMMER;
	else if(bit_is_clear(KEY_PIN, KEY_LOW))
		key = _LOW;
	else if(bit_is_clear(KEY_PIN, KEY_HIGH))
		key = _HIGH;
	else key = 0;

	if (key) 
	{
		if(!temp)
			temp = key;
	} 
	else 
	{
		key = temp;
		temp = 0;
		return key;
	}
	return 0;
}

void LedUpdate(void)
{
	if(flag.stateOn && flag.ledUpdate)
	{
		LED_DDR |= LED_MASK; /* Port out */
		LED_PORT &= ~LED_MASK;
		/* LED_PORT &= ~(1 << LED_COM); #<{(| Led common set 0 (Led On)|)}># */
		LED_PORT |= (1 << LED_ON);
		if(flag.stateDimmer)
			LED_PORT |= (1 << LED_DIM);
		else LED_PORT &= ~(1 << LED_DIM);
		if(flag.stateLow)
			LED_PORT |= (1 << LED_LOW);
		else LED_PORT &= ~(1 << LED_LOW);
		if(flag.stateHigh)
			LED_PORT |= (1 << LED_HIGH);
		else LED_PORT &= ~(1 << LED_HIGH);
	} 
	else
	{
		LED_PORT &= ~(1 << LED_ON);
		LED_DDR &= ~LED_MASK;
	}
}
