#ifndef INIT_H
#define	INIT_H

#include <xc.h>
// function to setup use of interrupts
void Initialize (void)
{
    
    // Initialize the interrupt settings
    // Enable high priority interrupts using bits in INTCON0
    INTCON0bits.GIEH = 1;
    // Enable low priority interrupts using bits in INTCON0
    INTCON0bits.GIEL = 1;
    // Enable interrupt priority bit in INTCON0
    INTCON0bits.IPEN = 1;
    // Interrupt on rising edge of INT0 pin using bits in INTCON0
    INTCON0bits.INT0EDG = 1;
    // Set the interrupt high priority (IP) for INT0 - INT0IP
    IPR1bits.INT0IP = 1;
    // Enable the interrupt (IE) for INT0
    PIE1bits.INT0IE = 1;
    //Clear interrupt flag
    PIR1bits.INT0IF = 0; 

    IVTBASEU = 0;
    IVTBASEH = 0x40;
    IVTBASEL = 0x08;
    
    
    // initialize the inputs and output ports
    TRISA = 0xFF;
    TRISD = 0x00; // output for LCD
    //TRISC = 0b00000000; 
    TRISC = 0x00;
    //TRISB = 0b10000011; // all outputs, RB6 and RB7 are input from photores,
                        // RB0 is interrupt
    TRISB = 0xFF;
    TRISE = 0xFF;
    ADCON0 = 0;
    ADCON1 = 0;
    ADCON2 = 0;
    ANSELA = 0;
    ANSELB = 0;
    ANSELC = 0;
    ANSELD = 0;
    ANSELE = 0;
    WPUB = 0xFF;
};

#endif	/* INIT_H */

