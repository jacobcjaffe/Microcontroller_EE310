;---------------------
; Title: Numpad Counter
;---------------------
; Purpose: The purpose of this program is to change a counter shown by 
; a 7 segment display with a numpad. When "1" is pressed on a numpad. It will 
; decrement if "2" is pressed on the numpad, and it will reset to 0 if "3" is 
; pressed. It goes through the digits "0, 1, 2, 3 ... 9, A, B, ... F" and it
; will loop if it reaches either end.
;
; Inputs: "1", "2", or "3" on the numpad. 
; Outputs: digits on the 7 segment display
; Setup: The Curiosity Board, a 7 segment display, a numpad, 11 resistors, and 
;   wires.
; Computer/OS: For pic18F47K42
; Date: February 24, 2025
; File Dependencies / Libraries: myConfigFile.inc as a header
; Compiler: xc8 v3.0
;   Compile line commands: 
;   make -f nbproject/Makefile-default.mk SUBPROJECTS= .build-conf
;   make  -f nbproject/Makefile-default.mk dist/default/debug/Assignment_6.debug.hex
; Author: Jaocb Jaffe
; Versions:
;       v1.0: Original
;	v1.1: Completed increment and decrement functions
; --------------------
    
;---------------------
; Initialization
;---------------------
#include "./myConfigFile.inc"
#include <xc.inc>

;---------------------
; Program Inputs
;---------------------
 
;---------------------
; Program Constants
;---------------------
// these are the binary representations of the digit on the seven segment
ZER		equ	00111111B
ONE		equ	00000110B
TWO		equ	01011011B
THREE		equ	01001111B
FOUR		equ	01100110B
FIVE		equ	01101101B
SIX		equ	01111101B
SEVEN		equ	00000111B
EIGHT		equ	01111111B
NINE		equ	01101111B
TEN		equ	01110111B
ELEVEN		equ	01111111B
TWELVE		equ	00111001B
THIRTEEN	equ	00111111B
FOURTEEN	equ	01111001B
FIFTEEN		equ	01110001B

// setup values for the delay loop
Inner_loop  equ 200
Outer_loop  equ 200
Third_loop  equ	3

// setup registers for implementing the delay loop
REG10		equ	0x0A
REG11		equ	0x0B
REG12		equ	0x0C
;---------------------
; Main Program
;---------------------
    PSECT absdata,abs,ovrld        ; Do not change
    
 
_initialization: 
    RCALL   _setupOutputPortD
    RCALL   _setupInputPortC
    // store the representations for the digits on seven segment in
    // 0x0100 through 0x010F
    MOVLW	0x01
    MOVWF	FSR0H, 0
    MOVLW	0x00
    MOVWF	FSR0L, 0
    MOVLW	ZER
    MOVWF	POSTINC0
    MOVLW	ONE
    MOVWF	POSTINC0
    MOVLW	TWO
    MOVWF	POSTINC0
    MOVLW	THREE
    MOVWF	POSTINC0
    MOVLW	FOUR
    MOVWF	POSTINC0
    MOVLW	FIVE
    MOVWF	POSTINC0
    MOVLW	SIX
    MOVWF	POSTINC0
    MOVLW	SEVEN
    MOVWF	POSTINC0
    MOVLW	EIGHT
    MOVWF	POSTINC0
    MOVLW	NINE
    MOVWF	POSTINC0
    MOVLW	TEN
    MOVWF	POSTINC0
    MOVLW	ELEVEN
    MOVWF	POSTINC0
    MOVLW	TWELVE
    MOVWF	POSTINC0
    MOVLW	THIRTEEN
    MOVWF	POSTINC0
    MOVLW	FOURTEEN
    MOVWF	POSTINC0
    MOVLW	FIFTEEN
    MOVWF	POSTINC0
    MOVLW	0x00
    MOVWF	FSR0L
    CALL	_displayZero
    
_main:
    // set first row high
    
    BSF		PORTC, 2
    // check each column to see if "1", "2", or "3" is high
    BTFSC	PORTC, 3
    CALL	_increment  
    BTFSC	PORTC, 4
    CALL	_decrement
    BTFSC	PORTC, 5
    CALL	_displayZero
    
    BRA         _main
    
// delay   
_loopDelay:
    MOVLW       Inner_loop
    MOVWF       REG10
    MOVLW       Outer_loop
    MOVWF       REG11
    MOVLW	Third_loop
    MOVWF	REG12
_loop1:
    DECF        REG10,1
    BNZ         _loop1
    MOVLW       Inner_loop
    MOVWF       REG10
    DECF        REG11,1	    
    BNZ         _loop1
    MOVLW	Outer_loop
    MOVWF	REG11
    DECF	REG12,1
    BNZ		_loop1
    RETURN

// clears and sets Port D as the output
_setupOutputPortD:
    // clear all data in port D
    BANKSEL	PORTD
    CLRF	PORTD
    BANKSEL	LATD
    CLRF	LATD
    BANKSEL	ANSELD
    CLRF	ANSELD
    BANKSEL	TRISD
    // set port D as output
    MOVLW	0
    MOVWF	TRISD
    RETURN
 
// clears and sets port C as the input
_setupInputPortC:
    // clears all data in port C
    BANKSEL	PORTC 
    CLRF	PORTC
    BANKSEL	LATC
    CLRF	LATC
    BANKSEL	ANSELC
    CLRF	ANSELC
    BANKSEL	TRISC
    // sets port C as input with port 2 as input
    MOVLW	11111011B
    MOVWF	TRISC 
    RETURN    
    
// increment the value displayed on 7 segment
_increment:
    // delay
    CALL	_loopDelay
    // if display is at "F", go back to "0"
    MOVFF	FSR0L, WREG
    SUBLW	0x0F
    BNZ		_displayNext
    MOVLW	0xFF
    MOVWF	FSR0L
    MOVLW	0x00
    MOVWF	FSR0H
// display the next value by writing to output, Latch D
_displayNext:
    MOVFF	PREINC0, WREG
    MOVWF	LATD
    RETURN
    
// decrement the value displayed on 7 segment
_decrement:
    // delay
    CALL	_loopDelay
    // if display is at "0", go back to "F"
    MOVFF	FSR0L, WREG
    SUBLW	0x00
    BNZ		_displayPrev
    MOVLW	0x10
    MOVWF	FSR0L
    MOVLW	0x01
    MOVWF	FSR0H
// display the previous value by writing to output, Latch D
_displayPrev:
    MOVLW	0x01
    SUBWF	FSR0L
    MOVFF	INDF0, WREG
    MOVWF	LATD
    RETURN

// change display to "0"
_displayZero:
    // delay
    CALL	_loopDelay
    MOVLW	0x00
    MOVWF	FSR0L
    MOVFF	INDF0, LATD
    RETURN
    END


