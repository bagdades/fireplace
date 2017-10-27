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


void Init(void){

}

void Timer0Init(void) {
#if(F_CPU != 8000000)
#error ***You must set TCCR0
#endif
	TCCR0 |= (1 << CS02) | (1 << CS00);  //T0_PRESC = 1024
	TCNT0 = T0_INIT;
	TIMSK |= (1 << TOIE0);  //enable interrupt overllow timer0
}

ISR(TIMER0_OVF_vect) {
	TCNT0 = T0_INIT;
}
