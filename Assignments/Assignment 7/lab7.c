/*
 * ---------------------
 * Title: Calculator
 * ---------------------
 * Program Details: The purpose of this program is to simulate a simple
 * calculator with two seven segments as a display. It takes the first input
 * from the user on a keypad, and it will display the number based on what is 
 * pressed. It will then take a second input, the operator, and turn off the 
 * display. It will then take a third input, the second operand, and display
 * that value. The user will then press the number 8, and the result will be 
 * displayed until 
 * the operator, and turn off the display. 
 * Inputs: RB0-RB8 for the keypad.
 * Outputs: RC0-RC8 first seven segment, RD0-RD8 second seven segment.
 * Date: Mar 7, 2025
 * File Dependencies / Libraries: It is required to include the 
 * Configuration Header File 
 * Compiler: xc8, 3.0
 * Author: Jacob Jaffe
 * Versions:
 *      V1.0: Basic Outline
 */
/*
// PIC18F46K42 Configuration Bit Settings

// 'C' source line config statements

// CONFIG1L
#pragma config FEXTOSC = LP     // External Oscillator Selection (LP (crystal oscillator) optimized for 32.768 kHz; PFM set to low power)
#pragma config RSTOSC = EXTOSC  // Reset Oscillator Selection (EXTOSC operating per FEXTOSC bits (device manufacturing default))

// CONFIG1H
#pragma config CLKOUTEN = OFF   // Clock out Enable bit (CLKOUT function is disabled)
#pragma config PR1WAY = ON      // PRLOCKED One-Way Set Enable bit (PRLOCK bit can be cleared and set only once)
#pragma config CSWEN = ON       // Clock Switch Enable bit (Writing to NOSC and NDIV is allowed)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor enabled)

// CONFIG2L
#pragma config MCLRE = EXTMCLR  // MCLR Enable bit (If LVP = 0, MCLR pin is MCLR; If LVP = 1, RE3 pin function is MCLR )
#pragma config PWRTS = PWRT_OFF // Power-up timer selection bits (PWRT is disabled)
#pragma config MVECEN = ON      // Multi-vector enable bit (Multi-vector enabled, Vector table used for interrupts)
#pragma config IVT1WAY = ON     // IVTLOCK bit One-way set enable bit (IVTLOCK bit can be cleared and set only once)
#pragma config LPBOREN = OFF    // Low Power BOR Enable bit (ULPBOR disabled)
#pragma config BOREN = SBORDIS  // Brown-out Reset Enable bits (Brown-out Reset enabled , SBOREN bit is ignored)

// CONFIG2H
#pragma config BORV = VBOR_2P45 // Brown-out Reset Voltage Selection bits (Brown-out Reset Voltage (VBOR) set to 2.45V)
#pragma config ZCD = OFF        // ZCD Disable bit (ZCD disabled. ZCD can be enabled by setting the ZCDSEN bit of ZCDCON)
#pragma config PPS1WAY = ON     // PPSLOCK bit One-Way Set Enable bit (PPSLOCK bit can be cleared and set only once; PPS registers remain locked after one clear/set cycle)
#pragma config STVREN = ON      // Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
#pragma config DEBUG = OFF      // Debugger Enable bit (Background debugger disabled)
#pragma config XINST = OFF      // Extended Instruction Set Enable bit (Extended Instruction Set and Indexed Addressing Mode disabled)

// CONFIG3L
#pragma config WDTCPS = WDTCPS_31// WDT Period selection bits (Divider ratio 1:65536; software control of WDTPS)
#pragma config WDTE = OFF       // WDT operating mode (WDT Disabled; SWDTEN is ignored)

// CONFIG3H
#pragma config WDTCWS = WDTCWS_7// WDT Window Select bits (window always open (100%); software control; keyed access not required)
#pragma config WDTCCS = SC      // WDT input clock selector (Software Control)

// CONFIG4L
#pragma config BBSIZE = BBSIZE_512// Boot Block Size selection bits (Boot Block size is 512 words)
#pragma config BBEN = OFF       // Boot Block enable bit (Boot block disabled)
#pragma config SAFEN = OFF      // Storage Area Flash enable bit (SAF disabled)
#pragma config WRTAPP = OFF     // Application Block write protection bit (Application Block not write protected)

// CONFIG4H
#pragma config WRTB = OFF       // Boot Block Write Protection bit (Boot Block not write-protected)
#pragma config WRTC = OFF       // Configuration Register Write Protection bit (Configuration registers not write-protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM not write-protected)
#pragma config WRTSAF = OFF     // SAF Write protection bit (SAF not Write Protected)
#pragma config LVP = ON         // Low Voltage Programming Enable bit (Low voltage programming enabled. MCLR/VPP pin function is MCLR. MCLRE configuration bit is ignored)

// CONFIG5L
#pragma config CP = OFF         // PFM and Data EEPROM Code Protection bit (PFM and Data EEPROM code protection disabled)
*/
#include <xc.h> // must have this
#include "Config.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define _XTAL_FREQ 4000000                 // Fosc  frequency for _delay()  library
#define FCY    _XTAL_FREQ/4

enum VALUE {
    zero = 0,    
    one = 1,
    two = 2,
    three = 3,
    four = 4,
    five = 5,
    six = 6,
    seven = 7,
    eight = 8,
    nine = 9,
    ADD = 100,
    SUBTRACT = 101,
    MULTIPLY = 102,
    DIVIDE = 103,
    NUMBER = 104,
    ERROR = 200,
    NOVALUE = 255
};
void display(unsigned char hexValue);
int scanKeypad();
unsigned char calculate(unsigned char val1, unsigned char val2, enum VALUE op);
unsigned char sevSeg[] = {0, 0, 0, 0, 0, 0, 0, 0, 0};

void main (void){
    enum VALUE first;
    int value1 = 255, value2 = 255;
    enum VALUE operator;
    unsigned char result;
    // configure ports b, c and d for input and output
    TRISB = 0b11110000; // port b is input
    TRISC = 0x00; // port c is output
    TRISD = 0x00; // port d is output
    // digital input/output
    ADCON0 = 0;
    ADCON1 = 0;
    
    value1 = 255;
    value2 = 255;
    // wait for the first input
    while(value1 == 255) {
        value1 = scanKeypad();
    }
    display((unsigned char)value1); // display first value
    while(operator == NOVALUE) {
        operator = scanKeypad();
    }
    // wait for the second input
    while(value2 == 255) {
        value2 = scanKeypad();
    }
    display((unsigned char)value2); // display second value
    result = calculate(value1, value2, operator);
    while (scanKeypad() != NUMBER) {} // wait until # is pressed to display
    display(result);
}

// this function displays the input value on the seven segment display.
void display(unsigned char hexValue) {
    // clear display
    if(hexValue == 100) {
        LATC = 0;
        LATD = 0;
        return;
    }
    
    // parse the first and second digits
    unsigned char digit1, digit2;
    digit1 = hexValue / 10;
    digit2 = hexValue % 10;
    // only display first digit if it's not zero
    if (digit1 != 0) {LATC = sevSeg[digit1];}
    LATD = sevSeg[digit2];
    return;
};

// This function will scan the keypad by turning each column bit high, and 
// seeing which row is pressed. The combination of row and column will tell 
// which value is being pressed. 
int scanKeypad() {
    int rowValue;
    
    // scan the first column
    PORTBbits.RB4 = 1;
    if (PORTBbits.RB0 == 1) { return 1; }
    else if (PORTBbits.RB1 == 1) { return 4; }
    else if (PORTBbits.RB2 == 1) { return 7; }
    
    // scan the second column
    PORTBbits.RB5 = 1;
    if (PORTBbits.RB0 == 1) { return 2; }
    else if (PORTBbits.RB1 == 1) { return 5; }
    else if (PORTBbits.RB2 == 1) { return 8; }
    else if (PORTBbits.RB3 == 1) { return 0; }
    
    // scan the third column
    PORTBbits.RB6 = 1;
    if (PORTBbits.RB0 == 1) { return 3; }
    else if (PORTBbits.RB1 == 1) { return 6; }
    else if (PORTBbits.RB2 == 1) { return 9; }
    else if (PORTBbits.RB3 == 1) { return 10; }
    
    // scan the fourth column
    PORTBbits.RB7 = 1;
    if (PORTBbits.RB0 == 1) { return ADD; }
    else if (PORTBbits.RB1 == 1) { return SUBTRACT; }
    else if (PORTBbits.RB2 == 1) { return MULTIPLY; }
    else if (PORTBbits.RB3 == 1) { return DIVIDE; }
    
    return 255;
};

// this function parses the operator, and performs the calculation between
// the two operands depending on the selected operator.
unsigned char calculate(unsigned char val1, unsigned char val2, enum VALUE op) {
    switch (op) {
        case ADD:
            return val1 + val2;
        case SUBTRACT:
            return val1 - val2;
        case MULTIPLY:
            return val1 * val2;
        case DIVIDE:
            return val1 / val2;
        default:
            return 0;
    }
};