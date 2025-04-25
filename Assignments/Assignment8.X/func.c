#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// function to setup use of interrupts
void Initialize (void)
{
    // Enable high priority interrupts using bits in INTCON0
    // Enable low priority interrupts using bits in INTCON0
    INTCON0bits.GIEH = 1;
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

    // Set IVTBASEU to 0x00 
    // Set IVTBASEH to  0x40; 
    // Set IVTBASEL to 0x08; 
    IVTBASEU = 0;
    IVTBASEH = 0x40;
    IVTBASEL = 0x08;
};