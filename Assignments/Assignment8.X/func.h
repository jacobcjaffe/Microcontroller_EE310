#ifndef FUNC_H
#define	FUNC_H
#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "LCDDrive.h"
#define _XTAL_FREQ 4000000
#define FCY    _XTAL_FREQ/4
#define motor LATC7
#define buzzer LATC5
#define confirm PORTCbits.RC6
#define p1 PORTAbits.RA0
#define p2 PORTAbits.RA1
#define led LATC2

char inputStr[3];
char code[10] = "Code: ";
unsigned char sevSeg[] = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111};
char num[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
int getSecret(void);
int scanNumpad(void);
void getCode(int secret);
volatile char reset;


// function to get the secret code from the numpad
int getSecret(void) {
    int temp;
    int code;
    // get tens digit
    while(code != -1) {
        if (reset == 1) { return -1; }
        temp = scanNumpad();
    }
    code = temp * 10;
    // get ones digit
    while(code != -1) {
        if (reset == 1) { return -1; }
        temp = scanNumpad();
    }
    code += temp;
    return temp;
}

// pins A0, C2 - C7 numpad input
// A0, C2-C4 are the rows, C5 - C7 are the columns
// function scans the numpad for input
int scanNumpad(void) {
    //LATB = 0;
    PORTCbits.RC5 = 0;
    PORTCbits.RC6 = 0;
    PORTCbits.RC7 = 0;
    __delay_ms(50);
    
    // scan the first column
    PORTCbits.RC5 = 1;
    if (PORTAbits.RA0 == 1) { return 1; }
    if (PORTCbits.RC2 == 1) { return 4; }
    if (PORTCbits.RC3 == 1) { return 7; }
    PORTCbits.RC5 = 0;

    // scan the second column
    PORTCbits.RC6 = 1;
    if (PORTAbits.RA0 == 1) { return 2; }
    else if (PORTCbits.RC2 == 1) { return 5; }
    else if (PORTCbits.RC3 == 1) { return 8; }
    else if (PORTCbits.RC4 == 1) { return 0; }
    PORTCbits.RC6 = 0;
    
    // scan the third column
    PORTCbits.RC7 = 1;
    if (PORTAbits.RA0 == 1) { return 3; }
    else if (PORTCbits.RC2 == 1) { return 6; }
    else if (PORTCbits.RC3 == 1) { return 7; }
    PORTCbits.RC7 = 0;
    
    return -1;
}

// function to get code from the user
void getCode(int secret) {
    int input = 0;
    int temp = 0;
    LCD_Clear();
    inputStr[0] = '0';
    inputStr[1] = ' ';
    // convert the secret code to a string
    code[6] = num[secret / 10];
    code[7] = num[secret % 10];
    LCD_String_xy(1,0, inputStr);
    __delay_ms(10);
    LCD_String_xy(2, 0, code);
    __delay_ms(10);
    int i = 0;
    // get the first digit from the user
    while(1) {
        if (reset == 1) { return; }
        else if (p1 == 1) {
            temp += 1;
            if (temp == 10) { temp = 0; }
            inputStr[0] = num[temp];
            LCD_String_xy(1,0,inputStr);
            __delay_ms(300); // resistor has 20 ms response time
        }
        if (confirm == 1) {
            
            input = temp * 10;
            __delay_ms(500);
            break;
        }
    }
    temp = 0;
    inputStr[1] = num[temp];
    LCD_String_xy(1,0,inputStr);
    // get the second digit as input
    while(1) {
        if (reset == 1) { return; }
        if (p2 == 1) {
            temp += 1;
            if (temp == 10) { temp = 0; }
            inputStr[1] = num[temp];
            LCD_String_xy(1,0,inputStr);
            __delay_ms(300); // resistor has 20 ms response time
        }
        if (confirm == 1) {
            __delay_ms(500);
            break;
        }
    }
    input += temp;
    
    // if the code is wrong, sound the buzzer
    if (input != secret) {
        LCD_String_xy(1,0,"wrong");
        // turn on buzzer
        buzzer = 1;
        // a loop here so that the program can anticipate an interrupt
        for(int i = 0; i < 60 ;i++) {
            if (reset == 1) { return; }
            __delay_ms(20);
        }
        buzzer = 0;
    }
    else { // if the code is correct, turn on the motor
        LCD_String_xy(1,0,"motor on");
        motor = 0;
        // a loop here so that the program can anticipate an interrupt
        for(int i = 0; i < 200; i++) {
            if (reset == 1) { return; }
            __delay_ms(10);
        }
        motor = 1;
    }
    inputStr[0] = ' ';
    inputStr[1] = ' ';
    LCD_Clear();
    __delay_ms(100);
};

// Defining Interrupt ISR, plays a special buzzer melody, then starts
// from the beginning
void __interrupt(irq(IRQ_INT0),base(0x4008)) INT0_ISR(void)
{
    LCD_String_xy(1,0,"interrupt");
    // stop whatever is happening
    motor = 1;
    buzzer = 0;
    // sound the buzzer, special melody for interrupt
    for (int i = 0; i < 3; i++) {
        buzzer = 1;
        __delay_ms(300);
        buzzer = 0;
        __delay_ms(300);
    }
    reset = 1;
    
    PIR1bits.INT0IF = 0; // clear status flag
    PIR1 = 0;
    LCD_Clear();
    __delay_ms(100);
}

#endif	/* FUNC_H */

