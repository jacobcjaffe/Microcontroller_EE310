//-----------------------------
// Title: Cooling System
//-----------------------------
// Purpose: This program emulates the behavior of a cooling system. It takes a 
// temperature from the user, compares it to the outside reference temperature. 
// If the reference temperature is greater, the heater is turned on, if the 
// measured temperature is greater, the cooler is turned on, and if they're equal,
// both the heater and cooler are turned off.
//
// Dependencies: NONE
// Compiler: pic-as (v3.0)
// Author: Jacob Jaffe
// OUTPUTS: Port D.1 is the output for the heater, and Port D.2 is the output
// for the cooler. 
// INPUTS: The inputs are the macros, measuredTempInput and referenceTempInput,
// used for the measured temperature and reference temperature respectively.  
// Versions:
//  	V1.0: 3/11/2025 - first version, successfully converted temps to BCD
//	
//-----------------------------

;#include ".\myConfigFile.inc"
#include <xc.inc>

;---------------------
; Program Inputs
;---------------------
#define	    measTempInput	45 ; this is the measured temperature input
#define	    refTempInput	25; this is the reference temperature input
 
;---------------------
; Program Constants
;---------------------
REG10	    equ     0x10
REG11	    equ     0x11
REG01	    equ     0x01
refTemp	    equ	    0x20    ; data memory location of reference temperature
measTemp    equ	    0x21    ; data memory location of measured temperature
contReg	    equ	    0x22    ; data memory location of the contReg
refTempH    equ	    0x62    ; The 3 digits for the BCD of the ref temp
refTempM    equ	    0x61    
refTempL    equ	    0x60
measTempH   equ	    0x72    ; The 3 digits for the BCD of the meas temp
measTempM   equ	    0x71
measTempL   equ	    0x70

;---------------------
; Definitions
;---------------------
#define SWITCH		LATD,2  
#define LED_HOT		PORTD,1
#define LED_COOL	PORTD,2

;---------------------
; Main Program
;---------------------
    PSECT absdata,abs,ovrld        
    
    ORG         0x20            ; begin code at 0x20 in program memory
    MOVLW	0x00		; set port D as output
    MOVWF	TRISD,0
    MOVLW	measTempInput	; place temperature inputs into data memory
    MOVWF	measTemp, 0
    MOVLW	refTempInput
    MOVWF	refTemp, 0

// Converting measTemp to BCD			
    MOVLW	measTempInput
    MOVWF	0x25
    BTFSC	0x25, 7		; use 2's complement if meas is negative
    COMF	0x25, 1
_measTempToBCDH:		; subtract 100 until negative to get high digit
    MOVLW	100	
    SUBWF	0x25, 0
    BN		_measTempToBCDM	
    MOVWF	0x25
    INCF	measTempH
    BRA		_measTempToBCDH
_measTempToBCDM:		; subtract 10 until negative to get medium digit
    MOVLW	10
    SUBWF	0x25, 0
    BN		_measTempToBCDL	
    MOVWF	0x25
    INCF	measTempM
    BRA		_measTempToBCDM
_measTempToBCDL:
    MOVFF	0x25, measTempL	; the remainder will be just the ones digit

// Converting refTemp to BCD			
    MOVLW	refTempInput
    MOVWF	0x25
_refTempToBCDH:			; subtract 100 until negative to get high digit
    MOVLW	100
    SUBWF	0x25, 0
    BN		_refTempToBCDM	
    MOVWF	0x25
    INCF	refTempH
    BRA		_refTempToBCDH
_refTempToBCDM:			; subtract 10 until negative to get medium digit
    MOVLW	10
    SUBWF	0x25, 0
    BN		_refTempToBCDL	
    MOVWF	0x25
    INCF	refTempM
    BRA		_refTempToBCDM
_refTempToBCDL:
    MOVFF	0x25, refTempL	; the remainder will be just the ones digit

    SLEEP
END



