/* 
 * File:   init.h
 * Author: Jacob
 *
 * Created on April 29, 2025, 2:07 AM
 */

#ifndef INIT_H
#define	INIT_H

void Initialize(void) {
    TRISD = 0x00; // port D used for LCD data output
    TRISC = 0b11000111; // RC3 and RC4 for LCD control
    TRISE = 0xFF;
    ANSELE = 0x00;
    ANSELD = 0x00;
    ANSELC = 0x00;
    
    TRISAbits.TRISA0 = 1; // RA0 as input
    ANSELAbits.ANSELA0 = 1; // set RA0 to analog
    
    // configure the ADC
    ADCON0bits.FM = 1;
    ADCON0bits.CS = 1;
    ADCLK = 0x00;
    ADPCH = 0x00;
    ADCAP = 0x00;
    ADREF = 0x00;
    ADPREL = 0x00;
    ADPREH = 0x00;
    ADACQL = 0x00;
    ADACQH = 0x00;
    ADCON0bits.ON = 1; // turn on ADC
    
    
    // setup the external interrupt
    IOCCPbits.IOCCP2 = 1; // use pin RC2
    PIE0bits.IOCIE = 1;
    INTCON0bits.IPEN = 1; // enable high priority interrupt
    INTCON0bits.GIEH = 1;
    IOCCFbits.IOCCF2 = 0;
    WPUCbits.WPUC2 = 1;
    
}
void __interrupt(irq(IRQ_IOC)) ISR(void) {
    if (IOCCFbits.IOCCF2) {
        // Handle the RC1 (IOCC1) interrupt event
        for (int i = 0; i < 30; i++) {
            LATC5 = ~LATC5;
            //__delay_ms(300);
        }
        LATC5 = 0;
        IOCCFbits.IOCCF2 = 0; // Clear the flag after handling
        
    }
}

#endif	/* INIT_H */

