/*
 * =====================================================================================
 *
 *       Filename:  main.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  27.10.17 14:28:43
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  vovan (), volodumurkoval0@gmail.com
 *   Organization:  
 *
 * =====================================================================================
 */
#include "fireplace.h"


int main(void)
{
	uint8_t keyPressed;
	Timer0Init();
	Init();
	while(1)
	{
		if (flag.keyScan) 
		{
			keyPressed = KeyScan();
			switch (keyPressed) 
			{
				case _ON_OFF:
					if(flag.stateOn)
						flag.stateOn = FALSE;
					else flag.stateOn = TRUE;
					break;
				case _DIMMER:
					if(flag.stateDimmer)
						flag.stateDimmer = FALSE;
					else flag.stateDimmer = TRUE;
					break;
				case _LOW:
					if(flag.stateLow)
						flag.stateLow = FALSE;
					else flag.stateLow = TRUE;
					break;
				case _HIGH:
					if(flag.stateHigh)
						flag.stateHigh = FALSE;
					else flag.stateHigh = TRUE;
					break;
				default:
					break;
			}
			flag.keyScan = FALSE;	
			flag.ledUpdate = TRUE;
		}
		LedUpdate();
	}
}

