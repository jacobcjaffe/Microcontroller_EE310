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
 * displayed. If at any point, '*' is pressed on the keypad, all operands will
 * be reset and it will start at setting the first input again.
 * the operator, and turn off the display. 
 * Inputs: RB0-RB8 for the keypad.
 * Outputs: RC0-RC8 first seven segment, RD0-RD8 second seven segment.
 * Date: Mar 7, 2025
 * Written on Thinkpad with Windows 10
 * File Dependencies / Libraries: It is required to include the 
 * Configuration Header File 
 * Compiler: xc8, 3.0
 * Author: Jacob Jaffe
 * Versions:
 *      V1.0: Basic Outline
 *      V2.0: Fully Working
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
    COMPUTE = 105,
    RESET = 10,
    ERROR = 200,
    NOVALUE = 255
};

void display(int dValue);
enum VALUE scanKeypad(void);
int calculate(int val1, int val2, enum VALUE op);
unsigned char sevSeg[] = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111};

void main (void){
    enum VALUE ret1;
    enum VALUE operator;
    int value1, value2, result;
    // configure ports b, c and d for input and output
    TRISA = 0x00;
    TRISB = 0b00001111; // port b is first half input, second half output
    TRISC = 0x00; // port c is output
    TRISD = 0x00; // port d is output
    // digital input/output
    ADCON0 = 0;
    ADCON1 = 0;
    ADCON2 = 0;
    T1CON = 0;
    ANSELA = 0;
    ANSELB = 0;
    ANSELC = 0;
    ANSELD = 0;
    
    CCP2CON = 0x00;
    
    
    while(1) {
        ret1 = NOVALUE;
        operator = NOVALUE;
        value1 = 0;
        value2 = 0;
        
        
        // wait for the first input
        while((int)ret1 >= 100) {
            ret1 = scanKeypad();
        }
        if (ret1 == RESET) { continue; }
        value1 += (int)ret1;
        display(value1); // display first value
        __delay_ms(300);
        ret1 = NOVALUE;
        // cannot calculate at this point
        while((ret1 == NOVALUE) || (ret1 == COMPUTE)) {
            ret1 = scanKeypad();
        }
        if (ret1 == RESET) { continue; }
        
        // if a second digit is input, move previous to tens place
        if (ret1 < 100) {
            value1 *= 10;
            value1 += ret1;
            display(value1);
            __delay_ms(300);
            ret1 = NOVALUE;
            // wait until operator is input, or it's reset
            while(((ret1 < 100) || (ret1 > 104)) && (ret1 != RESET)) {
                ret1 = scanKeypad();
            }
        }
        if (ret1 >= 100 && ret1 <= 103) { operator = ret1; }
        else if (ret1 == RESET) { continue; } // reset
        // else  an operator was input.
        ret1 = NOVALUE; 
        display(200); // clear display
        __delay_ms(300);
        
        // wait for the second input
        while(ret1 >= 100) {
            ret1 = scanKeypad();
        }
        if (ret1 == RESET) { continue; }
        value2 += ret1;
        display(value2);
        __delay_ms(300);
        ret1 = NOVALUE;
        
        // wait for either compute or another digit
        while((ret1 >= 100) && (ret1 != COMPUTE) && (ret1 != RESET)) {
            ret1 = scanKeypad();
        }
        if (ret1 == RESET) { continue; }
        if (ret1 < 100) { // if a second input
            value2 *= 10;
            value2 += ret1;
            display(value2); // display second value
            __delay_ms(300);
            // wait until compute is pressed
            do {
                ret1 = scanKeypad();
            } while((ret1 != COMPUTE) && (ret1 != RESET));
        }
        if (ret1 == RESET) { continue; }
        
        // otherwise compute was pressed.
        result = calculate(value1, value2, operator);
        display(result);
        __delay_ms(1500);
       
    }
}

// this function displays the input value on the seven segment display.
void display(int dValue) {
    // clear display
    LATA = 0;
    LATC = 0;
    LATD = 0;
    // just clear display if operator is pressed
    if(dValue >= 100) {
        return;
    }
  
    // if negative, turn on decimal
    if(dValue < 0) {
        PORTDbits.RD7 = 1;
        dValue *= -1;
    }
    
    // parse the first and second digits
    int digit1, digit2;
    digit1 = dValue / 10;
    digit2 = dValue % 10;
    // only display first digit if it's not zero
    if (digit1 != 0) {
        LATC = sevSeg[digit1];
        if ((sevSeg[digit1] & 0b1) == 1) {
            PORTAbits.RA0 = 1;
        }
        if ((sevSeg[digit1] & 0b10) == 2) {
            PORTAbits.RA1 = 1;
        }
    }
    LATD += sevSeg[digit2];
    
    return;
};

// This function will scan the keypad by turning each column bit high, and 
// seeing which row is pressed. The combination of row and column will tell 
// which value is being pressed. 
enum VALUE scanKeypad(void) {

    //LATB = 0;
    PORTBbits.RB4 = 0;
    PORTBbits.RB5 = 0;
    PORTBbits.RB6 = 0;
    PORTBbits.RB7 = 0;
    __delay_ms(50);
    // scan the first column
    PORTBbits.RB4 = 1;
    if (PORTBbits.RB0 == 1) { return one; }
    if (PORTBbits.RB1 == 1) { return four; }
    if (PORTBbits.RB2 == 1) { return seven; }
    if (PORTBbits.RB3 == 1) { // reset
        display(0);
        __delay_ms(50);
        return RESET;
    }
    PORTBbits.RB4 = 0;

    // scan the second column
    PORTBbits.RB5 = 1;
    if (PORTBbits.RB0 == 1) { 
        return two; 
    }
    else if (PORTBbits.RB1 == 1) { 
        return five; 
    }
    else if (PORTBbits.RB2 == 1) { 
        return eight; 
    }
    else if (PORTBbits.RB3 == 1) { 
        return zero; 
    }
    PORTBbits.RB5 = 0;
    
    // scan the third column
    PORTBbits.RB6 = 1;
    if (PORTBbits.RB0 == 1) { return three; }
    else if (PORTBbits.RB1 == 1) { return six; }
    else if (PORTBbits.RB2 == 1) { return nine; }
    else if (PORTBbits.RB3 == 1) { return COMPUTE; }
    PORTBbits.RB6 = 0;
    
    // scan the fourth column
    PORTBbits.RB7 = 1;
    if (PORTBbits.RB0 == 1) { return ADD; }
    else if (PORTBbits.RB1 == 1) { return SUBTRACT; }
    else if (PORTBbits.RB2 == 1) { return MULTIPLY; }
    else if (PORTBbits.RB3 == 1) { return DIVIDE; }
    PORTBbits.RB7 = 0;
    
    return NOVALUE;
};

// this function parses the operator, and performs the calculation between
// the two operands depending on the selected operator.
int calculate(int val1, int val2, enum VALUE op) {
    switch (op) {
        case ADD:
            return val1 + val2;
        case SUBTRACT:
            return val1 - val2;
        case MULTIPLY:
            return val1 * val2;
        case DIVIDE:
            if (val2 == 0) {
                return 0; // can't divide by 0
            }
            return val1 / val2;
        default:
            return 0;
    }
};