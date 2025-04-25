/*
 * Program: Safe Box Interface
 * Author: Jacob Jaffe
 * Description: This program acts as an automatic door. It uses photoresistors 
 * to sense input from a user that acts as an input for a special code. If
 * the code is correct, the motor is turned on for the door. If the input code
 * is incorrect, the buzzer goes off, and the motor does not start. There is
 * an interrupt switch to restart the process at any point, and the buzzer goes
 * off, and the program waits for the code again. 
 * 
 * Input: Photoresistor1 - RA0, Photoresistor2 - RA1, input confirm button - RC6
 * Output: motor - RC7, buzzer - RC5, LCD D0-D7 write data, RC3 for RS, RC4 for E
 *         LED - RC2
 * Date: April 19, 2025
 * Files/Dependencies: config.h - configuration bits
 *                     func.h - all of the functions
 *                     init.h - initialization of ports and settings
 *                     LCDDrive.h - all code for the LCD 
 * Compiler: XC8 v3.0
 * Written and compiled on a Lenovo Thinkpad
 * Versions: v1.0 - initial working version
 */


#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "config.h"
#include "init.h"
#include "func.h"
#include "LCDDrive.h"

void buzz(void);

void main(void) {

    // power on led
    led = 1;
    int secretCode = 20;
    
    // initialize the input, output, and interrupt
    Initialize();
    __delay_ms(50);
    
    // initialize the starting state of the lcd
    LCD_Init();
    buzz();

    // motor off
    motor = 1;
    __delay_ms(100);
    
    // the main loop
    while(1) {
        LCD_String_xy(2,0,"Code: 20");
        reset = 0;
        //secretCode = getSecret();
        if (reset == 1) { continue; }
        secretCode = 20;
        __delay_ms(1000);
        getCode(secretCode);
    }
    return;
}

void buzz(void) {
    for (int j = 0; j < 1; j++) {
    for (int i = 0; i < 3; i++) {
        __delay_ms(100);
        buzzer = 1;
        __delay_ms(200);
        buzzer = 0;
    }
    __delay_ms(1000);
    }
}