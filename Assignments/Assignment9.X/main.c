/*
 * Program: Safe Box Interface
 * Author: Jacob Jaffe
 * Description: This program has two functions for the assignment. The first
 * is displaying my name, and then constantly reading from the ADC and displaying
 * the corresponding voltage value on the LCD. If the interrupt is pressed, it
 * stops reading from the ADC for 10 seconds. The second function is PWM output.
 * When the cycle button is pressed, the duty cycle increases by 10 percent, and
 * when it reaches 100 percent, it cycles back to 0. The duty cycle is displayed
 * on the LCD.
 * 
 * Input: PWM cycle button - RE1, Interrupt IOC button - RC5
 * Output: interrupt LED - RC5, PWM - RB3, LCD D0-D7 write data, RC3 for RS, 
 *         RC4 for Enable, LED - RC2
 * Date: April 28, 2025
 * Files/Dependencies: config.h - configuration bits
 *                     init.h - initialization of ports and interrupt settings
 *                     LCD.h - all code for the LCD 
 *                     PWM.h - all code for pulse width modulation
 * Compiler: XC8 v3.0
 * Written and compiled on a Lenovo Thinkpad
 * Versions: v1.0 - initial version
 */

#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "LCD.h"
#include "init.h"
#include "config.h"
#include "PWM.h"

#define myLED  PORTBbits.RB0
#define PWM2_INITIALIZE_DUTY_VALUE 205

void PWM(void);
void readADC(void);

void main(void) {
    Initialize();
    LCD_Init();
    LCD_String_xy(1, 0, "Jacob");
    
    //__delay_ms(1500);
    LCD_Clear();
    
    //read ADC part of assignment
    //readADC();
    //PWM part of assignment
    PWM();
    
    return;
}

void readADC(void) {
    int Vref = 5;
    char buffer[12];
    int digital;
    float voltage;
    LCD_String_xy(1, 0, "input voltage:");
    while(1) {
        ADCON0bits.GO = 1;
        while(ADCON0bits.GO);
        digital = (ADRESH * 256) | ADRESL;
        voltage = digital * ((float)Vref / (float)(4096));
        sprintf(buffer, "%.2f", voltage);
        strcat(buffer, " V");
        LCD_String_xy(2, 0, buffer);
        __delay_ms(2000);
    }
}

void PWM(void) {
    unsigned int checkdutyCycle, pwmStatus, preScale;
    int dcVal[10] = {0, 103, 205, 308, 410, 512, 615, 717, 820, 922};
    int index = 0;
    char percent[15];
    OSCSTATbits.HFOR =1; // enable  HFINTOSC Oscillator (see clock schematic))
    OSCFRQ=0x02; // 00=1 MHZ, 02=4MHZ internal - see page 106 of data sheet
    
    ANSELB = 0b00000000;    
    TRISB= 0b00000000;//sets PORTB as all outputs 
    PORTB= 0b00000000;//turns off PORTB outputs so that the LED is initially off
    TMR2_Initialize();
    TMR2_StartTimer();        
    
    PWM_Output_D8_Enable();
    PWM2_Initialize();
    PWM2_LoadDutyValue( dcVal[index] ); // initialize CCPR2H/L
   // PWM_Output_D8_Disable();
   // TMR2_StopTimer();  

    // Duty Cycle in percentage 
    checkdutyCycle =(uint16_t)((100UL*dcVal[index])/(4*(T2PR+1)));
    // binary value of Register T2CON.PRESCALE
    preScale = ((T2CON >> 4) & (0x0F)); 

    LCD_Clear();
    sprintf(percent, "%d", checkdutyCycle);
    LCD_String_xy(2, 0, percent);
    
    while (1) {
        pwmStatus = PWM2_OutputStatusGet();
        PORTBbits.RB2 = pwmStatus;
        /*
        if (PIR4bits.TMR2IF == 1) {
            PIR4bits.TMR2IF = 0;
            myLED ^= 1; // ISR code goes here
        }
        */
        // increment the duty cycle by 10 percent every time button is pressed
        if (PORTEbits.RE1 == 1) {
            index++;
            // if duty cycle will reach 100%, reset back to 0
            if (index == 10) { index = 0; }
            checkdutyCycle =(uint16_t)((100UL*dcVal[index])/(4*(T2PR+1)));
            
            // load duty cycle
            PWM2_LoadDutyValue( dcVal[index] );
            
            // show the duty cycle on lcd
            LCD_Clear();
            sprintf(percent, "%d", checkdutyCycle);
            LCD_String_xy(2, 0, percent);
            __delay_ms(1000);
        }
    }
};