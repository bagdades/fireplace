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

#include "fireplace.h"

volatile uint8_t countTimeKeyScan = PERIOD_KEY_SCAN;
volatile uint8_t countTimeLedUpdate;


void Init(void)
{
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
	uint8_t key;

	KEY_DDR &= ~(KEY_MASK); /* Port in */
	KEY_PORT |= KEY_MASK; /* Pull-up */
	LED_PORT |= (1 << LED_COM); /* Led common set 1 (Led Off) */

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
		if (temp == DELAY_SHORT) 
		{
			/* temp = 0; */
			return key;
		}					
		temp++;
		if(temp == 255)
			temp = DELAY_SHORT + 1;
	} 
	else 
	{
		temp = 0;
		return 0;
	}
	return _FALSE;
}

void LedUpdate(void)
{
	LED_DDR |= LED_MASK; /* Port out */
	LED_PORT &= ~(1 << LED_COM); /* Led common set 0 (Led On)*/

	if(flag.stateOn && flag.ledUpdate)
	{
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
		LED_PORT &= ~LED_MASK;
	}
}
