;---------------------
; Title: Numpad Counter
;---------------------
; Program Details: The purpose of this program is to change a counter shown by 
; a 7 segment display with a numpad. When "1" is pressed on a numpad. It will 
; decrement if "2" is pressed on the numpad, and it will reset to 0 if "3" is 
; pressed. It goes through the digits "0, 1, 2, 3 ... 9, A, B, ... F" and it
; will loop if it reaches either end.
;
; Inputs: "1", "2", or "3" on the numpad. 
; Outputs: digits on the 7 segment display
; Setup: The Curiosity Board, a 7 segment display, a numpad, 11 resistors, and 
;   wires.   
; Date: February 24, 2025
; File Dependencies / Libraries: It is required to include the 
;   myConfigFile.inc in the Header Folder
; Compiler: xc8 v3.0
; Author: Jaocb Jaffe
; Versions:
;       V1.0: Original
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
// these are the hex representations of the digit on the seven segment display
ZER		equ	0x01//00111111b
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
Inner_loop  equ 175
Outer_loop  equ 230

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
    MOVLW   0x01
    MOVWF   FSR0H, 0
    MOVLW   0x00
    MOVWF   FSR0L, 0
    MOVLW   ZER
    MOVWF   POSTINC0
    MOVLW   ONE
    MOVWF   POSTINC0
    MOVLW   TWO
    MOVWF   POSTINC0
    MOVLW   THREE
    MOVWF   POSTINC0
    MOVLW   FOUR
    MOVWF   POSTINC0
    MOVLW   FIVE
    MOVWF   POSTINC0
    MOVLW   SIX
    MOVWF   POSTINC0
    MOVLW   SEVEN
    MOVWF   POSTINC0
    MOVLW   EIGHT
    MOVWF   POSTINC0
    MOVLW   NINE
    MOVWF   POSTINC0
    MOVLW   TEN
    MOVWF   POSTINC0
    MOVLW   ELEVEN
    MOVWF   POSTINC0
    MOVLW   TWELVE
    MOVWF   POSTINC0
    MOVLW   THIRTEEN
    MOVWF   POSTINC0
    MOVLW   FOURTEEN
    MOVWF   POSTINC0
    MOVLW   FIFTEEN
    MOVWF   POSTINC0
    
_main:
    CALL	_loopDelay ; we can use RCALL
    BRA         _main
    
;-----The Delay Subroutine    
_loopDelay:
    MOVLW       Inner_loop
    MOVWF       REG10
    MOVLW       Outer_loop
    MOVWF       REG11
_loop1:
    DECF        REG10,1
    BNZ         _loop1
    MOVLW       Inner_loop ; Re-initialize the inner loop for when the outer loop decrements.
    MOVWF       REG10
    DECF        REG11,1 // outer loop
    BNZ         _loop1
    DECF	REG12,1
    BNZ		_loop1
    RETURN

 
_setupOutputPortD: // setting up Port D to output to 7 segment
    BANKSEL	PORTD ;
    CLRF	PORTD ;Init PORTA
    BANKSEL	LATD ;Data Latch
    CLRF	LATD ;
    BANKSEL	ANSELD ;
    CLRF	ANSELD ;digital I/O
    BANKSEL	TRISD ;
    MOVLW	0 ; set Port D as an output
    MOVWF	TRISD ;and set RD0 as ouput
    RETURN
 
_setupInputPortC:
    BANKSEL	PORTC 
    CLRF	PORTC ;Init PORTC
    BANKSEL	LATC ;Data Latch
    CLRF	LATC ;
    BANKSEL	ANSELC ;
    CLRF	ANSELC ;digital I/O
    BANKSEL	TRISC
    MOVLW	0xFF ; set Port C as output
    MOVWF	TRISC 
    RETURN    
    
    END


