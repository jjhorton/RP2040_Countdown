/**
 * Copyright (c) 2020 James Horton (@JamesjHorton)
 *
 * BSD-3-Clause
 */

// Standard Libraries
#include <stdio.h>
#include <stdlib.h>

// Pico Libraries
#include "pico/stdlib.h"
#include "pico/stdio_usb.h"

// Custom 7 Segment Display
#include "My7Seg.h"

int main() {

	//initalise the display
	My7Seg Display(0,2);
	Display.enable();

	int seconds_left = 0;
	char buffer[8];
	char countdown_str [8];

	stdio_init_all();

	printf("Countdown Clock starting!\n");

	Display.setValue(double(99999999), 0);

	while(1){

		buffer[0] = getchar_timeout_us(0);

		if (buffer[0] != 0){
			if (buffer[0] == 'a'){

				for(int i = 0; i<8; i++){
					buffer[i] = getchar_timeout_us(0);
				}
				seconds_left = strtof(buffer, NULL);
			}

		}

		Display.setValue(double(seconds_left), 0);



	}

}
