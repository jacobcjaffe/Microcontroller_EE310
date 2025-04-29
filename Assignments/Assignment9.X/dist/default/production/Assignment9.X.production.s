subtitle "Microchip MPLAB XC8 C Compiler v3.00 (Free license) build 20241204225717 Og1 "

pagewidth 120

	opt flic

	processor	18F47K42
include "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\18f47k42.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
skiprom24 macro arg1
	btfsc arg1,7
endm
	global	__ramtop
	global	__accesstop
# 250 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
STATUS_CSHAD equ 03880h ;# 
# 339 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
WREG_CSHAD equ 03881h ;# 
# 359 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
BSR_CSHAD equ 03882h ;# 
# 366 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SHADCON equ 03883h ;# 
# 386 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
STATUS_SHAD equ 03884h ;# 
# 475 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
WREG_SHAD equ 03885h ;# 
# 495 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
BSR_SHAD equ 03886h ;# 
# 502 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PCLATH_SHAD equ 03887h ;# 
# 522 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PCLATU_SHAD equ 03888h ;# 
# 542 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR0SH equ 03889h ;# 
# 549 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR0L_SHAD equ 03889h ;# 
# 569 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR0H_SHAD equ 0388Ah ;# 
# 589 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR1SH equ 0388Bh ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR1L_SHAD equ 0388Bh ;# 
# 616 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR1H_SHAD equ 0388Ch ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR2SH equ 0388Dh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR2L_SHAD equ 0388Dh ;# 
# 663 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR2H_SHAD equ 0388Eh ;# 
# 683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PRODSH equ 0388Fh ;# 
# 690 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PRODL_SHAD equ 0388Fh ;# 
# 710 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PRODH_SHAD equ 03890h ;# 
# 730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IVTADL equ 0389Dh ;# 
# 750 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IVTADH equ 0389Eh ;# 
# 770 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IVTADU equ 0389Fh ;# 
# 790 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
WDTCON0 equ 0395Bh ;# 
# 865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
WDTCON1 equ 0395Ch ;# 
# 959 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
WDTPSL equ 0395Dh ;# 
# 1087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
WDTPSH equ 0395Eh ;# 
# 1215 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
WDTTMR equ 0395Fh ;# 
# 1303 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CRCDATA equ 03960h ;# 
# 1310 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CRCDATL equ 03960h ;# 
# 1372 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CRCDATH equ 03961h ;# 
# 1434 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CRCACC equ 03962h ;# 
# 1441 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CRCACCL equ 03962h ;# 
# 1503 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CRCACCH equ 03963h ;# 
# 1565 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CRCSHFT equ 03964h ;# 
# 1572 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CRCSHIFTL equ 03964h ;# 
# 1634 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CRCSHIFTH equ 03965h ;# 
# 1696 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CRCXOR equ 03966h ;# 
# 1703 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CRCXORL equ 03966h ;# 
# 1760 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CRCXORH equ 03967h ;# 
# 1822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CRCCON0 equ 03968h ;# 
# 1882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CRCCON1 equ 03969h ;# 
# 1960 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SCANLADR equ 03976h ;# 
# 1967 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SCANLADRL equ 03976h ;# 
# 2095 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SCANLADRH equ 03977h ;# 
# 2223 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SCANLADRU equ 03978h ;# 
# 2329 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SCANHADR equ 03979h ;# 
# 2336 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SCANHADRL equ 03979h ;# 
# 2464 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SCANHADRH equ 0397Ah ;# 
# 2592 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SCANHADRU equ 0397Bh ;# 
# 2696 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SCANCON0 equ 0397Ch ;# 
# 2747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SCANTRIG equ 0397Dh ;# 
# 2767 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IPR0 equ 03980h ;# 
# 2829 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IPR1 equ 03981h ;# 
# 2891 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IPR2 equ 03982h ;# 
# 2953 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IPR3 equ 03983h ;# 
# 3015 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IPR4 equ 03984h ;# 
# 3072 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IPR5 equ 03985h ;# 
# 3134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IPR6 equ 03986h ;# 
# 3196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IPR7 equ 03987h ;# 
# 3241 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IPR8 equ 03988h ;# 
# 3268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IPR9 equ 03989h ;# 
# 3306 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IPR10 equ 0398Ah ;# 
# 3332 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIE0 equ 03990h ;# 
# 3394 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIE1 equ 03991h ;# 
# 3456 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIE2 equ 03992h ;# 
# 3518 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIE3 equ 03993h ;# 
# 3580 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIE4 equ 03994h ;# 
# 3637 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIE5 equ 03995h ;# 
# 3699 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIE6 equ 03996h ;# 
# 3761 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIE7 equ 03997h ;# 
# 3806 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIE8 equ 03998h ;# 
# 3833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIE9 equ 03999h ;# 
# 3871 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIE10 equ 0399Ah ;# 
# 3897 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIR0 equ 039A0h ;# 
# 3959 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIR1 equ 039A1h ;# 
# 4021 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIR2 equ 039A2h ;# 
# 4083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIR3 equ 039A3h ;# 
# 4145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIR4 equ 039A4h ;# 
# 4202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIR5 equ 039A5h ;# 
# 4264 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIR6 equ 039A6h ;# 
# 4326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIR7 equ 039A7h ;# 
# 4371 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIR8 equ 039A8h ;# 
# 4398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIR9 equ 039A9h ;# 
# 4436 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PIR10 equ 039AAh ;# 
# 4462 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PMD0 equ 039C0h ;# 
# 4524 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PMD1 equ 039C1h ;# 
# 4586 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PMD2 equ 039C2h ;# 
# 4631 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PMD3 equ 039C3h ;# 
# 4693 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PMD4 equ 039C4h ;# 
# 4726 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PMD5 equ 039C5h ;# 
# 4771 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PMD6 equ 039C6h ;# 
# 4821 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PMD7 equ 039C7h ;# 
# 4847 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
BORCON equ 039D0h ;# 
# 4874 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
VREGCON equ 039D1h ;# 
# 4895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CPUDOZE equ 039D8h ;# 
# 4960 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
OSCCON1 equ 039D9h ;# 
# 5030 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
OSCCON2 equ 039DAh ;# 
# 5100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
OSCCON3 equ 039DBh ;# 
# 5140 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
OSCSTAT equ 039DCh ;# 
# 5145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
OSCSTAT1 equ 039DCh ;# 
# 5252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
OSCEN equ 039DDh ;# 
# 5303 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
OSCTUNE equ 039DEh ;# 
# 5407 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
OSCFRQ equ 039DFh ;# 
# 5487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NVMADRL equ 039E0h ;# 
# 5615 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NVMADRH equ 039E1h ;# 
# 5671 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NVMDAT equ 039E3h ;# 
# 5799 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NVMCON1 equ 039E5h ;# 
# 5889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NVMCON2 equ 039E6h ;# 
# 5909 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PRLOCK equ 039EFh ;# 
# 5929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ISRPR equ 039F1h ;# 
# 5997 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
MAINPR equ 039F2h ;# 
# 6065 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1PR equ 039F3h ;# 
# 6133 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2PR equ 039F4h ;# 
# 6201 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SCANPR equ 039F7h ;# 
# 6269 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RA0PPS equ 03A00h ;# 
# 6319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RA1PPS equ 03A01h ;# 
# 6369 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RA2PPS equ 03A02h ;# 
# 6419 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RA3PPS equ 03A03h ;# 
# 6469 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RA4PPS equ 03A04h ;# 
# 6519 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RA5PPS equ 03A05h ;# 
# 6569 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RA6PPS equ 03A06h ;# 
# 6619 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RA7PPS equ 03A07h ;# 
# 6669 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RB0PPS equ 03A08h ;# 
# 6719 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RB1PPS equ 03A09h ;# 
# 6769 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RB2PPS equ 03A0Ah ;# 
# 6819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RB3PPS equ 03A0Bh ;# 
# 6869 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RB4PPS equ 03A0Ch ;# 
# 6919 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RB5PPS equ 03A0Dh ;# 
# 6969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RB6PPS equ 03A0Eh ;# 
# 7019 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RB7PPS equ 03A0Fh ;# 
# 7069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RC0PPS equ 03A10h ;# 
# 7119 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RC1PPS equ 03A11h ;# 
# 7169 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RC2PPS equ 03A12h ;# 
# 7219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RC3PPS equ 03A13h ;# 
# 7269 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RC4PPS equ 03A14h ;# 
# 7319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RC5PPS equ 03A15h ;# 
# 7369 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RC6PPS equ 03A16h ;# 
# 7419 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RC7PPS equ 03A17h ;# 
# 7469 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RD0PPS equ 03A18h ;# 
# 7519 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RD1PPS equ 03A19h ;# 
# 7569 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RD2PPS equ 03A1Ah ;# 
# 7619 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RD3PPS equ 03A1Bh ;# 
# 7669 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RD4PPS equ 03A1Ch ;# 
# 7719 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RD5PPS equ 03A1Dh ;# 
# 7769 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RD6PPS equ 03A1Eh ;# 
# 7819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RD7PPS equ 03A1Fh ;# 
# 7869 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RE0PPS equ 03A20h ;# 
# 7919 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RE1PPS equ 03A21h ;# 
# 7969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RE2PPS equ 03A22h ;# 
# 8019 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ANSELA equ 03A40h ;# 
# 8081 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
WPUA equ 03A41h ;# 
# 8143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ODCONA equ 03A42h ;# 
# 8205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SLRCONA equ 03A43h ;# 
# 8267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
INLVLA equ 03A44h ;# 
# 8329 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IOCAP equ 03A45h ;# 
# 8391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IOCAN equ 03A46h ;# 
# 8453 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IOCAF equ 03A47h ;# 
# 8515 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ANSELB equ 03A50h ;# 
# 8577 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
WPUB equ 03A51h ;# 
# 8639 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ODCONB equ 03A52h ;# 
# 8701 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SLRCONB equ 03A53h ;# 
# 8763 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
INLVLB equ 03A54h ;# 
# 8825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IOCBP equ 03A55h ;# 
# 8887 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IOCBN equ 03A56h ;# 
# 8949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IOCBF equ 03A57h ;# 
# 9011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RB1I2C equ 03A5Ah ;# 
# 9119 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RB2I2C equ 03A5Bh ;# 
# 9227 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ANSELC equ 03A60h ;# 
# 9289 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
WPUC equ 03A61h ;# 
# 9351 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ODCONC equ 03A62h ;# 
# 9413 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SLRCONC equ 03A63h ;# 
# 9475 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
INLVLC equ 03A64h ;# 
# 9537 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IOCCP equ 03A65h ;# 
# 9599 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IOCCN equ 03A66h ;# 
# 9661 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IOCCF equ 03A67h ;# 
# 9723 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RC3I2C equ 03A6Ah ;# 
# 9831 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RC4I2C equ 03A6Bh ;# 
# 9939 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ANSELD equ 03A70h ;# 
# 10001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
WPUD equ 03A71h ;# 
# 10063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ODCOND equ 03A72h ;# 
# 10125 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SLRCOND equ 03A73h ;# 
# 10187 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
INLVLD equ 03A74h ;# 
# 10249 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RD0I2C equ 03A7Ah ;# 
# 10357 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
RD1I2C equ 03A7Bh ;# 
# 10465 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ANSELE equ 03A80h ;# 
# 10497 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
WPUE equ 03A81h ;# 
# 10535 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ODCONE equ 03A82h ;# 
# 10567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SLRCONE equ 03A83h ;# 
# 10599 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
INLVLE equ 03A84h ;# 
# 10637 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IOCEP equ 03A85h ;# 
# 10658 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IOCEN equ 03A86h ;# 
# 10679 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IOCEF equ 03A87h ;# 
# 10700 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PPSLOCK equ 03ABFh ;# 
# 10720 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
INT0PPS equ 03AC0h ;# 
# 10740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
INT1PPS equ 03AC1h ;# 
# 10760 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
INT2PPS equ 03AC2h ;# 
# 10780 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T0CKIPPS equ 03AC3h ;# 
# 10800 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T1CKIPPS equ 03AC4h ;# 
# 10820 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T1GPPS equ 03AC5h ;# 
# 10840 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T3CKIPPS equ 03AC6h ;# 
# 10860 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T3GPPS equ 03AC7h ;# 
# 10880 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T5CKIPPS equ 03AC8h ;# 
# 10900 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T5GPPS equ 03AC9h ;# 
# 10920 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T2INPPS equ 03ACAh ;# 
# 10940 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T4INPPS equ 03ACBh ;# 
# 10960 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T6INPPS equ 03ACCh ;# 
# 10980 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCP1PPS equ 03ACDh ;# 
# 11000 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCP2PPS equ 03ACEh ;# 
# 11020 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCP3PPS equ 03ACFh ;# 
# 11040 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCP4PPS equ 03AD0h ;# 
# 11060 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1WINPPS equ 03AD1h ;# 
# 11080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1SIGPPS equ 03AD2h ;# 
# 11100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG1INPPS equ 03AD3h ;# 
# 11120 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG2INPPS equ 03AD4h ;# 
# 11140 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG3INPPS equ 03AD5h ;# 
# 11160 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
MD1CARLPPS equ 03AD6h ;# 
# 11180 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
MD1CARHPPS equ 03AD7h ;# 
# 11200 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
MD1SRCPPS equ 03AD8h ;# 
# 11220 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLCIN0PPS equ 03AD9h ;# 
# 11240 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLCIN1PPS equ 03ADAh ;# 
# 11260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLCIN2PPS equ 03ADBh ;# 
# 11280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLCIN3PPS equ 03ADCh ;# 
# 11300 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADACTPPS equ 03ADDh ;# 
# 11320 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1SCKPPS equ 03ADEh ;# 
# 11340 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1SDIPPS equ 03ADFh ;# 
# 11360 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1SSPPS equ 03AE0h ;# 
# 11380 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1SCLPPS equ 03AE1h ;# 
# 11400 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1SDAPPS equ 03AE2h ;# 
# 11420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2SCLPPS equ 03AE3h ;# 
# 11440 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2SDAPPS equ 03AE4h ;# 
# 11460 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1RXPPS equ 03AE5h ;# 
# 11480 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1CTSPPS equ 03AE6h ;# 
# 11500 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2RXPPS equ 03AE8h ;# 
# 11520 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2CTSPPS equ 03AE9h ;# 
# 11540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2BUF equ 03BC9h ;# 
# 11668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2DCNT equ 03BCAh ;# 
# 11675 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2DCNTL equ 03BCAh ;# 
# 11803 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2DCNTH equ 03BCBh ;# 
# 11883 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2DPTR equ 03BCCh ;# 
# 11890 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2DPTRL equ 03BCCh ;# 
# 12018 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2DPTRH equ 03BCDh ;# 
# 12146 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2DSZ equ 03BCEh ;# 
# 12153 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2DSZL equ 03BCEh ;# 
# 12281 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2DSZH equ 03BCFh ;# 
# 12361 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2DSA equ 03BD0h ;# 
# 12368 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2DSAL equ 03BD0h ;# 
# 12496 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2DSAH equ 03BD1h ;# 
# 12624 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SCNT equ 03BD2h ;# 
# 12631 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SCNTL equ 03BD2h ;# 
# 12759 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SCNTH equ 03BD3h ;# 
# 12841 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SPTR equ 03BD4h ;# 
# 12848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SPTRL equ 03BD4h ;# 
# 12976 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SPTRH equ 03BD5h ;# 
# 13104 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SPTRU equ 03BD6h ;# 
# 13208 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SSZ equ 03BD7h ;# 
# 13215 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SSZL equ 03BD7h ;# 
# 13343 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SSZH equ 03BD8h ;# 
# 13425 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SSA equ 03BD9h ;# 
# 13432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SSAL equ 03BD9h ;# 
# 13560 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SSAH equ 03BDAh ;# 
# 13688 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SSAU equ 03BDBh ;# 
# 13792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2CON0 equ 03BDCh ;# 
# 13872 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2CON1 equ 03BDDh ;# 
# 13916 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2AIRQ equ 03BDEh ;# 
# 14032 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA2SIRQ equ 03BDFh ;# 
# 14148 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1BUF equ 03BE9h ;# 
# 14276 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1DCNT equ 03BEAh ;# 
# 14283 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1DCNTL equ 03BEAh ;# 
# 14411 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1DCNTH equ 03BEBh ;# 
# 14491 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1DPTR equ 03BECh ;# 
# 14498 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1DPTRL equ 03BECh ;# 
# 14626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1DPTRH equ 03BEDh ;# 
# 14754 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1DSZ equ 03BEEh ;# 
# 14761 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1DSZL equ 03BEEh ;# 
# 14889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1DSZH equ 03BEFh ;# 
# 14969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1DSA equ 03BF0h ;# 
# 14976 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1DSAL equ 03BF0h ;# 
# 15104 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1DSAH equ 03BF1h ;# 
# 15232 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SCNT equ 03BF2h ;# 
# 15239 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SCNTL equ 03BF2h ;# 
# 15367 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SCNTH equ 03BF3h ;# 
# 15449 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SPTR equ 03BF4h ;# 
# 15456 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SPTRL equ 03BF4h ;# 
# 15584 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SPTRH equ 03BF5h ;# 
# 15712 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SPTRU equ 03BF6h ;# 
# 15816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SSZ equ 03BF7h ;# 
# 15823 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SSZL equ 03BF7h ;# 
# 15951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SSZH equ 03BF8h ;# 
# 16033 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SSA equ 03BF9h ;# 
# 16040 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SSAL equ 03BF9h ;# 
# 16168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SSAH equ 03BFAh ;# 
# 16296 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SSAU equ 03BFBh ;# 
# 16400 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1CON0 equ 03BFCh ;# 
# 16480 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1CON1 equ 03BFDh ;# 
# 16524 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1AIRQ equ 03BFEh ;# 
# 16640 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DMA1SIRQ equ 03BFFh ;# 
# 16756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC4CON equ 03C56h ;# 
# 16884 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC4POL equ 03C57h ;# 
# 16962 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC4SEL0 equ 03C58h ;# 
# 17090 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC4SEL1 equ 03C59h ;# 
# 17218 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC4SEL2 equ 03C5Ah ;# 
# 17346 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC4SEL3 equ 03C5Bh ;# 
# 17474 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC4GLS0 equ 03C5Ch ;# 
# 17586 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC4GLS1 equ 03C5Dh ;# 
# 17698 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC4GLS2 equ 03C5Eh ;# 
# 17810 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC4GLS3 equ 03C5Fh ;# 
# 17922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC3CON equ 03C60h ;# 
# 18050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC3POL equ 03C61h ;# 
# 18128 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC3SEL0 equ 03C62h ;# 
# 18256 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC3SEL1 equ 03C63h ;# 
# 18384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC3SEL2 equ 03C64h ;# 
# 18512 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC3SEL3 equ 03C65h ;# 
# 18640 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC3GLS0 equ 03C66h ;# 
# 18752 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC3GLS1 equ 03C67h ;# 
# 18864 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC3GLS2 equ 03C68h ;# 
# 18976 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC3GLS3 equ 03C69h ;# 
# 19088 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC2CON equ 03C6Ah ;# 
# 19216 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC2POL equ 03C6Bh ;# 
# 19294 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC2SEL0 equ 03C6Ch ;# 
# 19422 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC2SEL1 equ 03C6Dh ;# 
# 19550 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC2SEL2 equ 03C6Eh ;# 
# 19678 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC2SEL3 equ 03C6Fh ;# 
# 19806 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC2GLS0 equ 03C70h ;# 
# 19918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC2GLS1 equ 03C71h ;# 
# 20030 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC2GLS2 equ 03C72h ;# 
# 20142 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC2GLS3 equ 03C73h ;# 
# 20254 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC1CON equ 03C74h ;# 
# 20382 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC1POL equ 03C75h ;# 
# 20460 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC1SEL0 equ 03C76h ;# 
# 20588 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC1SEL1 equ 03C77h ;# 
# 20716 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC1SEL2 equ 03C78h ;# 
# 20844 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC1SEL3 equ 03C79h ;# 
# 20972 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC1GLS0 equ 03C7Ah ;# 
# 21084 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC1GLS1 equ 03C7Bh ;# 
# 21196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC1GLS2 equ 03C7Ch ;# 
# 21308 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLC1GLS3 equ 03C7Dh ;# 
# 21420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLCDATA0 equ 03C7Eh ;# 
# 21458 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLKRCON equ 03CE5h ;# 
# 21544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CLKRCLK equ 03CE6h ;# 
# 21624 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
MD1CON0 equ 03CFAh ;# 
# 21692 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
MD1CON1 equ 03CFBh ;# 
# 21758 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
MD1SRC equ 03CFCh ;# 
# 21850 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
MD1CARL equ 03CFDh ;# 
# 21942 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
MD1CARH equ 03CFEh ;# 
# 22034 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1RXB equ 03D10h ;# 
# 22104 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1TXB equ 03D11h ;# 
# 22174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1TCNT equ 03D12h ;# 
# 22181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1TCNTL equ 03D12h ;# 
# 22201 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1TCNTH equ 03D13h ;# 
# 22221 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1CON0 equ 03D14h ;# 
# 22287 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1CON1 equ 03D15h ;# 
# 22389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1CON2 equ 03D16h ;# 
# 22467 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1STATUS equ 03D17h ;# 
# 22549 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1TWIDTH equ 03D18h ;# 
# 22589 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1BAUD equ 03D19h ;# 
# 22659 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1INTF equ 03D1Ah ;# 
# 22751 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1INTE equ 03D1Bh ;# 
# 22843 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SPI1CLK equ 03D1Ch ;# 
# 22923 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2RXB equ 03D54h ;# 
# 22943 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2TXB equ 03D55h ;# 
# 22963 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2CNT equ 03D56h ;# 
# 23033 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2ADB0 equ 03D57h ;# 
# 23053 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2ADB1 equ 03D58h ;# 
# 23073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2ADR0 equ 03D59h ;# 
# 23093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2ADR1 equ 03D5Ah ;# 
# 23114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2ADR2 equ 03D5Bh ;# 
# 23134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2ADR3 equ 03D5Ch ;# 
# 23155 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2CON0 equ 03D5Dh ;# 
# 23232 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2CON1 equ 03D5Eh ;# 
# 23289 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2CON2 equ 03D5Fh ;# 
# 23365 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2ERR equ 03D60h ;# 
# 23455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2STAT0 equ 03D61h ;# 
# 23545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2STAT1 equ 03D62h ;# 
# 23592 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2PIR equ 03D63h ;# 
# 23694 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2PIE equ 03D64h ;# 
# 23796 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2CLK equ 03D65h ;# 
# 23876 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C2BTO equ 03D66h ;# 
# 23944 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1RXB equ 03D6Ah ;# 
# 23964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1TXB equ 03D6Bh ;# 
# 23984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1CNT equ 03D6Ch ;# 
# 24054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1ADB0 equ 03D6Dh ;# 
# 24074 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1ADB1 equ 03D6Eh ;# 
# 24094 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1ADR0 equ 03D6Fh ;# 
# 24114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1ADR1 equ 03D70h ;# 
# 24135 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1ADR2 equ 03D71h ;# 
# 24155 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1ADR3 equ 03D72h ;# 
# 24176 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1CON0 equ 03D73h ;# 
# 24253 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1CON1 equ 03D74h ;# 
# 24310 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1CON2 equ 03D75h ;# 
# 24386 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1ERR equ 03D76h ;# 
# 24476 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1STAT0 equ 03D77h ;# 
# 24566 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1STAT1 equ 03D78h ;# 
# 24613 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1PIR equ 03D79h ;# 
# 24715 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1PIE equ 03D7Ah ;# 
# 24817 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1CLK equ 03D7Bh ;# 
# 24897 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
I2C1BTO equ 03D7Ch ;# 
# 24965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2RXB equ 03DD0h ;# 
# 24970 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2RXBL equ 03DD0h ;# 
# 25003 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2TXB equ 03DD2h ;# 
# 25008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2TXBL equ 03DD2h ;# 
# 25041 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2P1 equ 03DD4h ;# 
# 25048 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2P1L equ 03DD4h ;# 
# 25068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2P2 equ 03DD6h ;# 
# 25075 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2P2L equ 03DD6h ;# 
# 25095 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2P3 equ 03DD8h ;# 
# 25102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2P3L equ 03DD8h ;# 
# 25122 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2CON0 equ 03DDAh ;# 
# 25238 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2CON1 equ 03DDBh ;# 
# 25318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2CON2 equ 03DDCh ;# 
# 25450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2BRG equ 03DDDh ;# 
# 25457 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2BRGL equ 03DDDh ;# 
# 25477 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2BRGH equ 03DDEh ;# 
# 25497 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2FIFO equ 03DDFh ;# 
# 25627 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2UIR equ 03DE0h ;# 
# 25683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2ERRIR equ 03DE1h ;# 
# 25795 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U2ERRIE equ 03DE2h ;# 
# 25907 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1RXB equ 03DE8h ;# 
# 25912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1RXBL equ 03DE8h ;# 
# 25945 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1RXCHK equ 03DE9h ;# 
# 25965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1TXB equ 03DEAh ;# 
# 25970 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1TXBL equ 03DEAh ;# 
# 26003 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1TXCHK equ 03DEBh ;# 
# 26023 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1P1 equ 03DECh ;# 
# 26030 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1P1L equ 03DECh ;# 
# 26050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1P1H equ 03DEDh ;# 
# 26070 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1P2 equ 03DEEh ;# 
# 26077 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1P2L equ 03DEEh ;# 
# 26097 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1P2H equ 03DEFh ;# 
# 26117 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1P3 equ 03DF0h ;# 
# 26124 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1P3L equ 03DF0h ;# 
# 26144 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1P3H equ 03DF1h ;# 
# 26164 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1CON0 equ 03DF2h ;# 
# 26292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1CON1 equ 03DF3h ;# 
# 26372 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1CON2 equ 03DF4h ;# 
# 26514 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1BRG equ 03DF5h ;# 
# 26521 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1BRGL equ 03DF5h ;# 
# 26541 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1BRGH equ 03DF6h ;# 
# 26561 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1FIFO equ 03DF7h ;# 
# 26691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1UIR equ 03DF8h ;# 
# 26747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1ERRIR equ 03DF9h ;# 
# 26859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
U1ERRIE equ 03DFAh ;# 
# 26971 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DAC1CON1 equ 03E9Ch ;# 
# 27031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
DAC1CON0 equ 03E9Eh ;# 
# 27132 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CM2CON0 equ 03EB8h ;# 
# 27212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CM2CON1 equ 03EB9h ;# 
# 27252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CM2NCH equ 03EBAh ;# 
# 27312 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CM2PCH equ 03EBBh ;# 
# 27372 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CM1CON0 equ 03EBCh ;# 
# 27452 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CM1CON1 equ 03EBDh ;# 
# 27492 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CM1NCH equ 03EBEh ;# 
# 27552 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CM1PCH equ 03EBFh ;# 
# 27612 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CMOUT equ 03EC0h ;# 
# 27638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FVRCON equ 03EC1h ;# 
# 27727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ZCDCON equ 03EC3h ;# 
# 27807 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
HLVDCON0 equ 03EC9h ;# 
# 27887 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
HLVDCON1 equ 03ECAh ;# 
# 27959 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADCP equ 03ED7h ;# 
# 28010 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADLTH equ 03EDEh ;# 
# 28017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADLTHL equ 03EDEh ;# 
# 28145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADLTHH equ 03EDFh ;# 
# 28273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADUTH equ 03EE0h ;# 
# 28280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADUTHL equ 03EE0h ;# 
# 28408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADUTHH equ 03EE1h ;# 
# 28536 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADERR equ 03EE2h ;# 
# 28543 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADERRL equ 03EE2h ;# 
# 28671 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADERRH equ 03EE3h ;# 
# 28799 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADSTPT equ 03EE4h ;# 
# 28806 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADSTPTL equ 03EE4h ;# 
# 28934 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADSTPTH equ 03EE5h ;# 
# 29062 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADFLTR equ 03EE6h ;# 
# 29069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADFLTRL equ 03EE6h ;# 
# 29197 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADFLTRH equ 03EE7h ;# 
# 29327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADACC equ 03EE8h ;# 
# 29334 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADACCL equ 03EE8h ;# 
# 29462 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADACCH equ 03EE9h ;# 
# 29590 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADACCU equ 03EEAh ;# 
# 29718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADCNT equ 03EEBh ;# 
# 29846 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADRPT equ 03EECh ;# 
# 29974 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADPREV equ 03EEDh ;# 
# 29981 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADPREVL equ 03EEDh ;# 
# 30109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADPREVH equ 03EEEh ;# 
# 30237 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADRES equ 03EEFh ;# 
# 30244 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADRESL equ 03EEFh ;# 
# 30372 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADRESH equ 03EF0h ;# 
# 30492 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADPCH equ 03EF1h ;# 
# 30596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADACQ equ 03EF3h ;# 
# 30603 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADACQL equ 03EF3h ;# 
# 30731 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADACQH equ 03EF4h ;# 
# 30823 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADCAP equ 03EF5h ;# 
# 30915 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADPRE equ 03EF6h ;# 
# 30922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADPREL equ 03EF6h ;# 
# 31050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADPREH equ 03EF7h ;# 
# 31142 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADCON0 equ 03EF8h ;# 
# 31260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADCON1 equ 03EF9h ;# 
# 31326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADCON2 equ 03EFAh ;# 
# 31504 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADCON3 equ 03EFBh ;# 
# 31634 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADSTAT equ 03EFCh ;# 
# 31759 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADREF equ 03EFDh ;# 
# 31841 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADACT equ 03EFEh ;# 
# 31933 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
ADCLK equ 03EFFh ;# 
# 32039 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1TMR equ 03F12h ;# 
# 32046 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1TMRL equ 03F12h ;# 
# 32174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1TMRH equ 03F13h ;# 
# 32302 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1TMRU equ 03F14h ;# 
# 32432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1CPR equ 03F15h ;# 
# 32439 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1CPRL equ 03F15h ;# 
# 32567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1CPRH equ 03F16h ;# 
# 32695 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1CPRU equ 03F17h ;# 
# 32825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1CPW equ 03F18h ;# 
# 32832 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1CPWL equ 03F18h ;# 
# 32960 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1CPWH equ 03F19h ;# 
# 33088 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1CPWU equ 03F1Ah ;# 
# 33218 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1PR equ 03F1Bh ;# 
# 33225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1PRL equ 03F1Bh ;# 
# 33353 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1PRH equ 03F1Ch ;# 
# 33481 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1PRU equ 03F1Dh ;# 
# 33609 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1CON0 equ 03F1Eh ;# 
# 33727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1CON1 equ 03F1Fh ;# 
# 33807 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1STAT equ 03F20h ;# 
# 33906 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1CLK equ 03F21h ;# 
# 33974 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1SIG equ 03F22h ;# 
# 34066 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
SMT1WIN equ 03F23h ;# 
# 34160 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NCO1ACC equ 03F38h ;# 
# 34167 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NCO1ACCL equ 03F38h ;# 
# 34295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NCO1ACCH equ 03F39h ;# 
# 34423 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NCO1ACCU equ 03F3Ah ;# 
# 34505 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NCO1INC equ 03F3Bh ;# 
# 34512 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NCO1INCL equ 03F3Bh ;# 
# 34640 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NCO1INCH equ 03F3Ch ;# 
# 34768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NCO1INCU equ 03F3Dh ;# 
# 34848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NCO1CON equ 03F3Eh ;# 
# 34916 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
NCO1CLK equ 03F3Fh ;# 
# 35048 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG3CLK equ 03F40h ;# 
# 35053 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG3CLKCON equ 03F40h ;# 
# 35102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG3ISM equ 03F41h ;# 
# 35107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG3DAT equ 03F41h ;# 
# 35220 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG3DBR equ 03F42h ;# 
# 35324 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG3DBF equ 03F43h ;# 
# 35428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG3CON0 equ 03F44h ;# 
# 35529 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG3CON1 equ 03F45h ;# 
# 35607 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG3AS0 equ 03F46h ;# 
# 35769 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG3AS1 equ 03F47h ;# 
# 35825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG3STR equ 03F48h ;# 
# 35937 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG2CLK equ 03F49h ;# 
# 35942 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG2CLKCON equ 03F49h ;# 
# 35991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG2ISM equ 03F4Ah ;# 
# 35996 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG2DAT equ 03F4Ah ;# 
# 36109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG2DBR equ 03F4Bh ;# 
# 36213 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG2DBF equ 03F4Ch ;# 
# 36317 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG2CON0 equ 03F4Dh ;# 
# 36418 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG2CON1 equ 03F4Eh ;# 
# 36496 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG2AS0 equ 03F4Fh ;# 
# 36658 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG2AS1 equ 03F50h ;# 
# 36714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG2STR equ 03F51h ;# 
# 36826 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG1CLK equ 03F52h ;# 
# 36831 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG1CLKCON equ 03F52h ;# 
# 36880 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG1ISM equ 03F53h ;# 
# 36885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG1DAT equ 03F53h ;# 
# 36998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG1DBR equ 03F54h ;# 
# 37102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG1DBF equ 03F55h ;# 
# 37206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG1CON0 equ 03F56h ;# 
# 37307 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG1CON1 equ 03F57h ;# 
# 37385 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG1AS0 equ 03F58h ;# 
# 37547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG1AS1 equ 03F59h ;# 
# 37603 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CWG1STR equ 03F5Ah ;# 
# 37715 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCPTMRS0 equ 03F5Eh ;# 
# 37803 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCPTMRS1 equ 03F5Fh ;# 
# 37891 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM8DC equ 03F60h ;# 
# 37898 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM8DCL equ 03F60h ;# 
# 37964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM8DCH equ 03F61h ;# 
# 38134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM8CON equ 03F62h ;# 
# 38190 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM7DC equ 03F64h ;# 
# 38197 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM7DCL equ 03F64h ;# 
# 38263 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM7DCH equ 03F65h ;# 
# 38433 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM7CON equ 03F66h ;# 
# 38489 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM6DC equ 03F68h ;# 
# 38496 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM6DCL equ 03F68h ;# 
# 38562 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM6DCH equ 03F69h ;# 
# 38732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM6CON equ 03F6Ah ;# 
# 38788 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM5DC equ 03F6Ch ;# 
# 38795 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM5DCL equ 03F6Ch ;# 
# 38861 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM5DCH equ 03F6Dh ;# 
# 39031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PWM5CON equ 03F6Eh ;# 
# 39087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCPR4 equ 03F70h ;# 
# 39094 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCPR4L equ 03F70h ;# 
# 39114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCPR4H equ 03F71h ;# 
# 39134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCP4CON equ 03F72h ;# 
# 39252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCP4CAP equ 03F73h ;# 
# 39320 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCPR3 equ 03F74h ;# 
# 39327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCPR3L equ 03F74h ;# 
# 39347 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCPR3H equ 03F75h ;# 
# 39367 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCP3CON equ 03F76h ;# 
# 39485 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCP3CAP equ 03F77h ;# 
# 39553 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCPR2 equ 03F78h ;# 
# 39560 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCPR2L equ 03F78h ;# 
# 39580 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCPR2H equ 03F79h ;# 
# 39600 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCP2CON equ 03F7Ah ;# 
# 39718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCP2CAP equ 03F7Bh ;# 
# 39786 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCPR1 equ 03F7Ch ;# 
# 39793 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCPR1L equ 03F7Ch ;# 
# 39813 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCPR1H equ 03F7Dh ;# 
# 39833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCP1CON equ 03F7Eh ;# 
# 39951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
CCP1CAP equ 03F7Fh ;# 
# 40019 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T6TMR equ 03F92h ;# 
# 40024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR6 equ 03F92h ;# 
# 40057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T6PR equ 03F93h ;# 
# 40062 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PR6 equ 03F93h ;# 
# 40095 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T6CON equ 03F94h ;# 
# 40241 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T6HLT equ 03F95h ;# 
# 40369 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T6CLKCON equ 03F96h ;# 
# 40374 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T6CLK equ 03F96h ;# 
# 40527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T6RST equ 03F97h ;# 
# 40619 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR5 equ 03F98h ;# 
# 40626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR5L equ 03F98h ;# 
# 40746 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR5H equ 03F99h ;# 
# 40866 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T5CON equ 03F9Ah ;# 
# 40871 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR5CON equ 03F9Ah ;# 
# 41088 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T5GCON equ 03F9Bh ;# 
# 41093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR5GCON equ 03F9Bh ;# 
# 41374 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T5GATE equ 03F9Ch ;# 
# 41379 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR5GATE equ 03F9Ch ;# 
# 41540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T5CLK equ 03F9Dh ;# 
# 41545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR5CLK equ 03F9Dh ;# 
# 41549 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PR5 equ 03F9Dh ;# 
# 41786 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T4TMR equ 03F9Eh ;# 
# 41791 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR4 equ 03F9Eh ;# 
# 41824 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T4PR equ 03F9Fh ;# 
# 41829 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PR4 equ 03F9Fh ;# 
# 41862 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T4CON equ 03FA0h ;# 
# 42008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T4HLT equ 03FA1h ;# 
# 42136 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T4CLKCON equ 03FA2h ;# 
# 42141 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T4CLK equ 03FA2h ;# 
# 42294 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T4RST equ 03FA3h ;# 
# 42386 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR3 equ 03FA4h ;# 
# 42393 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR3L equ 03FA4h ;# 
# 42513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR3H equ 03FA5h ;# 
# 42633 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T3CON equ 03FA6h ;# 
# 42638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR3CON equ 03FA6h ;# 
# 42855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T3GCON equ 03FA7h ;# 
# 42860 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR3GCON equ 03FA7h ;# 
# 43141 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T3GATE equ 03FA8h ;# 
# 43146 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR3GATE equ 03FA8h ;# 
# 43307 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T3CLK equ 03FA9h ;# 
# 43312 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR3CLK equ 03FA9h ;# 
# 43316 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PR3 equ 03FA9h ;# 
# 43553 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T2TMR equ 03FAAh ;# 
# 43558 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR2 equ 03FAAh ;# 
# 43591 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T2PR equ 03FABh ;# 
# 43596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PR2 equ 03FABh ;# 
# 43629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T2CON equ 03FACh ;# 
# 43775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T2HLT equ 03FADh ;# 
# 43903 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T2CLKCON equ 03FAEh ;# 
# 43908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T2CLK equ 03FAEh ;# 
# 44061 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T2RST equ 03FAFh ;# 
# 44153 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR1 equ 03FB0h ;# 
# 44160 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR1L equ 03FB0h ;# 
# 44280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR1H equ 03FB1h ;# 
# 44400 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T1CON equ 03FB2h ;# 
# 44405 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR1CON equ 03FB2h ;# 
# 44622 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T1GCON equ 03FB3h ;# 
# 44627 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR1GCON equ 03FB3h ;# 
# 44908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T1GATE equ 03FB4h ;# 
# 44913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR1GATE equ 03FB4h ;# 
# 45074 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T1CLK equ 03FB5h ;# 
# 45079 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR1CLK equ 03FB5h ;# 
# 45083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PR1 equ 03FB5h ;# 
# 45320 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR0L equ 03FB6h ;# 
# 45325 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR0 equ 03FB6h ;# 
# 45458 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TMR0H equ 03FB7h ;# 
# 45463 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PR0 equ 03FB7h ;# 
# 45712 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T0CON0 equ 03FB8h ;# 
# 45836 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
T0CON1 equ 03FB9h ;# 
# 45978 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
LATA equ 03FBAh ;# 
# 46090 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
LATB equ 03FBBh ;# 
# 46202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
LATC equ 03FBCh ;# 
# 46314 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
LATD equ 03FBDh ;# 
# 46426 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
LATE equ 03FBEh ;# 
# 46478 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TRISA equ 03FC2h ;# 
# 46540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TRISB equ 03FC3h ;# 
# 46602 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TRISC equ 03FC4h ;# 
# 46664 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TRISD equ 03FC5h ;# 
# 46726 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TRISE equ 03FC6h ;# 
# 46758 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PORTA equ 03FCAh ;# 
# 46820 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PORTB equ 03FCBh ;# 
# 46882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PORTC equ 03FCCh ;# 
# 46944 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PORTD equ 03FCDh ;# 
# 47006 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PORTE equ 03FCEh ;# 
# 47044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
INTCON0 equ 03FD2h ;# 
# 47104 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
INTCON1 equ 03FD3h ;# 
# 47140 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IVTLOCK equ 03FD4h ;# 
# 47162 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IVTBASE equ 03FD5h ;# 
# 47169 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IVTBASEL equ 03FD5h ;# 
# 47231 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IVTBASEH equ 03FD6h ;# 
# 47293 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
IVTBASEU equ 03FD7h ;# 
# 47337 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
STATUS equ 03FD8h ;# 
# 47453 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR2 equ 03FD9h ;# 
# 47460 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR2L equ 03FD9h ;# 
# 47480 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR2H equ 03FDAh ;# 
# 47500 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PLUSW2 equ 03FDBh ;# 
# 47520 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PREINC2 equ 03FDCh ;# 
# 47540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
POSTDEC2 equ 03FDDh ;# 
# 47560 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
POSTINC2 equ 03FDEh ;# 
# 47580 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
INDF2 equ 03FDFh ;# 
# 47600 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
BSR equ 03FE0h ;# 
# 47620 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR1 equ 03FE1h ;# 
# 47627 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR1L equ 03FE1h ;# 
# 47647 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR1H equ 03FE2h ;# 
# 47667 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PLUSW1 equ 03FE3h ;# 
# 47687 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PREINC1 equ 03FE4h ;# 
# 47707 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
POSTDEC1 equ 03FE5h ;# 
# 47727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
POSTINC1 equ 03FE6h ;# 
# 47747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
INDF1 equ 03FE7h ;# 
# 47767 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
WREG equ 03FE8h ;# 
# 47805 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR0 equ 03FE9h ;# 
# 47812 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR0L equ 03FE9h ;# 
# 47832 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
FSR0H equ 03FEAh ;# 
# 47852 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PLUSW0 equ 03FEBh ;# 
# 47872 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PREINC0 equ 03FECh ;# 
# 47892 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
POSTDEC0 equ 03FEDh ;# 
# 47912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
POSTINC0 equ 03FEEh ;# 
# 47932 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
INDF0 equ 03FEFh ;# 
# 47952 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PCON0 equ 03FF0h ;# 
# 48105 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PCON1 equ 03FF1h ;# 
# 48144 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PROD equ 03FF3h ;# 
# 48151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PRODL equ 03FF3h ;# 
# 48171 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PRODH equ 03FF4h ;# 
# 48191 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TABLAT equ 03FF5h ;# 
# 48213 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TBLPTR equ 03FF6h ;# 
# 48220 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TBLPTRL equ 03FF6h ;# 
# 48240 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TBLPTRH equ 03FF7h ;# 
# 48260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TBLPTRU equ 03FF8h ;# 
# 48282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PCLAT equ 03FF9h ;# 
# 48289 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PCL equ 03FF9h ;# 
# 48309 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PCLATH equ 03FFAh ;# 
# 48329 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
PCLATU equ 03FFBh ;# 
# 48349 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
STKPTR equ 03FFCh ;# 
# 48435 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TOS equ 03FFDh ;# 
# 48442 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TOSL equ 03FFDh ;# 
# 48462 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TOSH equ 03FFEh ;# 
# 48482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc/pic18f47k42.h"
TOSU equ 03FFFh ;# 
	debug_source C
	FNCALL	_main,_Initialize
	FNCALL	_main,_LCD_Clear
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_LCD_String_xy
	FNCALL	_main,_PWM
	FNCALL	_main,_readADC
	FNCALL	_readADC,_LCD_String_xy
	FNCALL	_readADC,___fldiv
	FNCALL	_readADC,___flmul
	FNCALL	_readADC,___xxtofl
	FNCALL	_readADC,_sprintf
	FNCALL	_readADC,_strcat
	FNCALL	_PWM,_LCD_Clear
	FNCALL	_PWM,_LCD_String_xy
	FNCALL	_PWM,_PWM2_Initialize
	FNCALL	_PWM,_PWM2_LoadDutyValue
	FNCALL	_PWM,_PWM2_OutputStatusGet
	FNCALL	_PWM,_PWM_Output_D8_Enable
	FNCALL	_PWM,_TMR2_Initialize
	FNCALL	_PWM,_TMR2_StartTimer
	FNCALL	_PWM,___lldiv
	FNCALL	_PWM,___lmul
	FNCALL	_PWM,_sprintf
	FNCALL	_sprintf,_vfprintf
	FNCALL	_vfprintf,_vfpfcnvrt
	FNCALL	_vfpfcnvrt,_dtoa
	FNCALL	_vfpfcnvrt,_efgtoa
	FNCALL	_vfpfcnvrt,_fputc
	FNCALL	_vfpfcnvrt,_read_prec_or_width
	FNCALL	_efgtoa,___fladd
	FNCALL	_efgtoa,___fldiv
	FNCALL	_efgtoa,___fleq
	FNCALL	_efgtoa,___flge
	FNCALL	_efgtoa,___flmul
	FNCALL	_efgtoa,___flneg
	FNCALL	_efgtoa,___flsub
	FNCALL	_efgtoa,___fltol
	FNCALL	_efgtoa,___fpclassifyf
	FNCALL	_efgtoa,_floorf
	FNCALL	_efgtoa,_labs
	FNCALL	_efgtoa,_memcpy
	FNCALL	_efgtoa,_pad
	FNCALL	_efgtoa,_strcpy
	FNCALL	___flsub,___fladd
	FNCALL	_dtoa,___awdiv
	FNCALL	_dtoa,___awmod
	FNCALL	_dtoa,_abs
	FNCALL	_dtoa,_pad
	FNCALL	_pad,_fputc
	FNCALL	_pad,_fputs
	FNCALL	_fputs,_fputc
	FNCALL	_fputc,_putch
	FNCALL	_TMR2_StartTimer,_TMR2_Start
	FNCALL	_LCD_String_xy,_LCD_Command
	FNCALL	_LCD_String_xy,_LCD_String
	FNCALL	_LCD_String,_LCD_Char
	FNCALL	_LCD_Char,_MSdelay
	FNCALL	_LCD_Clear,_LCD_Command
	FNCALL	_LCD_Init,_LCD_Command
	FNCALL	_LCD_Init,_MSdelay
	FNCALL	_LCD_Command,_MSdelay
	FNROOT	_main
	FNCALL	intlevel2,_ISR
	global	intlevel2
	FNROOT	intlevel2
	global	PWM@F16999
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"main.c"
	line	59

;initializer for PWM@F16999
	dw	(0)&0ffffh
	dw	(067h)&0ffffh
	dw	(0CDh)&0ffffh
	dw	(0134h)&0ffffh
	dw	(019Ah)&0ffffh
	dw	(0200h)&0ffffh
	dw	(0267h)&0ffffh
	dw	(02CDh)&0ffffh
	dw	(0334h)&0ffffh
	dw	(039Ah)&0ffffh
	global	___fpclassifyf@F465
	global	floorf@F521
	global	_width
	global	_prec
	global	_flags
	global	_dbuf
	global	_OSCFRQ
_OSCFRQ	set	0x39DF
	global	_OSCSTATbits
_OSCSTATbits	set	0x39DC
	global	_PIR4bits
_PIR4bits	set	0x39A4
	global	_PIE0bits
_PIE0bits	set	0x3990
	global	_ANSELB
_ANSELB	set	0x3A50
	global	_RB3PPS
_RB3PPS	set	0x3A0B
	global	_PPSLOCKbits
_PPSLOCKbits	set	0x3ABF
	global	_PPSLOCK
_PPSLOCK	set	0x3ABF
	global	_WPUCbits
_WPUCbits	set	0x3A61
	global	_IOCCFbits
_IOCCFbits	set	0x3A67
	global	_IOCCPbits
_IOCCPbits	set	0x3A65
	global	_ANSELAbits
_ANSELAbits	set	0x3A40
	global	_ANSELC
_ANSELC	set	0x3A60
	global	_ANSELD
_ANSELD	set	0x3A70
	global	_ANSELE
_ANSELE	set	0x3A80
	global	_ADRESL
_ADRESL	set	0x3EEF
	global	_ADRESH
_ADRESH	set	0x3EF0
	global	_ADACQH
_ADACQH	set	0x3EF4
	global	_ADACQL
_ADACQL	set	0x3EF3
	global	_ADPREH
_ADPREH	set	0x3EF7
	global	_ADPREL
_ADPREL	set	0x3EF6
	global	_ADREF
_ADREF	set	0x3EFD
	global	_ADCAP
_ADCAP	set	0x3EF5
	global	_ADPCH
_ADPCH	set	0x3EF1
	global	_ADCLK
_ADCLK	set	0x3EFF
	global	_ADCON0bits
_ADCON0bits	set	0x3EF8
	global	_CCPTMRS0bits
_CCPTMRS0bits	set	0x3F5E
	global	_PORTEbits
_PORTEbits	set	0x3FCE
	global	_PORTBbits
_PORTBbits	set	0x3FCB
	global	_PORTB
_PORTB	set	0x3FCB
	global	_TRISB
_TRISB	set	0x3FC3
	global	_CCP2CONbits
_CCP2CONbits	set	0x3F7A
	global	_CCPR2L
_CCPR2L	set	0x3F78
	global	_CCPR2H
_CCPR2H	set	0x3F79
	global	_CCP2CON
_CCP2CON	set	0x3F7A
	global	_TRISBbits
_TRISBbits	set	0x3FC3
	global	_PR2
_PR2	set	0x3FAB
	global	_TMR2
_TMR2	set	0x3FAA
	global	_T2CONbits
_T2CONbits	set	0x3FAC
	global	_T2CON
_T2CON	set	0x3FAC
	global	_T2TMR
_T2TMR	set	0x3FAA
	global	_T2PR
_T2PR	set	0x3FAB
	global	_T2RST
_T2RST	set	0x3FAF
	global	_T2HLT
_T2HLT	set	0x3FAD
	global	_T2CLKCON
_T2CLKCON	set	0x3FAE
	global	_INTCON0bits
_INTCON0bits	set	0x3FD2
	global	_TRISAbits
_TRISAbits	set	0x3FC2
	global	_TRISE
_TRISE	set	0x3FC6
	global	_LATD
_LATD	set	0x3FBD
	global	_TRISC
_TRISC	set	0x3FC4
	global	_TRISD
_TRISD	set	0x3FC5
	global	_LATC5
_LATC5	set	0x1FDE5
	global	_LATC4
_LATC4	set	0x1FDE4
	global	_LATC3
_LATC3	set	0x1FDE3
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	
STR_2:; BSR set to: 58

	db	105	;'i'
	db	110	;'n'
	db	112	;'p'
	db	117	;'u'
	db	116	;'t'
	db	32
	db	118	;'v'
	db	111	;'o'
	db	108	;'l'
	db	116	;'t'
	db	97	;'a'
	db	103	;'g'
	db	101	;'e'
	db	58	;':'
	db	0
	
STR_1:; BSR set to: 58

	db	74	;'J'
	db	97	;'a'
	db	99	;'c'
	db	111	;'o'
	db	98	;'b'
	db	0
	
STR_3:; BSR set to: 58

	db	37
	db	46
	db	50	;'2'
	db	102	;'f'
	db	0
	
STR_7:; BSR set to: 58

	db	105	;'i'
	db	110	;'n'
	db	102	;'f'
	db	0
	
STR_10:; BSR set to: 58

	db	110	;'n'
	db	97	;'a'
	db	110	;'n'
	db	0
	
STR_4:; BSR set to: 58

	db	32
	db	86	;'V'
	db	0
	
STR_5:; BSR set to: 58

	db	37
	db	100	;'d'
	db	0
STR_11	equ	STR_10+0
STR_12	equ	STR_10+0
STR_8	equ	STR_7+0
STR_9	equ	STR_7+0
STR_6	equ	STR_5+0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FEXTOSC = "LP"
	config RSTOSC = "EXTOSC"
	config CLKOUTEN = "OFF"
	config PR1WAY = "ON"
	config CSWEN = "ON"
	config FCMEN = "ON"
	config MCLRE = "EXTMCLR"
	config PWRTS = "PWRT_OFF"
	config MVECEN = "ON"
	config IVT1WAY = "ON"
	config LPBOREN = "OFF"
	config BOREN = "SBORDIS"
	config BORV = "VBOR_2P45"
	config ZCD = "OFF"
	config PPS1WAY = "ON"
	config STVREN = "ON"
	config DEBUG = "OFF"
	config XINST = "OFF"
	config WDTCPS = "WDTCPS_31"
	config WDTE = "OFF"
	config WDTCWS = "WDTCWS_7"
	config WDTCCS = "SC"
	config BBSIZE = "BBSIZE_512"
	config BBEN = "OFF"
	config SAFEN = "OFF"
	config WRTAPP = "OFF"
	config WRTB = "OFF"
	config WRTC = "OFF"
	config WRTD = "OFF"
	config WRTSAF = "OFF"
	config LVP = "ON"
	config CP = "OFF"
	file	"dist/default/production\Assignment9.X.production.s"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
___fpclassifyf@F465:
       ds      4
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
floorf@F521:
       ds      4
_width:
       ds      2
_prec:
       ds      2
_flags:
       ds      1
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"main.c"
	line	59
PWM@F16999:
       ds      20
psect	bssBANK1,class=BANK1,space=1,noexec,lowdata
global __pbssBANK1
__pbssBANK1:
_dbuf:
       ds      80
	file	"dist/default/production\Assignment9.X.production.s"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (20 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,20
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
	line	#
; Clear objects allocated to BANK1 (80 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	80
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (9 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	9
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (4 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
;
; Setup IVTBASE
;
global  IVTBASEL, IVTBASEH, IVTBASEU
IVTBASEL equ 0x3FD5
IVTBASEH equ 0x3FD6
IVTBASEU equ 0x3FD7
	movlw	(ivt0x8_base >> 0) & 0xff
	movwf	(IVTBASEL & 0xff),c
	movlw	(ivt0x8_base >> 8) & 0xff
	movwf	(IVTBASEH & 0xff),c
	movlw	(ivt0x8_base >> 16) & 0xff
	movwf	(IVTBASEU & 0xff),c
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec,lowdata
global __pcstackBANK0
__pcstackBANK0:
??_efgtoa:	; 1 bytes @ 0x0
	ds   2
	global	efgtoa@ne
efgtoa@ne:	; 2 bytes @ 0x2
	ds   2
	global	efgtoa@p
efgtoa@p:	; 2 bytes @ 0x4
	ds   2
	global	efgtoa@t
efgtoa@t:	; 2 bytes @ 0x6
	ds   2
	global	_efgtoa$1337
_efgtoa$1337:	; 2 bytes @ 0x8
	ds   2
	global	efgtoa@pp
efgtoa@pp:	; 1 bytes @ 0xA
	ds   1
	global	efgtoa@mode
efgtoa@mode:	; 1 bytes @ 0xB
	ds   1
	global	efgtoa@nmode
efgtoa@nmode:	; 1 bytes @ 0xC
	ds   1
	global	efgtoa@d
efgtoa@d:	; 2 bytes @ 0xD
	ds   2
	global	efgtoa@m
efgtoa@m:	; 2 bytes @ 0xF
	ds   2
	global	efgtoa@e
efgtoa@e:	; 2 bytes @ 0x11
	ds   2
	global	efgtoa@w
efgtoa@w:	; 2 bytes @ 0x13
	ds   2
	global	efgtoa@ou
efgtoa@ou:	; 4 bytes @ 0x15
	ds   4
	global	efgtoa@i
efgtoa@i:	; 2 bytes @ 0x19
	ds   2
	global	efgtoa@h
efgtoa@h:	; 4 bytes @ 0x1B
	ds   4
	global	efgtoa@l
efgtoa@l:	; 4 bytes @ 0x1F
	ds   4
	global	efgtoa@sign
efgtoa@sign:	; 1 bytes @ 0x23
	ds   1
	global	efgtoa@g
efgtoa@g:	; 4 bytes @ 0x24
	ds   4
	global	efgtoa@n
efgtoa@n:	; 2 bytes @ 0x28
	ds   2
	global	efgtoa@u
efgtoa@u:	; 4 bytes @ 0x2A
	ds   4
?_vfpfcnvrt:	; 1 bytes @ 0x2E
	global	vfpfcnvrt@fp
vfpfcnvrt@fp:	; 1 bytes @ 0x2E
	ds   1
	global	vfpfcnvrt@fmt
vfpfcnvrt@fmt:	; 1 bytes @ 0x2F
	ds   1
	global	vfpfcnvrt@ap
vfpfcnvrt@ap:	; 1 bytes @ 0x30
	ds   1
	global	vfpfcnvrt@convarg
vfpfcnvrt@convarg:	; 4 bytes @ 0x31
	ds   4
	global	vfpfcnvrt@c
vfpfcnvrt@c:	; 1 bytes @ 0x35
	ds   1
	global	vfpfcnvrt@cp
vfpfcnvrt@cp:	; 1 bytes @ 0x36
	ds   1
	global	?_vfprintf
?_vfprintf:	; 2 bytes @ 0x37
	global	vfprintf@fp
vfprintf@fp:	; 1 bytes @ 0x37
	ds   1
	global	vfprintf@fmt
vfprintf@fmt:	; 1 bytes @ 0x38
	ds   1
	global	vfprintf@ap
vfprintf@ap:	; 1 bytes @ 0x39
	ds   1
	global	vfprintf@cfmt
vfprintf@cfmt:	; 1 bytes @ 0x3A
	ds   1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x3B
	global	sprintf@s
sprintf@s:	; 1 bytes @ 0x3B
	ds   1
	global	sprintf@fmt
sprintf@fmt:	; 1 bytes @ 0x3C
	ds   5
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x41
	ds   1
	global	sprintf@f
sprintf@f:	; 11 bytes @ 0x42
	ds   11
??_readADC:	; 1 bytes @ 0x4D
??_PWM:	; 1 bytes @ 0x4D
	ds   2
	global	readADC@buffer
readADC@buffer:	; 12 bytes @ 0x4F
	global	PWM@percent
PWM@percent:	; 15 bytes @ 0x4F
	ds   12
	global	readADC@voltage
readADC@voltage:	; 4 bytes @ 0x5B
	ds   3
	global	PWM@dcVal
PWM@dcVal:	; 20 bytes @ 0x5E
	ds   1
	global	readADC@Vref
readADC@Vref:	; 2 bytes @ 0x5F
	ds   2
	global	readADC@digital
readADC@digital:	; 2 bytes @ 0x61
	ds   17
	global	PWM@pwmStatus
PWM@pwmStatus:	; 2 bytes @ 0x72
	ds   2
	global	PWM@checkdutyCycle
PWM@checkdutyCycle:	; 2 bytes @ 0x74
	ds   2
	global	PWM@index
PWM@index:	; 2 bytes @ 0x76
	ds   2
??_main:	; 1 bytes @ 0x78
	ds   2
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_LCD_Command:	; 1 bytes @ 0x0
?_readADC:	; 1 bytes @ 0x0
?_PWM:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
?_LCD_Init:	; 1 bytes @ 0x0
?_LCD_Clear:	; 1 bytes @ 0x0
?_LCD_Char:	; 1 bytes @ 0x0
?_Initialize:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
?_TMR2_Initialize:	; 1 bytes @ 0x0
?_TMR2_Start:	; 1 bytes @ 0x0
?_TMR2_StartTimer:	; 1 bytes @ 0x0
?_PWM_Output_D8_Enable:	; 1 bytes @ 0x0
?_PWM2_Initialize:	; 1 bytes @ 0x0
?_PWM2_OutputStatusGet:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
putch@c:	; 1 bytes @ 0x0
??_ISR:	; 1 bytes @ 0x0
	ds   2
	global	ISR@i
ISR@i:	; 2 bytes @ 0x2
	ds   2
?_MSdelay:	; 1 bytes @ 0x4
?_strcat:	; 1 bytes @ 0x4
?_PWM2_LoadDutyValue:	; 1 bytes @ 0x4
?___fleq:	; 1 bit 
?_fputc:	; 2 bytes @ 0x4
	global	?___fpclassifyf
?___fpclassifyf:	; 2 bytes @ 0x4
?_strcpy:	; 2 bytes @ 0x4
?_memcpy:	; 2 bytes @ 0x4
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x4
	global	?___awmod
?___awmod:	; 2 bytes @ 0x4
	global	?_read_prec_or_width
?_read_prec_or_width:	; 2 bytes @ 0x4
	global	?___fladd
?___fladd:	; 4 bytes @ 0x4
	global	?_labs
?_labs:	; 4 bytes @ 0x4
	global	?___lmul
?___lmul:	; 4 bytes @ 0x4
	global	?___flneg
?___flneg:	; 4 bytes @ 0x4
	global	?___fltol
?___fltol:	; 4 bytes @ 0x4
	global	?___xxtofl
?___xxtofl:	; 4 bytes @ 0x4
	global	read_prec_or_width@fmt
read_prec_or_width@fmt:	; 1 bytes @ 0x4
	global	strcat@dest
strcat@dest:	; 1 bytes @ 0x4
	global	MSdelay@val
MSdelay@val:	; 2 bytes @ 0x4
	global	PWM2_LoadDutyValue@dutyValue
PWM2_LoadDutyValue@dutyValue:	; 2 bytes @ 0x4
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x4
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x4
	global	memcpy@d1
memcpy@d1:	; 2 bytes @ 0x4
	global	fputc@c
fputc@c:	; 2 bytes @ 0x4
	global	strcpy@dest
strcpy@dest:	; 2 bytes @ 0x4
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x4
	global	___fleq@ff1
___fleq@ff1:	; 4 bytes @ 0x4
	global	___flneg@f1
___flneg@f1:	; 4 bytes @ 0x4
	global	___fltol@f1
___fltol@f1:	; 4 bytes @ 0x4
	global	___fladd@b
___fladd@b:	; 4 bytes @ 0x4
	global	___xxtofl@val
___xxtofl@val:	; 4 bytes @ 0x4
	global	___fpclassifyf@x
___fpclassifyf@x:	; 4 bytes @ 0x4
	global	labs@a
labs@a:	; 4 bytes @ 0x4
??_putch:	; 1 bytes @ 0x4
??_Initialize:	; 1 bytes @ 0x4
??_TMR2_Initialize:	; 1 bytes @ 0x4
??_TMR2_Start:	; 1 bytes @ 0x4
??_TMR2_StartTimer:	; 1 bytes @ 0x4
??_PWM_Output_D8_Enable:	; 1 bytes @ 0x4
??_PWM2_Initialize:	; 1 bytes @ 0x4
??_PWM2_OutputStatusGet:	; 1 bytes @ 0x4
	ds   1
	global	read_prec_or_width@ap
read_prec_or_width@ap:	; 1 bytes @ 0x5
	global	strcat@src
strcat@src:	; 1 bytes @ 0x5
	ds   1
	global	fputc@fp
fputc@fp:	; 1 bytes @ 0x6
	global	strcpy@src
strcpy@src:	; 1 bytes @ 0x6
	global	MSdelay@i
MSdelay@i:	; 2 bytes @ 0x6
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x6
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x6
	global	memcpy@s1
memcpy@s1:	; 2 bytes @ 0x6
	global	strcat@i
strcat@i:	; 2 bytes @ 0x6
??_MSdelay:	; 1 bytes @ 0x6
??_strcat:	; 1 bytes @ 0x6
??_PWM2_LoadDutyValue:	; 1 bytes @ 0x6
??_read_prec_or_width:	; 1 bytes @ 0x6
	ds   1
??_fputc:	; 1 bytes @ 0x7
??_strcpy:	; 1 bytes @ 0x7
	ds   1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x8
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x8
	global	read_prec_or_width@c
read_prec_or_width@c:	; 1 bytes @ 0x8
	global	MSdelay@j
MSdelay@j:	; 2 bytes @ 0x8
	global	memcpy@n
memcpy@n:	; 2 bytes @ 0x8
	global	strcpy@d
strcpy@d:	; 2 bytes @ 0x8
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x8
	global	___fleq@ff2
___fleq@ff2:	; 4 bytes @ 0x8
	global	___fladd@a
___fladd@a:	; 4 bytes @ 0x8
??___fpclassifyf:	; 1 bytes @ 0x8
??_labs:	; 1 bytes @ 0x8
??___awdiv:	; 1 bytes @ 0x8
??___awmod:	; 1 bytes @ 0x8
??___flneg:	; 1 bytes @ 0x8
??___fltol:	; 1 bytes @ 0x8
??___xxtofl:	; 1 bytes @ 0x8
	ds   1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x9
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x9
	global	read_prec_or_width@n
read_prec_or_width@n:	; 2 bytes @ 0x9
	ds   1
	global	?_abs
?_abs:	; 2 bytes @ 0xA
	global	LCD_Command@cmd
LCD_Command@cmd:	; 1 bytes @ 0xA
	global	LCD_Char@dat
LCD_Char@dat:	; 1 bytes @ 0xA
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xA
	global	abs@a
abs@a:	; 2 bytes @ 0xA
	global	memcpy@d
memcpy@d:	; 2 bytes @ 0xA
??_LCD_Command:	; 1 bytes @ 0xA
??_memcpy:	; 1 bytes @ 0xA
??_LCD_Char:	; 1 bytes @ 0xA
	ds   1
?_LCD_String:	; 1 bytes @ 0xB
	global	LCD_String@msg
LCD_String@msg:	; 2 bytes @ 0xB
??_LCD_Init:	; 1 bytes @ 0xB
??_LCD_Clear:	; 1 bytes @ 0xB
	ds   1
?_fputs:	; 2 bytes @ 0xC
	global	___fltol@sign1
___fltol@sign1:	; 1 bytes @ 0xC
	global	___xxtofl@sign
___xxtofl@sign:	; 1 bytes @ 0xC
	global	___fpclassifyf@e
___fpclassifyf@e:	; 2 bytes @ 0xC
	global	memcpy@s
memcpy@s:	; 2 bytes @ 0xC
	global	fputs@s
fputs@s:	; 2 bytes @ 0xC
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0xC
??___fladd:	; 1 bytes @ 0xC
??_abs:	; 1 bytes @ 0xC
??___lmul:	; 1 bytes @ 0xC
??___fleq:	; 1 bytes @ 0xC
	ds   1
?_LCD_String_xy:	; 1 bytes @ 0xD
	global	LCD_String_xy@pos
LCD_String_xy@pos:	; 1 bytes @ 0xD
	global	___fltol@exp1
___fltol@exp1:	; 1 bytes @ 0xD
	global	___xxtofl@exp
___xxtofl@exp:	; 1 bytes @ 0xD
??_LCD_String:	; 1 bytes @ 0xD
	ds   1
	global	memcpy@tmp
memcpy@tmp:	; 1 bytes @ 0xE
	global	fputs@fp
fputs@fp:	; 1 bytes @ 0xE
	global	LCD_String_xy@msg
LCD_String_xy@msg:	; 2 bytes @ 0xE
	global	___xxtofl@arg
___xxtofl@arg:	; 4 bytes @ 0xE
	global	___fpclassifyf@u
___fpclassifyf@u:	; 4 bytes @ 0xE
	ds   1
	global	fputs@c
fputs@c:	; 1 bytes @ 0xF
??_fputs:	; 1 bytes @ 0xF
	ds   1
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x10
	global	LCD_String_xy@row
LCD_String_xy@row:	; 1 bytes @ 0x10
	global	___fladd@signs
___fladd@signs:	; 1 bytes @ 0x10
	global	fputs@i
fputs@i:	; 2 bytes @ 0x10
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x10
??_LCD_String_xy:	; 1 bytes @ 0x10
	ds   1
	global	LCD_String_xy@location
LCD_String_xy@location:	; 1 bytes @ 0x11
	global	___fladd@aexp
___fladd@aexp:	; 1 bytes @ 0x11
	ds   1
?_pad:	; 1 bytes @ 0x12
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0x12
	global	___fladd@bexp
___fladd@bexp:	; 1 bytes @ 0x12
	global	pad@fp
pad@fp:	; 1 bytes @ 0x12
	global	___fldiv@b
___fldiv@b:	; 4 bytes @ 0x12
	ds   1
	global	___fladd@grs
___fladd@grs:	; 1 bytes @ 0x13
	global	pad@buf
pad@buf:	; 2 bytes @ 0x13
	ds   1
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x14
	ds   1
	global	pad@p
pad@p:	; 2 bytes @ 0x15
	ds   1
	global	___fldiv@a
___fldiv@a:	; 4 bytes @ 0x16
	ds   1
??_pad:	; 1 bytes @ 0x17
	ds   1
	global	pad@i
pad@i:	; 2 bytes @ 0x18
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x18
??___lldiv:	; 1 bytes @ 0x18
	ds   2
?_dtoa:	; 1 bytes @ 0x1A
	global	dtoa@fp
dtoa@fp:	; 1 bytes @ 0x1A
??___fldiv:	; 1 bytes @ 0x1A
	ds   1
	global	dtoa@d
dtoa@d:	; 2 bytes @ 0x1B
	ds   1
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x1C
	ds   1
	global	_dtoa$1306
_dtoa$1306:	; 2 bytes @ 0x1D
??_dtoa:	; 1 bytes @ 0x1D
	ds   1
	global	___fldiv@rem
___fldiv@rem:	; 4 bytes @ 0x1E
	ds   1
	global	dtoa@w
dtoa@w:	; 2 bytes @ 0x1F
	ds   2
	global	dtoa@p
dtoa@p:	; 2 bytes @ 0x21
	ds   1
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x22
	ds   1
	global	dtoa@s
dtoa@s:	; 1 bytes @ 0x23
	global	___fldiv@new_exp
___fldiv@new_exp:	; 2 bytes @ 0x23
	ds   1
	global	dtoa@i
dtoa@i:	; 2 bytes @ 0x24
	ds   1
	global	___fldiv@grs
___fldiv@grs:	; 4 bytes @ 0x25
	ds   4
	global	___fldiv@bexp
___fldiv@bexp:	; 1 bytes @ 0x29
	ds   1
	global	___fldiv@aexp
___fldiv@aexp:	; 1 bytes @ 0x2A
	ds   1
	global	?___flmul
?___flmul:	; 4 bytes @ 0x2B
	global	?_floorf
?_floorf:	; 4 bytes @ 0x2B
	global	___flmul@b
___flmul@b:	; 4 bytes @ 0x2B
	global	floorf@x
floorf@x:	; 4 bytes @ 0x2B
	ds   4
	global	___flmul@a
___flmul@a:	; 4 bytes @ 0x2F
??_floorf:	; 1 bytes @ 0x2F
	ds   4
??___flmul:	; 1 bytes @ 0x33
	ds   2
	global	floorf@m
floorf@m:	; 4 bytes @ 0x35
	ds   2
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0x37
	ds   1
	global	___flmul@grs
___flmul@grs:	; 4 bytes @ 0x38
	ds   1
	global	floorf@e
floorf@e:	; 2 bytes @ 0x39
	ds   2
	global	floorf@u
floorf@u:	; 4 bytes @ 0x3B
	ds   1
	global	___flmul@aexp
___flmul@aexp:	; 1 bytes @ 0x3C
	ds   1
	global	___flmul@bexp
___flmul@bexp:	; 1 bytes @ 0x3D
	ds   1
	global	___flmul@prod
___flmul@prod:	; 4 bytes @ 0x3E
	ds   4
	global	___flmul@temp
___flmul@temp:	; 2 bytes @ 0x42
	ds   2
?___flge:	; 1 bit 
	global	?___flsub
?___flsub:	; 4 bytes @ 0x44
	global	___flge@ff1
___flge@ff1:	; 4 bytes @ 0x44
	global	___flsub@b
___flsub@b:	; 4 bytes @ 0x44
	ds   4
	global	___flge@ff2
___flge@ff2:	; 4 bytes @ 0x48
	global	___flsub@a
___flsub@a:	; 4 bytes @ 0x48
	ds   4
??___flsub:	; 1 bytes @ 0x4C
??___flge:	; 1 bytes @ 0x4C
	ds   4
?_efgtoa:	; 1 bytes @ 0x50
	global	efgtoa@fp
efgtoa@fp:	; 1 bytes @ 0x50
	ds   1
	global	efgtoa@f
efgtoa@f:	; 4 bytes @ 0x51
	ds   4
	global	efgtoa@c
efgtoa@c:	; 1 bytes @ 0x55
	ds   1
??_vfpfcnvrt:	; 1 bytes @ 0x56
	ds   1
??_sprintf:	; 1 bytes @ 0x57
??_vfprintf:	; 1 bytes @ 0x57
;!
;!Data Sizes:
;!    Strings     40
;!    Constant    0
;!    Data        20
;!    BSS         93
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     87      91
;!    BANK0           160    122     151
;!    BANK1           256      0      80
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14          256      0       0
;!    BANK15          256      0       0
;!    BANK16          256      0       0
;!    BANK17          256      0       0
;!    BANK18          256      0       0
;!    BANK19          256      0       0
;!    BANK20          256      0       0
;!    BANK21          256      0       0
;!    BANK22          256      0       0
;!    BANK23          256      0       0
;!    BANK24          256      0       0
;!    BANK25          256      0       0
;!    BANK26          256      0       0
;!    BANK27          256      0       0
;!    BANK28          256      0       0
;!    BANK29          256      0       0
;!    BANK30          256      0       0
;!    BANK31          256      0       0

;!
;!Pointer List with Targets:
;!
;!    dtoa@fp	PTR struct _IO_FILE size(1) Largest target is 12
;!		 -> sprintf@f(BANK0[11]), 
;!
;!    efgtoa@fp	PTR struct _IO_FILE size(1) Largest target is 12
;!		 -> sprintf@f(BANK0[11]), 
;!
;!    f$.$buffer	PTR unsigned char  size(1) Largest target is 15
;!		 -> PWM@percent(BANK0[15]), readADC@buffer(BANK0[12]), 
;!
;!    f$.$source	PTR const unsigned char  size(2) Largest target is 0
;!
;!    fputc@fp	PTR struct _IO_FILE size(1) Largest target is 12
;!		 -> sprintf@f(BANK0[11]), 
;!
;!    fputc@fp$.$buffer	PTR unsigned char  size(1) Largest target is 15
;!		 -> PWM@percent(BANK0[15]), readADC@buffer(BANK0[12]), 
;!
;!    fputc@fp$.$source	PTR const unsigned char  size(2) Largest target is 0
;!
;!    fputs@fp	PTR struct _IO_FILE size(1) Largest target is 12
;!		 -> sprintf@f(BANK0[11]), 
;!
;!    fputs@s	PTR const unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    LCD_String@msg	PTR const unsigned char  size(2) Largest target is 15
;!		 -> PWM@percent(BANK0[15]), readADC@buffer(BANK0[12]), STR_1(CODE[6]), STR_2(CODE[15]), 
;!
;!    LCD_String_xy@msg	PTR const unsigned char  size(2) Largest target is 15
;!		 -> PWM@percent(BANK0[15]), readADC@buffer(BANK0[12]), STR_1(CODE[6]), STR_2(CODE[15]), 
;!
;!    memcpy@d	PTR unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    memcpy@d1	PTR void  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    memcpy@s	PTR const unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    memcpy@s1	PTR const void  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    pad@buf	PTR unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    pad@fp	PTR struct _IO_FILE size(1) Largest target is 12
;!		 -> sprintf@f(BANK0[11]), 
;!
;!    read_prec_or_width@ap	PTR PTR void [1] size(1) Largest target is 1
;!		 -> sprintf@ap(BANK0[1]), 
;!
;!    read_prec_or_width@fmt	PTR PTR const unsigned char  size(1) Largest target is 1
;!		 -> vfprintf@cfmt(BANK0[1]), 
;!
;!    S1196$buffer	PTR unsigned char  size(1) Largest target is 15
;!		 -> PWM@percent(BANK0[15]), readADC@buffer(BANK0[12]), 
;!
;!    S1196$source	PTR const unsigned char  size(2) Largest target is 0
;!
;!    sp__memcpy	PTR void  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    sp__strcat	PTR unsigned char  size(1) Largest target is 12
;!		 -> readADC@buffer(BANK0[12]), 
;!
;!    sp__strcpy	PTR unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    sprintf@fmt	PTR const unsigned char  size(1) Largest target is 5
;!		 -> STR_3(CODE[5]), STR_5(CODE[3]), STR_6(CODE[3]), 
;!
;!    sprintf@s	PTR unsigned char  size(1) Largest target is 15
;!		 -> PWM@percent(BANK0[15]), readADC@buffer(BANK0[12]), 
;!
;!    strcat@dest	PTR unsigned char  size(1) Largest target is 12
;!		 -> readADC@buffer(BANK0[12]), 
;!
;!    strcat@src	PTR const unsigned char  size(1) Largest target is 3
;!		 -> STR_4(CODE[3]), 
;!
;!    strcpy@d	PTR unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    strcpy@dest	PTR unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    strcpy@src	PTR const unsigned char  size(1) Largest target is 4
;!		 -> STR_10(CODE[4]), STR_7(CODE[4]), 
;!
;!    vfpfcnvrt@ap	PTR PTR void  size(1) Largest target is 1
;!		 -> sprintf@ap(BANK0[1]), 
;!
;!    vfpfcnvrt@cp	PTR unsigned char  size(1) Largest target is 5
;!		 -> STR_3(CODE[5]), STR_5(CODE[3]), STR_6(CODE[3]), 
;!
;!    vfpfcnvrt@fmt	PTR PTR unsigned char  size(1) Largest target is 1
;!		 -> vfprintf@cfmt(BANK0[1]), 
;!
;!    vfpfcnvrt@fp	PTR struct _IO_FILE size(1) Largest target is 12
;!		 -> sprintf@f(BANK0[11]), 
;!
;!    vfprintf@ap	PTR PTR void  size(1) Largest target is 1
;!		 -> sprintf@ap(BANK0[1]), 
;!
;!    vfprintf@cfmt	PTR unsigned char  size(1) Largest target is 5
;!		 -> STR_3(CODE[5]), STR_5(CODE[3]), STR_6(CODE[3]), 
;!
;!    vfprintf@fmt	PTR const unsigned char  size(1) Largest target is 5
;!		 -> STR_3(CODE[5]), STR_5(CODE[3]), STR_6(CODE[3]), 
;!
;!    vfprintf@fp	PTR struct _IO_FILE size(1) Largest target is 12
;!		 -> sprintf@f(BANK0[11]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _vfprintf->_vfpfcnvrt
;!    _vfpfcnvrt->_efgtoa
;!    _efgtoa->___flge
;!    _floorf->___fldiv
;!    ___flsub->___flmul
;!    ___flmul->___fldiv
;!    ___flge->___flmul
;!    ___fldiv->___xxtofl
;!    _dtoa->_pad
;!    _pad->_fputs
;!    _fputs->_fputc
;!    _abs->___awmod
;!    ___lldiv->___lmul
;!    _LCD_String_xy->_LCD_String
;!    _LCD_String->_LCD_Char
;!    _LCD_Char->_MSdelay
;!    _LCD_Clear->_LCD_Command
;!    _LCD_Init->_LCD_Command
;!    _LCD_Command->_MSdelay
;!
;!Critical Paths under _ISR in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_PWM
;!    _readADC->_sprintf
;!    _PWM->_sprintf
;!    _sprintf->_vfprintf
;!    _vfprintf->_vfpfcnvrt
;!    _vfpfcnvrt->_efgtoa
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK14
;!
;!    None.
;!
;!Critical Paths under _main in BANK15
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK15
;!
;!    None.
;!
;!Critical Paths under _main in BANK16
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK16
;!
;!    None.
;!
;!Critical Paths under _main in BANK17
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK17
;!
;!    None.
;!
;!Critical Paths under _main in BANK18
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK18
;!
;!    None.
;!
;!Critical Paths under _main in BANK19
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK19
;!
;!    None.
;!
;!Critical Paths under _main in BANK20
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK20
;!
;!    None.
;!
;!Critical Paths under _main in BANK21
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK21
;!
;!    None.
;!
;!Critical Paths under _main in BANK22
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK22
;!
;!    None.
;!
;!Critical Paths under _main in BANK23
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK23
;!
;!    None.
;!
;!Critical Paths under _main in BANK24
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK24
;!
;!    None.
;!
;!Critical Paths under _main in BANK25
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK25
;!
;!    None.
;!
;!Critical Paths under _main in BANK26
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK26
;!
;!    None.
;!
;!Critical Paths under _main in BANK27
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK27
;!
;!    None.
;!
;!Critical Paths under _main in BANK28
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK28
;!
;!    None.
;!
;!Critical Paths under _main in BANK29
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK29
;!
;!    None.
;!
;!Critical Paths under _main in BANK30
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK30
;!
;!    None.
;!
;!Critical Paths under _main in BANK31
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK31
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0   37400
;!                                            120 BANK0      2     2      0
;!                         _Initialize
;!                          _LCD_Clear
;!                           _LCD_Init
;!                      _LCD_String_xy
;!                                _PWM
;!                            _readADC
;! ---------------------------------------------------------------------------------
;! (1) _readADC                                             22    22      0   19439
;!                                             77 BANK0     22    22      0
;!                      _LCD_String_xy
;!                            ___fldiv
;!                            ___flmul
;!                           ___xxtofl
;!                            _sprintf
;!                             _strcat
;! ---------------------------------------------------------------------------------
;! (2) _strcat                                               4     2      2     122
;!                                              4 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! (2) ___xxtofl                                            14    10      4     338
;!                                              4 COMRAM    14    10      4
;! ---------------------------------------------------------------------------------
;! (1) _PWM                                                 45    45      0   17172
;!                                             77 BANK0     43    43      0
;!                          _LCD_Clear
;!                      _LCD_String_xy
;!                    _PWM2_Initialize
;!                 _PWM2_LoadDutyValue
;!               _PWM2_OutputStatusGet
;!               _PWM_Output_D8_Enable
;!                    _TMR2_Initialize
;!                    _TMR2_StartTimer
;!                            ___lldiv
;!                             ___lmul
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _sprintf                                             20    14      6   15698
;!                                             59 BANK0     18    12      6
;!                           _vfprintf
;! ---------------------------------------------------------------------------------
;! (3) _vfprintf                                             4     1      3   15356
;!                                             55 BANK0      4     1      3
;!                          _vfpfcnvrt
;! ---------------------------------------------------------------------------------
;! (4) _vfpfcnvrt                                           11     8      3   15120
;!                                             86 COMRAM     1     1      0
;!                                             46 BANK0      9     6      3
;!                               _dtoa
;!                             _efgtoa
;!                              _fputc
;!                 _read_prec_or_width
;! ---------------------------------------------------------------------------------
;! (5) _read_prec_or_width                                   7     5      2     182
;!                                              4 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (5) _efgtoa                                              53    47      6   11942
;!                                             80 COMRAM     6     0      6
;!                                              0 BANK0     46    46      0
;!                            ___fladd
;!                            ___fldiv
;!                             ___fleq
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___flsub
;!                            ___fltol
;!                      ___fpclassifyf
;!                             _floorf
;!                               _labs
;!                             _memcpy
;!                                _pad
;!                             _strcpy
;! ---------------------------------------------------------------------------------
;! (6) _strcpy                                               6     3      3      77
;!                                              4 COMRAM     6     3      3
;! ---------------------------------------------------------------------------------
;! (6) _memcpy                                              11     5      6     146
;!                                              4 COMRAM    11     5      6
;! ---------------------------------------------------------------------------------
;! (6) _labs                                                 8     4      4      69
;!                                              4 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (6) _floorf                                              20    16      4     340
;!                                             43 COMRAM    20    16      4
;!                            ___fldiv (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___fpclassifyf                                       14    10      4     137
;!                                              4 COMRAM    14    10      4
;! ---------------------------------------------------------------------------------
;! (6) ___fltol                                             10     6      4     232
;!                                              4 COMRAM    10     6      4
;! ---------------------------------------------------------------------------------
;! (6) ___flsub                                              8     0      8    2037
;!                                             68 COMRAM     8     0      8
;!                            ___fladd
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (7) ___fladd                                             16     8      8    1988
;!                                              4 COMRAM    16     8      8
;! ---------------------------------------------------------------------------------
;! (6) ___flneg                                              4     0      4      46
;!                                              4 COMRAM     4     0      4
;! ---------------------------------------------------------------------------------
;! (6) ___flmul                                             25    17      8    1480
;!                                             43 COMRAM    25    17      8
;!                            ___fldiv (ARG)
;!                           ___xxtofl (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___flge                                              12     4      8     190
;!                                             68 COMRAM    12     4      8
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___fleq                                              12     4      8      94
;!                                              4 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (6) ___fldiv                                             25    17      8    1133
;!                                             18 COMRAM    25    17      8
;!                           ___xxtofl (ARG)
;! ---------------------------------------------------------------------------------
;! (5) _dtoa                                                12     9      3    1767
;!                                             26 COMRAM    12     9      3
;!                            ___awdiv
;!                            ___awmod
;!                                _abs
;!                                _pad
;! ---------------------------------------------------------------------------------
;! (6) _pad                                                  8     3      5     710
;!                                             18 COMRAM     8     3      5
;!                              _fputc
;!                              _fputs
;! ---------------------------------------------------------------------------------
;! (7) _fputs                                                6     3      3     331
;!                                             12 COMRAM     6     3      3
;!                              _fputc
;! ---------------------------------------------------------------------------------
;! (5) _fputc                                                8     5      3     232
;!                                              4 COMRAM     8     5      3
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (6) _putch                                                1     1      0       0
;! ---------------------------------------------------------------------------------
;! (6) _abs                                                  4     2      2      67
;!                                             10 COMRAM     4     2      2
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___awmod                                              6     2      4     298
;!                                              4 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (6) ___awdiv                                              8     4      4     302
;!                                              4 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              12     4      8      96
;!                                              4 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             13     5      8     166
;!                                             16 COMRAM    13     5      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _TMR2_StartTimer                                      0     0      0       0
;!                         _TMR2_Start
;! ---------------------------------------------------------------------------------
;! (3) _TMR2_Start                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _TMR2_Initialize                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _PWM_Output_D8_Enable                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _PWM2_OutputStatusGet                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _PWM2_LoadDutyValue                                   2     0      2      92
;!                                              4 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _PWM2_Initialize                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _LCD_String_xy                                        5     2      3     446
;!                                             13 COMRAM     5     2      3
;!                        _LCD_Command
;!                         _LCD_String
;! ---------------------------------------------------------------------------------
;! (3) _LCD_String                                           2     0      2     170
;!                                             11 COMRAM     2     0      2
;!                           _LCD_Char
;! ---------------------------------------------------------------------------------
;! (4) _LCD_Char                                             1     1      0     124
;!                                             10 COMRAM     1     1      0
;!                            _MSdelay
;! ---------------------------------------------------------------------------------
;! (2) _LCD_Clear                                            0     0      0     124
;!                        _LCD_Command
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Init                                             0     0      0     219
;!                        _LCD_Command
;!                            _MSdelay
;! ---------------------------------------------------------------------------------
;! (3) _LCD_Command                                          1     1      0     124
;!                                             10 COMRAM     1     1      0
;!                            _MSdelay
;! ---------------------------------------------------------------------------------
;! (5) _MSdelay                                              6     4      2      95
;!                                              4 COMRAM     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _Initialize                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (10) _ISR                                                 4     4      0      30
;!                                              0 COMRAM     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 10
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Initialize
;!   _LCD_Clear
;!     _LCD_Command
;!       _MSdelay
;!   _LCD_Init
;!     _LCD_Command
;!     _MSdelay
;!   _LCD_String_xy
;!     _LCD_Command
;!     _LCD_String
;!       _LCD_Char
;!         _MSdelay
;!   _PWM
;!     _LCD_Clear
;!     _LCD_String_xy
;!     _PWM2_Initialize
;!     _PWM2_LoadDutyValue
;!     _PWM2_OutputStatusGet
;!     _PWM_Output_D8_Enable
;!     _TMR2_Initialize
;!     _TMR2_StartTimer
;!       _TMR2_Start
;!     ___lldiv
;!       ___lmul (ARG)
;!     ___lmul
;!     _sprintf
;!       _vfprintf
;!         _vfpfcnvrt
;!           _dtoa
;!             ___awdiv
;!             ___awmod
;!             _abs
;!               ___awmod (ARG)
;!             _pad
;!               _fputc
;!                 _putch
;!               _fputs
;!                 _fputc
;!           _efgtoa
;!             ___fladd
;!             ___fldiv
;!               ___xxtofl (ARG)
;!             ___fleq
;!             ___flge
;!               ___flmul (ARG)
;!                 ___fldiv (ARG)
;!                 ___xxtofl (ARG)
;!             ___flmul
;!             ___flneg
;!             ___flsub
;!               ___fladd
;!               ___flmul (ARG)
;!             ___fltol
;!             ___fpclassifyf
;!             _floorf
;!               ___fldiv (ARG)
;!             _labs
;!             _memcpy
;!             _pad
;!             _strcpy
;!           _fputc
;!           _read_prec_or_width
;!   _readADC
;!     _LCD_String_xy
;!     ___fldiv
;!     ___flmul
;!     ___xxtofl
;!     _sprintf
;!     _strcat
;!
;! _ISR (ROOT)
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BIGRAM            8191      0       0      0.0%
;!BITBIGSFRllh      1383      0       0      0.0%
;!BITBIGSFRlll       400      0       0      0.0%
;!BITBANK31          256      0       0      0.0%
;!BANK31             256      0       0      0.0%
;!BITBANK30          256      0       0      0.0%
;!BANK30             256      0       0      0.0%
;!BITBANK29          256      0       0      0.0%
;!BANK29             256      0       0      0.0%
;!BITBANK28          256      0       0      0.0%
;!BANK28             256      0       0      0.0%
;!BITBANK27          256      0       0      0.0%
;!BANK27             256      0       0      0.0%
;!BITBANK26          256      0       0      0.0%
;!BANK26             256      0       0      0.0%
;!BITBANK25          256      0       0      0.0%
;!BANK25             256      0       0      0.0%
;!BITBANK24          256      0       0      0.0%
;!BANK24             256      0       0      0.0%
;!BITBANK23          256      0       0      0.0%
;!BANK23             256      0       0      0.0%
;!BITBANK22          256      0       0      0.0%
;!BANK22             256      0       0      0.0%
;!BITBANK21          256      0       0      0.0%
;!BANK21             256      0       0      0.0%
;!BITBANK20          256      0       0      0.0%
;!BANK20             256      0       0      0.0%
;!BITBANK19          256      0       0      0.0%
;!BANK19             256      0       0      0.0%
;!BITBANK18          256      0       0      0.0%
;!BANK18             256      0       0      0.0%
;!BITBANK17          256      0       0      0.0%
;!BANK17             256      0       0      0.0%
;!BITBANK16          256      0       0      0.0%
;!BANK16             256      0       0      0.0%
;!BITBANK15          256      0       0      0.0%
;!BANK15             256      0       0      0.0%
;!BITBANK14          256      0       0      0.0%
;!BANK14             256      0       0      0.0%
;!BITBANK13          256      0       0      0.0%
;!BANK13             256      0       0      0.0%
;!BITBANK12          256      0       0      0.0%
;!BANK12             256      0       0      0.0%
;!BITBANK11          256      0       0      0.0%
;!BANK11             256      0       0      0.0%
;!BITBANK10          256      0       0      0.0%
;!BANK10             256      0       0      0.0%
;!BITBANK9           256      0       0      0.0%
;!BANK9              256      0       0      0.0%
;!BITBANK8           256      0       0      0.0%
;!BANK8              256      0       0      0.0%
;!BITBANK7           256      0       0      0.0%
;!BANK7              256      0       0      0.0%
;!BITBANK6           256      0       0      0.0%
;!BANK6              256      0       0      0.0%
;!BITBANK5           256      0       0      0.0%
;!BANK5              256      0       0      0.0%
;!BITBANK4           256      0       0      0.0%
;!BANK4              256      0       0      0.0%
;!BITBANK3           256      0       0      0.0%
;!BANK3              256      0       0      0.0%
;!BITBANK2           256      0       0      0.0%
;!BANK2              256      0       0      0.0%
;!BITBANK1           256      0       0      0.0%
;!BANK1              256      0      80     31.2%
;!BITBIGSFRlh        182      0       0      0.0%
;!BITBANK0           160      0       0      0.0%
;!BANK0              160    122     151     94.4%
;!BITCOMRAM           95      0       0      0.0%
;!COMRAM              95     87      91     95.8%
;!BITBIGSFRh          80      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0     321      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 25 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called: 10
;; This function calls:
;;		_Initialize
;;		_LCD_Clear
;;		_LCD_Init
;;		_LCD_String_xy
;;		_PWM
;;		_readADC
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	25
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	25
	
_main:
;incstack = 0
	callstack 21
	line	26
	
l4448:
;main.c: 26:     Initialize();
	call	_Initialize	;wreg free
	line	27
	
l4450:
;main.c: 27:     LCD_Init();
	call	_LCD_Init	;wreg free
	line	28
	
l4452:
;main.c: 28:     LCD_String_xy(1, 0, "Jacob");
	movlw	low(0)
	movwf	((c:LCD_String_xy@pos))^00h,c
		movlw	low(STR_1)
	movwf	((c:LCD_String_xy@msg))^00h,c
	movf	((c:LCD_String_xy@msg))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:LCD_String_xy@msg+1))^00h,c

	movlw	(01h)&0ffh
	
	call	_LCD_String_xy
	line	29
	
l4454:
;main.c: 29:     _delay((unsigned long)((1500)*(4000000/4000.0)));
	asmopt push
asmopt off
movlw  8
	movlb	0	; () banked
movwf	(??_main+0+0+1)&0ffh
movlw	157
movwf	(??_main+0+0)&0ffh
	movlw	5
u4827:
decfsz	wreg,f
	bra	u4827
	decfsz	(??_main+0+0)&0ffh,f
	bra	u4827
	decfsz	(??_main+0+0+1)&0ffh,f
	bra	u4827
	nop2
asmopt pop

	line	30
	
l4456:
;main.c: 30:     LCD_Clear();
	call	_LCD_Clear	;wreg free
	line	33
	
l4458:
;main.c: 33:     readADC();
	call	_readADC	;wreg free
	line	35
	
l4460:
;main.c: 35:     PWM();
	call	_PWM	;wreg free
	line	38
	
l221:
	global	start
	goto	start
	callstack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_readADC

;; *************** function _readADC *****************
;; Defined at:
;;		line 40 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buffer         12   79[BANK0 ] unsigned char [12]
;;  voltage         4   91[BANK0 ] float 
;;  digital         2   97[BANK0 ] int 
;;  Vref            2   95[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      20       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      22       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_LCD_String_xy
;;		___fldiv
;;		___flmul
;;		___xxtofl
;;		_sprintf
;;		_strcat
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	40
global __ptext1
__ptext1:
psect	text1
	file	"main.c"
	line	40
	
_readADC:
;incstack = 0
	callstack 21
	line	41
	
l4372:
;main.c: 41:     int Vref = 5;
	movlw	high(05h)
	movlb	0	; () banked
	movwf	((readADC@Vref+1))&0ffh
	movlw	low(05h)
	movwf	((readADC@Vref))&0ffh
	line	45
	
l4374:; BSR set to: 0

;main.c: 42:     char buffer[12];;main.c: 43:     int digital;;main.c: 44:     float voltage;;main.c: 45:     LCD_String_xy(1, 0, "input voltage:");
	movlw	low(0)
	movwf	((c:LCD_String_xy@pos))^00h,c
		movlw	low(STR_2)
	movwf	((c:LCD_String_xy@msg))^00h,c
	movf	((c:LCD_String_xy@msg))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:LCD_String_xy@msg+1))^00h,c

	movlw	(01h)&0ffh
	
	call	_LCD_String_xy
	line	47
	
l4376:
;main.c: 47:         ADCON0bits.GO = 1;
	movlb	62	; () banked
	bsf	((16120))&0ffh,0	;volatile
	line	48
;main.c: 48:         while(ADCON0bits.GO);
	
l225:; BSR set to: 62

	btfsc	((16120))&0ffh,0	;volatile
	goto	u4771
	goto	u4770
u4771:
	goto	l225
u4770:
	line	49
	
l4378:; BSR set to: 62

;main.c: 49:         digital = (ADRESH * 256) | ADRESL;
	movf	((16111))&0ffh,w	;volatile
	movff	(16112),??_readADC+0+0	;volatile
	movlb	0	; () banked
	clrf	(??_readADC+0+0+1)&0ffh
	movff	??_readADC+0+0,??_readADC+0+1
	clrf	(??_readADC+0+0)&0ffh
	iorwf	(??_readADC+0+0)&0ffh,w
	movwf	((readADC@digital))&0ffh
	movf	(??_readADC+0+1)&0ffh,w
	movwf	1+((readADC@digital))&0ffh
	line	50
	
l4380:; BSR set to: 0

;main.c: 50:         voltage = digital * ((float)Vref / (float)(4096));
	movff	(readADC@digital),(c:___xxtofl@val)
	movff	(readADC@digital+1),(c:___xxtofl@val+1)
	movlw	0
	btfsc	((c:___xxtofl@val+1))^00h,c,7
	movlw	-1
	movwf	((c:___xxtofl@val+2))^00h,c
	movwf	((c:___xxtofl@val+3))^00h,c
	movlw	(01h)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(c:___flmul@b)
	movff	1+?___xxtofl,(c:___flmul@b+1)
	movff	2+?___xxtofl,(c:___flmul@b+2)
	movff	3+?___xxtofl,(c:___flmul@b+3)
	
	movlw	low(normalize32(0x45800000))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x45800000))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x45800000))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x45800000))
	movwf	((c:___fldiv@a+3))^00h,c
	movff	(readADC@Vref),(c:___xxtofl@val)
	movff	(readADC@Vref+1),(c:___xxtofl@val+1)
	movlw	0
	btfsc	((c:___xxtofl@val+1))^00h,c,7
	movlw	-1
	movwf	((c:___xxtofl@val+2))^00h,c
	movwf	((c:___xxtofl@val+3))^00h,c
	movlw	(01h)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(c:___fldiv@b)
	movff	1+?___xxtofl,(c:___fldiv@b+1)
	movff	2+?___xxtofl,(c:___fldiv@b+2)
	movff	3+?___xxtofl,(c:___fldiv@b+3)
	
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(c:___flmul@a)
	movff	1+?___fldiv,(c:___flmul@a+1)
	movff	2+?___fldiv,(c:___flmul@a+2)
	movff	3+?___fldiv,(c:___flmul@a+3)
	
	call	___flmul	;wreg free
	movff	0+?___flmul,(readADC@voltage)
	movff	1+?___flmul,(readADC@voltage+1)
	movff	2+?___flmul,(readADC@voltage+2)
	movff	3+?___flmul,(readADC@voltage+3)
	
	line	51
	
l4382:
;main.c: 51:         sprintf(buffer, "%.2f", voltage);
		movlw	low(readADC@buffer)
	movlb	0	; () banked
	movwf	((sprintf@s))&0ffh

		movlw	low(STR_3)
	movwf	((sprintf@fmt))&0ffh

	movff	(readADC@voltage),0+(?_sprintf+02h)
	movff	(readADC@voltage+1),1+(?_sprintf+02h)
	movff	(readADC@voltage+2),2+(?_sprintf+02h)
	movff	(readADC@voltage+3),3+(?_sprintf+02h)
	call	_sprintf	;wreg free
	line	52
	
l4384:
;main.c: 52:         strcat(buffer, " V");
		movlw	low(readADC@buffer)
	movwf	((c:strcat@dest))^00h,c

		movlw	low(STR_4)
	movwf	((c:strcat@src))^00h,c

	call	_strcat	;wreg free
	line	53
	
l4386:
;main.c: 53:         LCD_String_xy(2, 0, buffer);
	movlw	low(0)
	movwf	((c:LCD_String_xy@pos))^00h,c
		movlw	low(readADC@buffer)
	movwf	((c:LCD_String_xy@msg))^00h,c
	clrf	((c:LCD_String_xy@msg+1))^00h,c

	movlw	(02h)&0ffh
	
	call	_LCD_String_xy
	line	54
	
l4388:
;main.c: 54:         _delay((unsigned long)((2000)*(4000000/4000.0)));
	asmopt push
asmopt off
movlw  11
	movlb	0	; () banked
movwf	(??_readADC+0+0+1)&0ffh
movlw	38
movwf	(??_readADC+0+0)&0ffh
	movlw	93
u4837:
decfsz	wreg,f
	bra	u4837
	decfsz	(??_readADC+0+0)&0ffh,f
	bra	u4837
	decfsz	(??_readADC+0+0+1)&0ffh,f
	bra	u4837
	nop2
asmopt pop

	goto	l4376
	return	;funcret
	callstack 0
	line	56
GLOBAL	__end_of_readADC
	__end_of_readADC:
	signat	_readADC,89
	global	_strcat

;; *************** function _strcat *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\strcat.c"
;; Parameters:    Size  Location     Type
;;  dest            1    4[COMRAM] PTR unsigned char 
;;		 -> readADC@buffer(12), 
;;  src             1    5[COMRAM] PTR const unsigned char 
;;		 -> STR_4(3), 
;; Auto vars:     Size  Location     Type
;;  i               2    6[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    4[COMRAM] PTR unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readADC
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\strcat.c"
	line	3
global __ptext2
__ptext2:
psect	text2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\strcat.c"
	line	3
	
_strcat:
;incstack = 0
	callstack 28
	line	5
	
l3874:
	movlw	high(0)
	movwf	((c:strcat@i+1))^00h,c
	movlw	low(0)
	movwf	((c:strcat@i))^00h,c
	line	6
	goto	l3878
	line	7
	
l3876:
	infsnz	((c:strcat@i))^00h,c
	incf	((c:strcat@i+1))^00h,c
	line	6
	
l3878:
	movf	((c:strcat@dest))^00h,c,w
	addwf	((c:strcat@i))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l3876
u4170:
	goto	l3882
	line	10
	
l3880:
	infsnz	((c:strcat@i))^00h,c
	incf	((c:strcat@i+1))^00h,c
	line	11
	incf	((c:strcat@src))^00h,c
	line	9
	
l3882:
	movff	(c:strcat@src),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	movf	((c:strcat@dest))^00h,c,w
	addwf	((c:strcat@i))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	tblrd	*
	
	movff	tablat,indf2
	movf	indf2,w
	btfss	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l3880
u4180:
	line	14
	
l1138:
	return	;funcret
	callstack 0
GLOBAL	__end_of_strcat
	__end_of_strcat:
	signat	_strcat,8315
	global	___xxtofl

;; *************** function ___xxtofl *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\xxtofl.c"
;; Parameters:    Size  Location     Type
;;  sign            1    wreg     unsigned char 
;;  val             4    4[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   12[COMRAM] unsigned char 
;;  arg             4   14[COMRAM] unsigned long 
;;  exp             1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    4[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readADC
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\xxtofl.c"
	line	10
global __ptext3
__ptext3:
psect	text3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\xxtofl.c"
	line	10
	
___xxtofl:
;incstack = 0
	callstack 28
;___xxtofl@sign stored from wreg
	movwf	((c:___xxtofl@sign))^00h,c
	line	15
	
l3916:
	movf	((c:___xxtofl@sign))^00h,c,w
	btfsc	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l898
u4240:
	
l3918:
	btfsc	((c:___xxtofl@val+3))^00h,c,7
	goto	u4250
	goto	u4251

u4251:
	goto	l898
u4250:
	line	16
	
l3920:
	movff	(c:___xxtofl@val),??___xxtofl+0+0
	movff	(c:___xxtofl@val+1),??___xxtofl+0+0+1
	movff	(c:___xxtofl@val+2),??___xxtofl+0+0+2
	movff	(c:___xxtofl@val+3),??___xxtofl+0+0+3
	comf	(??___xxtofl+0+0)^00h,c
	comf	(??___xxtofl+0+1)^00h,c
	comf	(??___xxtofl+0+2)^00h,c
	comf	(??___xxtofl+0+3)^00h,c
	incf	(??___xxtofl+0+0)^00h,c
	movlw	0
	addwfc	(??___xxtofl+0+1)^00h,c
	addwfc	(??___xxtofl+0+2)^00h,c
	addwfc	(??___xxtofl+0+3)^00h,c
	movff	??___xxtofl+0+0,(c:___xxtofl@arg)
	movff	??___xxtofl+0+1,(c:___xxtofl@arg+1)
	movff	??___xxtofl+0+2,(c:___xxtofl@arg+2)
	movff	??___xxtofl+0+3,(c:___xxtofl@arg+3)
	line	17
	goto	l3922
	line	18
	
l898:
	line	19
	movff	(c:___xxtofl@val),(c:___xxtofl@arg)
	movff	(c:___xxtofl@val+1),(c:___xxtofl@arg+1)
	movff	(c:___xxtofl@val+2),(c:___xxtofl@arg+2)
	movff	(c:___xxtofl@val+3),(c:___xxtofl@arg+3)
	line	21
	
l3922:
	movf	((c:___xxtofl@val))^00h,c,w
iorwf	((c:___xxtofl@val+1))^00h,c,w
iorwf	((c:___xxtofl@val+2))^00h,c,w
iorwf	((c:___xxtofl@val+3))^00h,c,w
	btfss	status,2
	goto	u4261
	goto	u4260

u4261:
	goto	l3928
u4260:
	line	22
	
l3924:
	movlw	low(normalize32(0x0))
	movwf	((c:?___xxtofl))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:?___xxtofl+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:?___xxtofl+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:?___xxtofl+3))^00h,c
	goto	l901
	line	23
	
l3928:
	movlw	low(096h)
	movwf	((c:___xxtofl@exp))^00h,c
	line	24
	goto	l3932
	line	25
	
l3930:
	incf	((c:___xxtofl@exp))^00h,c
	line	26
	bcf	status,0
	rrcf	((c:___xxtofl@arg+3))^00h,c
	rrcf	((c:___xxtofl@arg+2))^00h,c
	rrcf	((c:___xxtofl@arg+1))^00h,c
	rrcf	((c:___xxtofl@arg))^00h,c
	line	24
	
l3932:
	movlw	0
	andwf	((c:___xxtofl@arg))^00h,c,w
	movwf	(??___xxtofl+0+0)^00h,c
	movlw	0
	andwf	((c:___xxtofl@arg+1))^00h,c,w
	movwf	1+(??___xxtofl+0+0)^00h,c
	
	movlw	0
	andwf	((c:___xxtofl@arg+2))^00h,c,w
	movwf	2+(??___xxtofl+0+0)^00h,c
	
	movlw	0FEh
	andwf	((c:___xxtofl@arg+3))^00h,c,w
	movwf	3+(??___xxtofl+0+0)^00h,c
	movf	(??___xxtofl+0+0)^00h,c,w
iorwf	(??___xxtofl+0+1)^00h,c,w
iorwf	(??___xxtofl+0+2)^00h,c,w
iorwf	(??___xxtofl+0+3)^00h,c,w
	btfss	status,2
	goto	u4271
	goto	u4270

u4271:
	goto	l3930
u4270:
	goto	l905
	line	29
	
l3934:
	incf	((c:___xxtofl@exp))^00h,c
	line	30
	
l3936:
	movlw	low(01h)
	addwf	((c:___xxtofl@arg))^00h,c
	movlw	0
	addwfc	((c:___xxtofl@arg+1))^00h,c
	addwfc	((c:___xxtofl@arg+2))^00h,c
	addwfc	((c:___xxtofl@arg+3))^00h,c
	line	31
	
l3938:
	bcf	status,0
	rrcf	((c:___xxtofl@arg+3))^00h,c
	rrcf	((c:___xxtofl@arg+2))^00h,c
	rrcf	((c:___xxtofl@arg+1))^00h,c
	rrcf	((c:___xxtofl@arg))^00h,c
	line	32
	
l905:
	line	28
	movlw	0
	andwf	((c:___xxtofl@arg))^00h,c,w
	movwf	(??___xxtofl+0+0)^00h,c
	movlw	0
	andwf	((c:___xxtofl@arg+1))^00h,c,w
	movwf	1+(??___xxtofl+0+0)^00h,c
	
	movlw	0
	andwf	((c:___xxtofl@arg+2))^00h,c,w
	movwf	2+(??___xxtofl+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___xxtofl@arg+3))^00h,c,w
	movwf	3+(??___xxtofl+0+0)^00h,c
	movf	(??___xxtofl+0+0)^00h,c,w
iorwf	(??___xxtofl+0+1)^00h,c,w
iorwf	(??___xxtofl+0+2)^00h,c,w
iorwf	(??___xxtofl+0+3)^00h,c,w
	btfss	status,2
	goto	u4281
	goto	u4280

u4281:
	goto	l3934
u4280:
	goto	l3942
	line	34
	
l3940:
	decf	((c:___xxtofl@exp))^00h,c
	line	35
	bcf	status,0
	rlcf	((c:___xxtofl@arg))^00h,c
	rlcf	((c:___xxtofl@arg+1))^00h,c
	rlcf	((c:___xxtofl@arg+2))^00h,c
	rlcf	((c:___xxtofl@arg+3))^00h,c
	line	33
	
l3942:
	
	btfsc	((c:___xxtofl@arg+2))^00h,c,(23)&7
	goto	u4291
	goto	u4290
u4291:
	goto	l912
u4290:
	
l3944:
		movlw	02h-0
	cpfslt	((c:___xxtofl@exp))^00h,c
	goto	u4301
	goto	u4300

u4301:
	goto	l3940
u4300:
	
l912:
	line	37
	
	btfsc	((c:___xxtofl@exp))^00h,c,(0)&7
	goto	u4311
	goto	u4310
u4311:
	goto	l3948
u4310:
	line	38
	
l3946:
	bcf	(0+(23/8)+(c:___xxtofl@arg))^00h,c,(23)&7
	line	39
	
l3948:
	bcf status,0
	rrcf	((c:___xxtofl@exp))^00h,c

	line	40
	
l3950:
	movff	(c:___xxtofl@exp),??___xxtofl+0+0
	clrf	(??___xxtofl+0+0+1)^00h,c
	clrf	(??___xxtofl+0+0+2)^00h,c
	clrf	(??___xxtofl+0+0+3)^00h,c
	movff	??___xxtofl+0+0,??___xxtofl+0+3
	clrf	(??___xxtofl+0+2)^00h,c
	clrf	(??___xxtofl+0+1)^00h,c
	clrf	(??___xxtofl+0+0)^00h,c
	movf	(??___xxtofl+0+0)^00h,c,w
	iorwf	((c:___xxtofl@arg))^00h,c
	movf	(??___xxtofl+0+1)^00h,c,w
	iorwf	((c:___xxtofl@arg+1))^00h,c
	movf	(??___xxtofl+0+2)^00h,c,w
	iorwf	((c:___xxtofl@arg+2))^00h,c
	movf	(??___xxtofl+0+3)^00h,c,w
	iorwf	((c:___xxtofl@arg+3))^00h,c

	line	41
	
l3952:
	movf	((c:___xxtofl@sign))^00h,c,w
	btfsc	status,2
	goto	u4321
	goto	u4320
u4321:
	goto	l3958
u4320:
	
l3954:
	btfsc	((c:___xxtofl@val+3))^00h,c,7
	goto	u4330
	goto	u4331

u4331:
	goto	l3958
u4330:
	line	42
	
l3956:
	bsf	(0+(31/8)+(c:___xxtofl@arg))^00h,c,(31)&7
	line	43
	
l3958:
	movff	(c:___xxtofl@arg),(c:?___xxtofl)
	movff	(c:___xxtofl@arg+1),(c:?___xxtofl+1)
	movff	(c:___xxtofl@arg+2),(c:?___xxtofl+2)
	movff	(c:___xxtofl@arg+3),(c:?___xxtofl+3)
	line	44
	
l901:
	return	;funcret
	callstack 0
GLOBAL	__end_of___xxtofl
	__end_of___xxtofl:
	signat	___xxtofl,8316
	global	_PWM

;; *************** function _PWM *****************
;; Defined at:
;;		line 58 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dcVal          20   94[BANK0 ] int [10]
;;  percent        15   79[BANK0 ] unsigned char [15]
;;  index           2  118[BANK0 ] int 
;;  checkdutyCyc    2  116[BANK0 ] unsigned int 
;;  pwmStatus       2  114[BANK0 ] unsigned int 
;;  preScale        2    0        unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      41       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      43       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_LCD_Clear
;;		_LCD_String_xy
;;		_PWM2_Initialize
;;		_PWM2_LoadDutyValue
;;		_PWM2_OutputStatusGet
;;		_PWM_Output_D8_Enable
;;		_TMR2_Initialize
;;		_TMR2_StartTimer
;;		___lldiv
;;		___lmul
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	58
global __ptext4
__ptext4:
psect	text4
	file	"main.c"
	line	58
	
_PWM:
;incstack = 0
	callstack 21
	line	60
	
l4390:
;main.c: 59:     unsigned int checkdutyCycle, pwmStatus, preScale;;main.c: 60:     int dcVal[10] = {0, 103, 205, 308, 410, 512, 615, 717, 820, 922};
	lfsr	2,(PWM@F16999)
	lfsr	1,(PWM@dcVal)
	movlw	20-1
u4781:
	movff	plusw2,plusw1
	decf	wreg
	bc	u4781

	line	61
	
l4392:
;main.c: 61:     int index = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((PWM@index+1))&0ffh
	movlw	low(0)
	movwf	((PWM@index))&0ffh
	line	63
	
l4394:; BSR set to: 0

;main.c: 62:     char percent[15];;main.c: 63:     OSCSTATbits.HFOR =1;
	movlb	57	; () banked
	bsf	((14812))&0ffh,6	;volatile
	line	64
	
l4396:; BSR set to: 57

;main.c: 64:     OSCFRQ=0x02;
	movlw	low(02h)
	movwf	((14815))&0ffh	;volatile
	line	66
	
l4398:; BSR set to: 57

;main.c: 66:     ANSELB = 0b00000000;
	movlb	58	; () banked
	clrf	((14928))&0ffh	;volatile
	line	67
	
l4400:; BSR set to: 58

;main.c: 67:     TRISB= 0b00000000;
	clrf	((c:16323))^03f00h,c	;volatile
	line	68
	
l4402:; BSR set to: 58

;main.c: 68:     PORTB= 0b00000000;
	clrf	((c:16331))^03f00h,c	;volatile
	line	69
	
l4404:; BSR set to: 58

;main.c: 69:     TMR2_Initialize();
	call	_TMR2_Initialize	;wreg free
	line	70
	
l4406:
;main.c: 70:     TMR2_StartTimer();
	call	_TMR2_StartTimer	;wreg free
	line	72
	
l4408:
;main.c: 72:     PWM_Output_D8_Enable();
	call	_PWM_Output_D8_Enable	;wreg free
	line	73
	
l4410:
;main.c: 73:     PWM2_Initialize();
	call	_PWM2_Initialize	;wreg free
	line	74
	
l4412:
;main.c: 74:     PWM2_LoadDutyValue( dcVal[index] );
	movff	(PWM@dcVal),(c:PWM2_LoadDutyValue@dutyValue)
	movff	(PWM@dcVal+1),(c:PWM2_LoadDutyValue@dutyValue+1)
	call	_PWM2_LoadDutyValue	;wreg free
	line	79
	
l4414:
;main.c: 79:     checkdutyCycle =(uint16_t)((100UL*dcVal[index])/(4*(T2PR+1)));
	movff	(PWM@dcVal),(c:___lmul@multiplier)
	movff	(PWM@dcVal+1),(c:___lmul@multiplier+1)
	movlw	0
	btfsc	((c:___lmul@multiplier+1))^00h,c,7
	movlw	-1
	movwf	((c:___lmul@multiplier+2))^00h,c
	movwf	((c:___lmul@multiplier+3))^00h,c
	movlw	low(064h)
	movwf	((c:___lmul@multiplicand))^00h,c
	movlw	high(064h)
	movwf	((c:___lmul@multiplicand+1))^00h,c
	movlw	low highword(064h)
	movwf	((c:___lmul@multiplicand+2))^00h,c
	movlw	high highword(064h)
	movwf	((c:___lmul@multiplicand+3))^00h,c
	call	___lmul	;wreg free
	movff	0+?___lmul,(c:___lldiv@dividend)
	movff	1+?___lmul,(c:___lldiv@dividend+1)
	movff	2+?___lmul,(c:___lldiv@dividend+2)
	movff	3+?___lmul,(c:___lldiv@dividend+3)
	
	movf	((c:16299))^03f00h,c,w	;volatile
	movlb	0	; () banked
	movwf	(??_PWM+0+0)&0ffh
	clrf	(??_PWM+0+0+1)&0ffh

	bcf	status,0
	rlcf	(??_PWM+0+0)&0ffh
	rlcf	(??_PWM+0+1)&0ffh
	bcf	status,0
	rlcf	(??_PWM+0+0)&0ffh
	rlcf	(??_PWM+0+1)&0ffh
	movlw	04h
	addwf	(??_PWM+0+0)&0ffh
	movlw	0
	addwfc	(??_PWM+0+1)&0ffh
	movff	??_PWM+0+0,(c:___lldiv@divisor)
	movff	??_PWM+0+1,(c:___lldiv@divisor+1)
	movlw	0
	btfsc	((c:___lldiv@divisor+1))^00h,c,7
	movlw	-1
	movwf	((c:___lldiv@divisor+2))^00h,c
	movwf	((c:___lldiv@divisor+3))^00h,c
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(PWM@checkdutyCycle)
	movff	1+?___lldiv,(PWM@checkdutyCycle+1)
	line	81
	
l4416:
	movf	((c:16300))^03f00h,c,w	;volatile
	line	83
	
l4418:
;main.c: 83:     LCD_Clear();
	call	_LCD_Clear	;wreg free
	line	84
	
l4420:
;main.c: 84:     sprintf(percent, "%d", checkdutyCycle);
		movlw	low(PWM@percent)
	movlb	0	; () banked
	movwf	((sprintf@s))&0ffh

		movlw	low(STR_5)
	movwf	((sprintf@fmt))&0ffh

	movff	(PWM@checkdutyCycle),0+(?_sprintf+02h)
	movff	(PWM@checkdutyCycle+1),1+(?_sprintf+02h)
	call	_sprintf	;wreg free
	line	85
	
l4422:
;main.c: 85:     LCD_String_xy(2, 0, percent);
	movlw	low(0)
	movwf	((c:LCD_String_xy@pos))^00h,c
		movlw	low(PWM@percent)
	movwf	((c:LCD_String_xy@msg))^00h,c
	clrf	((c:LCD_String_xy@msg+1))^00h,c

	movlw	(02h)&0ffh
	
	call	_LCD_String_xy
	line	88
	
l4424:
;main.c: 88:         pwmStatus = PWM2_OutputStatusGet();
	call	_PWM2_OutputStatusGet	;wreg free
	movlb	0	; () banked
	movwf	(??_PWM+0+0)&0ffh
	movf	((??_PWM+0+0))&0ffh,w
	movwf	((PWM@pwmStatus))&0ffh
	clrf	((PWM@pwmStatus+1))&0ffh
	line	89
	
l4426:; BSR set to: 0

;main.c: 89:         PORTBbits.RB2 = pwmStatus;
	btfsc	(PWM@pwmStatus)&0ffh,0
	bra	u4795
	bcf	((c:16331))^03f00h,c,2	;volatile
	bra	u4796
	u4795:
	bsf	((c:16331))^03f00h,c,2	;volatile
	u4796:

	line	97
	
l4428:
;main.c: 97:         if (PORTEbits.RE1 == 1) {
	btfss	((c:16334))^03f00h,c,1	;volatile
	goto	u4801
	goto	u4800
u4801:
	goto	l4424
u4800:
	line	98
	
l4430:
;main.c: 98:             index++;
	movlb	0	; () banked
	infsnz	((PWM@index))&0ffh
	incf	((PWM@index+1))&0ffh
	line	100
	
l4432:; BSR set to: 0

;main.c: 100:             if (index == 10) { index = 0; }
		movlw	10
	xorwf	((PWM@index))&0ffh,w
iorwf	((PWM@index+1))&0ffh,w
	btfss	status,2
	goto	u4811
	goto	u4810

u4811:
	goto	l4436
u4810:
	
l4434:; BSR set to: 0

	movlw	high(0)
	movwf	((PWM@index+1))&0ffh
	movlw	low(0)
	movwf	((PWM@index))&0ffh
	line	101
	
l4436:; BSR set to: 0

;main.c: 101:             checkdutyCycle =(uint16_t)((100UL*dcVal[index])/(4*(T2PR+1)));
	movf	((PWM@index))&0ffh,w
	mullw	02h
	movf	(prodl)^03f00h,c,w
	addlw	low(PWM@dcVal)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:___lmul@multiplier)
	movff	postdec2,(c:___lmul@multiplier+1)
	movlw	0
	btfsc	((c:___lmul@multiplier+1))^00h,c,7
	movlw	-1
	movwf	((c:___lmul@multiplier+2))^00h,c
	movwf	((c:___lmul@multiplier+3))^00h,c
	movlw	low(064h)
	movwf	((c:___lmul@multiplicand))^00h,c
	movlw	high(064h)
	movwf	((c:___lmul@multiplicand+1))^00h,c
	movlw	low highword(064h)
	movwf	((c:___lmul@multiplicand+2))^00h,c
	movlw	high highword(064h)
	movwf	((c:___lmul@multiplicand+3))^00h,c
	call	___lmul	;wreg free
	movff	0+?___lmul,(c:___lldiv@dividend)
	movff	1+?___lmul,(c:___lldiv@dividend+1)
	movff	2+?___lmul,(c:___lldiv@dividend+2)
	movff	3+?___lmul,(c:___lldiv@dividend+3)
	
	movf	((c:16299))^03f00h,c,w	;volatile
	movlb	0	; () banked
	movwf	(??_PWM+0+0)&0ffh
	clrf	(??_PWM+0+0+1)&0ffh

	bcf	status,0
	rlcf	(??_PWM+0+0)&0ffh
	rlcf	(??_PWM+0+1)&0ffh
	bcf	status,0
	rlcf	(??_PWM+0+0)&0ffh
	rlcf	(??_PWM+0+1)&0ffh
	movlw	04h
	addwf	(??_PWM+0+0)&0ffh
	movlw	0
	addwfc	(??_PWM+0+1)&0ffh
	movff	??_PWM+0+0,(c:___lldiv@divisor)
	movff	??_PWM+0+1,(c:___lldiv@divisor+1)
	movlw	0
	btfsc	((c:___lldiv@divisor+1))^00h,c,7
	movlw	-1
	movwf	((c:___lldiv@divisor+2))^00h,c
	movwf	((c:___lldiv@divisor+3))^00h,c
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(PWM@checkdutyCycle)
	movff	1+?___lldiv,(PWM@checkdutyCycle+1)
	line	104
	
l4438:
;main.c: 104:             PWM2_LoadDutyValue( dcVal[index] );
	movlb	0	; () banked
	movf	((PWM@index))&0ffh,w
	mullw	02h
	movf	(prodl)^03f00h,c,w
	addlw	low(PWM@dcVal)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:PWM2_LoadDutyValue@dutyValue)
	movff	postdec2,(c:PWM2_LoadDutyValue@dutyValue+1)
	call	_PWM2_LoadDutyValue	;wreg free
	line	107
	
l4440:
;main.c: 107:             LCD_Clear();
	call	_LCD_Clear	;wreg free
	line	108
	
l4442:
;main.c: 108:             sprintf(percent, "%d", checkdutyCycle);
		movlw	low(PWM@percent)
	movlb	0	; () banked
	movwf	((sprintf@s))&0ffh

		movlw	low(STR_6)
	movwf	((sprintf@fmt))&0ffh

	movff	(PWM@checkdutyCycle),0+(?_sprintf+02h)
	movff	(PWM@checkdutyCycle+1),1+(?_sprintf+02h)
	call	_sprintf	;wreg free
	line	109
	
l4444:
;main.c: 109:             LCD_String_xy(2, 0, percent);
	movlw	low(0)
	movwf	((c:LCD_String_xy@pos))^00h,c
		movlw	low(PWM@percent)
	movwf	((c:LCD_String_xy@msg))^00h,c
	clrf	((c:LCD_String_xy@msg+1))^00h,c

	movlw	(02h)&0ffh
	
	call	_LCD_String_xy
	line	110
	
l4446:
;main.c: 110:             _delay((unsigned long)((1000)*(4000000/4000.0)));
	asmopt push
asmopt off
movlw  6
	movlb	0	; () banked
movwf	(??_PWM+0+0+1)&0ffh
movlw	19
movwf	(??_PWM+0+0)&0ffh
	movlw	173
u4847:
decfsz	wreg,f
	bra	u4847
	decfsz	(??_PWM+0+0)&0ffh,f
	bra	u4847
	decfsz	(??_PWM+0+0+1)&0ffh,f
	bra	u4847
	nop2
asmopt pop

	goto	l4424
	return	;funcret
	callstack 0
	line	113
GLOBAL	__end_of_PWM
	__end_of_PWM:
	signat	_PWM,89
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 9 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_sprintf.c"
;; Parameters:    Size  Location     Type
;;  s               1   59[BANK0 ] PTR unsigned char 
;;		 -> PWM@percent(15), readADC@buffer(12), 
;;  fmt             1   60[BANK0 ] PTR const unsigned char 
;;		 -> STR_6(3), STR_5(3), STR_3(5), 
;; Auto vars:     Size  Location     Type
;;  f              11   66[BANK0 ] struct _IO_FILE
;;  ret             2    0        int 
;;  ap              1   65[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   59[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      18       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_vfprintf
;; This function is called by:
;;		_readADC
;;		_PWM
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_sprintf.c"
	line	9
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_sprintf.c"
	line	9
	
_sprintf:
;incstack = 0
	callstack 21
	line	15
	
l4360:
		movlw	low(?_sprintf+02h)
	movlb	0	; () banked
	movwf	((sprintf@ap))&0ffh

	line	16
		movff	(sprintf@s),(sprintf@f)

	line	17
	
l4362:; BSR set to: 0

	movlw	high(0)
	movwf	(1+(sprintf@f+02h))&0ffh
	movlw	low(0)
	movwf	(0+(sprintf@f+02h))&0ffh
	line	18
	
l4364:; BSR set to: 0

	movlw	high(0)
	movwf	(1+(sprintf@f+09h))&0ffh
	movlw	low(0)
	movwf	(0+(sprintf@f+09h))&0ffh
	line	19
	
l4366:; BSR set to: 0

		movlw	low(sprintf@f)
	movwf	((vfprintf@fp))&0ffh

		movff	(sprintf@fmt),(vfprintf@fmt)

		movlw	low(sprintf@ap)
	movwf	((vfprintf@ap))&0ffh

	call	_vfprintf	;wreg free
	line	20
	
l4368:
	movlb	0	; () banked
	movf	((sprintf@s))&0ffh,w
	addwf	(0+(sprintf@f+02h))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	23
	
l921:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_vfprintf

;; *************** function _vfprintf *****************
;; Defined at:
;;		line 1817 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              1   55[BANK0 ] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  fmt             1   56[BANK0 ] PTR const unsigned char 
;;		 -> STR_6(3), STR_5(3), STR_3(5), 
;;  ap              1   57[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  cfmt            1   58[BANK0 ] PTR unsigned char 
;;		 -> STR_6(3), STR_5(3), STR_3(5), 
;; Return value:  Size  Location     Type
;;                  2   55[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_vfpfcnvrt
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	1817
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	1817
	
_vfprintf:; BSR set to: 0

;incstack = 0
	callstack 21
	line	1822
	
l4350:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1817: int vfprintf(FILE *fp, const char *fmt, va_list ap);C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1818: {;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1820:     char *cfmt;;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1822:     cfmt = (char *)fmt;
		movff	(vfprintf@fmt),(vfprintf@cfmt)

	line	1826
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1826:     while (*cfmt) {
	goto	l4354
	line	1830
	
l4352:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1830:    vfpfcnvrt(fp, &cfmt, ap);
		movff	(vfprintf@fp),(vfpfcnvrt@fp)

		movlw	low(vfprintf@cfmt)
	movlb	0	; () banked
	movwf	((vfpfcnvrt@fmt))&0ffh

		movff	(vfprintf@ap),(vfpfcnvrt@ap)

	call	_vfpfcnvrt	;wreg free
	line	1826
	
l4354:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1826:     while (*cfmt) {
	movff	(vfprintf@cfmt),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u4761
	goto	u4760
u4761:
	goto	l4352
u4760:
	line	1835
	
l4356:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1835:  return 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((?_vfprintf+1))&0ffh
	movlw	low(0)
	movwf	((?_vfprintf))&0ffh
	line	1840
	
l1062:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_vfprintf
	__end_of_vfprintf:
	signat	_vfprintf,12410
	global	_vfpfcnvrt

;; *************** function _vfpfcnvrt *****************
;; Defined at:
;;		line 1177 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              1   46[BANK0 ] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  fmt             1   47[BANK0 ] PTR PTR unsigned char 
;;		 -> vfprintf@cfmt(1), 
;;  ap              1   48[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  convarg         4   49[BANK0 ] struct .
;;  cp              1   54[BANK0 ] PTR unsigned char 
;;		 -> STR_6(3), STR_5(3), STR_3(5), 
;;  c               1   53[BANK0 ] unsigned char 
;;  done            1    0        _Bool 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_dtoa
;;		_efgtoa
;;		_fputc
;;		_read_prec_or_width
;; This function is called by:
;;		_vfprintf
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=1
	line	1177
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	1177
	
_vfpfcnvrt:; BSR set to: 0

;incstack = 0
	callstack 21
	line	1201
	
l4280:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1177: vfpfcnvrt(FILE *fp, char *fmt[], va_list ap);C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1178: {;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1179:     char c, *cp;;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1180:     _Bool done;;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1188:  } convarg;;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1201:     if ((*fmt)[0] == '%') {
	movlb	0	; () banked
	movf	((vfpfcnvrt@fmt))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movff	indf2,tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	xorlw	025h
	btfss	status,2
	goto	u4711
	goto	u4710
u4711:
	goto	l4344
u4710:
	line	1202
	
l4282:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1202:         ++*fmt;
	movf	((vfpfcnvrt@fmt))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	incf	indf2

	line	1204
	
l4284:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1204:         flags = width = 0;
	movlw	high(0)
	movwf	((_width+1))&0ffh
	movlw	low(0)
	movwf	((_width))&0ffh
	movff	(_width),(_flags)
	line	1205
	
l4286:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1205:         prec = -1;
	setf	((_prec))&0ffh
	setf	((_prec+1))&0ffh
	line	1265
	
l4288:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1265:         if ((*fmt)[0] == '.') {
	movf	((vfpfcnvrt@fmt))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movff	indf2,tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	xorlw	02Eh
	btfss	status,2
	goto	u4721
	goto	u4720
u4721:
	goto	l4294
u4720:
	line	1266
	
l4290:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1266:             ++*fmt;
	movf	((vfpfcnvrt@fmt))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	incf	indf2

	line	1267
	
l4292:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1267:    prec = read_prec_or_width(fmt, ap);
		movff	(vfpfcnvrt@fmt),(c:read_prec_or_width@fmt)

		movff	(vfpfcnvrt@ap),(c:read_prec_or_width@ap)

	call	_read_prec_or_width	;wreg free
	movff	0+?_read_prec_or_width,(_prec)
	movff	1+?_read_prec_or_width,(_prec+1)
	line	1291
	
l4294:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1291:   cp = *fmt;
	movlb	0	; () banked
	movf	((vfpfcnvrt@fmt))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((vfpfcnvrt@cp))&0ffh
	line	1361
	
l4296:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1361:   if (*cp == 'd' || *cp == 'i') {
	movff	(vfpfcnvrt@cp),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	xorlw	064h
	btfsc	status,2
	goto	u4731
	goto	u4730
u4731:
	goto	l4300
u4730:
	
l4298:; BSR set to: 0

	movff	(vfpfcnvrt@cp),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	xorlw	069h
	btfss	status,2
	goto	u4741
	goto	u4740
u4741:
	goto	l4308
u4740:
	line	1404
	
l4300:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1404:    convarg.sint = (vfpf_sint_t)(int)(*(int *)__va_arg(*(int **)ap, (int)0));
	movf	((vfpfcnvrt@ap))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(vfpfcnvrt@convarg)
	movff	postinc2,(vfpfcnvrt@convarg+1)
	line	1406
	
l4302:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1406:    *fmt = cp+1;
	movf	((vfpfcnvrt@fmt))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	incf	((vfpfcnvrt@cp))&0ffh,w
	movwf	indf2,c

	line	1432
	
l4304:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1432:    return (void) dtoa(fp, convarg.sint);;	Return value of _vfpfcnvrt is never used
		movff	(vfpfcnvrt@fp),(c:dtoa@fp)

	movff	(vfpfcnvrt@convarg),(c:dtoa@d)
	movff	(vfpfcnvrt@convarg+1),(c:dtoa@d+1)
	call	_dtoa	;wreg free
	goto	l1040
	line	1689
	
l4308:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1689:   cp = *fmt;
	movf	((vfpfcnvrt@fmt))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((vfpfcnvrt@cp))&0ffh
	line	1690
	
l4310:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1690:   c = *cp;
	movff	(vfpfcnvrt@cp),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(vfpfcnvrt@c)
	line	1691
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1691:   switch(c) {
	goto	l4318
	line	1695
	
l4312:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1695:     cp++;
	incf	((vfpfcnvrt@cp))&0ffh
	line	1696
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1696:     break;
	goto	l4320
	line	1721
	
l4314:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1721:     c = 'l';
	movlw	low(06Ch)
	movwf	((vfpfcnvrt@c))&0ffh
	line	1722
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1722:     break;
	goto	l4320
	line	1723
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1723:    default:
	
l1046:; BSR set to: 0

	line	1724
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1724:     c = 0;
	clrf	((vfpfcnvrt@c))&0ffh
	line	1725
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1725:     break;
	goto	l4320
	line	1726
	
l4318:; BSR set to: 0

	movf	((vfpfcnvrt@c))&0ffh,w
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 76 to 108
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	76^0	; case 76
	skipnz
	goto	l4312
	xorlw	102^76	; case 102
	skipnz
	goto	l4314
	xorlw	108^102	; case 108
	skipnz
	goto	l4312
	goto	l1046

	line	1728
	
l4320:; BSR set to: 0

	movff	(vfpfcnvrt@cp),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	xorlw	066h
	btfss	status,2
	goto	u4751
	goto	u4750
u4751:
	goto	l4340
u4750:
	goto	l4328
	line	1756
	
l4322:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1756:      convarg.f = (long double)(*(double *)__va_arg(*(double **)ap, (double)0));
	movf	((vfpfcnvrt@ap))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movff	indf2,??_vfpfcnvrt+0+0
	movlw	04h
	addwf	indf2
	movf	(??_vfpfcnvrt+0+0)^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(vfpfcnvrt@convarg)
	movff	postinc2,(vfpfcnvrt@convarg+1)
	movff	postinc2,(vfpfcnvrt@convarg+2)
	movff	postinc2,(vfpfcnvrt@convarg+3)
	line	1757
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1757:      break;
	goto	l4330
	line	1759
	
l4324:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1759:      convarg.f = (long double)(*(long double *)__va_arg(*(long double **)ap, (long double)0));
	movf	((vfpfcnvrt@ap))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movff	indf2,??_vfpfcnvrt+0+0
	movlw	04h
	addwf	indf2
	movf	(??_vfpfcnvrt+0+0)^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(vfpfcnvrt@convarg)
	movff	postinc2,(vfpfcnvrt@convarg+1)
	movff	postinc2,(vfpfcnvrt@convarg+2)
	movff	postinc2,(vfpfcnvrt@convarg+3)
	line	1760
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1760:      break;
	goto	l4330
	line	1761
	
l4328:; BSR set to: 0

	movf	((vfpfcnvrt@c))&0ffh,w
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 76 to 108
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	76^0	; case 76
	skipnz
	goto	l4324
	xorlw	108^76	; case 108
	skipnz
	goto	l4322
	goto	l4330

	line	1762
	
l4330:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1762:    *fmt = cp+1;
	movf	((vfpfcnvrt@fmt))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	incf	((vfpfcnvrt@cp))&0ffh,w
	movwf	indf2,c

	line	1763
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1763:    switch (*cp) {
	goto	l4338
	line	1790
	
l4332:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1790:      return (void) efgtoa(fp, convarg.f, *cp);;	Return value of _vfpfcnvrt is never used
		movff	(vfpfcnvrt@fp),(c:efgtoa@fp)

	movff	(vfpfcnvrt@convarg),(c:efgtoa@f)
	movff	(vfpfcnvrt@convarg+1),(c:efgtoa@f+1)
	movff	(vfpfcnvrt@convarg+2),(c:efgtoa@f+2)
	movff	(vfpfcnvrt@convarg+3),(c:efgtoa@f+3)
	movff	(vfpfcnvrt@cp),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:efgtoa@c)
	call	_efgtoa	;wreg free
	goto	l1040
	line	1792
	
l4338:; BSR set to: 0

	movff	(vfpfcnvrt@cp),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 102 to 102
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	xorlw	102^0	; case 102
	skipnz
	goto	l4332
	goto	l4340

	line	1806
	
l4340:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1806:         ++*fmt;
	movlb	0	; () banked
	movf	((vfpfcnvrt@fmt))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	incf	indf2

	goto	l1040
	line	1811
	
l4344:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1811:     fputc((int)(*fmt)[0], fp);
	movf	((vfpfcnvrt@fmt))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movff	indf2,tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w

	movwf	((c:fputc@c))^00h,c
	clrf	((c:fputc@c+1))^00h,c
		movff	(vfpfcnvrt@fp),(c:fputc@fp)

	call	_fputc	;wreg free
	goto	l4340
	line	1814
	
l1040:
	return	;funcret
	callstack 0
GLOBAL	__end_of_vfpfcnvrt
	__end_of_vfpfcnvrt:
	signat	_vfpfcnvrt,12409
	global	_read_prec_or_width

;; *************** function _read_prec_or_width *****************
;; Defined at:
;;		line 1158 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fmt             1    4[COMRAM] PTR PTR const unsigned c
;;		 -> vfprintf@cfmt(1), 
;;  ap              1    5[COMRAM] PTR PTR void [1]
;;		 -> sprintf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  c               1    8[COMRAM] unsigned char 
;;  n               2    9[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2    4[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=1
	line	1158
global __ptext8
__ptext8:
psect	text8
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	1158
	
_read_prec_or_width:
;incstack = 0
	callstack 25
	line	1159
	
l3674:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1159:     int n = 0;
	movlw	high(0)
	movwf	((c:read_prec_or_width@n+1))^00h,c
	movlw	low(0)
	movwf	((c:read_prec_or_width@n))^00h,c
	line	1160
	
l3676:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1160:     if ((*fmt)[0] == '*') {
	movf	((c:read_prec_or_width@fmt))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	indf2,tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	xorlw	02Ah
	btfss	status,2
	goto	u4021
	goto	u4020
u4021:
	goto	l3686
u4020:
	line	1161
	
l3678:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1161:         ++*fmt;
	movf	((c:read_prec_or_width@fmt))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	incf	indf2

	line	1162
	
l3680:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1162:         n = (*(int *)__va_arg(*(int **)*ap, (int)0));
	movf	((c:read_prec_or_width@ap))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:read_prec_or_width@n)
	movff	postinc2,(c:read_prec_or_width@n+1)
	line	1163
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1163:     } else {
	goto	l1028
	line	1166
	
l3682:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1166:             n = n * 10 + c;
	movlw	low(0Ah)
	mulwf	((c:read_prec_or_width@n))^00h,c
	movff	prodl,??_read_prec_or_width+0+0
	movff	prodh,??_read_prec_or_width+0+0+1
	mulwf	((c:read_prec_or_width@n+1))^00h,c
	movf	(prodl),c,w
	addwf	(??_read_prec_or_width+0+0+1)^00h,c,f
	movf	((c:read_prec_or_width@c))^00h,c,w
	addwf	(??_read_prec_or_width+0+0)^00h,c,w
	movwf	((c:read_prec_or_width@n))^00h,c
	movlw	0
	addwfc	(??_read_prec_or_width+0+1)^00h,c,w
	movwf	1+((c:read_prec_or_width@n))^00h,c
	line	1167
	
l3684:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1167:             ++*fmt;
	movf	((c:read_prec_or_width@fmt))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	incf	indf2

	line	1165
	
l3686:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1165:         while ((c = ((unsigned)(*fmt)[0]) - '0') < 10) {
	movf	((c:read_prec_or_width@fmt))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	indf2,tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	addlw	low(0D0h)
	movwf	((c:read_prec_or_width@c))^00h,c
		movlw	0Ah-1
	cpfsgt	((c:read_prec_or_width@c))^00h,c
	goto	u4031
	goto	u4030

u4031:
	goto	l3682
u4030:
	line	1169
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1169:     }
	
l1028:
	line	1170
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 1170:     return n;
	movff	(c:read_prec_or_width@n),(c:?_read_prec_or_width)
	movff	(c:read_prec_or_width@n+1),(c:?_read_prec_or_width+1)
	line	1171
	
l1032:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_prec_or_width
	__end_of_read_prec_or_width:
	signat	_read_prec_or_width,8314
	global	_efgtoa

;; *************** function _efgtoa *****************
;; Defined at:
;;		line 587 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              1   80[COMRAM] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  f               4   81[COMRAM] PTR struct _IO_FILE
;;  c               1   85[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  u               4   42[BANK0 ] struct flui
;;  g               4   36[BANK0 ] struct flui
;;  l               4   31[BANK0 ] struct flui
;;  h               4   27[BANK0 ] struct flui
;;  ou              4   21[BANK0 ] struct flui
;;  n               2   40[BANK0 ] int 
;;  i               2   25[BANK0 ] int 
;;  w               2   19[BANK0 ] int 
;;  e               2   17[BANK0 ] int 
;;  m               2   15[BANK0 ] int 
;;  d               2   13[BANK0 ] int 
;;  t               2    6[BANK0 ] int 
;;  p               2    4[BANK0 ] int 
;;  ne              2    2[BANK0 ] int 
;;  sign            1   35[BANK0 ] unsigned char 
;;  nmode           1   12[BANK0 ] unsigned char 
;;  mode            1   11[BANK0 ] unsigned char 
;;  pp              1   10[BANK0 ] unsigned char 
;;  esign           1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      44       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6      46       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       52 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		___fladd
;;		___fldiv
;;		___fleq
;;		___flge
;;		___flmul
;;		___flneg
;;		___flsub
;;		___fltol
;;		___fpclassifyf
;;		_floorf
;;		_labs
;;		_memcpy
;;		_pad
;;		_strcpy
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=1
	line	587
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	587
	
_efgtoa:
;incstack = 0
	callstack 21
	line	595
	
l4060:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 587: static void efgtoa(FILE *fp, long double f, char c);C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 588: {;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 589:     char mode, nmode, pp, sign, esign;;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 590:     int d, e, i, m, n, ne, p, t, w;;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 591:     long double h, l;
	movlb	0	; () banked
	clrf	((efgtoa@sign))&0ffh
	line	596
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 596:     g.f = f;
	movff	(c:efgtoa@f),(efgtoa@g)
	movff	(c:efgtoa@f+1),(efgtoa@g+1)
	movff	(c:efgtoa@f+2),(efgtoa@g+2)
	movff	(c:efgtoa@f+3),(efgtoa@g+3)
	line	597
	
l4062:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 597:     if (g.f < 0.0) {
	btfsc	((efgtoa@g+3))&0ffh,7
	goto	u4390
	goto	u4391

u4391:
	goto	l4068
u4390:
	line	598
	
l4064:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 598:         sign = 1;
	movlw	low(01h)
	movwf	((efgtoa@sign))&0ffh
	line	599
	
l4066:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 599:         g.f = -g.f;
	movff	(efgtoa@g),(c:___flneg@f1)
	movff	(efgtoa@g+1),(c:___flneg@f1+1)
	movff	(efgtoa@g+2),(c:___flneg@f1+2)
	movff	(efgtoa@g+3),(c:___flneg@f1+3)
	call	___flneg	;wreg free
	movff	0+?___flneg,(efgtoa@g)
	movff	1+?___flneg,(efgtoa@g+1)
	movff	2+?___flneg,(efgtoa@g+2)
	movff	3+?___flneg,(efgtoa@g+3)
	
	line	603
	
l4068:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 603:     n = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((efgtoa@n+1))&0ffh
	movlw	low(0)
	movwf	((efgtoa@n))&0ffh
	line	604
	
l4070:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 604:     w = width;
	movff	(_width),(efgtoa@w)
	movff	(_width+1),(efgtoa@w+1)
	line	605
	
l4072:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 605:     if (sign
	movf	((efgtoa@sign))&0ffh,w
	btfsc	status,2
	goto	u4401
	goto	u4400
u4401:
	goto	l4082
u4400:
	line	610
	
l4074:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 609:    ) {;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 610:   sign = sign ? '-' : '+';
	movf	((efgtoa@sign))&0ffh,w
	btfss	status,2
	goto	u4411
	goto	u4410
u4411:
	goto	l4078
u4410:
	
l4076:; BSR set to: 0

	movlw	high(02Bh)
	movwf	((_efgtoa$1337+1))&0ffh
	movlw	low(02Bh)
	movwf	((_efgtoa$1337))&0ffh
	goto	l4080
	
l4078:; BSR set to: 0

	movlw	high(02Dh)
	movwf	((_efgtoa$1337+1))&0ffh
	movlw	low(02Dh)
	movwf	((_efgtoa$1337))&0ffh
	
l4080:; BSR set to: 0

	movff	(_efgtoa$1337),(efgtoa@sign)
	line	619
	
l4082:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 619:     if (( __fpclassifyf(g.f) == 1 )) {
	movff	(efgtoa@g),(c:___fpclassifyf@x)
	movff	(efgtoa@g+1),(c:___fpclassifyf@x+1)
	movff	(efgtoa@g+2),(c:___fpclassifyf@x+2)
	movff	(efgtoa@g+3),(c:___fpclassifyf@x+3)
	call	___fpclassifyf	;wreg free
		decf	(0+?___fpclassifyf)^00h,c,w
iorwf	(1+?___fpclassifyf)^00h,c,w
	btfss	status,2
	goto	u4421
	goto	u4420

u4421:
	goto	l4100
u4420:
	line	620
	
l4084:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 620:   if (sign) {
	movlb	0	; () banked
	movf	((efgtoa@sign))&0ffh,w
	btfsc	status,2
	goto	u4431
	goto	u4430
u4431:
	goto	l4092
u4430:
	line	621
	
l4086:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 621:    dbuf[0] = sign;
	movff	(efgtoa@sign),(_dbuf)
	line	622
	
l4088:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 622:    w--;
	decf	((efgtoa@w))&0ffh
	btfss	status,0
	decf	((efgtoa@w+1))&0ffh
	line	623
	
l4090:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 623:    n = 1;
	movlw	high(01h)
	movwf	((efgtoa@n+1))&0ffh
	movlw	low(01h)
	movwf	((efgtoa@n))&0ffh
	line	632
	
l4092:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 631:   {;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 632:             strcpy(&dbuf[n], "inf");
	movlw	low(_dbuf)
	addwf	((efgtoa@n))&0ffh,w
	movwf	((c:strcpy@dest))^00h,c
	movlw	high(_dbuf)
	addwfc	((efgtoa@n+1))&0ffh,w
	movwf	1+((c:strcpy@dest))^00h,c
		movlw	low(STR_7)
	movwf	((c:strcpy@src))^00h,c

	call	_strcpy	;wreg free
	line	634
	
l4094:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 633:         };C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 634:         w -= ((sizeof("inf")/sizeof("inf"[0]))-1);
	movlb	0	; () banked
	movlw	low(-3)
	addwf	((efgtoa@w))&0ffh
	movlw	high(-3)
	addwfc	((efgtoa@w+1))&0ffh
	line	635
	
l4096:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 635:         return (void) pad(fp, &dbuf[0], w);
		movff	(c:efgtoa@fp),(c:pad@fp)

		movlw	low(_dbuf)
	movwf	((c:pad@buf))^00h,c
	movlw	high(_dbuf)
	movwf	((c:pad@buf+1))^00h,c

	movff	(efgtoa@w),(c:pad@p)
	movff	(efgtoa@w+1),(c:pad@p+1)
	call	_pad	;wreg free
	goto	l983
	line	637
	
l4100:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 637:     if (( __fpclassifyf(g.f) == 0 )) {
	movff	(efgtoa@g),(c:___fpclassifyf@x)
	movff	(efgtoa@g+1),(c:___fpclassifyf@x+1)
	movff	(efgtoa@g+2),(c:___fpclassifyf@x+2)
	movff	(efgtoa@g+3),(c:___fpclassifyf@x+3)
	call	___fpclassifyf	;wreg free
	movf	(0+?___fpclassifyf)^00h,c,w
iorwf	(1+?___fpclassifyf)^00h,c,w
	btfss	status,2
	goto	u4441
	goto	u4440

u4441:
	goto	l4118
u4440:
	line	638
	
l4102:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 638:   if (sign) {
	movlb	0	; () banked
	movf	((efgtoa@sign))&0ffh,w
	btfsc	status,2
	goto	u4451
	goto	u4450
u4451:
	goto	l4110
u4450:
	line	639
	
l4104:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 639:    dbuf[0] = sign;
	movff	(efgtoa@sign),(_dbuf)
	line	640
	
l4106:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 640:    w--;
	decf	((efgtoa@w))&0ffh
	btfss	status,0
	decf	((efgtoa@w+1))&0ffh
	line	641
	
l4108:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 641:    n = 1;
	movlw	high(01h)
	movwf	((efgtoa@n+1))&0ffh
	movlw	low(01h)
	movwf	((efgtoa@n))&0ffh
	line	650
	
l4110:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 649:   {;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 650:             strcpy(&dbuf[n], "nan");
	movlw	low(_dbuf)
	addwf	((efgtoa@n))&0ffh,w
	movwf	((c:strcpy@dest))^00h,c
	movlw	high(_dbuf)
	addwfc	((efgtoa@n+1))&0ffh,w
	movwf	1+((c:strcpy@dest))^00h,c
		movlw	low(STR_10)
	movwf	((c:strcpy@src))^00h,c

	call	_strcpy	;wreg free
	goto	l4094
	line	657
	
l4118:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 657:     u.f = 1.0;
	movlw	low(normalize32(0x3f800000))
	movlb	0	; () banked
	movwf	((efgtoa@u))&0ffh
	movlw	high(normalize32(0x3f800000))
	movwf	((efgtoa@u+1))&0ffh
	movlw	low highword(normalize32(0x3f800000))
	movwf	((efgtoa@u+2))&0ffh
	movlw	high highword(normalize32(0x3f800000))
	movwf	((efgtoa@u+3))&0ffh
	line	658
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 658:     e = 0;
	movlw	high(0)
	movwf	((efgtoa@e+1))&0ffh
	movlw	low(0)
	movwf	((efgtoa@e))&0ffh
	line	659
	
l4120:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 659:  if (!(g.f == 0.0)) {
	movff	(efgtoa@g),(c:___fleq@ff1)
	movff	(efgtoa@g+1),(c:___fleq@ff1+1)
	movff	(efgtoa@g+2),(c:___fleq@ff1+2)
	movff	(efgtoa@g+3),(c:___fleq@ff1+3)
	movlw	low(normalize32(0x0))
	movwf	((c:___fleq@ff2))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fleq@ff2+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fleq@ff2+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fleq@ff2+3))^00h,c
	call	___fleq	;wreg free
	btfsc	status,0
	goto	u4461
	goto	u4460
u4461:
	goto	l986
u4460:
	goto	l4126
	line	660
	
l988:
	line	661
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 661:    u = ou;
	movff	(efgtoa@ou),(efgtoa@u)
	movff	(efgtoa@ou+1),(efgtoa@u+1)
	movff	(efgtoa@ou+2),(efgtoa@u+2)
	movff	(efgtoa@ou+3),(efgtoa@u+3)
	line	662
	
l4124:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 662:    ++e;
	movlb	0	; () banked
	infsnz	((efgtoa@e))&0ffh
	incf	((efgtoa@e+1))&0ffh
	line	660
	
l4126:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 660:   while ((labs((g).u-((ou.f = u.f*10.0,ou)).u) <= 1) || g.f > ou.f) {
	movff	(efgtoa@u),(c:___flmul@b)
	movff	(efgtoa@u+1),(c:___flmul@b+1)
	movff	(efgtoa@u+2),(c:___flmul@b+2)
	movff	(efgtoa@u+3),(c:___flmul@b+3)
	movlw	low(normalize32(0x41200000))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x41200000))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x41200000))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x41200000))
	movwf	((c:___flmul@a+3))^00h,c
	call	___flmul	;wreg free
	movff	0+?___flmul,(efgtoa@ou)
	movff	1+?___flmul,(efgtoa@ou+1)
	movff	2+?___flmul,(efgtoa@ou+2)
	movff	3+?___flmul,(efgtoa@ou+3)
	
	
l4128:
	movlb	0	; () banked
	movf	((efgtoa@ou))&0ffh,w
	subwf	((efgtoa@g))&0ffh,w
	movwf	((c:labs@a))^00h,c
	movf	((efgtoa@ou+1))&0ffh,w
	subwfb	((efgtoa@g+1))&0ffh,w
	movwf	1+((c:labs@a))^00h,c
	
	movf	((efgtoa@ou+2))&0ffh,w
	subwfb	((efgtoa@g+2))&0ffh,w
	movwf	2+((c:labs@a))^00h,c
	
	movf	((efgtoa@ou+3))&0ffh,w
	subwfb	((efgtoa@g+3))&0ffh,w
	movwf	3+((c:labs@a))^00h,c
	call	_labs	;wreg free
	btfsc	(3+?_labs)^00h,c,7
	goto	u4471
	movf	(3+?_labs)^00h,c,w
	iorwf	(2+?_labs)^00h,c,w
	iorwf	(1+?_labs)^00h,c,w
	bnz	u4470
	movlw	2
	subwf	 (0+?_labs)^00h,c,w
	btfss	status,0
	goto	u4471
	goto	u4470

u4471:
	goto	l988
u4470:
	
l4130:
	movff	(efgtoa@ou),(c:___flge@ff1)
	movff	(efgtoa@ou+1),(c:___flge@ff1+1)
	movff	(efgtoa@ou+2),(c:___flge@ff1+2)
	movff	(efgtoa@ou+3),(c:___flge@ff1+3)
	movff	(efgtoa@g),(c:___flge@ff2)
	movff	(efgtoa@g+1),(c:___flge@ff2+1)
	movff	(efgtoa@g+2),(c:___flge@ff2+2)
	movff	(efgtoa@g+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfss	status,0
	goto	u4481
	goto	u4480
u4481:
	goto	l988
u4480:
	line	664
	
l4132:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 664:   if ((labs((g).u-(u).u) <= 1)) {
	movlb	0	; () banked
	movf	((efgtoa@u))&0ffh,w
	subwf	((efgtoa@g))&0ffh,w
	movwf	((c:labs@a))^00h,c
	movf	((efgtoa@u+1))&0ffh,w
	subwfb	((efgtoa@g+1))&0ffh,w
	movwf	1+((c:labs@a))^00h,c
	
	movf	((efgtoa@u+2))&0ffh,w
	subwfb	((efgtoa@g+2))&0ffh,w
	movwf	2+((c:labs@a))^00h,c
	
	movf	((efgtoa@u+3))&0ffh,w
	subwfb	((efgtoa@g+3))&0ffh,w
	movwf	3+((c:labs@a))^00h,c
	call	_labs	;wreg free
	btfsc	(3+?_labs)^00h,c,7
	goto	u4490
	movf	(3+?_labs)^00h,c,w
	iorwf	(2+?_labs)^00h,c,w
	iorwf	(1+?_labs)^00h,c,w
	bnz	u4491
	movlw	2
	subwf	 (0+?_labs)^00h,c,w
	btfsc	status,0
	goto	u4491
	goto	u4490

u4491:
	goto	l4144
u4490:
	line	665
	
l4134:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 665:    g = u;
	movff	(efgtoa@u),(efgtoa@g)
	movff	(efgtoa@u+1),(efgtoa@g+1)
	movff	(efgtoa@u+2),(efgtoa@g+2)
	movff	(efgtoa@u+3),(efgtoa@g+3)
	line	666
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 666:   }
	goto	l986
	line	669
	
l4136:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 669:     u.f = u.f/10.0;
	movff	(efgtoa@u),(c:___fldiv@b)
	movff	(efgtoa@u+1),(c:___fldiv@b+1)
	movff	(efgtoa@u+2),(c:___fldiv@b+2)
	movff	(efgtoa@u+3),(c:___fldiv@b+3)
	movlw	low(normalize32(0x41200000))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x41200000))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x41200000))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x41200000))
	movwf	((c:___fldiv@a+3))^00h,c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(efgtoa@u)
	movff	1+?___fldiv,(efgtoa@u+1)
	movff	2+?___fldiv,(efgtoa@u+2)
	movff	3+?___fldiv,(efgtoa@u+3)
	
	line	670
	
l4138:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 670:     --e;
	movlb	0	; () banked
	decf	((efgtoa@e))&0ffh
	btfss	status,0
	decf	((efgtoa@e+1))&0ffh
	line	671
	
l4140:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 671:     if ((labs((g).u-(u).u) <= 1)) {
	movf	((efgtoa@u))&0ffh,w
	subwf	((efgtoa@g))&0ffh,w
	movwf	((c:labs@a))^00h,c
	movf	((efgtoa@u+1))&0ffh,w
	subwfb	((efgtoa@g+1))&0ffh,w
	movwf	1+((c:labs@a))^00h,c
	
	movf	((efgtoa@u+2))&0ffh,w
	subwfb	((efgtoa@g+2))&0ffh,w
	movwf	2+((c:labs@a))^00h,c
	
	movf	((efgtoa@u+3))&0ffh,w
	subwfb	((efgtoa@g+3))&0ffh,w
	movwf	3+((c:labs@a))^00h,c
	call	_labs	;wreg free
	btfsc	(3+?_labs)^00h,c,7
	goto	u4500
	movf	(3+?_labs)^00h,c,w
	iorwf	(2+?_labs)^00h,c,w
	iorwf	(1+?_labs)^00h,c,w
	bnz	u4501
	movlw	2
	subwf	 (0+?_labs)^00h,c,w
	btfsc	status,0
	goto	u4501
	goto	u4500

u4501:
	goto	l4144
u4500:
	goto	l4134
	line	668
	
l4144:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 668:    while (g.f < u.f) {
	movff	(efgtoa@g),(c:___flge@ff1)
	movff	(efgtoa@g+1),(c:___flge@ff1+1)
	movff	(efgtoa@g+2),(c:___flge@ff1+2)
	movff	(efgtoa@g+3),(c:___flge@ff1+3)
	movff	(efgtoa@u),(c:___flge@ff2)
	movff	(efgtoa@u+1),(c:___flge@ff2+1)
	movff	(efgtoa@u+2),(c:___flge@ff2+2)
	movff	(efgtoa@u+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfss	status,0
	goto	u4511
	goto	u4510
u4511:
	goto	l4136
u4510:
	line	677
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 677:     }
	
l986:
	line	683
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 683:  mode = c;
	movff	(c:efgtoa@c),(efgtoa@mode)
	line	685
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 685:     nmode = mode;
	movff	(efgtoa@mode),(efgtoa@nmode)
	line	696
	
l4146:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 695:  {;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 696:         p = (prec < 0) ? 6 : prec;
	movlb	0	; () banked
	btfsc	((_prec+1))&0ffh,7
	goto	u4521
	goto	u4520

u4521:
	goto	l4150
u4520:
	
l4148:; BSR set to: 0

	movff	(_prec),(efgtoa@p)
	movff	(_prec+1),(efgtoa@p+1)
	goto	l4152
	
l4150:; BSR set to: 0

	movlw	high(06h)
	movwf	((efgtoa@p+1))&0ffh
	movlw	low(06h)
	movwf	((efgtoa@p))&0ffh
	line	711
	
l4152:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 697:     };C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 711:     m = p;
	movff	(efgtoa@p),(efgtoa@m)
	movff	(efgtoa@p+1),(efgtoa@m+1)
	line	716
	
l4154:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 715:  {;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 716:         ++m;
	infsnz	((efgtoa@m))&0ffh
	incf	((efgtoa@m+1))&0ffh
	line	721
	
l4156:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 717:     };C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 721:     if (nmode == 'f') {
		movlw	102
	xorwf	((efgtoa@nmode))&0ffh,w
	btfss	status,2
	goto	u4531
	goto	u4530

u4531:
	goto	l4166
u4530:
	line	722
	
l4158:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 722:         if (e < 0) {
	btfsc	((efgtoa@e+1))&0ffh,7
	goto	u4540
	goto	u4541

u4541:
	goto	l4162
u4540:
	line	723
	
l4160:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 723:             u.f = 1.0;
	movlw	low(normalize32(0x3f800000))
	movwf	((efgtoa@u))&0ffh
	movlw	high(normalize32(0x3f800000))
	movwf	((efgtoa@u+1))&0ffh
	movlw	low highword(normalize32(0x3f800000))
	movwf	((efgtoa@u+2))&0ffh
	movlw	high highword(normalize32(0x3f800000))
	movwf	((efgtoa@u+3))&0ffh
	line	724
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 724:             e = 0;
	movlw	high(0)
	movwf	((efgtoa@e+1))&0ffh
	movlw	low(0)
	movwf	((efgtoa@e))&0ffh
	line	726
	
l4162:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 726:         if (!(mode == 'g')) {
		movlw	103
	xorwf	((efgtoa@mode))&0ffh,w
	btfsc	status,2
	goto	u4551
	goto	u4550

u4551:
	goto	l4166
u4550:
	line	727
	
l4164:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 727:             m += e;
	movf	((efgtoa@e))&0ffh,w
	addwf	((efgtoa@m))&0ffh
	movf	((efgtoa@e+1))&0ffh,w
	addwfc	((efgtoa@m+1))&0ffh

	line	733
	
l4166:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 733:     i = 0;
	movlw	high(0)
	movwf	((efgtoa@i+1))&0ffh
	movlw	low(0)
	movwf	((efgtoa@i))&0ffh
	line	734
	
l4168:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 734:     h = g.f;
	movff	(efgtoa@g),(efgtoa@h)
	movff	(efgtoa@g+1),(efgtoa@h+1)
	movff	(efgtoa@g+2),(efgtoa@h+2)
	movff	(efgtoa@g+3),(efgtoa@h+3)
	line	735
	
l4170:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 735:     ou = u;
	movff	(efgtoa@u),(efgtoa@ou)
	movff	(efgtoa@u+1),(efgtoa@ou+1)
	movff	(efgtoa@u+2),(efgtoa@ou+2)
	movff	(efgtoa@u+3),(efgtoa@ou+3)
	line	736
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 736:     while (i < m) {
	goto	l4180
	line	737
	
l4172:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 737:         l = floorf(h/u.f);
	movff	(efgtoa@h),(c:___fldiv@b)
	movff	(efgtoa@h+1),(c:___fldiv@b+1)
	movff	(efgtoa@h+2),(c:___fldiv@b+2)
	movff	(efgtoa@h+3),(c:___fldiv@b+3)
	movff	(efgtoa@u),(c:___fldiv@a)
	movff	(efgtoa@u+1),(c:___fldiv@a+1)
	movff	(efgtoa@u+2),(c:___fldiv@a+2)
	movff	(efgtoa@u+3),(c:___fldiv@a+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(c:floorf@x)
	movff	1+?___fldiv,(c:floorf@x+1)
	movff	2+?___fldiv,(c:floorf@x+2)
	movff	3+?___fldiv,(c:floorf@x+3)
	
	call	_floorf	;wreg free
	movff	0+?_floorf,(efgtoa@l)
	movff	1+?_floorf,(efgtoa@l+1)
	movff	2+?_floorf,(efgtoa@l+2)
	movff	3+?_floorf,(efgtoa@l+3)
	
	line	738
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 738:         d = (int)l;
	movff	(efgtoa@l),(c:___fltol@f1)
	movff	(efgtoa@l+1),(c:___fltol@f1+1)
	movff	(efgtoa@l+2),(c:___fltol@f1+2)
	movff	(efgtoa@l+3),(c:___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(efgtoa@d)
	movff	1+?___fltol,(efgtoa@d+1)
	line	739
	
l4174:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 739:         h -= l*u.f;
	movff	(efgtoa@h),(c:___flsub@b)
	movff	(efgtoa@h+1),(c:___flsub@b+1)
	movff	(efgtoa@h+2),(c:___flsub@b+2)
	movff	(efgtoa@h+3),(c:___flsub@b+3)
	movff	(efgtoa@l),(c:___flmul@a)
	movff	(efgtoa@l+1),(c:___flmul@a+1)
	movff	(efgtoa@l+2),(c:___flmul@a+2)
	movff	(efgtoa@l+3),(c:___flmul@a+3)
	movff	(efgtoa@u),(c:___flmul@b)
	movff	(efgtoa@u+1),(c:___flmul@b+1)
	movff	(efgtoa@u+2),(c:___flmul@b+2)
	movff	(efgtoa@u+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@a)
	movff	1+?___flmul,(c:___flsub@a+1)
	movff	2+?___flmul,(c:___flsub@a+2)
	movff	3+?___flmul,(c:___flsub@a+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(efgtoa@h)
	movff	1+?___flsub,(efgtoa@h+1)
	movff	2+?___flsub,(efgtoa@h+2)
	movff	3+?___flsub,(efgtoa@h+3)
	
	line	740
	
l4176:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 740:         u.f = u.f/10.0;
	movff	(efgtoa@u),(c:___fldiv@b)
	movff	(efgtoa@u+1),(c:___fldiv@b+1)
	movff	(efgtoa@u+2),(c:___fldiv@b+2)
	movff	(efgtoa@u+3),(c:___fldiv@b+3)
	movlw	low(normalize32(0x41200000))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x41200000))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x41200000))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x41200000))
	movwf	((c:___fldiv@a+3))^00h,c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(efgtoa@u)
	movff	1+?___fldiv,(efgtoa@u+1)
	movff	2+?___fldiv,(efgtoa@u+2)
	movff	3+?___fldiv,(efgtoa@u+3)
	
	line	741
	
l4178:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 741:         ++i;
	movlb	0	; () banked
	infsnz	((efgtoa@i))&0ffh
	incf	((efgtoa@i+1))&0ffh
	line	736
	
l4180:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 736:     while (i < m) {
		movf	((efgtoa@m))&0ffh,w
	subwf	((efgtoa@i))&0ffh,w
	movf	((efgtoa@i+1))&0ffh,w
	xorlw	80h
	movwf	(??_efgtoa+0+0)&0ffh
	movf	((efgtoa@m+1))&0ffh,w
	xorlw	80h
	subwfb	(??_efgtoa+0+0)&0ffh,w
	btfss	status,0
	goto	u4561
	goto	u4560

u4561:
	goto	l4172
u4560:
	line	745
	
l4182:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 745:     l = u.f*5.0;
	movff	(efgtoa@u),(c:___flmul@b)
	movff	(efgtoa@u+1),(c:___flmul@b+1)
	movff	(efgtoa@u+2),(c:___flmul@b+2)
	movff	(efgtoa@u+3),(c:___flmul@b+3)
	movlw	low(normalize32(0x40a00000))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x40a00000))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x40a00000))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x40a00000))
	movwf	((c:___flmul@a+3))^00h,c
	call	___flmul	;wreg free
	movff	0+?___flmul,(efgtoa@l)
	movff	1+?___flmul,(efgtoa@l+1)
	movff	2+?___flmul,(efgtoa@l+2)
	movff	3+?___flmul,(efgtoa@l+3)
	
	line	746
	
l4184:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 746:     if (h < l) {
	movff	(efgtoa@h),(c:___flge@ff1)
	movff	(efgtoa@h+1),(c:___flge@ff1+1)
	movff	(efgtoa@h+2),(c:___flge@ff1+2)
	movff	(efgtoa@h+3),(c:___flge@ff1+3)
	movff	(efgtoa@l),(c:___flge@ff2)
	movff	(efgtoa@l+1),(c:___flge@ff2+1)
	movff	(efgtoa@l+2),(c:___flge@ff2+2)
	movff	(efgtoa@l+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u4571
	goto	u4570
u4571:
	goto	l4188
u4570:
	line	747
	
l4186:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 747:         l = 0.0;
	movlw	low(normalize32(0x0))
	movlb	0	; () banked
	movwf	((efgtoa@l))&0ffh
	movlw	high(normalize32(0x0))
	movwf	((efgtoa@l+1))&0ffh
	movlw	low highword(normalize32(0x0))
	movwf	((efgtoa@l+2))&0ffh
	movlw	high highword(normalize32(0x0))
	movwf	((efgtoa@l+3))&0ffh
	line	748
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 748:     } else {
	goto	l4194
	line	750
	
l4188:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 750:         if ((h == l) && !(d % 2)) {
	movff	(efgtoa@h),(c:___fleq@ff1)
	movff	(efgtoa@h+1),(c:___fleq@ff1+1)
	movff	(efgtoa@h+2),(c:___fleq@ff1+2)
	movff	(efgtoa@h+3),(c:___fleq@ff1+3)
	movff	(efgtoa@l),(c:___fleq@ff2)
	movff	(efgtoa@l+1),(c:___fleq@ff2+1)
	movff	(efgtoa@l+2),(c:___fleq@ff2+2)
	movff	(efgtoa@l+3),(c:___fleq@ff2+3)
	call	___fleq	;wreg free
	btfss	status,0
	goto	u4581
	goto	u4580
u4581:
	goto	l4194
u4580:
	
l4190:
	movlb	0	; () banked
	
	btfsc	((efgtoa@d))&0ffh,(0)&7
	goto	u4591
	goto	u4590
u4591:
	goto	l4194
u4590:
	line	751
	
l4192:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 751:             l = 0.0;
	movlw	low(normalize32(0x0))
	movwf	((efgtoa@l))&0ffh
	movlw	high(normalize32(0x0))
	movwf	((efgtoa@l+1))&0ffh
	movlw	low highword(normalize32(0x0))
	movwf	((efgtoa@l+2))&0ffh
	movlw	high highword(normalize32(0x0))
	movwf	((efgtoa@l+3))&0ffh
	line	756
	
l4194:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 756:     h = g.f + l;
	movff	(efgtoa@g),(c:___fladd@b)
	movff	(efgtoa@g+1),(c:___fladd@b+1)
	movff	(efgtoa@g+2),(c:___fladd@b+2)
	movff	(efgtoa@g+3),(c:___fladd@b+3)
	movff	(efgtoa@l),(c:___fladd@a)
	movff	(efgtoa@l+1),(c:___fladd@a+1)
	movff	(efgtoa@l+2),(c:___fladd@a+2)
	movff	(efgtoa@l+3),(c:___fladd@a+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(efgtoa@h)
	movff	1+?___fladd,(efgtoa@h+1)
	movff	2+?___fladd,(efgtoa@h+2)
	movff	3+?___fladd,(efgtoa@h+3)
	
	line	758
	
l4196:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 758:  if (h >= (ou.f*10.0)) {
	movff	(efgtoa@h),(c:___flge@ff1)
	movff	(efgtoa@h+1),(c:___flge@ff1+1)
	movff	(efgtoa@h+2),(c:___flge@ff1+2)
	movff	(efgtoa@h+3),(c:___flge@ff1+3)
	movlw	low(normalize32(0x41200000))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x41200000))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x41200000))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x41200000))
	movwf	((c:___flmul@a+3))^00h,c
	movff	(efgtoa@ou),(c:___flmul@b)
	movff	(efgtoa@ou+1),(c:___flmul@b+1)
	movff	(efgtoa@ou+2),(c:___flmul@b+2)
	movff	(efgtoa@ou+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flge@ff2)
	movff	1+?___flmul,(c:___flge@ff2+1)
	movff	2+?___flmul,(c:___flge@ff2+2)
	movff	3+?___flmul,(c:___flge@ff2+3)
	
	call	___flge	;wreg free
	btfss	status,0
	goto	u4601
	goto	u4600
u4601:
	goto	l4206
u4600:
	line	759
	
l4198:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 759:   e++;
	movlb	0	; () banked
	infsnz	((efgtoa@e))&0ffh
	incf	((efgtoa@e+1))&0ffh
	line	760
	
l4200:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 760:   ou.f *= 10.0;
	movff	(efgtoa@ou),(c:___flmul@b)
	movff	(efgtoa@ou+1),(c:___flmul@b+1)
	movff	(efgtoa@ou+2),(c:___flmul@b+2)
	movff	(efgtoa@ou+3),(c:___flmul@b+3)
	movlw	low(normalize32(0x41200000))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x41200000))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x41200000))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x41200000))
	movwf	((c:___flmul@a+3))^00h,c
	call	___flmul	;wreg free
	movff	0+?___flmul,(efgtoa@ou)
	movff	1+?___flmul,(efgtoa@ou+1)
	movff	2+?___flmul,(efgtoa@ou+2)
	movff	3+?___flmul,(efgtoa@ou+3)
	
	line	762
	
l4202:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 762:   if (nmode == 'f') {
		movlw	102
	movlb	0	; () banked
	xorwf	((efgtoa@nmode))&0ffh,w
	btfss	status,2
	goto	u4611
	goto	u4610

u4611:
	goto	l4206
u4610:
	line	764
	
l4204:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 764:    m++;
	infsnz	((efgtoa@m))&0ffh
	incf	((efgtoa@m+1))&0ffh
	line	770
	
l4206:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 770:     u = ou;
	movff	(efgtoa@ou),(efgtoa@u)
	movff	(efgtoa@ou+1),(efgtoa@u+1)
	movff	(efgtoa@ou+2),(efgtoa@u+2)
	movff	(efgtoa@ou+3),(efgtoa@u+3)
	line	774
	
l4208:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 774:  ne = e;
	movff	(efgtoa@e),(efgtoa@ne)
	movff	(efgtoa@e+1),(efgtoa@ne+1)
	line	776
	
l4210:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 776:     pp = 0;
	movlb	0	; () banked
	clrf	((efgtoa@pp))&0ffh
	line	777
	
l4212:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 777:     t = 0;
	movlw	high(0)
	movwf	((efgtoa@t+1))&0ffh
	movlw	low(0)
	movwf	((efgtoa@t))&0ffh
	line	778
	
l4214:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 778:     i = 0;
	movlw	high(0)
	movwf	((efgtoa@i+1))&0ffh
	movlw	low(0)
	movwf	((efgtoa@i))&0ffh
	line	779
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 779:     while ((i < m) && (n < (80 - 5))) {
	goto	l4256
	line	780
	
l4216:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 780:         l = floorf(h/u.f);
	movff	(efgtoa@h),(c:___fldiv@b)
	movff	(efgtoa@h+1),(c:___fldiv@b+1)
	movff	(efgtoa@h+2),(c:___fldiv@b+2)
	movff	(efgtoa@h+3),(c:___fldiv@b+3)
	movff	(efgtoa@u),(c:___fldiv@a)
	movff	(efgtoa@u+1),(c:___fldiv@a+1)
	movff	(efgtoa@u+2),(c:___fldiv@a+2)
	movff	(efgtoa@u+3),(c:___fldiv@a+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(c:floorf@x)
	movff	1+?___fldiv,(c:floorf@x+1)
	movff	2+?___fldiv,(c:floorf@x+2)
	movff	3+?___fldiv,(c:floorf@x+3)
	
	call	_floorf	;wreg free
	movff	0+?_floorf,(efgtoa@l)
	movff	1+?_floorf,(efgtoa@l+1)
	movff	2+?_floorf,(efgtoa@l+2)
	movff	3+?_floorf,(efgtoa@l+3)
	
	line	781
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 781:         d = (int)l > 9 ? 9 : (int)l;
	movff	(efgtoa@l),(c:___fltol@f1)
	movff	(efgtoa@l+1),(c:___fltol@f1+1)
	movff	(efgtoa@l+2),(c:___fltol@f1+2)
	movff	(efgtoa@l+3),(c:___fltol@f1+3)
	call	___fltol	;wreg free
	btfsc	(1+?___fltol)^00h,c,7
	goto	u4620
	movf	(1+?___fltol)^00h,c,w
	bnz	u4621
	movlw	10
	subwf	 (0+?___fltol)^00h,c,w
	btfsc	status,0
	goto	u4621
	goto	u4620

u4621:
	goto	l4220
u4620:
	
l4218:
	movff	(efgtoa@l),(c:___fltol@f1)
	movff	(efgtoa@l+1),(c:___fltol@f1+1)
	movff	(efgtoa@l+2),(c:___fltol@f1+2)
	movff	(efgtoa@l+3),(c:___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(efgtoa@d)
	movff	1+?___fltol,(efgtoa@d+1)
	goto	l1016
	
l4220:
	movlw	high(09h)
	movlb	0	; () banked
	movwf	((efgtoa@d+1))&0ffh
	movlw	low(09h)
	movwf	((efgtoa@d))&0ffh
	
l1016:
	line	793
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 792:   {;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 793:             if (!pp && (ne < 0)) {
	movlb	0	; () banked
	movf	((efgtoa@pp))&0ffh,w
	btfss	status,2
	goto	u4631
	goto	u4630
u4631:
	goto	l4240
u4630:
	
l4222:; BSR set to: 0

	btfsc	((efgtoa@ne+1))&0ffh,7
	goto	u4640
	goto	u4641

u4641:
	goto	l4240
u4640:
	line	794
	
l4224:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 794:                 dbuf[n++] = '.';
	movlw	low(_dbuf)
	addwf	((efgtoa@n))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_dbuf)
	addwfc	((efgtoa@n+1))&0ffh,w
	movwf	1+c:fsr2l
	movlw	low(02Eh)
	movwf	indf2
	
l4226:; BSR set to: 0

	infsnz	((efgtoa@n))&0ffh
	incf	((efgtoa@n+1))&0ffh
	line	795
	
l4228:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 795:                 --w;
	decf	((efgtoa@w))&0ffh
	btfss	status,0
	decf	((efgtoa@w+1))&0ffh
	line	796
	
l4230:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 796:                 pp = 1;
	movlw	low(01h)
	movwf	((efgtoa@pp))&0ffh
	goto	l4240
	line	799
	
l4232:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 799:                 dbuf[n++] = '0';
	movlw	low(_dbuf)
	addwf	((efgtoa@n))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_dbuf)
	addwfc	((efgtoa@n+1))&0ffh,w
	movwf	1+c:fsr2l
	movlw	low(030h)
	movwf	indf2
	
l4234:; BSR set to: 0

	infsnz	((efgtoa@n))&0ffh
	incf	((efgtoa@n+1))&0ffh
	line	800
	
l4236:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 800:                 --w;
	decf	((efgtoa@w))&0ffh
	btfss	status,0
	decf	((efgtoa@w+1))&0ffh
	line	801
	
l4238:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 801:                 --t;
	decf	((efgtoa@t))&0ffh
	btfss	status,0
	decf	((efgtoa@t+1))&0ffh
	line	798
	
l4240:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 798:             while (t) {
	movf	((efgtoa@t))&0ffh,w
iorwf	((efgtoa@t+1))&0ffh,w
	btfss	status,2
	goto	u4651
	goto	u4650

u4651:
	goto	l4232
u4650:
	line	803
	
l4242:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 803:             dbuf[n++] = (char)((int)'0' + d);
	movlw	low(_dbuf)
	addwf	((efgtoa@n))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_dbuf)
	addwfc	((efgtoa@n+1))&0ffh,w
	movwf	1+c:fsr2l
	movf	((efgtoa@d))&0ffh,w
	addlw	low(030h)
	movwf	indf2,c

	
l4244:; BSR set to: 0

	infsnz	((efgtoa@n))&0ffh
	incf	((efgtoa@n+1))&0ffh
	line	804
	
l4246:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 804:             --w;
	decf	((efgtoa@w))&0ffh
	btfss	status,0
	decf	((efgtoa@w+1))&0ffh
	line	806
	
l4248:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 805:         };C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 806:         h -= l*u.f;
	movff	(efgtoa@h),(c:___flsub@b)
	movff	(efgtoa@h+1),(c:___flsub@b+1)
	movff	(efgtoa@h+2),(c:___flsub@b+2)
	movff	(efgtoa@h+3),(c:___flsub@b+3)
	movff	(efgtoa@l),(c:___flmul@a)
	movff	(efgtoa@l+1),(c:___flmul@a+1)
	movff	(efgtoa@l+2),(c:___flmul@a+2)
	movff	(efgtoa@l+3),(c:___flmul@a+3)
	movff	(efgtoa@u),(c:___flmul@b)
	movff	(efgtoa@u+1),(c:___flmul@b+1)
	movff	(efgtoa@u+2),(c:___flmul@b+2)
	movff	(efgtoa@u+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@a)
	movff	1+?___flmul,(c:___flsub@a+1)
	movff	2+?___flmul,(c:___flsub@a+2)
	movff	3+?___flmul,(c:___flsub@a+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(efgtoa@h)
	movff	1+?___flsub,(efgtoa@h+1)
	movff	2+?___flsub,(efgtoa@h+2)
	movff	3+?___flsub,(efgtoa@h+3)
	
	line	807
	
l4250:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 807:         u.f = u.f/10.0;
	movff	(efgtoa@u),(c:___fldiv@b)
	movff	(efgtoa@u+1),(c:___fldiv@b+1)
	movff	(efgtoa@u+2),(c:___fldiv@b+2)
	movff	(efgtoa@u+3),(c:___fldiv@b+3)
	movlw	low(normalize32(0x41200000))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x41200000))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x41200000))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x41200000))
	movwf	((c:___fldiv@a+3))^00h,c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(efgtoa@u)
	movff	1+?___fldiv,(efgtoa@u+1)
	movff	2+?___fldiv,(efgtoa@u+2)
	movff	3+?___fldiv,(efgtoa@u+3)
	
	line	808
	
l4252:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 808:         --ne;
	movlb	0	; () banked
	decf	((efgtoa@ne))&0ffh
	btfss	status,0
	decf	((efgtoa@ne+1))&0ffh
	line	809
	
l4254:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 809:         ++i;
	infsnz	((efgtoa@i))&0ffh
	incf	((efgtoa@i+1))&0ffh
	line	779
	
l4256:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 779:     while ((i < m) && (n < (80 - 5))) {
		movf	((efgtoa@m))&0ffh,w
	subwf	((efgtoa@i))&0ffh,w
	movf	((efgtoa@i+1))&0ffh,w
	xorlw	80h
	movwf	(??_efgtoa+0+0)&0ffh
	movf	((efgtoa@m+1))&0ffh,w
	xorlw	80h
	subwfb	(??_efgtoa+0+0)&0ffh,w
	btfsc	status,0
	goto	u4661
	goto	u4660

u4661:
	goto	l4260
u4660:
	
l4258:; BSR set to: 0

	btfsc	((efgtoa@n+1))&0ffh,7
	goto	u4671
	movf	((efgtoa@n+1))&0ffh,w
	bnz	u4670
	movlw	75
	subwf	 ((efgtoa@n))&0ffh,w
	btfss	status,0
	goto	u4671
	goto	u4670

u4671:
	goto	l4216
u4670:
	line	816
	
l4260:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 816:  i = sizeof(dbuf) - 1;
	movlw	high(04Fh)
	movwf	((efgtoa@i+1))&0ffh
	movlw	low(04Fh)
	movwf	((efgtoa@i))&0ffh
	line	817
	
l4262:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 817:     dbuf[i] = '\0';
	movlw	low(_dbuf)
	addwf	((efgtoa@i))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_dbuf)
	addwfc	((efgtoa@i+1))&0ffh,w
	movwf	1+c:fsr2l
	clrf	indf2
	line	848
	
l4264:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 848:  memcpy(&dbuf[i-n], &dbuf[0], (size_t)n);
	movlw	low((_dbuf))
	movwf	(??_efgtoa+0+0)&0ffh
	movlw	high((_dbuf))
	movwf	1+(??_efgtoa+0+0)&0ffh
	movf	((efgtoa@n))&0ffh,w
	subwf	(??_efgtoa+0+0)&0ffh
	movf	((efgtoa@n+1))&0ffh,w
	subwfb	(??_efgtoa+0+1)&0ffh
	movf	((efgtoa@i))&0ffh,w
	addwf	(??_efgtoa+0+0)&0ffh,w
	movwf	((c:memcpy@d1))^00h,c
	movf	((efgtoa@i+1))&0ffh,w
	addwfc	(??_efgtoa+0+1)&0ffh,w
	movwf	1+((c:memcpy@d1))^00h,c
		movlw	low(_dbuf)
	movwf	((c:memcpy@s1))^00h,c
	movlw	high(_dbuf)
	movwf	((c:memcpy@s1+1))^00h,c

	movff	(efgtoa@n),(c:memcpy@n)
	movff	(efgtoa@n+1),(c:memcpy@n+1)
	call	_memcpy	;wreg free
	line	849
	
l4266:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 849:  n = i-n;
	movlb	0	; () banked
	movf	((efgtoa@n))&0ffh,w
	subwf	((efgtoa@i))&0ffh,w
	movwf	((efgtoa@n))&0ffh
	movf	((efgtoa@n+1))&0ffh,w
	subwfb	((efgtoa@i+1))&0ffh,w
	movwf	1+((efgtoa@n))&0ffh
	line	850
	
l4268:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 850:  i = sign == 0 ? 0 : 1;
	movf	((efgtoa@sign))&0ffh,w
	btfss	status,2
	goto	u4681
	goto	u4680
u4681:
	movlw	1
	goto	u4690
u4680:
	movlw	0
u4690:
	movwf	((efgtoa@i))&0ffh
	clrf	((efgtoa@i+1))&0ffh
	line	861
	
l4270:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 861:  if (sign) {
	movf	((efgtoa@sign))&0ffh,w
	btfsc	status,2
	goto	u4701
	goto	u4700
u4701:
	goto	l4274
u4700:
	line	862
	
l4272:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 862:   dbuf[--n] = sign;
	decf	((efgtoa@n))&0ffh
	btfss	status,0
	decf	((efgtoa@n+1))&0ffh
	movlw	low(_dbuf)
	addwf	((efgtoa@n))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_dbuf)
	addwfc	((efgtoa@n+1))&0ffh,w
	movwf	1+c:fsr2l
	movff	(efgtoa@sign),indf2

	line	864
	
l4274:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 864:  w -= i;
	movf	((efgtoa@i))&0ffh,w
	subwf	((efgtoa@w))&0ffh
	movf	((efgtoa@i+1))&0ffh,w
	subwfb	((efgtoa@w+1))&0ffh

	line	867
	
l4276:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 867:     return (void) pad(fp, &dbuf[n], w);
		movff	(c:efgtoa@fp),(c:pad@fp)

	movlw	low(_dbuf)
	addwf	((efgtoa@n))&0ffh,w
	movwf	((c:pad@buf))^00h,c
	movlw	high(_dbuf)
	addwfc	((efgtoa@n+1))&0ffh,w
	movwf	1+((c:pad@buf))^00h,c
	movff	(efgtoa@w),(c:pad@p)
	movff	(efgtoa@w+1),(c:pad@p+1)
	call	_pad	;wreg free
	line	868
	
l983:
	return	;funcret
	callstack 0
GLOBAL	__end_of_efgtoa
	__end_of_efgtoa:
	signat	_efgtoa,12409
	global	_strcpy

;; *************** function _strcpy *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\strcpy.c"
;; Parameters:    Size  Location     Type
;;  dest            2    4[COMRAM] PTR unsigned char 
;;		 -> dbuf(80), 
;;  src             1    6[COMRAM] PTR const unsigned char 
;;		 -> STR_10(4), STR_7(4), 
;; Auto vars:     Size  Location     Type
;;  d               2    8[COMRAM] PTR unsigned char 
;;		 -> dbuf(80), 
;; Return value:  Size  Location     Type
;;                  2    4[COMRAM] PTR unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\strcpy.c"
	line	3
global __ptext10
__ptext10:
psect	text10
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\strcpy.c"
	line	3
	
_strcpy:
;incstack = 0
	callstack 24
	line	5
	
l3342:
		movff	(c:strcpy@dest),(c:strcpy@d)
	movff	(c:strcpy@dest+1),(c:strcpy@d+1)

	line	6
	
l3344:
	incf	((c:strcpy@src))^00h,c
	decf	((c:strcpy@src))^00h,c,w
	movwf	(??_strcpy+0+0)^00h,c
	movff	(??_strcpy+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	movff	(c:strcpy@d),fsr2l
	movff	(c:strcpy@d+1),fsr2h
	infsnz	((c:strcpy@d))^00h,c
	incf	((c:strcpy@d+1))^00h,c
	tblrd	*
	
	movff	tablat,indf2
	movf	indf2,w
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l3344
u3460:
	line	8
	
l1144:
	return	;funcret
	callstack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
	signat	_strcpy,8315
	global	_memcpy

;; *************** function _memcpy *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\memcpy.c"
;; Parameters:    Size  Location     Type
;;  d1              2    4[COMRAM] PTR void 
;;		 -> dbuf(80), 
;;  s1              2    6[COMRAM] PTR const void 
;;		 -> dbuf(80), 
;;  n               2    8[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  s               2   12[COMRAM] PTR const unsigned char 
;;		 -> dbuf(80), 
;;  d               2   10[COMRAM] PTR unsigned char 
;;		 -> dbuf(80), 
;;  tmp             1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\memcpy.c"
	line	4
global __ptext11
__ptext11:
psect	text11
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\memcpy.c"
	line	4
	
_memcpy:
;incstack = 0
	callstack 24
	line	11
	
l3382:
		movff	(c:memcpy@s1),(c:memcpy@s)
	movff	(c:memcpy@s1+1),(c:memcpy@s+1)

	line	12
		movff	(c:memcpy@d1),(c:memcpy@d)
	movff	(c:memcpy@d1+1),(c:memcpy@d+1)

	line	13
	goto	l3392
	line	14
	
l3384:
	movff	(c:memcpy@s),fsr2l
	movff	(c:memcpy@s+1),fsr2h
	movf	indf2,w
	movwf	((c:memcpy@tmp))^00h,c
	
l3386:
	infsnz	((c:memcpy@s))^00h,c
	incf	((c:memcpy@s+1))^00h,c
	line	15
	
l3388:
	movff	(c:memcpy@d),fsr2l
	movff	(c:memcpy@d+1),fsr2h
	movff	(c:memcpy@tmp),indf2

	
l3390:
	infsnz	((c:memcpy@d))^00h,c
	incf	((c:memcpy@d+1))^00h,c
	line	13
	
l3392:
	decf	((c:memcpy@n))^00h,c
	btfss	status,0
	decf	((c:memcpy@n+1))^00h,c
		incf	((c:memcpy@n))^00h,c,w
	bnz	u3581
	incf	((c:memcpy@n+1))^00h,c,w
	btfss	status,2
	goto	u3581
	goto	u3580

u3581:
	goto	l3384
u3580:
	line	18
	
l1106:
	return	;funcret
	callstack 0
GLOBAL	__end_of_memcpy
	__end_of_memcpy:
	signat	_memcpy,12411
	global	_labs

;; *************** function _labs *****************
;; Defined at:
;;		line 1 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\labs.c"
;; Parameters:    Size  Location     Type
;;  a               4    4[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    4[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\labs.c"
	line	1
global __ptext12
__ptext12:
psect	text12
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\labs.c"
	line	1
	
_labs:
;incstack = 0
	callstack 24
	line	3
	
l3346:
	btfsc	((c:labs@a+3))^00h,c,7
	goto	u3471
	goto	u3470

u3471:
	goto	l3350
u3470:
	
l3348:
	movff	(c:labs@a),(c:?_labs)
	movff	(c:labs@a+1),(c:?_labs+1)
	movff	(c:labs@a+2),(c:?_labs+2)
	movff	(c:labs@a+3),(c:?_labs+3)
	goto	l1100
	
l3350:
	movff	(c:labs@a),??_labs+0+0
	movff	(c:labs@a+1),??_labs+0+0+1
	movff	(c:labs@a+2),??_labs+0+0+2
	movff	(c:labs@a+3),??_labs+0+0+3
	comf	(??_labs+0+0)^00h,c
	comf	(??_labs+0+1)^00h,c
	comf	(??_labs+0+2)^00h,c
	comf	(??_labs+0+3)^00h,c
	incf	(??_labs+0+0)^00h,c
	movlw	0
	addwfc	(??_labs+0+1)^00h,c
	addwfc	(??_labs+0+2)^00h,c
	addwfc	(??_labs+0+3)^00h,c
	movff	??_labs+0+0,(c:?_labs)
	movff	??_labs+0+1,(c:?_labs+1)
	movff	??_labs+0+2,(c:?_labs+2)
	movff	??_labs+0+3,(c:?_labs+3)
	line	4
	
l1100:
	return	;funcret
	callstack 0
GLOBAL	__end_of_labs
	__end_of_labs:
	signat	_labs,4220
	global	_floorf

;; *************** function _floorf *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\floorf.c"
;; Parameters:    Size  Location     Type
;;  x               4   43[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  u               4   59[COMRAM] struct .
;;  m               4   53[COMRAM] unsigned long 
;;  e               2   57[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  4   43[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:        10       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        20       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\floorf.c"
	line	3
global __ptext13
__ptext13:
psect	text13
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\floorf.c"
	line	3
	
_floorf:
;incstack = 0
	callstack 24
	line	5
	
l3354:
	movff	(floorf@F521),(c:floorf@u)
	movff	(floorf@F521+1),(c:floorf@u+1)
	movff	(floorf@F521+2),(c:floorf@u+2)
	movff	(floorf@F521+3),(c:floorf@u+3)
	movff	(c:floorf@x),(c:floorf@u)
	movff	(c:floorf@x+1),(c:floorf@u+1)
	movff	(c:floorf@x+2),(c:floorf@u+2)
	movff	(c:floorf@x+3),(c:floorf@u+3)
	line	6
	
l3356:
	movlw	low(-127)
	movwf	(??_floorf+0+0)^00h,c
	movlw	high(-127)
	movwf	1+(??_floorf+0+0)^00h,c
	movff	(c:floorf@u),??_floorf+2+0
	movff	(c:floorf@u+1),??_floorf+2+0+1
	movff	(c:floorf@u+2),??_floorf+2+0+2
	movff	(c:floorf@u+3),??_floorf+2+0+3
	movlw	017h+1
	goto	u3480
u3485:
	bcf	status,0
	rrcf	(??_floorf+2+3)^00h,c
	rrcf	(??_floorf+2+2)^00h,c
	rrcf	(??_floorf+2+1)^00h,c
	rrcf	(??_floorf+2+0)^00h,c
u3480:
	decfsz	wreg
	goto	u3485
	movf	(??_floorf+2+0)^00h,c,w
	addwf	(??_floorf+0+0)^00h,c,w
	movwf	((c:floorf@e))^00h,c
	movlw	0
	addwfc	(??_floorf+0+1)^00h,c,w
	movwf	1+((c:floorf@e))^00h,c
	line	9
	btfsc	((c:floorf@e+1))^00h,c,7
	goto	u3491
	movf	((c:floorf@e+1))^00h,c,w
	bnz	u3490
	movlw	23
	subwf	 ((c:floorf@e))^00h,c,w
	btfss	status,0
	goto	u3491
	goto	u3490

u3491:
	goto	l3360
u3490:
	line	10
	
l3358:
	movff	(c:floorf@x),(c:?_floorf)
	movff	(c:floorf@x+1),(c:?_floorf+1)
	movff	(c:floorf@x+2),(c:?_floorf+2)
	movff	(c:floorf@x+3),(c:?_floorf+3)
	goto	l1086
	line	11
	
l3360:
	btfsc	((c:floorf@e+1))^00h,c,7
	goto	u3501
	goto	u3500

u3501:
	goto	l3370
u3500:
	line	12
	
l3362:
	movff	(c:floorf@e),??_floorf+0+0
	movlw	0FFh
	movwf	(??_floorf+1+0)^00h,c
	movlw	0FFh
	movwf	(??_floorf+1+0+1)^00h,c
	movlw	07Fh
	movwf	(??_floorf+1+0+2)^00h,c
	movlw	0
	movwf	(??_floorf+1+0+3)^00h,c
u3515:
	tstfsz	(??_floorf+0+0)^00h,c
	goto	u3516
	goto	u3517
	u3516:
	rlcf	(??_floorf+1+3)^00h,c,w
	rrcf	(??_floorf+1+3)^00h,c
	rrcf	(??_floorf+1+2)^00h,c
	rrcf	(??_floorf+1+1)^00h,c
	rrcf	(??_floorf+1+0)^00h,c
	decfsz	(??_floorf+0+0)^00h,c
	goto	u3515
	u3517:
	
	movff	??_floorf+1+0,(c:floorf@m)
	movff	??_floorf+1+1,(c:floorf@m+1)
	movff	??_floorf+1+2,(c:floorf@m+2)
	movff	??_floorf+1+3,(c:floorf@m+3)
	line	13
	movf	((c:floorf@m))^00h,c,w
	andwf	((c:floorf@u))^00h,c,w
	movwf	(??_floorf+0+0)^00h,c
	movf	((c:floorf@m+1))^00h,c,w
	andwf	((c:floorf@u+1))^00h,c,w
	movwf	1+(??_floorf+0+0)^00h,c
	
	movf	((c:floorf@m+2))^00h,c,w
	andwf	((c:floorf@u+2))^00h,c,w
	movwf	2+(??_floorf+0+0)^00h,c
	
	movf	((c:floorf@m+3))^00h,c,w
	andwf	((c:floorf@u+3))^00h,c,w
	movwf	3+(??_floorf+0+0)^00h,c
	movf	(??_floorf+0+0)^00h,c,w
iorwf	(??_floorf+0+1)^00h,c,w
iorwf	(??_floorf+0+2)^00h,c,w
iorwf	(??_floorf+0+3)^00h,c,w
	btfss	status,2
	goto	u3521
	goto	u3520

u3521:
	goto	l3366
u3520:
	goto	l3358
	line	16
	
l3366:
	movff	(c:floorf@u),??_floorf+0+0
	movff	(c:floorf@u+1),??_floorf+0+0+1
	movff	(c:floorf@u+2),??_floorf+0+0+2
	movff	(c:floorf@u+3),??_floorf+0+0+3
	movlw	01Fh+1
	goto	u3530
u3535:
	bcf	status,0
	rrcf	(??_floorf+0+3)^00h,c
	rrcf	(??_floorf+0+2)^00h,c
	rrcf	(??_floorf+0+1)^00h,c
	rrcf	(??_floorf+0+0)^00h,c
u3530:
	decfsz	wreg
	goto	u3535
	movf	(??_floorf+0+0)^00h,c,w
iorwf	(??_floorf+0+1)^00h,c,w
iorwf	(??_floorf+0+2)^00h,c,w
iorwf	(??_floorf+0+3)^00h,c,w
	btfsc	status,2
	goto	u3541
	goto	u3540

u3541:
	goto	l1089
u3540:
	line	17
	
l3368:
	movf	((c:floorf@m))^00h,c,w
	addwf	((c:floorf@u))^00h,c
	movf	((c:floorf@m+1))^00h,c,w
	addwfc	((c:floorf@u+1))^00h,c
	movf	((c:floorf@m+2))^00h,c,w
	addwfc	((c:floorf@u+2))^00h,c
	movf	((c:floorf@m+3))^00h,c,w
	addwfc	((c:floorf@u+3))^00h,c
	
l1089:
	line	18
	comf	((c:floorf@m))^00h,c,w

	movwf	(??_floorf+0+0)^00h,c
	comf	((c:floorf@m+1))^00h,c,w
	movwf	1+(??_floorf+0+0)^00h,c
	
	comf	((c:floorf@m+2))^00h,c,w
	movwf	2+(??_floorf+0+0)^00h,c
	
	comf	((c:floorf@m+3))^00h,c,w
	movwf	3+(??_floorf+0+0)^00h,c
	
	movf	(??_floorf+0+0)^00h,c,w
	andwf	((c:floorf@u))^00h,c
	movf	(??_floorf+0+1)^00h,c,w
	andwf	((c:floorf@u+1))^00h,c
	movf	(??_floorf+0+2)^00h,c,w
	andwf	((c:floorf@u+2))^00h,c
	movf	(??_floorf+0+3)^00h,c,w
	andwf	((c:floorf@u+3))^00h,c

	line	19
	goto	l3378
	line	21
	
l3370:
	movff	(c:floorf@u),??_floorf+0+0
	movff	(c:floorf@u+1),??_floorf+0+0+1
	movff	(c:floorf@u+2),??_floorf+0+0+2
	movff	(c:floorf@u+3),??_floorf+0+0+3
	movlw	01Fh+1
	goto	u3550
u3555:
	bcf	status,0
	rrcf	(??_floorf+0+3)^00h,c
	rrcf	(??_floorf+0+2)^00h,c
	rrcf	(??_floorf+0+1)^00h,c
	rrcf	(??_floorf+0+0)^00h,c
u3550:
	decfsz	wreg
	goto	u3555
	movf	(??_floorf+0+0)^00h,c,w
iorwf	(??_floorf+0+1)^00h,c,w
iorwf	(??_floorf+0+2)^00h,c,w
iorwf	(??_floorf+0+3)^00h,c,w
	btfss	status,2
	goto	u3561
	goto	u3560

u3561:
	goto	l3374
u3560:
	line	22
	
l3372:
	movlw	low(0)
	movwf	((c:floorf@u))^00h,c
	movlw	high(0)
	movwf	((c:floorf@u+1))^00h,c
	movlw	low highword(0)
	movwf	((c:floorf@u+2))^00h,c
	movlw	high highword(0)
	movwf	((c:floorf@u+3))^00h,c
	goto	l3378
	line	23
	
l3374:
	bcf	status,0
	rlcf	((c:floorf@u))^00h,c,w
	movwf	(??_floorf+0+0)^00h,c
	rlcf	((c:floorf@u+1))^00h,c,w
	movwf	1+(??_floorf+0+0)^00h,c
	
	rlcf	((c:floorf@u+2))^00h,c,w
	movwf	2+(??_floorf+0+0)^00h,c
	
	rlcf	((c:floorf@u+3))^00h,c,w
	movwf	3+(??_floorf+0+0)^00h,c
	movf	(??_floorf+0+0)^00h,c,w
iorwf	(??_floorf+0+1)^00h,c,w
iorwf	(??_floorf+0+2)^00h,c,w
iorwf	(??_floorf+0+3)^00h,c,w
	btfsc	status,2
	goto	u3571
	goto	u3570

u3571:
	goto	l3378
u3570:
	line	24
	
l3376:
	movlw	low(normalize32(0xbf800000))
	movwf	((c:floorf@u))^00h,c
	movlw	high(normalize32(0xbf800000))
	movwf	((c:floorf@u+1))^00h,c
	movlw	low highword(normalize32(0xbf800000))
	movwf	((c:floorf@u+2))^00h,c
	movlw	high highword(normalize32(0xbf800000))
	movwf	((c:floorf@u+3))^00h,c
	line	26
	
l3378:
	movff	(c:floorf@u),(c:?_floorf)
	movff	(c:floorf@u+1),(c:?_floorf+1)
	movff	(c:floorf@u+2),(c:?_floorf+2)
	movff	(c:floorf@u+3),(c:?_floorf+3)
	line	27
	
l1086:
	return	;funcret
	callstack 0
GLOBAL	__end_of_floorf
	__end_of_floorf:
	signat	_floorf,4220
	global	___fpclassifyf

;; *************** function ___fpclassifyf *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\__fpclassifyf.c"
;; Parameters:    Size  Location     Type
;;  x               4    4[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  u               4   14[COMRAM] struct .
;;  e               2   12[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2    4[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\__fpclassifyf.c"
	line	4
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\__fpclassifyf.c"
	line	4
	
___fpclassifyf:
;incstack = 0
	callstack 24
	line	6
	
l3320:
	movff	(c:___fpclassifyf@F465),(c:___fpclassifyf@u)
	movff	(c:___fpclassifyf@F465+1),(c:___fpclassifyf@u+1)
	movff	(c:___fpclassifyf@F465+2),(c:___fpclassifyf@u+2)
	movff	(c:___fpclassifyf@F465+3),(c:___fpclassifyf@u+3)
	movff	(c:___fpclassifyf@x),(c:___fpclassifyf@u)
	movff	(c:___fpclassifyf@x+1),(c:___fpclassifyf@u+1)
	movff	(c:___fpclassifyf@x+2),(c:___fpclassifyf@u+2)
	movff	(c:___fpclassifyf@x+3),(c:___fpclassifyf@u+3)
	line	7
	
l3322:
	movff	(c:___fpclassifyf@u),??___fpclassifyf+0+0
	movff	(c:___fpclassifyf@u+1),??___fpclassifyf+0+0+1
	movff	(c:___fpclassifyf@u+2),??___fpclassifyf+0+0+2
	movff	(c:___fpclassifyf@u+3),??___fpclassifyf+0+0+3
	movlw	017h+1
	goto	u3390
u3395:
	bcf	status,0
	rrcf	(??___fpclassifyf+0+3)^00h,c
	rrcf	(??___fpclassifyf+0+2)^00h,c
	rrcf	(??___fpclassifyf+0+1)^00h,c
	rrcf	(??___fpclassifyf+0+0)^00h,c
u3390:
	decfsz	wreg
	goto	u3395
	movf	(??___fpclassifyf+0+0)^00h,c,w
	movwf	((c:___fpclassifyf@e))^00h,c
	clrf	((c:___fpclassifyf@e+1))^00h,c
	line	8
	movf	((c:___fpclassifyf@e))^00h,c,w
iorwf	((c:___fpclassifyf@e+1))^00h,c,w
	btfss	status,2
	goto	u3401
	goto	u3400

u3401:
	goto	l3332
u3400:
	
l3324:
	bcf	status,0
	rlcf	((c:___fpclassifyf@u))^00h,c,w
	movwf	(??___fpclassifyf+0+0)^00h,c
	rlcf	((c:___fpclassifyf@u+1))^00h,c,w
	movwf	1+(??___fpclassifyf+0+0)^00h,c
	
	rlcf	((c:___fpclassifyf@u+2))^00h,c,w
	movwf	2+(??___fpclassifyf+0+0)^00h,c
	
	rlcf	((c:___fpclassifyf@u+3))^00h,c,w
	movwf	3+(??___fpclassifyf+0+0)^00h,c
	movf	(??___fpclassifyf+0+0)^00h,c,w
iorwf	(??___fpclassifyf+0+1)^00h,c,w
iorwf	(??___fpclassifyf+0+2)^00h,c,w
iorwf	(??___fpclassifyf+0+3)^00h,c,w
	btfss	status,2
	goto	u3411
	goto	u3410

u3411:
	goto	l3328
u3410:
	
l3326:
	movlw	high(02h)
	movwf	((c:?___fpclassifyf+1))^00h,c
	movlw	low(02h)
	movwf	((c:?___fpclassifyf))^00h,c
	goto	l1072
	
l3328:
	movlw	high(03h)
	movwf	((c:?___fpclassifyf+1))^00h,c
	movlw	low(03h)
	movwf	((c:?___fpclassifyf))^00h,c
	goto	l1072
	line	9
	
l3332:
		incf	((c:___fpclassifyf@e))^00h,c,w
iorwf	((c:___fpclassifyf@e+1))^00h,c,w
	btfss	status,2
	goto	u3421
	goto	u3420

u3421:
	goto	l3338
u3420:
	
l3334:
	movff	(c:___fpclassifyf@u),??___fpclassifyf+0+0
	movff	(c:___fpclassifyf@u+1),??___fpclassifyf+0+0+1
	movff	(c:___fpclassifyf@u+2),??___fpclassifyf+0+0+2
	movff	(c:___fpclassifyf@u+3),??___fpclassifyf+0+0+3
	movlw	09h
u3435:
	bcf	status,0
	rlcf	(??___fpclassifyf+0+0)^00h,c
	rlcf	(??___fpclassifyf+0+1)^00h,c
	rlcf	(??___fpclassifyf+0+2)^00h,c
	rlcf	(??___fpclassifyf+0+3)^00h,c
	decfsz	wreg
	goto	u3435
	movf	(??___fpclassifyf+0+0)^00h,c,w
iorwf	(??___fpclassifyf+0+1)^00h,c,w
iorwf	(??___fpclassifyf+0+2)^00h,c,w
iorwf	(??___fpclassifyf+0+3)^00h,c,w
	btfsc	status,2
	goto	u3441
	goto	u3440

u3441:
	movlw	1
	goto	u3450
u3440:
	movlw	0
u3450:
	movwf	((c:?___fpclassifyf))^00h,c
	clrf	((c:?___fpclassifyf+1))^00h,c
	goto	l1072
	line	10
	
l3338:
	movlw	high(04h)
	movwf	((c:?___fpclassifyf+1))^00h,c
	movlw	low(04h)
	movwf	((c:?___fpclassifyf))^00h,c
	line	11
	
l1072:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fpclassifyf
	__end_of___fpclassifyf:
	signat	___fpclassifyf,4218
	global	___fltol

;; *************** function ___fltol *****************
;; Defined at:
;;		line 43 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\fltol.c"
;; Parameters:    Size  Location     Type
;;  f1              4    4[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  exp1            1   13[COMRAM] unsigned char 
;;  sign1           1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    4[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\fltol.c"
	line	43
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\fltol.c"
	line	43
	
___fltol:
;incstack = 0
	callstack 24
	line	47
	
l3260:
	rlcf	((c:___fltol@f1+2))^00h,c,w
	rlcf	((c:___fltol@f1+3))^00h,c,w
	movwf	((c:___fltol@exp1))^00h,c
	movf	((c:___fltol@exp1))^00h,c,w
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l3266
u3290:
	line	48
	
l3262:
	movlw	low(0)
	movwf	((c:?___fltol))^00h,c
	movlw	high(0)
	movwf	((c:?___fltol+1))^00h,c
	movlw	low highword(0)
	movwf	((c:?___fltol+2))^00h,c
	movlw	high highword(0)
	movwf	((c:?___fltol+3))^00h,c
	goto	l540
	line	49
	
l3266:
	movff	(c:___fltol@f1),??___fltol+0+0
	movff	(c:___fltol@f1+1),??___fltol+0+0+1
	movff	(c:___fltol@f1+2),??___fltol+0+0+2
	movff	(c:___fltol@f1+3),??___fltol+0+0+3
	movlw	01Fh+1
	goto	u3300
u3305:
	bcf	status,0
	rrcf	(??___fltol+0+3)^00h,c
	rrcf	(??___fltol+0+2)^00h,c
	rrcf	(??___fltol+0+1)^00h,c
	rrcf	(??___fltol+0+0)^00h,c
u3300:
	decfsz	wreg
	goto	u3305
	movf	(??___fltol+0+0)^00h,c,w
	movwf	((c:___fltol@sign1))^00h,c
	line	50
	
l3268:
	bsf	(0+(23/8)+(c:___fltol@f1))^00h,c,(23)&7
	line	51
	
l3270:
	movlw	0FFh
	andwf	((c:___fltol@f1))^00h,c
	movlw	0FFh
	andwf	((c:___fltol@f1+1))^00h,c
	movlw	0FFh
	andwf	((c:___fltol@f1+2))^00h,c
	movlw	0
	andwf	((c:___fltol@f1+3))^00h,c
	line	52
	
l3272:
	movlw	(096h)&0ffh
	subwf	((c:___fltol@exp1))^00h,c
	line	53
	
l3274:
	btfsc	((c:___fltol@exp1))^00h,c,7
	goto	u3310
	goto	u3311

u3311:
	goto	l3286
u3310:
	line	54
	
l3276:
		movf	((c:___fltol@exp1))^00h,c,w
	xorlw	80h
	addlw	-(80h^-23)
	btfsc	status,0
	goto	u3321
	goto	u3320

u3321:
	goto	l3282
u3320:
	goto	l3262
	line	57
	
l3282:
	bcf	status,0
	rrcf	((c:___fltol@f1+3))^00h,c
	rrcf	((c:___fltol@f1+2))^00h,c
	rrcf	((c:___fltol@f1+1))^00h,c
	rrcf	((c:___fltol@f1))^00h,c
	
l3284:
	incfsz	((c:___fltol@exp1))^00h,c
	
	goto	l3282
	goto	l3296
	line	60
	
l3286:
		movlw	020h-1
	cpfsgt	((c:___fltol@exp1))^00h,c
	goto	u3331
	goto	u3330

u3331:
	goto	l3294
u3330:
	goto	l3262
	line	63
	
l3292:
	bcf	status,0
	rlcf	((c:___fltol@f1))^00h,c
	rlcf	((c:___fltol@f1+1))^00h,c
	rlcf	((c:___fltol@f1+2))^00h,c
	rlcf	((c:___fltol@f1+3))^00h,c
	line	64
	decf	((c:___fltol@exp1))^00h,c
	line	62
	
l3294:
	movf	((c:___fltol@exp1))^00h,c,w
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l3292
u3340:
	line	67
	
l3296:
	movf	((c:___fltol@sign1))^00h,c,w
	btfsc	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l3300
u3350:
	line	68
	
l3298:
	comf	((c:___fltol@f1+3))^00h,c
	comf	((c:___fltol@f1+2))^00h,c
	comf	((c:___fltol@f1+1))^00h,c
	negf	((c:___fltol@f1))^00h,c
	movlw	0
	addwfc	((c:___fltol@f1+1))^00h,c
	addwfc	((c:___fltol@f1+2))^00h,c
	addwfc	((c:___fltol@f1+3))^00h,c
	line	69
	
l3300:
	movff	(c:___fltol@f1),(c:?___fltol)
	movff	(c:___fltol@f1+1),(c:?___fltol+1)
	movff	(c:___fltol@f1+2),(c:?___fltol+2)
	movff	(c:___fltol@f1+3),(c:?___fltol+3)
	line	70
	
l540:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fltol
	__end_of___fltol:
	signat	___fltol,4220
	global	___flsub

;; *************** function ___flsub *****************
;; Defined at:
;;		line 245 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcadd.c"
;; Parameters:    Size  Location     Type
;;  b               4   68[COMRAM] long 
;;  a               4   72[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   68[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___fladd
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcadd.c"
	line	245
global __ptext16
__ptext16:
psect	text16
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcadd.c"
	line	245
	
___flsub:
;incstack = 0
	callstack 23
	line	248
	
l3128:
	movlw	0
	xorwf	((c:___flsub@a))^00h,c
	movlw	0
	xorwf	((c:___flsub@a+1))^00h,c
	movlw	0
	xorwf	((c:___flsub@a+2))^00h,c
	movlw	080h
	xorwf	((c:___flsub@a+3))^00h,c
	line	249
	
l3130:
	movff	(c:___flsub@b),(c:___fladd@b)
	movff	(c:___flsub@b+1),(c:___fladd@b+1)
	movff	(c:___flsub@b+2),(c:___fladd@b+2)
	movff	(c:___flsub@b+3),(c:___fladd@b+3)
	movff	(c:___flsub@a),(c:___fladd@a)
	movff	(c:___flsub@a+1),(c:___fladd@a+1)
	movff	(c:___flsub@a+2),(c:___fladd@a+2)
	movff	(c:___flsub@a+3),(c:___fladd@a+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:?___flsub)
	movff	1+?___fladd,(c:?___flsub+1)
	movff	2+?___fladd,(c:?___flsub+2)
	movff	3+?___fladd,(c:?___flsub+3)
	
	line	250
	
l813:
	return	;funcret
	callstack 0
GLOBAL	__end_of___flsub
	__end_of___flsub:
	signat	___flsub,8316
	global	___fladd

;; *************** function ___fladd *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcadd.c"
;; Parameters:    Size  Location     Type
;;  b               4    4[COMRAM] long 
;;  a               4    8[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  grs             1   19[COMRAM] unsigned char 
;;  bexp            1   18[COMRAM] unsigned char 
;;  aexp            1   17[COMRAM] unsigned char 
;;  signs           1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    4[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        16       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___flsub
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=2
	line	10
global __ptext17
__ptext17:
psect	text17
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcadd.c"
	line	10
	
___fladd:
;incstack = 0
	callstack 23
	line	21
	
l2662:
	movf	(0+((c:___fladd@b)+03h))^00h,c,w
	andlw	low(080h)
	movwf	((c:___fladd@signs))^00h,c
	line	22
	movf	(0+((c:___fladd@b)+03h))^00h,c,w
	addwf	(0+((c:___fladd@b)+03h))^00h,c,w
	movwf	((c:___fladd@bexp))^00h,c
	line	23
	
l2664:
	
	btfss	(0+((c:___fladd@b)+02h))^00h,c,(7)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l2668
u2260:
	line	24
	
l2666:
	bsf	(0+(0/8)+(c:___fladd@bexp))^00h,c,(0)&7
	line	28
	
l2668:
	movf	((c:___fladd@bexp))^00h,c,w
	btfsc	status,2
	goto	u2271
	goto	u2270
u2271:
	goto	l2678
u2270:
	line	30
	
l2670:
		incf	((c:___fladd@bexp))^00h,c,w
	btfss	status,2
	goto	u2281
	goto	u2280

u2281:
	goto	l2674
u2280:
	line	32
	
l2672:
	movlw	low(normalize32(0x0))
	movwf	((c:___fladd@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fladd@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fladd@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fladd@b+3))^00h,c
	line	35
	
l2674:
	bsf	(0+(23/8)+(c:___fladd@b))^00h,c,(23)&7
	line	37
	
l2676:
	clrf	(0+((c:___fladd@b)+03h))^00h,c
	line	38
	goto	l2680
	line	41
	
l2678:
	movlw	low(normalize32(0x0))
	movwf	((c:___fladd@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fladd@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fladd@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fladd@b+3))^00h,c
	line	44
	
l2680:
	movf	(0+((c:___fladd@a)+03h))^00h,c,w
	andlw	low(080h)
	movwf	((c:___fladd@aexp))^00h,c
	line	46
	
l2682:
	movf	((c:___fladd@signs))^00h,c,w
xorwf	((c:___fladd@aexp))^00h,c,w
	btfsc	status,2
	goto	u2291
	goto	u2290

u2291:
	goto	l2686
u2290:
	line	47
	
l2684:
	bsf	(0+(6/8)+(c:___fladd@signs))^00h,c,(6)&7
	line	49
	
l2686:
	movf	(0+((c:___fladd@a)+03h))^00h,c,w
	addwf	(0+((c:___fladd@a)+03h))^00h,c,w
	movwf	((c:___fladd@aexp))^00h,c
	line	50
	
l2688:
	
	btfss	(0+((c:___fladd@a)+02h))^00h,c,(7)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l2692
u2300:
	line	51
	
l2690:
	bsf	(0+(0/8)+(c:___fladd@aexp))^00h,c,(0)&7
	line	55
	
l2692:
	movf	((c:___fladd@aexp))^00h,c,w
	btfsc	status,2
	goto	u2311
	goto	u2310
u2311:
	goto	l2702
u2310:
	line	57
	
l2694:
		incf	((c:___fladd@aexp))^00h,c,w
	btfss	status,2
	goto	u2321
	goto	u2320

u2321:
	goto	l2698
u2320:
	line	59
	
l2696:
	movlw	low(normalize32(0x0))
	movwf	((c:___fladd@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fladd@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fladd@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fladd@a+3))^00h,c
	line	62
	
l2698:
	bsf	(0+(23/8)+(c:___fladd@a))^00h,c,(23)&7
	line	64
	
l2700:
	clrf	(0+((c:___fladd@a)+03h))^00h,c
	line	65
	goto	l2704
	line	68
	
l2702:
	movlw	low(normalize32(0x0))
	movwf	((c:___fladd@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fladd@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fladd@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fladd@a+3))^00h,c
	line	75
	
l2704:
		movf	((c:___fladd@bexp))^00h,c,w
	subwf	((c:___fladd@aexp))^00h,c,w
	btfsc	status,0
	goto	u2331
	goto	u2330

u2331:
	goto	l2740
u2330:
	line	77
	
l2706:
	
	btfss	((c:___fladd@signs))^00h,c,(6)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l2710
u2340:
	line	78
	
l2708:
	movlw	(080h)&0ffh
	xorwf	((c:___fladd@signs))^00h,c
	line	81
	
l2710:
	movff	(c:___fladd@bexp),(c:___fladd@grs)
	line	82
	
l2712:
	movff	(c:___fladd@aexp),(c:___fladd@bexp)
	line	83
	
l2714:
	movff	(c:___fladd@grs),(c:___fladd@aexp)
	line	84
	
l2716:
	movff	(c:___fladd@b),(c:___fladd@grs)
	line	85
	
l2718:
	movff	(c:___fladd@a),(c:___fladd@b)
	line	86
	
l2720:
	movff	(c:___fladd@grs),(c:___fladd@a)
	line	87
	
l2722:
	movff	0+((c:___fladd@b)+01h),(c:___fladd@grs)
	line	88
	
l2724:
	movff	0+((c:___fladd@a)+01h),0+((c:___fladd@b)+01h)
	line	89
	
l2726:
	movff	(c:___fladd@grs),0+((c:___fladd@a)+01h)
	line	90
	
l2728:
	movff	0+((c:___fladd@b)+02h),(c:___fladd@grs)
	line	91
	
l2730:
	movff	0+((c:___fladd@a)+02h),0+((c:___fladd@b)+02h)
	line	92
	
l2732:
	movff	(c:___fladd@grs),0+((c:___fladd@a)+02h)
	line	93
	
l2734:
	movff	0+((c:___fladd@b)+03h),(c:___fladd@grs)
	line	94
	
l2736:
	movff	0+((c:___fladd@a)+03h),0+((c:___fladd@b)+03h)
	line	95
	
l2738:
	movff	(c:___fladd@grs),0+((c:___fladd@a)+03h)
	line	98
	
l2740:
	clrf	((c:___fladd@grs))^00h,c
	line	100
	movf	((c:___fladd@bexp))^00h,c,w
	movff	(c:___fladd@aexp),??___fladd+0+0
	clrf	(??___fladd+0+0+1)^00h,c
	subwf	(??___fladd+0+0)^00h,c
	movlw	0
	subwfb	(??___fladd+0+1)^00h,c
	btfsc	(??___fladd+0+1)^00h,c,7
	goto	u2351
	movf	(??___fladd+0+1)^00h,c,w
	bnz	u2350
	movlw	26
	subwf	 (??___fladd+0+0)^00h,c,w
	btfss	status,0
	goto	u2351
	goto	u2350

u2351:
	goto	l772
u2350:
	line	101
	
l2742:
	movf	((c:___fladd@b))^00h,c,w
iorwf	((c:___fladd@b+1))^00h,c,w
iorwf	((c:___fladd@b+2))^00h,c,w
iorwf	((c:___fladd@b+3))^00h,c,w
	btfss	status,2
	goto	u2361
	goto	u2360

u2361:
	movlw	1
	goto	u2370
u2360:
	movlw	0
u2370:
	movwf	((c:___fladd@grs))^00h,c
	line	102
	
l2744:
	movlw	low(0)
	movwf	((c:___fladd@b))^00h,c
	movlw	high(0)
	movwf	((c:___fladd@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fladd@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fladd@b+3))^00h,c
	line	103
	
l2746:
	movff	(c:___fladd@aexp),(c:___fladd@bexp)
	line	104
	goto	l771
	line	106
	
l773:
	line	109
	
	btfss	((c:___fladd@grs))^00h,c,(0)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l2750
u2380:
	line	110
	
l2748:
	bcf	status,0
	rrcf	((c:___fladd@grs))^00h,c,w
	iorlw	low(01h)
	movwf	((c:___fladd@grs))^00h,c
	line	111
	goto	l2752
	line	113
	
l2750:
	bcf status,0
	rrcf	((c:___fladd@grs))^00h,c

	line	115
	
l2752:
	
	btfss	((c:___fladd@b))^00h,c,(0)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l2756
u2390:
	line	116
	
l2754:
	bsf	(0+(7/8)+(c:___fladd@grs))^00h,c,(7)&7
	line	118
	
l2756:
	rlcf	((c:___fladd@b+3))^00h,c,w
	rrcf	((c:___fladd@b+3))^00h,c
	rrcf	((c:___fladd@b+2))^00h,c
	rrcf	((c:___fladd@b+1))^00h,c
	rrcf	((c:___fladd@b))^00h,c
	line	119
	
l2758:
	incf	((c:___fladd@bexp))^00h,c
	line	120
	
l772:
	line	106
		movf	((c:___fladd@aexp))^00h,c,w
	subwf	((c:___fladd@bexp))^00h,c,w
	btfss	status,0
	goto	u2401
	goto	u2400

u2401:
	goto	l773
u2400:
	line	121
	
l771:
	line	124
	
	btfsc	((c:___fladd@signs))^00h,c,(6)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l2784
u2410:
	line	127
	
l2760:
	movf	((c:___fladd@bexp))^00h,c,w
	btfss	status,2
	goto	u2421
	goto	u2420
u2421:
	goto	l2766
u2420:
	line	128
	
l2762:
	movlw	low(normalize32(0x0))
	movwf	((c:?___fladd))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:?___fladd+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:?___fladd+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:?___fladd+3))^00h,c
	goto	l780
	line	132
	
l2766:
	movf	((c:___fladd@a))^00h,c,w
	addwf	((c:___fladd@b))^00h,c
	movf	((c:___fladd@a+1))^00h,c,w
	addwfc	((c:___fladd@b+1))^00h,c
	movf	((c:___fladd@a+2))^00h,c,w
	addwfc	((c:___fladd@b+2))^00h,c
	movf	((c:___fladd@a+3))^00h,c,w
	addwfc	((c:___fladd@b+3))^00h,c
	line	134
	
l2768:
	
	btfss	((c:___fladd@b+3))^00h,c,(24)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l785
u2430:
	line	135
	
l2770:
	
	btfss	((c:___fladd@grs))^00h,c,(0)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l2774
u2440:
	line	136
	
l2772:
	bcf	status,0
	rrcf	((c:___fladd@grs))^00h,c,w
	iorlw	low(01h)
	movwf	((c:___fladd@grs))^00h,c
	line	137
	goto	l2776
	line	139
	
l2774:
	bcf status,0
	rrcf	((c:___fladd@grs))^00h,c

	line	141
	
l2776:
	
	btfss	((c:___fladd@b))^00h,c,(0)&7
	goto	u2451
	goto	u2450
u2451:
	goto	l2780
u2450:
	line	142
	
l2778:
	bsf	(0+(7/8)+(c:___fladd@grs))^00h,c,(7)&7
	line	144
	
l2780:
	rlcf	((c:___fladd@b+3))^00h,c,w
	rrcf	((c:___fladd@b+3))^00h,c
	rrcf	((c:___fladd@b+2))^00h,c
	rrcf	((c:___fladd@b+1))^00h,c
	rrcf	((c:___fladd@b))^00h,c
	line	145
	
l2782:
	incf	((c:___fladd@bexp))^00h,c
	goto	l785
	line	153
	
l2784:
		movf	((c:___fladd@a))^00h,c,w
	subwf	((c:___fladd@b))^00h,c,w
	movf	((c:___fladd@a+1))^00h,c,w
	subwfb	((c:___fladd@b+1))^00h,c,w
	movf	((c:___fladd@a+2))^00h,c,w
	subwfb	((c:___fladd@b+2))^00h,c,w
	movf	((c:___fladd@b+3))^00h,c,w
	xorlw	80h
	movwf	(??___fladd+0+0)^00h,c
	movf	((c:___fladd@a+3))^00h,c,w
	xorlw	80h
	subwfb	(??___fladd+0+0)^00h,c,w
	btfsc	status,0
	goto	u2461
	goto	u2460

u2461:
	goto	l2794
u2460:
	line	154
	
l2786:
	movf	((c:___fladd@b))^00h,c,w
	subwf	((c:___fladd@a))^00h,c,w
	movwf	(??___fladd+0+0)^00h,c
	movf	((c:___fladd@b+1))^00h,c,w
	subwfb	((c:___fladd@a+1))^00h,c,w
	movwf	1+(??___fladd+0+0)^00h,c
	
	movf	((c:___fladd@b+2))^00h,c,w
	subwfb	((c:___fladd@a+2))^00h,c,w
	movwf	2+(??___fladd+0+0)^00h,c
	
	movf	((c:___fladd@b+3))^00h,c,w
	subwfb	((c:___fladd@a+3))^00h,c,w
	movwf	3+(??___fladd+0+0)^00h,c
	movlw	0FFh
	addwf	(??___fladd+0+0)^00h,c,w
	movwf	((c:___fladd@b))^00h,c
	movlw	0FFh
	addwfc	(??___fladd+0+1)^00h,c,w
	movwf	1+((c:___fladd@b))^00h,c
	
	movlw	0FFh
	addwfc	(??___fladd+0+2)^00h,c,w
	movwf	2+((c:___fladd@b))^00h,c
	
	movlw	0FFh
	addwfc	(??___fladd+0+3)^00h,c,w
	movwf	3+((c:___fladd@b))^00h,c
	line	155
	movlw	(080h)&0ffh
	xorwf	((c:___fladd@signs))^00h,c
	line	156
	
l2788:
	negf	((c:___fladd@grs))^00h,c
	line	157
	
l2790:
	movf	((c:___fladd@grs))^00h,c,w
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l788
u2470:
	line	158
	
l2792:
	movlw	low(01h)
	addwf	((c:___fladd@b))^00h,c
	movlw	0
	addwfc	((c:___fladd@b+1))^00h,c
	addwfc	((c:___fladd@b+2))^00h,c
	addwfc	((c:___fladd@b+3))^00h,c
	goto	l788
	line	162
	
l2794:
	movf	((c:___fladd@a))^00h,c,w
	subwf	((c:___fladd@b))^00h,c
	movf	((c:___fladd@a+1))^00h,c,w
	subwfb	((c:___fladd@b+1))^00h,c
	movf	((c:___fladd@a+2))^00h,c,w
	subwfb	((c:___fladd@b+2))^00h,c
	movf	((c:___fladd@a+3))^00h,c,w
	subwfb	((c:___fladd@b+3))^00h,c
	line	163
	
l788:
	line	166
	movf	((c:___fladd@b))^00h,c,w
iorwf	((c:___fladd@b+1))^00h,c,w
iorwf	((c:___fladd@b+2))^00h,c,w
iorwf	((c:___fladd@b+3))^00h,c,w
	btfss	status,2
	goto	u2481
	goto	u2480

u2481:
	goto	l2818
u2480:
	
l2796:
	movf	((c:___fladd@grs))^00h,c,w
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l2818
u2490:
	line	167
	
l2798:
	movlw	low(normalize32(0x0))
	movwf	((c:?___fladd))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:?___fladd+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:?___fladd+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:?___fladd+3))^00h,c
	goto	l780
	line	172
	
l2802:
	bcf	status,0
	rlcf	((c:___fladd@b))^00h,c
	rlcf	((c:___fladd@b+1))^00h,c
	rlcf	((c:___fladd@b+2))^00h,c
	rlcf	((c:___fladd@b+3))^00h,c
	line	173
	
l2804:
	
	btfss	((c:___fladd@grs))^00h,c,(7)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l2808
u2500:
	line	174
	
l2806:
	bsf	(0+(0/8)+(c:___fladd@b))^00h,c,(0)&7
	line	176
	
l2808:
	
	btfss	((c:___fladd@grs))^00h,c,(0)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l2812
u2510:
	line	177
	
l2810:
	bsf	status,0
	
	rlcf	((c:___fladd@grs))^00h,c
	line	178
	goto	l2814
	line	180
	
l2812:
	bcf status,0
	rlcf	((c:___fladd@grs))^00h,c

	line	182
	
l2814:
	movf	((c:___fladd@bexp))^00h,c,w
	btfsc	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l2818
u2520:
	line	183
	
l2816:
	decf	((c:___fladd@bexp))^00h,c
	line	171
	
l2818:
	
	btfss	((c:___fladd@b+2))^00h,c,(23)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l2802
u2530:
	line	186
	
l785:
	line	192
	clrf	((c:___fladd@aexp))^00h,c
	line	193
	
	btfss	((c:___fladd@grs))^00h,c,(7)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l797
u2540:
	line	194
	
l2820:
	movff	(c:___fladd@grs),??___fladd+0+0
	movlw	07Fh
	andwf	(??___fladd+0+0)^00h,c
	btfsc	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l798
u2550:
	line	195
	
l2822:
	movlw	low(01h)
	movwf	((c:___fladd@aexp))^00h,c
	line	196
	goto	l797
	line	197
	
l798:
	line	198
	
	btfss	((c:___fladd@b))^00h,c,(0)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l797
u2560:
	goto	l2822
	line	202
	
l797:
	line	203
	movf	((c:___fladd@aexp))^00h,c,w
	btfsc	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l2834
u2570:
	line	204
	
l2826:
	movlw	low(01h)
	addwf	((c:___fladd@b))^00h,c
	movlw	0
	addwfc	((c:___fladd@b+1))^00h,c
	addwfc	((c:___fladd@b+2))^00h,c
	addwfc	((c:___fladd@b+3))^00h,c
	line	205
	
l2828:
	
	btfss	((c:___fladd@b+3))^00h,c,(24)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l2834
u2580:
	line	206
	
l2830:
	movff	(c:___fladd@b),??___fladd+0+0
	movff	(c:___fladd@b+1),??___fladd+0+0+1
	movff	(c:___fladd@b+2),??___fladd+0+0+2
	movff	(c:___fladd@b+3),??___fladd+0+0+3
	rlcf	(??___fladd+0+3)^00h,c,w
	rrcf	(??___fladd+0+3)^00h,c
	rrcf	(??___fladd+0+2)^00h,c
	rrcf	(??___fladd+0+1)^00h,c
	rrcf	(??___fladd+0+0)^00h,c
	movff	??___fladd+0+0,(c:___fladd@b)
	movff	??___fladd+0+1,(c:___fladd@b+1)
	movff	??___fladd+0+2,(c:___fladd@b+2)
	movff	??___fladd+0+3,(c:___fladd@b+3)
	line	207
		incf	((c:___fladd@bexp))^00h,c,w
	btfsc	status,2
	goto	u2591
	goto	u2590

u2591:
	goto	l2834
u2590:
	line	208
	
l2832:
	incf	((c:___fladd@bexp))^00h,c
	line	215
	
l2834:
		incf	((c:___fladd@bexp))^00h,c,w
	btfsc	status,2
	goto	u2601
	goto	u2600

u2601:
	goto	l2838
u2600:
	
l2836:
	movf	((c:___fladd@bexp))^00h,c,w
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l804
u2610:
	line	216
	
l2838:
	movlw	low(0)
	movwf	((c:___fladd@b))^00h,c
	movlw	high(0)
	movwf	((c:___fladd@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fladd@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fladd@b+3))^00h,c
	line	218
	movf	((c:___fladd@bexp))^00h,c,w
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l804
u2620:
	line	219
	
l2840:
	clrf	((c:___fladd@signs))^00h,c
	line	221
	
l804:
	line	225
	
	btfss	((c:___fladd@bexp))^00h,c,(0)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l2844
u2630:
	line	226
	
l2842:
	bsf	(0+(7/8)+0+((c:___fladd@b)+02h))^00h,c,(7)&7
	line	227
	goto	l2846
	line	230
	
l2844:
	bcf	(0+(7/8)+0+((c:___fladd@b)+02h))^00h,c,(7)&7
	line	232
	
l2846:
	bcf	status,0
	rrcf	((c:___fladd@bexp))^00h,c,w
	movwf	(0+((c:___fladd@b)+03h))^00h,c
	line	233
	
l2848:
	
	btfss	((c:___fladd@signs))^00h,c,(7)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l2852
u2640:
	line	234
	
l2850:
	bsf	(0+(7/8)+0+((c:___fladd@b)+03h))^00h,c,(7)&7
	line	236
	
l2852:
	movff	(c:___fladd@b),(c:?___fladd)
	movff	(c:___fladd@b+1),(c:?___fladd+1)
	movff	(c:___fladd@b+2),(c:?___fladd+2)
	movff	(c:___fladd@b+3),(c:?___fladd+3)
	line	237
	
l780:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fladd
	__end_of___fladd:
	signat	___fladd,8316
	global	___flneg

;; *************** function ___flneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\flneg.c"
;; Parameters:    Size  Location     Type
;;  f1              4    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    4[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\flneg.c"
	line	15
global __ptext18
__ptext18:
psect	text18
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\flneg.c"
	line	15
	
___flneg:
;incstack = 0
	callstack 24
	line	17
	
l3252:
	movf	((c:___flneg@f1))^00h,c,w
iorwf	((c:___flneg@f1+1))^00h,c,w
iorwf	((c:___flneg@f1+2))^00h,c,w
iorwf	((c:___flneg@f1+3))^00h,c,w
	btfsc	status,2
	goto	u3281
	goto	u3280

u3281:
	goto	l3256
u3280:
	line	18
	
l3254:
	movlw	0
	xorwf	((c:___flneg@f1))^00h,c
	movlw	0
	xorwf	((c:___flneg@f1+1))^00h,c
	movlw	0
	xorwf	((c:___flneg@f1+2))^00h,c
	movlw	080h
	xorwf	((c:___flneg@f1+3))^00h,c
	line	19
	
l3256:
	movff	(c:___flneg@f1),(c:?___flneg)
	movff	(c:___flneg@f1+1),(c:?___flneg+1)
	movff	(c:___flneg@f1+2),(c:?___flneg+2)
	movff	(c:___flneg@f1+3),(c:?___flneg+3)
	line	20
	
l517:
	return	;funcret
	callstack 0
GLOBAL	__end_of___flneg
	__end_of___flneg:
	signat	___flneg,4220
	global	___flmul

;; *************** function ___flmul *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcmul.c"
;; Parameters:    Size  Location     Type
;;  b               4   43[COMRAM] unsigned char 
;;  a               4   47[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  prod            4   62[COMRAM] struct .
;;  grs             4   56[COMRAM] unsigned long 
;;  temp            2   66[COMRAM] struct .
;;  bexp            1   61[COMRAM] unsigned char 
;;  aexp            1   60[COMRAM] unsigned char 
;;  sign            1   55[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   43[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        25       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readADC
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcmul.c"
	line	8
global __ptext19
__ptext19:
psect	text19
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcmul.c"
	line	8
	
___flmul:
;incstack = 0
	callstack 24
	line	17
	
l3000:
	movf	(0+((c:___flmul@b)+03h))^00h,c,w
	andlw	low(080h)
	movwf	((c:___flmul@sign))^00h,c
	line	18
	movf	(0+((c:___flmul@b)+03h))^00h,c,w
	addwf	(0+((c:___flmul@b)+03h))^00h,c,w
	movwf	((c:___flmul@bexp))^00h,c
	line	19
	
l3002:
	
	btfss	(0+((c:___flmul@b)+02h))^00h,c,(7)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l3006
u2890:
	line	20
	
l3004:
	bsf	(0+(0/8)+(c:___flmul@bexp))^00h,c,(0)&7
	line	24
	
l3006:
	movf	((c:___flmul@bexp))^00h,c,w
	btfsc	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l3014
u2900:
	line	26
	
l3008:
		incf	((c:___flmul@bexp))^00h,c,w
	btfss	status,2
	goto	u2911
	goto	u2910

u2911:
	goto	l3012
u2910:
	line	28
	
l3010:
	movlw	low(normalize32(0x0))
	movwf	((c:___flmul@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___flmul@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___flmul@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___flmul@b+3))^00h,c
	line	31
	
l3012:
	bsf	(0+(23/8)+(c:___flmul@b))^00h,c,(23)&7
	line	33
	goto	l3016
	line	36
	
l3014:
	movlw	low(normalize32(0x0))
	movwf	((c:___flmul@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___flmul@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___flmul@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___flmul@b+3))^00h,c
	line	39
	
l3016:
	movf	(0+((c:___flmul@a)+03h))^00h,c,w
	andlw	low(080h)
	xorwf	((c:___flmul@sign))^00h,c
	line	40
	
l3018:
	movf	(0+((c:___flmul@a)+03h))^00h,c,w
	addwf	(0+((c:___flmul@a)+03h))^00h,c,w
	movwf	((c:___flmul@aexp))^00h,c
	line	41
	
l3020:
	
	btfss	(0+((c:___flmul@a)+02h))^00h,c,(7)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l3024
u2920:
	line	42
	
l3022:
	bsf	(0+(0/8)+(c:___flmul@aexp))^00h,c,(0)&7
	line	45
	
l3024:
	movf	((c:___flmul@aexp))^00h,c,w
	btfsc	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l3032
u2930:
	line	48
	
l3026:
		incf	((c:___flmul@aexp))^00h,c,w
	btfss	status,2
	goto	u2941
	goto	u2940

u2941:
	goto	l3030
u2940:
	line	50
	
l3028:
	movlw	low(normalize32(0x0))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___flmul@a+3))^00h,c
	line	53
	
l3030:
	bsf	(0+(23/8)+(c:___flmul@a))^00h,c,(23)&7
	line	54
	goto	l857
	line	57
	
l3032:
	movlw	low(normalize32(0x0))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___flmul@a+3))^00h,c
	line	58
	
l857:
	line	65
	movf	((c:___flmul@aexp))^00h,c,w
	btfsc	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l3036
u2950:
	
l3034:
	movf	((c:___flmul@bexp))^00h,c,w
	btfss	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l3040
u2960:
	line	66
	
l3036:
	movlw	low(normalize32(0x0))
	movwf	((c:?___flmul))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:?___flmul+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:?___flmul+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:?___flmul+3))^00h,c
	goto	l861
	line	95
	
l3040:
	movf	(0+((c:___flmul@a)+02h))^00h,c,w
	mulwf	((c:___flmul@b))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	96
	
l3042:
	movf	((c:___flmul@temp))^00h,c,w
	movwf	((c:___flmul@grs))^00h,c
	clrf	((c:___flmul@grs+1))^00h,c
	clrf	((c:___flmul@grs+2))^00h,c
	clrf	((c:___flmul@grs+3))^00h,c

	line	97
	
l3044:
	movf	(0+((c:___flmul@temp)+01h))^00h,c,w
	movwf	((c:___flmul@prod))^00h,c
	clrf	((c:___flmul@prod+1))^00h,c
	clrf	((c:___flmul@prod+2))^00h,c
	clrf	((c:___flmul@prod+3))^00h,c

	line	98
	movf	(0+((c:___flmul@a)+01h))^00h,c,w
	mulwf	(0+((c:___flmul@b)+01h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	99
	
l3046:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+1))^00h,c
	addwfc	((c:___flmul@grs+2))^00h,c
	addwfc	((c:___flmul@grs+3))^00h,c
	line	100
	
l3048:
	movf	(0+((c:___flmul@temp)+01h))^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+1))^00h,c
	addwfc	((c:___flmul@prod+2))^00h,c
	addwfc	((c:___flmul@prod+3))^00h,c
	line	101
	movf	((c:___flmul@a))^00h,c,w
	mulwf	(0+((c:___flmul@b)+02h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	102
	
l3050:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+1))^00h,c
	addwfc	((c:___flmul@grs+2))^00h,c
	addwfc	((c:___flmul@grs+3))^00h,c
	line	103
	
l3052:
	movf	(0+((c:___flmul@temp)+01h))^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+1))^00h,c
	addwfc	((c:___flmul@prod+2))^00h,c
	addwfc	((c:___flmul@prod+3))^00h,c
	line	104
	
l3054:
	movff	(c:___flmul@grs+2),(c:___flmul@grs+3)
	movff	(c:___flmul@grs+1),(c:___flmul@grs+2)
	movff	(c:___flmul@grs),(c:___flmul@grs+1)
	clrf	((c:___flmul@grs))^00h,c
	line	105
	
l3056:
	movf	((c:___flmul@a))^00h,c,w
	mulwf	(0+((c:___flmul@b)+01h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	106
	
l3058:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@grs+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+3))^00h,c

	line	107
	
l3060:
	movf	(0+((c:___flmul@a)+01h))^00h,c,w
	mulwf	((c:___flmul@b))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	108
	
l3062:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@grs+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+3))^00h,c

	line	109
	
l3064:
	movff	(c:___flmul@grs+2),(c:___flmul@grs+3)
	movff	(c:___flmul@grs+1),(c:___flmul@grs+2)
	movff	(c:___flmul@grs),(c:___flmul@grs+1)
	clrf	((c:___flmul@grs))^00h,c
	line	110
	movf	((c:___flmul@a))^00h,c,w
	mulwf	((c:___flmul@b))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	111
	
l3066:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@grs+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+3))^00h,c

	line	112
	
l3068:
	movf	(0+((c:___flmul@a)+02h))^00h,c,w
	mulwf	(0+((c:___flmul@b)+01h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	113
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@prod+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+3))^00h,c

	line	114
	
l3070:
	movf	(0+((c:___flmul@a)+01h))^00h,c,w
	mulwf	(0+((c:___flmul@b)+02h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	115
	
l3072:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@prod+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+3))^00h,c

	line	116
	movf	(0+((c:___flmul@a)+02h))^00h,c,w
	mulwf	(0+((c:___flmul@b)+02h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	117
	
l3074:
	movf	((c:___flmul@temp))^00h,c,w
	movwf	(??___flmul+0+0)^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	movwf	1+(??___flmul+0+0)^00h,c
	
	clrf	2+(??___flmul+0+0)^00h,c
	
	clrf	3+(??___flmul+0+0)^00h,c
	movff	??___flmul+0+2,??___flmul+0+3
	movff	??___flmul+0+1,??___flmul+0+2
	movff	??___flmul+0+0,??___flmul+0+1
	clrf	(??___flmul+0+0)^00h,c
	movf	(??___flmul+0+0)^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movf	(??___flmul+0+1)^00h,c,w
	addwfc	((c:___flmul@prod+1))^00h,c
	movf	(??___flmul+0+2)^00h,c,w
	addwfc	((c:___flmul@prod+2))^00h,c
	movf	(??___flmul+0+3)^00h,c,w
	addwfc	((c:___flmul@prod+3))^00h,c

	line	145
	
l3076:
	movff	(c:___flmul@grs),??___flmul+0+0
	movff	(c:___flmul@grs+1),??___flmul+0+0+1
	movff	(c:___flmul@grs+2),??___flmul+0+0+2
	movff	(c:___flmul@grs+3),??___flmul+0+0+3
	movlw	018h+1
	goto	u2970
u2975:
	bcf	status,0
	rrcf	(??___flmul+0+3)^00h,c
	rrcf	(??___flmul+0+2)^00h,c
	rrcf	(??___flmul+0+1)^00h,c
	rrcf	(??___flmul+0+0)^00h,c
u2970:
	decfsz	wreg
	goto	u2975
	movf	(??___flmul+0+0)^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movf	(??___flmul+0+1)^00h,c,w
	addwfc	((c:___flmul@prod+1))^00h,c
	movf	(??___flmul+0+2)^00h,c,w
	addwfc	((c:___flmul@prod+2))^00h,c
	movf	(??___flmul+0+3)^00h,c,w
	addwfc	((c:___flmul@prod+3))^00h,c

	line	146
	
l3078:
	movff	(c:___flmul@grs+2),(c:___flmul@grs+3)
	movff	(c:___flmul@grs+1),(c:___flmul@grs+2)
	movff	(c:___flmul@grs),(c:___flmul@grs+1)
	clrf	((c:___flmul@grs))^00h,c
	line	149
	
l3080:
	movf	((c:___flmul@aexp))^00h,c,w
	movff	(c:___flmul@bexp),??___flmul+0+0
	clrf	(??___flmul+0+0+1)^00h,c
	addwf	(??___flmul+0+0)^00h,c
	movlw	0
	addwfc	(??___flmul+0+1)^00h,c
	movlw	low(-126)
	addwf	(??___flmul+0+0)^00h,c,w
	movwf	((c:___flmul@temp))^00h,c
	movlw	high(-126)
	addwfc	(??___flmul+0+1)^00h,c,w
	movwf	1+((c:___flmul@temp))^00h,c
	line	152
	goto	l3088
	line	153
	
l3082:
	bcf	status,0
	rlcf	((c:___flmul@prod))^00h,c
	rlcf	((c:___flmul@prod+1))^00h,c
	rlcf	((c:___flmul@prod+2))^00h,c
	rlcf	((c:___flmul@prod+3))^00h,c
	line	154
	
l3084:
	
	btfss	((c:___flmul@grs+3))^00h,c,(31)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l864
u2980:
	line	155
	
l3086:
	bsf	(0+(0/8)+(c:___flmul@prod))^00h,c,(0)&7
	line	156
	
l864:
	line	157
	bcf	status,0
	rlcf	((c:___flmul@grs))^00h,c
	rlcf	((c:___flmul@grs+1))^00h,c
	rlcf	((c:___flmul@grs+2))^00h,c
	rlcf	((c:___flmul@grs+3))^00h,c
	line	158
	decf	((c:___flmul@temp))^00h,c
	btfss	status,0
	decf	((c:___flmul@temp+1))^00h,c
	line	152
	
l3088:
	
	btfss	((c:___flmul@prod+2))^00h,c,(23)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l3082
u2990:
	
l865:
	line	163
	clrf	((c:___flmul@aexp))^00h,c
	line	164
	
	btfss	((c:___flmul@grs+3))^00h,c,(31)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l866
u3000:
	line	165
	
l3090:
	movlw	0FFh
	andwf	((c:___flmul@grs))^00h,c,w
	movwf	(??___flmul+0+0)^00h,c
	movlw	0FFh
	andwf	((c:___flmul@grs+1))^00h,c,w
	movwf	1+(??___flmul+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___flmul@grs+2))^00h,c,w
	movwf	2+(??___flmul+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:___flmul@grs+3))^00h,c,w
	movwf	3+(??___flmul+0+0)^00h,c
	movf	(??___flmul+0+0)^00h,c,w
iorwf	(??___flmul+0+1)^00h,c,w
iorwf	(??___flmul+0+2)^00h,c,w
iorwf	(??___flmul+0+3)^00h,c,w
	btfsc	status,2
	goto	u3011
	goto	u3010

u3011:
	goto	l867
u3010:
	line	166
	
l3092:
	movlw	low(01h)
	movwf	((c:___flmul@aexp))^00h,c
	line	167
	goto	l866
	line	168
	
l867:
	line	169
	
	btfss	((c:___flmul@prod))^00h,c,(0)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l866
u3020:
	goto	l3092
	line	173
	
l866:
	line	174
	movf	((c:___flmul@aexp))^00h,c,w
	btfsc	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l3104
u3030:
	line	175
	
l3096:
	movlw	low(01h)
	addwf	((c:___flmul@prod))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+1))^00h,c
	addwfc	((c:___flmul@prod+2))^00h,c
	addwfc	((c:___flmul@prod+3))^00h,c
	line	176
	
l3098:
	
	btfss	((c:___flmul@prod+3))^00h,c,(24)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l3104
u3040:
	line	177
	
l3100:
	movff	(c:___flmul@prod),??___flmul+0+0
	movff	(c:___flmul@prod+1),??___flmul+0+0+1
	movff	(c:___flmul@prod+2),??___flmul+0+0+2
	movff	(c:___flmul@prod+3),??___flmul+0+0+3
	rlcf	(??___flmul+0+3)^00h,c,w
	rrcf	(??___flmul+0+3)^00h,c
	rrcf	(??___flmul+0+2)^00h,c
	rrcf	(??___flmul+0+1)^00h,c
	rrcf	(??___flmul+0+0)^00h,c
	movff	??___flmul+0+0,(c:___flmul@prod)
	movff	??___flmul+0+1,(c:___flmul@prod+1)
	movff	??___flmul+0+2,(c:___flmul@prod+2)
	movff	??___flmul+0+3,(c:___flmul@prod+3)
	line	178
	
l3102:
	infsnz	((c:___flmul@temp))^00h,c
	incf	((c:___flmul@temp+1))^00h,c
	line	183
	
l3104:
	btfsc	((c:___flmul@temp+1))^00h,c,7
	goto	u3051
	movf	((c:___flmul@temp+1))^00h,c,w
	bnz	u3050
	incf	((c:___flmul@temp))^00h,c,w
	btfss	status,0
	goto	u3051
	goto	u3050

u3051:
	goto	l3108
u3050:
	line	184
	
l3106:
	movlw	low(07F800000h)
	movwf	((c:___flmul@prod))^00h,c
	movlw	high(07F800000h)
	movwf	((c:___flmul@prod+1))^00h,c
	movlw	low highword(07F800000h)
	movwf	((c:___flmul@prod+2))^00h,c
	movlw	high highword(07F800000h)
	movwf	((c:___flmul@prod+3))^00h,c
	line	185
	goto	l3122
	line	187
	
l3108:
	btfsc	((c:___flmul@temp+1))^00h,c,7
	goto	u3060
	movf	((c:___flmul@temp+1))^00h,c,w
	bnz	u3061
	decf	((c:___flmul@temp))^00h,c,w
	btfsc	status,0
	goto	u3061
	goto	u3060

u3061:
	goto	l874
u3060:
	line	188
	
l3110:
	movlw	low(0)
	movwf	((c:___flmul@prod))^00h,c
	movlw	high(0)
	movwf	((c:___flmul@prod+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___flmul@prod+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___flmul@prod+3))^00h,c
	line	190
	
l3112:
	clrf	((c:___flmul@sign))^00h,c
	line	191
	goto	l3122
	line	192
	
l874:
	line	194
	movff	(c:___flmul@temp),(c:___flmul@bexp)
	line	195
	
l3114:
	movlw	0FFh
	andwf	((c:___flmul@prod))^00h,c
	movlw	0FFh
	andwf	((c:___flmul@prod+1))^00h,c
	movlw	07Fh
	andwf	((c:___flmul@prod+2))^00h,c
	movlw	0
	andwf	((c:___flmul@prod+3))^00h,c
	line	196
	
l3116:
	
	btfss	((c:___flmul@bexp))^00h,c,(0)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l3120
u3070:
	line	197
	
l3118:
	bsf	(0+(7/8)+0+((c:___flmul@prod)+02h))^00h,c,(7)&7
	line	199
	
l3120:
	bcf	status,0
	rrcf	((c:___flmul@bexp))^00h,c,w
	movwf	(0+((c:___flmul@prod)+03h))^00h,c
	line	201
	
l3122:
	movf	((c:___flmul@sign))^00h,c,w
	iorwf	(0+((c:___flmul@prod)+03h))^00h,c
	line	203
	
l3124:
	movff	(c:___flmul@prod),(c:?___flmul)
	movff	(c:___flmul@prod+1),(c:?___flmul+1)
	movff	(c:___flmul@prod+2),(c:?___flmul+2)
	movff	(c:___flmul@prod+3),(c:?___flmul+3)
	line	205
	
l861:
	return	;funcret
	callstack 0
GLOBAL	__end_of___flmul
	__end_of___flmul:
	signat	___flmul,8316
	global	___flge

;; *************** function ___flge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\flge.c"
;; Parameters:    Size  Location     Type
;;  ff1             4   68[COMRAM] unsigned char 
;;  ff2             4   72[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\flge.c"
	line	4
global __ptext20
__ptext20:
psect	text20
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\flge.c"
	line	4
	
___flge:
;incstack = 0
	callstack 24
	line	7
	
l3230:
	movlw	0
	andwf	((c:___flge@ff1))^00h,c,w
	movwf	(??___flge+0+0)^00h,c
	movlw	0
	andwf	((c:___flge@ff1+1))^00h,c,w
	movwf	1+(??___flge+0+0)^00h,c
	
	movlw	080h
	andwf	((c:___flge@ff1+2))^00h,c,w
	movwf	2+(??___flge+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:___flge@ff1+3))^00h,c,w
	movwf	3+(??___flge+0+0)^00h,c
	movf	(??___flge+0+0)^00h,c,w
iorwf	(??___flge+0+1)^00h,c,w
iorwf	(??___flge+0+2)^00h,c,w
iorwf	(??___flge+0+3)^00h,c,w
	btfss	status,2
	goto	u3231
	goto	u3230

u3231:
	goto	l3234
u3230:
	line	8
	
l3232:
	movlw	low(0)
	movwf	((c:___flge@ff1))^00h,c
	movlw	high(0)
	movwf	((c:___flge@ff1+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___flge@ff1+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___flge@ff1+3))^00h,c
	line	9
	
l3234:
	movlw	0
	andwf	((c:___flge@ff2))^00h,c,w
	movwf	(??___flge+0+0)^00h,c
	movlw	0
	andwf	((c:___flge@ff2+1))^00h,c,w
	movwf	1+(??___flge+0+0)^00h,c
	
	movlw	080h
	andwf	((c:___flge@ff2+2))^00h,c,w
	movwf	2+(??___flge+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:___flge@ff2+3))^00h,c,w
	movwf	3+(??___flge+0+0)^00h,c
	movf	(??___flge+0+0)^00h,c,w
iorwf	(??___flge+0+1)^00h,c,w
iorwf	(??___flge+0+2)^00h,c,w
iorwf	(??___flge+0+3)^00h,c,w
	btfss	status,2
	goto	u3241
	goto	u3240

u3241:
	goto	l3238
u3240:
	line	10
	
l3236:
	movlw	low(0)
	movwf	((c:___flge@ff2))^00h,c
	movlw	high(0)
	movwf	((c:___flge@ff2+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___flge@ff2+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___flge@ff2+3))^00h,c
	line	12
	
l3238:
	
	btfss	((c:___flge@ff1+3))^00h,c,(31)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l3242
u3250:
	line	13
	
l3240:
	negf	((c:___flge@ff1))^00h,c
	comf	((c:___flge@ff1+1))^00h,c
	btfsc	status,0
	incf	((c:___flge@ff1+1))^00h,c
	comf	((c:___flge@ff1+2))^00h,c
	btfsc	status,0
	incf	((c:___flge@ff1+2))^00h,c
	movlw	high highword(080000000h)
	subfwb	((c:___flge@ff1+3))^00h,c
	line	14
	
l3242:
	
	btfss	((c:___flge@ff2+3))^00h,c,(31)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l508
u3260:
	line	15
	
l3244:
	negf	((c:___flge@ff2))^00h,c
	comf	((c:___flge@ff2+1))^00h,c
	btfsc	status,0
	incf	((c:___flge@ff2+1))^00h,c
	comf	((c:___flge@ff2+2))^00h,c
	btfsc	status,0
	incf	((c:___flge@ff2+2))^00h,c
	movlw	high highword(080000000h)
	subfwb	((c:___flge@ff2+3))^00h,c
	
l508:
	line	16
	movlw	0
	xorwf	((c:___flge@ff1))^00h,c
	movlw	0
	xorwf	((c:___flge@ff1+1))^00h,c
	movlw	0
	xorwf	((c:___flge@ff1+2))^00h,c
	movlw	080h
	xorwf	((c:___flge@ff1+3))^00h,c
	line	17
	movlw	0
	xorwf	((c:___flge@ff2))^00h,c
	movlw	0
	xorwf	((c:___flge@ff2+1))^00h,c
	movlw	0
	xorwf	((c:___flge@ff2+2))^00h,c
	movlw	080h
	xorwf	((c:___flge@ff2+3))^00h,c
	line	18
		movf	((c:___flge@ff2))^00h,c,w
	subwf	((c:___flge@ff1))^00h,c,w
	movf	((c:___flge@ff2+1))^00h,c,w
	subwfb	((c:___flge@ff1+1))^00h,c,w
	movf	((c:___flge@ff2+2))^00h,c,w
	subwfb	((c:___flge@ff1+2))^00h,c,w
	movf	((c:___flge@ff2+3))^00h,c,w
	subwfb	((c:___flge@ff1+3))^00h,c,w
	btfsc	status,0
	goto	u3271
	goto	u3270

u3271:
	goto	l3248
u3270:
	
l3246:
	bcf	status,0
	goto	l513
	
l3248:
	bsf	status,0
	line	19
	
l513:
	return	;funcret
	callstack 0
GLOBAL	__end_of___flge
	__end_of___flge:
	signat	___flge,8312
	global	___fleq

;; *************** function ___fleq *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\fleq.c"
;; Parameters:    Size  Location     Type
;;  ff1             4    4[COMRAM] unsigned char 
;;  ff2             4    8[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\fleq.c"
	line	4
global __ptext21
__ptext21:
psect	text21
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\fleq.c"
	line	4
	
___fleq:
;incstack = 0
	callstack 24
	line	7
	
l3214:
	movlw	0
	andwf	((c:___fleq@ff1))^00h,c,w
	movwf	(??___fleq+0+0)^00h,c
	movlw	0
	andwf	((c:___fleq@ff1+1))^00h,c,w
	movwf	1+(??___fleq+0+0)^00h,c
	
	movlw	080h
	andwf	((c:___fleq@ff1+2))^00h,c,w
	movwf	2+(??___fleq+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:___fleq@ff1+3))^00h,c,w
	movwf	3+(??___fleq+0+0)^00h,c
	movf	(??___fleq+0+0)^00h,c,w
iorwf	(??___fleq+0+1)^00h,c,w
iorwf	(??___fleq+0+2)^00h,c,w
iorwf	(??___fleq+0+3)^00h,c,w
	btfss	status,2
	goto	u3201
	goto	u3200

u3201:
	goto	l3218
u3200:
	line	8
	
l3216:
	movlw	low(0)
	movwf	((c:___fleq@ff1))^00h,c
	movlw	high(0)
	movwf	((c:___fleq@ff1+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fleq@ff1+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fleq@ff1+3))^00h,c
	line	9
	
l3218:
	movlw	0
	andwf	((c:___fleq@ff2))^00h,c,w
	movwf	(??___fleq+0+0)^00h,c
	movlw	0
	andwf	((c:___fleq@ff2+1))^00h,c,w
	movwf	1+(??___fleq+0+0)^00h,c
	
	movlw	080h
	andwf	((c:___fleq@ff2+2))^00h,c,w
	movwf	2+(??___fleq+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:___fleq@ff2+3))^00h,c,w
	movwf	3+(??___fleq+0+0)^00h,c
	movf	(??___fleq+0+0)^00h,c,w
iorwf	(??___fleq+0+1)^00h,c,w
iorwf	(??___fleq+0+2)^00h,c,w
iorwf	(??___fleq+0+3)^00h,c,w
	btfss	status,2
	goto	u3211
	goto	u3210

u3211:
	goto	l3222
u3210:
	line	10
	
l3220:
	movlw	low(0)
	movwf	((c:___fleq@ff2))^00h,c
	movlw	high(0)
	movwf	((c:___fleq@ff2+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fleq@ff2+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fleq@ff2+3))^00h,c
	line	11
	
l3222:
	movf	((c:___fleq@ff2))^00h,c,w
xorwf	((c:___fleq@ff1))^00h,c,w
	bnz	u3220
movf	((c:___fleq@ff2+1))^00h,c,w
xorwf	((c:___fleq@ff1+1))^00h,c,w
	bnz	u3220
movf	((c:___fleq@ff2+2))^00h,c,w
xorwf	((c:___fleq@ff1+2))^00h,c,w
	bnz	u3220
movf	((c:___fleq@ff2+3))^00h,c,w
xorwf	((c:___fleq@ff1+3))^00h,c,w
	btfsc	status,2
	goto	u3221
	goto	u3220

u3221:
	goto	l3226
u3220:
	
l3224:
	bcf	status,0
	goto	l502
	
l3226:
	bsf	status,0
	line	12
	
l502:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fleq
	__end_of___fleq:
	signat	___fleq,8312
	global	___fldiv

;; *************** function ___fldiv *****************
;; Defined at:
;;		line 11 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcdiv.c"
;; Parameters:    Size  Location     Type
;;  b               4   18[COMRAM] unsigned char 
;;  a               4   22[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  grs             4   37[COMRAM] unsigned long 
;;  rem             4   30[COMRAM] unsigned long 
;;  new_exp         2   35[COMRAM] short 
;;  aexp            1   42[COMRAM] unsigned char 
;;  bexp            1   41[COMRAM] unsigned char 
;;  sign            1   34[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   18[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        25       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readADC
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcdiv.c"
	line	11
global __ptext22
__ptext22:
psect	text22
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcdiv.c"
	line	11
	
___fldiv:
;incstack = 0
	callstack 24
	line	26
	
l2864:
	movf	(0+((c:___fldiv@b)+03h))^00h,c,w
	andlw	low(080h)
	movwf	((c:___fldiv@sign))^00h,c
	line	27
	movf	(0+((c:___fldiv@b)+03h))^00h,c,w
	addwf	(0+((c:___fldiv@b)+03h))^00h,c,w
	movwf	((c:___fldiv@bexp))^00h,c
	line	28
	
l2866:
	
	btfss	(0+((c:___fldiv@b)+02h))^00h,c,(7)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l2870
u2660:
	line	29
	
l2868:
	bsf	(0+(0/8)+(c:___fldiv@bexp))^00h,c,(0)&7
	line	33
	
l2870:
	movf	((c:___fldiv@bexp))^00h,c,w
	btfsc	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l2880
u2670:
	line	35
	
l2872:
		incf	((c:___fldiv@bexp))^00h,c,w
	btfss	status,2
	goto	u2681
	goto	u2680

u2681:
	goto	l2876
u2680:
	line	37
	
l2874:
	movlw	low(normalize32(0x0))
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fldiv@b+3))^00h,c
	line	40
	
l2876:
	bsf	(0+(23/8)+(c:___fldiv@b))^00h,c,(23)&7
	line	42
	
l2878:
	clrf	(0+((c:___fldiv@b)+03h))^00h,c
	line	43
	goto	l2882
	line	46
	
l2880:
	movlw	low(normalize32(0x0))
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fldiv@b+3))^00h,c
	line	49
	
l2882:
	movf	(0+((c:___fldiv@a)+03h))^00h,c,w
	andlw	low(080h)
	xorwf	((c:___fldiv@sign))^00h,c
	line	50
	
l2884:
	movf	(0+((c:___fldiv@a)+03h))^00h,c,w
	addwf	(0+((c:___fldiv@a)+03h))^00h,c,w
	movwf	((c:___fldiv@aexp))^00h,c
	line	51
	
l2886:
	
	btfss	(0+((c:___fldiv@a)+02h))^00h,c,(7)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l2890
u2690:
	line	52
	
l2888:
	bsf	(0+(0/8)+(c:___fldiv@aexp))^00h,c,(0)&7
	line	56
	
l2890:
	movf	((c:___fldiv@aexp))^00h,c,w
	btfsc	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2900
u2700:
	line	58
	
l2892:
		incf	((c:___fldiv@aexp))^00h,c,w
	btfss	status,2
	goto	u2711
	goto	u2710

u2711:
	goto	l2896
u2710:
	line	60
	
l2894:
	movlw	low(normalize32(0x0))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fldiv@a+3))^00h,c
	line	63
	
l2896:
	bsf	(0+(23/8)+(c:___fldiv@a))^00h,c,(23)&7
	line	65
	
l2898:
	clrf	(0+((c:___fldiv@a)+03h))^00h,c
	line	66
	goto	l2902
	line	69
	
l2900:
	movlw	low(normalize32(0x0))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fldiv@a+3))^00h,c
	line	75
	
l2902:
	movf	((c:___fldiv@a))^00h,c,w
iorwf	((c:___fldiv@a+1))^00h,c,w
iorwf	((c:___fldiv@a+2))^00h,c,w
iorwf	((c:___fldiv@a+3))^00h,c,w
	btfss	status,2
	goto	u2721
	goto	u2720

u2721:
	goto	l2914
u2720:
	line	76
	
l2904:
	movlw	low(0)
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@b+3))^00h,c
	line	77
	
l2906:
	movlw	low(07F80h)
	iorwf	(0+((c:___fldiv@b)+02h))^00h,c
	movlw	high(07F80h)
	iorwf	(1+((c:___fldiv@b)+02h))^00h,c
	line	78
	
l2908:
	movf	((c:___fldiv@sign))^00h,c,w
	iorwf	(0+((c:___fldiv@b)+03h))^00h,c
	line	79
	
l2910:
	movff	(c:___fldiv@b),(c:?___fldiv)
	movff	(c:___fldiv@b+1),(c:?___fldiv+1)
	movff	(c:___fldiv@b+2),(c:?___fldiv+2)
	movff	(c:___fldiv@b+3),(c:?___fldiv+3)
	goto	l825
	line	83
	
l2914:
	movf	((c:___fldiv@bexp))^00h,c,w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l2922
u2730:
	line	84
	
l2916:
	line	85
	
l2918:
	movlw	low(0)
	movwf	((c:?___fldiv))^00h,c
	movlw	high(0)
	movwf	((c:?___fldiv+1))^00h,c
	movlw	low highword(0)
	movwf	((c:?___fldiv+2))^00h,c
	movlw	high highword(0)
	movwf	((c:?___fldiv+3))^00h,c
	goto	l825
	line	89
	
l2922:
	movf	((c:___fldiv@aexp))^00h,c,w
	movff	(c:___fldiv@bexp),??___fldiv+0+0
	clrf	(??___fldiv+0+0+1)^00h,c
	subwf	(??___fldiv+0+0)^00h,c
	movlw	0
	subwfb	(??___fldiv+0+1)^00h,c
	movlw	low(07Fh)
	addwf	(??___fldiv+0+0)^00h,c,w
	movwf	((c:___fldiv@new_exp))^00h,c
	movlw	high(07Fh)
	addwfc	(??___fldiv+0+1)^00h,c,w
	movwf	1+((c:___fldiv@new_exp))^00h,c
	line	92
	
l2924:
	movff	(c:___fldiv@b),(c:___fldiv@rem)
	movff	(c:___fldiv@b+1),(c:___fldiv@rem+1)
	movff	(c:___fldiv@b+2),(c:___fldiv@rem+2)
	movff	(c:___fldiv@b+3),(c:___fldiv@rem+3)
	line	93
	
l2926:
	movlw	low(0)
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@b+3))^00h,c
	line	94
	
l2928:
	movlw	low(0)
	movwf	((c:___fldiv@grs))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@grs+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@grs+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@grs+3))^00h,c
	line	96
	
l2930:
	clrf	((c:___fldiv@aexp))^00h,c
	line	97
	goto	l827
	line	100
	
l2932:
	movf	((c:___fldiv@aexp))^00h,c,w
	btfsc	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l2940
u2740:
	line	101
	
l2934:
	bcf	status,0
	rlcf	((c:___fldiv@rem))^00h,c
	rlcf	((c:___fldiv@rem+1))^00h,c
	rlcf	((c:___fldiv@rem+2))^00h,c
	rlcf	((c:___fldiv@rem+3))^00h,c
	line	102
	bcf	status,0
	rlcf	((c:___fldiv@b))^00h,c
	rlcf	((c:___fldiv@b+1))^00h,c
	rlcf	((c:___fldiv@b+2))^00h,c
	rlcf	((c:___fldiv@b+3))^00h,c
	line	103
	
l2936:
	
	btfss	((c:___fldiv@grs+3))^00h,c,(31)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l830
u2750:
	line	104
	
l2938:
	bsf	(0+(0/8)+(c:___fldiv@b))^00h,c,(0)&7
	line	105
	
l830:
	line	106
	bcf	status,0
	rlcf	((c:___fldiv@grs))^00h,c
	rlcf	((c:___fldiv@grs+1))^00h,c
	rlcf	((c:___fldiv@grs+2))^00h,c
	rlcf	((c:___fldiv@grs+3))^00h,c
	line	112
	
l2940:
		movf	((c:___fldiv@a))^00h,c,w
	subwf	((c:___fldiv@rem))^00h,c,w
	movf	((c:___fldiv@a+1))^00h,c,w
	subwfb	((c:___fldiv@rem+1))^00h,c,w
	movf	((c:___fldiv@a+2))^00h,c,w
	subwfb	((c:___fldiv@rem+2))^00h,c,w
	movf	((c:___fldiv@a+3))^00h,c,w
	subwfb	((c:___fldiv@rem+3))^00h,c,w
	btfss	status,0
	goto	u2761
	goto	u2760

u2761:
	goto	l2946
u2760:
	line	115
	
l2942:
	bsf	(0+(30/8)+(c:___fldiv@grs))^00h,c,(30)&7
	line	116
	
l2944:
	movf	((c:___fldiv@a))^00h,c,w
	subwf	((c:___fldiv@rem))^00h,c
	movf	((c:___fldiv@a+1))^00h,c,w
	subwfb	((c:___fldiv@rem+1))^00h,c
	movf	((c:___fldiv@a+2))^00h,c,w
	subwfb	((c:___fldiv@rem+2))^00h,c
	movf	((c:___fldiv@a+3))^00h,c,w
	subwfb	((c:___fldiv@rem+3))^00h,c
	line	118
	
l2946:
	incf	((c:___fldiv@aexp))^00h,c
	line	119
	
l827:
	line	97
		movlw	01Ah-1
	cpfsgt	((c:___fldiv@aexp))^00h,c
	goto	u2771
	goto	u2770

u2771:
	goto	l2932
u2770:
	line	122
	
l2948:
	movf	((c:___fldiv@rem))^00h,c,w
iorwf	((c:___fldiv@rem+1))^00h,c,w
iorwf	((c:___fldiv@rem+2))^00h,c,w
iorwf	((c:___fldiv@rem+3))^00h,c,w
	btfsc	status,2
	goto	u2781
	goto	u2780

u2781:
	goto	l2958
u2780:
	line	123
	
l2950:
	bsf	(0+(0/8)+(c:___fldiv@grs))^00h,c,(0)&7
	goto	l2958
	line	128
	
l2952:
	bcf	status,0
	rlcf	((c:___fldiv@b))^00h,c
	rlcf	((c:___fldiv@b+1))^00h,c
	rlcf	((c:___fldiv@b+2))^00h,c
	rlcf	((c:___fldiv@b+3))^00h,c
	line	129
	
l2954:
	
	btfss	((c:___fldiv@grs+3))^00h,c,(31)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l836
u2790:
	line	130
	
l2956:
	bsf	(0+(0/8)+(c:___fldiv@b))^00h,c,(0)&7
	line	131
	
l836:
	line	132
	bcf	status,0
	rlcf	((c:___fldiv@grs))^00h,c
	rlcf	((c:___fldiv@grs+1))^00h,c
	rlcf	((c:___fldiv@grs+2))^00h,c
	rlcf	((c:___fldiv@grs+3))^00h,c
	line	133
	decf	((c:___fldiv@new_exp))^00h,c
	btfss	status,0
	decf	((c:___fldiv@new_exp+1))^00h,c
	line	127
	
l2958:
	
	btfss	((c:___fldiv@b+2))^00h,c,(23)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l2952
u2800:
	
l837:
	line	139
	clrf	((c:___fldiv@aexp))^00h,c
	line	140
	
	btfss	((c:___fldiv@grs+3))^00h,c,(31)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l838
u2810:
	line	141
	
l2960:
	movlw	0FFh
	andwf	((c:___fldiv@grs))^00h,c,w
	movwf	(??___fldiv+0+0)^00h,c
	movlw	0FFh
	andwf	((c:___fldiv@grs+1))^00h,c,w
	movwf	1+(??___fldiv+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___fldiv@grs+2))^00h,c,w
	movwf	2+(??___fldiv+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:___fldiv@grs+3))^00h,c,w
	movwf	3+(??___fldiv+0+0)^00h,c
	movf	(??___fldiv+0+0)^00h,c,w
iorwf	(??___fldiv+0+1)^00h,c,w
iorwf	(??___fldiv+0+2)^00h,c,w
iorwf	(??___fldiv+0+3)^00h,c,w
	btfsc	status,2
	goto	u2821
	goto	u2820

u2821:
	goto	l839
u2820:
	line	142
	
l2962:
	movlw	low(01h)
	movwf	((c:___fldiv@aexp))^00h,c
	line	143
	goto	l838
	line	144
	
l839:
	line	145
	
	btfss	((c:___fldiv@b))^00h,c,(0)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l838
u2830:
	goto	l2962
	line	149
	
l838:
	line	150
	movf	((c:___fldiv@aexp))^00h,c,w
	btfsc	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l2974
u2840:
	line	151
	
l2966:
	movlw	low(01h)
	addwf	((c:___fldiv@b))^00h,c
	movlw	0
	addwfc	((c:___fldiv@b+1))^00h,c
	addwfc	((c:___fldiv@b+2))^00h,c
	addwfc	((c:___fldiv@b+3))^00h,c
	line	152
	
l2968:
	
	btfss	((c:___fldiv@b+3))^00h,c,(24)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l2974
u2850:
	line	153
	
l2970:
	movff	(c:___fldiv@b),??___fldiv+0+0
	movff	(c:___fldiv@b+1),??___fldiv+0+0+1
	movff	(c:___fldiv@b+2),??___fldiv+0+0+2
	movff	(c:___fldiv@b+3),??___fldiv+0+0+3
	rlcf	(??___fldiv+0+3)^00h,c,w
	rrcf	(??___fldiv+0+3)^00h,c
	rrcf	(??___fldiv+0+2)^00h,c
	rrcf	(??___fldiv+0+1)^00h,c
	rrcf	(??___fldiv+0+0)^00h,c
	movff	??___fldiv+0+0,(c:___fldiv@b)
	movff	??___fldiv+0+1,(c:___fldiv@b+1)
	movff	??___fldiv+0+2,(c:___fldiv@b+2)
	movff	??___fldiv+0+3,(c:___fldiv@b+3)
	line	154
	
l2972:
	infsnz	((c:___fldiv@new_exp))^00h,c
	incf	((c:___fldiv@new_exp+1))^00h,c
	line	159
	
l2974:
	btfsc	((c:___fldiv@new_exp+1))^00h,c,7
	goto	u2861
	movf	((c:___fldiv@new_exp+1))^00h,c,w
	bnz	u2860
	incf	((c:___fldiv@new_exp))^00h,c,w
	btfss	status,0
	goto	u2861
	goto	u2860

u2861:
	goto	l2978
u2860:
	line	160
	
l2976:
	movlw	high(0FFh)
	movwf	((c:___fldiv@new_exp+1))^00h,c
	setf	((c:___fldiv@new_exp))^00h,c
	line	161
	movlw	low(0)
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@b+3))^00h,c
	line	165
	
l2978:
	btfsc	((c:___fldiv@new_exp+1))^00h,c,7
	goto	u2870
	movf	((c:___fldiv@new_exp+1))^00h,c,w
	bnz	u2871
	decf	((c:___fldiv@new_exp))^00h,c,w
	btfsc	status,0
	goto	u2871
	goto	u2870

u2871:
	goto	l2984
u2870:
	line	166
	
l2980:
	movlw	high(0)
	movwf	((c:___fldiv@new_exp+1))^00h,c
	movlw	low(0)
	movwf	((c:___fldiv@new_exp))^00h,c
	line	167
	movlw	low(0)
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@b+3))^00h,c
	line	169
	
l2982:
	clrf	((c:___fldiv@sign))^00h,c
	line	173
	
l2984:
	movff	(c:___fldiv@new_exp),(c:___fldiv@bexp)
	line	175
	
l2986:
	
	btfss	((c:___fldiv@bexp))^00h,c,(0)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l2990
u2880:
	line	176
	
l2988:
	bsf	(0+(7/8)+0+((c:___fldiv@b)+02h))^00h,c,(7)&7
	line	177
	goto	l2992
	line	180
	
l2990:
	bcf	(0+(7/8)+0+((c:___fldiv@b)+02h))^00h,c,(7)&7
	line	182
	
l2992:
	bcf	status,0
	rrcf	((c:___fldiv@bexp))^00h,c,w
	movwf	(0+((c:___fldiv@b)+03h))^00h,c
	goto	l2908
	line	185
	
l825:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fldiv
	__end_of___fldiv:
	signat	___fldiv,8316
	global	_dtoa

;; *************** function _dtoa *****************
;; Defined at:
;;		line 513 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              1   26[COMRAM] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  d               2   27[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  i               2   36[COMRAM] int 
;;  p               2   33[COMRAM] int 
;;  w               2   31[COMRAM] int 
;;  s               1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_abs
;;		_pad
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	513
global __ptext23
__ptext23:
psect	text23
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	513
	
_dtoa:
;incstack = 0
	callstack 21
	line	524
	
l3410:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 513: static void dtoa(FILE *fp, vfpf_sint_t d);C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 514: {;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 515:  char s;;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 516:     int i, w;;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 518:  int p;;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 524:     s = d < 0 ? 1 : 0;
	btfsc	((c:dtoa@d+1))^00h,c,7
	goto	u3611
	goto	u3610

u3611:
	movlw	1
	goto	u3620
u3610:
	movlw	0
u3620:
	movwf	((c:dtoa@s))^00h,c
	line	533
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 533:     p = (0 <= prec) ? prec : 1;
	movlb	0	; () banked
	btfsc	((_prec+1))&0ffh,7
	goto	u3630
	goto	u3631

u3631:
	goto	l958
u3630:
	
l3412:; BSR set to: 0

	movlw	high(01h)
	movwf	((c:dtoa@p+1))^00h,c
	movlw	low(01h)
	movwf	((c:dtoa@p))^00h,c
	goto	l960
	
l958:; BSR set to: 0

	movff	(_prec),(c:dtoa@p)
	movff	(_prec+1),(c:dtoa@p+1)
	
l960:; BSR set to: 0

	line	535
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 535:     w = width;
	movff	(_width),(c:dtoa@w)
	movff	(_width+1),(c:dtoa@w+1)
	line	536
	
l3414:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 536:     if (s
	movf	((c:dtoa@s))^00h,c,w
	btfsc	status,2
	goto	u3641
	goto	u3640
u3641:
	goto	l961
u3640:
	line	541
	
l3416:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 540:     ) {;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 541:         --w;
	decf	((c:dtoa@w))^00h,c
	btfss	status,0
	decf	((c:dtoa@w+1))^00h,c
	line	542
	
l3418:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 542:   s = s ? '-' : '+';
	movf	((c:dtoa@s))^00h,c,w
	btfss	status,2
	goto	u3651
	goto	u3650
u3651:
	goto	l3422
u3650:
	
l3420:; BSR set to: 0

	movlw	high(02Bh)
	movwf	((c:_dtoa$1306+1))^00h,c
	movlw	low(02Bh)
	movwf	((c:_dtoa$1306))^00h,c
	goto	l3424
	
l3422:; BSR set to: 0

	movlw	high(02Dh)
	movwf	((c:_dtoa$1306+1))^00h,c
	movlw	low(02Dh)
	movwf	((c:_dtoa$1306))^00h,c
	
l3424:; BSR set to: 0

	movff	(c:_dtoa$1306),(c:dtoa@s)
	line	543
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 543:     }
	
l961:; BSR set to: 0

	line	552
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 552:     i = sizeof(dbuf) - 1;
	movlw	high(04Fh)
	movwf	((c:dtoa@i+1))^00h,c
	movlw	low(04Fh)
	movwf	((c:dtoa@i))^00h,c
	line	553
	
l3426:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 553:     dbuf[i] = '\0';
	movlb	1	; () banked
	clrf	(0+(_dbuf+04Fh))&0ffh
	line	554
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 554:     while (!(i < 1) && (d != 0
	goto	l3438
	line	564
	
l3428:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 563:     )) {;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 564:         --i;
	decf	((c:dtoa@i))^00h,c
	btfss	status,0
	decf	((c:dtoa@i+1))^00h,c
	line	565
	
l3430:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 565:         dbuf[i] = (char)((int)'0' + abs(d % 10));
	movlw	low(_dbuf)
	addwf	((c:dtoa@i))^00h,c,w
	movwf	c:fsr2l
	movlw	high(_dbuf)
	addwfc	((c:dtoa@i+1))^00h,c,w
	movwf	1+c:fsr2l
	movff	(c:dtoa@d),(c:___awmod@dividend)
	movff	(c:dtoa@d+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:abs@a)
	movff	1+?___awmod,(c:abs@a+1)
	call	_abs	;wreg free
	movf	(0+?_abs)^00h,c,w
	addlw	low(030h)
	movwf	indf2,c

	line	567
	
l3432:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 567:         --p;
	decf	((c:dtoa@p))^00h,c
	btfss	status,0
	decf	((c:dtoa@p+1))^00h,c
	line	571
	
l3434:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 571:         --w;
	decf	((c:dtoa@w))^00h,c
	btfss	status,0
	decf	((c:dtoa@w+1))^00h,c
	line	572
	
l3436:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 572:         d = d / 10;
	movff	(c:dtoa@d),(c:___awdiv@dividend)
	movff	(c:dtoa@d+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:dtoa@d)
	movff	1+?___awdiv,(c:dtoa@d+1)
	line	554
	
l3438:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 554:     while (!(i < 1) && (d != 0
	btfsc	((c:dtoa@i+1))^00h,c,7
	goto	u3661
	movf	((c:dtoa@i+1))^00h,c,w
	bnz	u3660
	decf	((c:dtoa@i))^00h,c,w
	btfss	status,0
	goto	u3661
	goto	u3660

u3661:
	goto	l3444
u3660:
	
l3440:
	movf	((c:dtoa@d))^00h,c,w
iorwf	((c:dtoa@d+1))^00h,c,w
	btfss	status,2
	goto	u3671
	goto	u3670

u3671:
	goto	l3428
u3670:
	
l3442:
	btfsc	((c:dtoa@p+1))^00h,c,7
	goto	u3680
	movf	((c:dtoa@p+1))^00h,c,w
	bnz	u3681
	decf	((c:dtoa@p))^00h,c,w
	btfsc	status,0
	goto	u3681
	goto	u3680

u3681:
	goto	l3428
u3680:
	line	576
	
l3444:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 576:     if (s != 0) {
	movf	((c:dtoa@s))^00h,c,w
	btfsc	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l3450
u3690:
	line	577
	
l3446:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 577:         --i;
	decf	((c:dtoa@i))^00h,c
	btfss	status,0
	decf	((c:dtoa@i+1))^00h,c
	line	578
	
l3448:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 578:         dbuf[i] = s;
	movlw	low(_dbuf)
	addwf	((c:dtoa@i))^00h,c,w
	movwf	c:fsr2l
	movlw	high(_dbuf)
	addwfc	((c:dtoa@i+1))^00h,c,w
	movwf	1+c:fsr2l
	movff	(c:dtoa@s),indf2

	line	582
	
l3450:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 582:     return (void) pad(fp, &dbuf[i], w);
		movff	(c:dtoa@fp),(c:pad@fp)

	movlw	low(_dbuf)
	addwf	((c:dtoa@i))^00h,c,w
	movwf	((c:pad@buf))^00h,c
	movlw	high(_dbuf)
	addwfc	((c:dtoa@i+1))^00h,c,w
	movwf	1+((c:pad@buf))^00h,c
	movff	(c:dtoa@w),(c:pad@p)
	movff	(c:dtoa@w+1),(c:pad@p+1)
	call	_pad	;wreg free
	line	583
	
l972:
	return	;funcret
	callstack 0
GLOBAL	__end_of_dtoa
	__end_of_dtoa:
	signat	_dtoa,8313
	global	_pad

;; *************** function _pad *****************
;; Defined at:
;;		line 193 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              1   18[COMRAM] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  buf             2   19[COMRAM] PTR unsigned char 
;;		 -> dbuf(80), 
;;  p               2   21[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  i               2   24[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_fputc
;;		_fputs
;; This function is called by:
;;		_dtoa
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=1
	line	193
global __ptext24
__ptext24:
psect	text24
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	193
	
_pad:
;incstack = 0
	callstack 21
	line	205
	
l3304:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 193: static void pad(FILE *fp, char *buf, int p);C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 194: {;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 195:     int i;;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 205:  if (p < 0) {
	btfsc	((c:pad@p+1))^00h,c,7
	goto	u3360
	goto	u3361

u3361:
	goto	l950
u3360:
	line	206
	
l3306:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 206:   p = 0;
	movlw	high(0)
	movwf	((c:pad@p+1))^00h,c
	movlw	low(0)
	movwf	((c:pad@p))^00h,c
	line	207
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 207:  }
	
l950:
	line	208
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 208:     i = 0;
	movlw	high(0)
	movwf	((c:pad@i+1))^00h,c
	movlw	low(0)
	movwf	((c:pad@i))^00h,c
	line	209
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 209:     while (i < p) {
	goto	l3312
	line	210
	
l3308:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 210:         fputc(' ', fp);
	movlw	high(020h)
	movwf	((c:fputc@c+1))^00h,c
	movlw	low(020h)
	movwf	((c:fputc@c))^00h,c
		movff	(c:pad@fp),(c:fputc@fp)

	call	_fputc	;wreg free
	line	211
	
l3310:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 211:         ++i;
	infsnz	((c:pad@i))^00h,c
	incf	((c:pad@i+1))^00h,c
	line	209
	
l3312:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 209:     while (i < p) {
		movf	((c:pad@p))^00h,c,w
	subwf	((c:pad@i))^00h,c,w
	movf	((c:pad@i+1))^00h,c,w
	xorlw	80h
	movwf	(??_pad+0+0)^00h,c
	movf	((c:pad@p+1))^00h,c,w
	xorlw	80h
	subwfb	(??_pad+0+0)^00h,c,w
	btfss	status,0
	goto	u3371
	goto	u3370

u3371:
	goto	l3308
u3370:
	line	218
	
l3314:
;C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c: 218:         fputs((const char *)buf, fp);
		movff	(c:pad@buf),(c:fputs@s)
	movff	(c:pad@buf+1),(c:fputs@s+1)

		movff	(c:pad@fp),(c:fputs@fp)

	call	_fputs	;wreg free
	line	226
	
l954:
	return	;funcret
	callstack 0
GLOBAL	__end_of_pad
	__end_of_pad:
	signat	_pad,12409
	global	_fputs

;; *************** function _fputs *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_fputs.c"
;; Parameters:    Size  Location     Type
;;  s               2   12[COMRAM] PTR const unsigned char 
;;		 -> dbuf(80), 
;;  fp              1   14[COMRAM] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;; Auto vars:     Size  Location     Type
;;  i               2   16[COMRAM] int 
;;  c               1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   12[COMRAM] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_fputc
;; This function is called by:
;;		_pad
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_fputs.c"
	line	8
global __ptext25
__ptext25:
psect	text25
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_fputs.c"
	line	8
	
_fputs:
;incstack = 0
	callstack 21
	line	13
	
l2856:
	movlw	high(0)
	movwf	((c:fputs@i+1))^00h,c
	movlw	low(0)
	movwf	((c:fputs@i))^00h,c
	line	14
	goto	l2862
	line	15
	
l2858:
	movff	(c:fputs@c),(c:fputc@c)
	clrf	((c:fputc@c+1))^00h,c
		movff	(c:fputs@fp),(c:fputc@fp)

	call	_fputc	;wreg free
	line	16
	
l2860:
	infsnz	((c:fputs@i))^00h,c
	incf	((c:fputs@i+1))^00h,c
	line	14
	
l2862:
	movf	((c:fputs@i))^00h,c,w
	addwf	((c:fputs@s))^00h,c,w
	movwf	c:fsr2l
	movf	((c:fputs@i+1))^00h,c,w
	addwfc	((c:fputs@s+1))^00h,c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:fputs@c))^00h,c
	movf	((c:fputs@c))^00h,c,w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2858
u2650:
	line	19
	
l1126:
	return	;funcret
	callstack 0
GLOBAL	__end_of_fputs
	__end_of_fputs:
	signat	_fputs,8314
	global	_fputc

;; *************** function _fputc *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_fputc.c"
;; Parameters:    Size  Location     Type
;;  c               2    4[COMRAM] int 
;;  fp              1    6[COMRAM] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    4[COMRAM] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_putch
;; This function is called by:
;;		_pad
;;		_vfpfcnvrt
;;		_fputs
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_fputc.c"
	line	8
global __ptext26
__ptext26:
psect	text26
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_fputc.c"
	line	8
	
_fputc:
;incstack = 0
	callstack 24
	line	12
	
l2648:
	movf	((c:fputc@fp))^00h,c,w
	btfsc	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l2652
u2220:
	
l2650:
	movf	((c:fputc@fp))^00h,c,w
	btfss	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l2654
u2230:
	line	13
	
l2652:
	movf	((c:fputc@c))^00h,c,w
	
	call	_putch
	line	14
	goto	l1118
	line	15
	
l2654:
	movf	((c:fputc@fp))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(09h)
	addwf	fsr2l

	movf	postinc2,w
iorwf	postinc2,w
	btfsc	status,2
	goto	u2241
	goto	u2240

u2241:
	goto	l2658
u2240:
	
l2656:
	movf	((c:fputc@fp))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(09h)
	addwf	fsr2l

	movf	((c:fputc@fp))^00h,c,w
	movwf	fsr1l
	clrf	fsr1h
	movlw	low(02h)
	addwf	fsr1l

		movf	postinc2,w
	subwf	postinc1,w
	movf	postinc1,w
	xorlw	80h
	movwf	(??_fputc+4+0)^00h,c
	movf	postinc2,w
	xorlw	80h
	subwfb	(??_fputc+4+0)^00h,c,w
	btfsc	status,0
	goto	u2251
	goto	u2250

u2251:
	goto	l1118
u2250:
	line	18
	
l2658:
	movf	((c:fputc@fp))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_fputc+0+0)^00h,c
	movf	((c:fputc@fp))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	addwf	((??_fputc+0+0))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:fputc@c),indf2

	line	20
	movf	((c:fputc@fp))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	24
	
l1118:
	return	;funcret
	callstack 0
GLOBAL	__end_of_fputc
	__end_of_fputc:
	signat	_fputc,8314
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\putch.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fputc
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\putch.c"
	line	7
global __ptext27
__ptext27:
psect	text27
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\putch.c"
	line	7
	
_putch:
;incstack = 0
	callstack 24
	line	9
	
l1129:
	return	;funcret
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	_abs

;; *************** function _abs *****************
;; Defined at:
;;		line 1 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\abs.c"
;; Parameters:    Size  Location     Type
;;  a               2   10[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   10[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dtoa
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\abs.c"
	line	1
global __ptext28
__ptext28:
psect	text28
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\abs.c"
	line	1
	
_abs:
;incstack = 0
	callstack 24
	line	3
	
l3316:
	btfsc	((c:abs@a+1))^00h,c,7
	goto	u3381
	goto	u3380

u3381:
	goto	l1077
u3380:
	
l3318:
	movff	(c:abs@a),(c:?_abs)
	movff	(c:abs@a+1),(c:?_abs+1)
	goto	l1080
	
l1077:
	movff	(c:abs@a),??_abs+0+0
	movff	(c:abs@a+1),??_abs+0+0+1
	comf	(??_abs+0+0)^00h,c
	comf	(??_abs+0+1)^00h,c
	infsnz	(??_abs+0+0)^00h,c
	incf	(??_abs+0+1)^00h,c
	movff	??_abs+0+0,(c:?_abs)
	movff	??_abs+0+1,(c:?_abs+1)
	line	4
	
l1080:
	return	;funcret
	callstack 0
GLOBAL	__end_of_abs
	__end_of_abs:
	signat	_abs,4218
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    4[COMRAM] int 
;;  divisor         2    6[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    9[COMRAM] unsigned char 
;;  counter         1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dtoa
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\awmod.c"
	line	7
global __ptext29
__ptext29:
psect	text29
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\awmod.c"
	line	7
	
___awmod:
;incstack = 0
	callstack 24
	line	12
	
l3178:
	clrf	((c:___awmod@sign))^00h,c
	line	13
	
l3180:
	btfsc	((c:___awmod@dividend+1))^00h,c,7
	goto	u3140
	goto	u3141

u3141:
	goto	l3186
u3140:
	line	14
	
l3182:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	15
	
l3184:
	movlw	low(01h)
	movwf	((c:___awmod@sign))^00h,c
	line	17
	
l3186:
	btfsc	((c:___awmod@divisor+1))^00h,c,7
	goto	u3150
	goto	u3151

u3151:
	goto	l3190
u3150:
	line	18
	
l3188:
	negf	((c:___awmod@divisor))^00h,c
	comf	((c:___awmod@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@divisor+1))^00h,c
	line	19
	
l3190:
	movf	((c:___awmod@divisor))^00h,c,w
iorwf	((c:___awmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u3161
	goto	u3160

u3161:
	goto	l3206
u3160:
	line	20
	
l3192:
	movlw	low(01h)
	movwf	((c:___awmod@counter))^00h,c
	line	21
	goto	l3196
	line	22
	
l3194:
	bcf	status,0
	rlcf	((c:___awmod@divisor))^00h,c
	rlcf	((c:___awmod@divisor+1))^00h,c
	line	23
	incf	((c:___awmod@counter))^00h,c
	line	21
	
l3196:
	
	btfss	((c:___awmod@divisor+1))^00h,c,(15)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l3194
u3170:
	line	26
	
l3198:
		movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c,w
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u3181
	goto	u3180

u3181:
	goto	l3202
u3180:
	line	27
	
l3200:
	movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c

	line	28
	
l3202:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1))^00h,c
	rrcf	((c:___awmod@divisor))^00h,c
	line	29
	
l3204:
	decfsz	((c:___awmod@counter))^00h,c
	
	goto	l3198
	line	31
	
l3206:
	movf	((c:___awmod@sign))^00h,c,w
	btfsc	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l3210
u3190:
	line	32
	
l3208:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	33
	
l3210:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	line	34
	
l487:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    4[COMRAM] int 
;;  divisor         2    6[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   10[COMRAM] int 
;;  sign            1    9[COMRAM] unsigned char 
;;  counter         1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dtoa
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\awdiv.c"
	line	7
global __ptext30
__ptext30:
psect	text30
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\awdiv.c"
	line	7
	
___awdiv:
;incstack = 0
	callstack 24
	line	13
	
l3134:
	clrf	((c:___awdiv@sign))^00h,c
	line	14
	
l3136:
	btfsc	((c:___awdiv@divisor+1))^00h,c,7
	goto	u3080
	goto	u3081

u3081:
	goto	l3142
u3080:
	line	15
	
l3138:
	negf	((c:___awdiv@divisor))^00h,c
	comf	((c:___awdiv@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1))^00h,c
	line	16
	
l3140:
	movlw	low(01h)
	movwf	((c:___awdiv@sign))^00h,c
	line	18
	
l3142:
	btfsc	((c:___awdiv@dividend+1))^00h,c,7
	goto	u3090
	goto	u3091

u3091:
	goto	l3148
u3090:
	line	19
	
l3144:
	negf	((c:___awdiv@dividend))^00h,c
	comf	((c:___awdiv@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1))^00h,c
	line	20
	
l3146:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign))^00h,c
	line	22
	
l3148:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___awdiv@quotient))^00h,c
	line	23
	
l3150:
	movf	((c:___awdiv@divisor))^00h,c,w
iorwf	((c:___awdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u3101
	goto	u3100

u3101:
	goto	l3170
u3100:
	line	24
	
l3152:
	movlw	low(01h)
	movwf	((c:___awdiv@counter))^00h,c
	line	25
	goto	l3156
	line	26
	
l3154:
	bcf	status,0
	rlcf	((c:___awdiv@divisor))^00h,c
	rlcf	((c:___awdiv@divisor+1))^00h,c
	line	27
	incf	((c:___awdiv@counter))^00h,c
	line	25
	
l3156:
	
	btfss	((c:___awdiv@divisor+1))^00h,c,(15)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l3154
u3110:
	line	30
	
l3158:
	bcf	status,0
	rlcf	((c:___awdiv@quotient))^00h,c
	rlcf	((c:___awdiv@quotient+1))^00h,c
	line	31
	
l3160:
		movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c,w
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u3121
	goto	u3120

u3121:
	goto	l3166
u3120:
	line	32
	
l3162:
	movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c

	line	33
	
l3164:
	bsf	(0+(0/8)+(c:___awdiv@quotient))^00h,c,(0)&7
	line	35
	
l3166:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1))^00h,c
	rrcf	((c:___awdiv@divisor))^00h,c
	line	36
	
l3168:
	decfsz	((c:___awdiv@counter))^00h,c
	
	goto	l3158
	line	38
	
l3170:
	movf	((c:___awdiv@sign))^00h,c,w
	btfsc	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l3174
u3130:
	line	39
	
l3172:
	negf	((c:___awdiv@quotient))^00h,c
	comf	((c:___awdiv@quotient+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1))^00h,c
	line	40
	
l3174:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	line	41
	
l474:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    4[COMRAM] unsigned long 
;;  multiplicand    4    8[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4   12[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    4[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\Umul32.c"
	line	15
global __ptext31
__ptext31:
psect	text31
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\Umul32.c"
	line	15
	
___lmul:
;incstack = 0
	callstack 28
	line	119
	
l3884:
	movlw	low(0)
	movwf	((c:___lmul@product))^00h,c
	movlw	high(0)
	movwf	((c:___lmul@product+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3))^00h,c
	line	121
	
l3886:
	
	btfss	((c:___lmul@multiplier))^00h,c,(0)&7
	goto	u4191
	goto	u4190
u4191:
	goto	l3890
u4190:
	line	122
	
l3888:
	movf	((c:___lmul@multiplicand))^00h,c,w
	addwf	((c:___lmul@product))^00h,c
	movf	((c:___lmul@multiplicand+1))^00h,c,w
	addwfc	((c:___lmul@product+1))^00h,c
	movf	((c:___lmul@multiplicand+2))^00h,c,w
	addwfc	((c:___lmul@product+2))^00h,c
	movf	((c:___lmul@multiplicand+3))^00h,c,w
	addwfc	((c:___lmul@product+3))^00h,c
	line	123
	
l3890:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand))^00h,c
	rlcf	((c:___lmul@multiplicand+1))^00h,c
	rlcf	((c:___lmul@multiplicand+2))^00h,c
	rlcf	((c:___lmul@multiplicand+3))^00h,c
	line	124
	
l3892:
	bcf	status,0
	rrcf	((c:___lmul@multiplier+3))^00h,c
	rrcf	((c:___lmul@multiplier+2))^00h,c
	rrcf	((c:___lmul@multiplier+1))^00h,c
	rrcf	((c:___lmul@multiplier))^00h,c
	line	125
	movf	((c:___lmul@multiplier))^00h,c,w
iorwf	((c:___lmul@multiplier+1))^00h,c,w
iorwf	((c:___lmul@multiplier+2))^00h,c,w
iorwf	((c:___lmul@multiplier+3))^00h,c,w
	btfss	status,2
	goto	u4201
	goto	u4200

u4201:
	goto	l3886
u4200:
	
l254:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l255:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\__lldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   16[COMRAM] unsigned long 
;;  divisor         4   20[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   24[COMRAM] unsigned long 
;;  counter         1   28[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   16[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\__lldiv.c"
	line	7
global __ptext32
__ptext32:
psect	text32
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\__lldiv.c"
	line	7
	
___lldiv:
;incstack = 0
	callstack 28
	line	13
	
l3894:
	movlw	low(0)
	movwf	((c:___lldiv@quotient))^00h,c
	movlw	high(0)
	movwf	((c:___lldiv@quotient+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lldiv@quotient+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lldiv@quotient+3))^00h,c
	line	14
	
l3896:
	movf	((c:___lldiv@divisor))^00h,c,w
iorwf	((c:___lldiv@divisor+1))^00h,c,w
iorwf	((c:___lldiv@divisor+2))^00h,c,w
iorwf	((c:___lldiv@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u4211
	goto	u4210

u4211:
	goto	l270
u4210:
	line	15
	
l3898:
	movlw	low(01h)
	movwf	((c:___lldiv@counter))^00h,c
	line	16
	goto	l3902
	line	17
	
l3900:
	bcf	status,0
	rlcf	((c:___lldiv@divisor))^00h,c
	rlcf	((c:___lldiv@divisor+1))^00h,c
	rlcf	((c:___lldiv@divisor+2))^00h,c
	rlcf	((c:___lldiv@divisor+3))^00h,c
	line	18
	incf	((c:___lldiv@counter))^00h,c
	line	16
	
l3902:
	
	btfss	((c:___lldiv@divisor+3))^00h,c,(31)&7
	goto	u4221
	goto	u4220
u4221:
	goto	l3900
u4220:
	line	21
	
l3904:
	bcf	status,0
	rlcf	((c:___lldiv@quotient))^00h,c
	rlcf	((c:___lldiv@quotient+1))^00h,c
	rlcf	((c:___lldiv@quotient+2))^00h,c
	rlcf	((c:___lldiv@quotient+3))^00h,c
	line	22
	
l3906:
		movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c,w
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c,w
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c,w
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c,w
	btfss	status,0
	goto	u4231
	goto	u4230

u4231:
	goto	l3912
u4230:
	line	23
	
l3908:
	movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c
	line	24
	
l3910:
	bsf	(0+(0/8)+(c:___lldiv@quotient))^00h,c,(0)&7
	line	26
	
l3912:
	bcf	status,0
	rrcf	((c:___lldiv@divisor+3))^00h,c
	rrcf	((c:___lldiv@divisor+2))^00h,c
	rrcf	((c:___lldiv@divisor+1))^00h,c
	rrcf	((c:___lldiv@divisor))^00h,c
	line	27
	
l3914:
	decfsz	((c:___lldiv@counter))^00h,c
	
	goto	l3904
	line	28
	
l270:
	line	29
	movff	(c:___lldiv@quotient),(c:?___lldiv)
	movff	(c:___lldiv@quotient+1),(c:?___lldiv+1)
	movff	(c:___lldiv@quotient+2),(c:?___lldiv+2)
	movff	(c:___lldiv@quotient+3),(c:?___lldiv+3)
	line	30
	
l277:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_TMR2_StartTimer

;; *************** function _TMR2_StartTimer *****************
;; Defined at:
;;		line 55 in file "./PWM.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_TMR2_Start
;; This function is called by:
;;		_PWM
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0
	file	"./PWM.h"
	line	55
global __ptext33
__ptext33:
psect	text33
	file	"./PWM.h"
	line	55
	
_TMR2_StartTimer:
;incstack = 0
	callstack 27
	line	57
	
l3832:
;./PWM.h: 57:     TMR2_Start();
	call	_TMR2_Start	;wreg free
	line	58
	
l175:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR2_StartTimer
	__end_of_TMR2_StartTimer:
	signat	_TMR2_StartTimer,89
	global	_TMR2_Start

;; *************** function _TMR2_Start *****************
;; Defined at:
;;		line 49 in file "./PWM.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TMR2_StartTimer
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	line	49
global __ptext34
__ptext34:
psect	text34
	file	"./PWM.h"
	line	49
	
_TMR2_Start:
;incstack = 0
	callstack 27
	line	52
	
l3792:
;./PWM.h: 52:     T2CONbits.TMR2ON = 1;
	bsf	((c:16300))^03f00h,c,7	;volatile
	line	53
	
l172:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR2_Start
	__end_of_TMR2_Start:
	signat	_TMR2_Start,89
	global	_TMR2_Initialize

;; *************** function _TMR2_Initialize *****************
;; Defined at:
;;		line 11 in file "./PWM.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0
	line	11
global __ptext35
__ptext35:
psect	text35
	file	"./PWM.h"
	line	11
	
_TMR2_Initialize:
;incstack = 0
	callstack 28
	line	16
	
l3820:
;./PWM.h: 16:     T2CLKCON = 0x01;
	movlw	low(01h)
	movwf	((c:16302))^03f00h,c	;volatile
	line	19
	
l3822:
;./PWM.h: 19:     T2HLT = 0x00;
	clrf	((c:16301))^03f00h,c	;volatile
	line	22
	
l3824:
;./PWM.h: 22:     T2RST = 0x00;
	clrf	((c:16303))^03f00h,c	;volatile
	line	25
	
l3826:
;./PWM.h: 25:     T2PR = 0xFF;
	setf	((c:16299))^03f00h,c	;volatile
	line	28
	
l3828:
;./PWM.h: 28:     T2TMR = 0x00;
	clrf	((c:16298))^03f00h,c	;volatile
	line	31
	
l3830:
;./PWM.h: 31:     PIR4bits.TMR2IF = 0;
	movlb	57	; () banked
	bcf	((14756))&0ffh,2	;volatile
	line	34
;./PWM.h: 34:     T2CON = 0xA0;
	movlw	low(0A0h)
	movwf	((c:16300))^03f00h,c	;volatile
	line	35
	
l169:; BSR set to: 57

	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR2_Initialize
	__end_of_TMR2_Initialize:
	signat	_TMR2_Initialize,89
	global	_PWM_Output_D8_Enable

;; *************** function _PWM_Output_D8_Enable *****************
;; Defined at:
;;		line 123 in file "./PWM.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=0
	line	123
global __ptext36
__ptext36:
psect	text36
	file	"./PWM.h"
	line	123
	
_PWM_Output_D8_Enable:; BSR set to: 57

;incstack = 0
	callstack 28
	line	124
	
l3834:
;./PWM.h: 124:     PPSLOCK = 0x55;
	movlw	low(055h)
	movlb	58	; () banked
	movwf	((15039))&0ffh	;volsfr
	line	125
;./PWM.h: 125:     PPSLOCK = 0xAA;
	movlw	low(0AAh)
	movwf	((15039))&0ffh	;volsfr
	line	126
	
l3836:; BSR set to: 58

;./PWM.h: 126:     PPSLOCKbits.PPSLOCKED = 0x00;
	bcf	((15039))&0ffh,0	;volsfr
	line	129
;./PWM.h: 129:     RB3PPS = 0x0A;
	movlw	low(0Ah)
	movwf	((14859))&0ffh	;volatile
	line	131
;./PWM.h: 131:     PPSLOCK = 0x55;
	movlw	low(055h)
	movwf	((15039))&0ffh	;volsfr
	line	132
;./PWM.h: 132:     PPSLOCK = 0xAA;
	movlw	low(0AAh)
	movwf	((15039))&0ffh	;volsfr
	line	133
	
l3838:; BSR set to: 58

;./PWM.h: 133:     PPSLOCKbits.PPSLOCKED = 0x01;
	bsf	((15039))&0ffh,0	;volsfr
	line	134
	
l202:; BSR set to: 58

	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM_Output_D8_Enable
	__end_of_PWM_Output_D8_Enable:
	signat	_PWM_Output_D8_Enable,89
	global	_PWM2_OutputStatusGet

;; *************** function _PWM2_OutputStatusGet *****************
;; Defined at:
;;		line 186 in file "./PWM.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	line	186
global __ptext37
__ptext37:
psect	text37
	file	"./PWM.h"
	line	186
	
_PWM2_OutputStatusGet:; BSR set to: 58

;incstack = 0
	callstack 28
	line	189
	
l3858:
;./PWM.h: 189:     return(CCP2CONbits.OUT);
	btfsc	((c:16250))^03f00h,c,5	;volatile
	goto	u4161
	goto	u4160
u4161:
	movlw	1
	goto	u4166
u4160:
	movlw	0
u4166:
	line	190
	
l216:
	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM2_OutputStatusGet
	__end_of_PWM2_OutputStatusGet:
	signat	_PWM2_OutputStatusGet,89
	global	_PWM2_LoadDutyValue

;; *************** function _PWM2_LoadDutyValue *****************
;; Defined at:
;;		line 168 in file "./PWM.h"
;; Parameters:    Size  Location     Type
;;  dutyValue       2    4[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	line	168
global __ptext38
__ptext38:
psect	text38
	file	"./PWM.h"
	line	168
	
_PWM2_LoadDutyValue:
;incstack = 0
	callstack 28
	line	170
	
l3844:
;./PWM.h: 168: void PWM2_LoadDutyValue(uint16_t dutyValue);./PWM.h: 169: {;./PWM.h: 170:     dutyValue &= 0x03FF;
	movlw	low(03FFh)
	andwf	((c:PWM2_LoadDutyValue@dutyValue))^00h,c
	movlw	high(03FFh)
	andwf	((c:PWM2_LoadDutyValue@dutyValue+1))^00h,c
	line	173
	
l3846:
;./PWM.h: 173:     if(CCP2CONbits.FMT)
	btfss	((c:16250))^03f00h,c,4	;volatile
	goto	u4141
	goto	u4140
u4141:
	goto	l3850
u4140:
	line	175
	
l3848:
;./PWM.h: 174:     {;./PWM.h: 175:         dutyValue <<= 6;
	movlw	06h
u4155:
	bcf	status,0
	rlcf	((c:PWM2_LoadDutyValue@dutyValue))^00h,c
	rlcf	((c:PWM2_LoadDutyValue@dutyValue+1))^00h,c
	decfsz	wreg
	goto	u4155
	line	176
	
l3850:
;./PWM.h: 176:         CCPR2H = dutyValue >> 8;
	movf	((c:PWM2_LoadDutyValue@dutyValue+1))^00h,c,w
	movwf	((c:16249))^03f00h,c	;volatile
	line	177
	
l3852:
;./PWM.h: 177:         CCPR2L = dutyValue;
	movff	(c:PWM2_LoadDutyValue@dutyValue),(c:16248)	;volatile
	line	184
;./PWM.h: 178:     }
	
l213:
	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM2_LoadDutyValue
	__end_of_PWM2_LoadDutyValue:
	signat	_PWM2_LoadDutyValue,4217
	global	_PWM2_Initialize

;; *************** function _PWM2_Initialize *****************
;; Defined at:
;;		line 151 in file "./PWM.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0
	line	151
global __ptext39
__ptext39:
psect	text39
	file	"./PWM.h"
	line	151
	
_PWM2_Initialize:
;incstack = 0
	callstack 28
	line	156
	
l3840:
;./PWM.h: 156:  CCP2CON = 0x8C;
	movlw	low(08Ch)
	movwf	((c:16250))^03f00h,c	;volatile
	line	159
	
l3842:
;./PWM.h: 159:  CCPR2H = 0x0;
	clrf	((c:16249))^03f00h,c	;volatile
	line	162
;./PWM.h: 162:  CCPR2L = 0x0f;
	movlw	low(0Fh)
	movwf	((c:16248))^03f00h,c	;volatile
	line	165
;./PWM.h: 165:  CCPTMRS0bits.C2TSEL = 0x1;
	movlb	63	; () banked
	movf	((16222))&0ffh,w	;volatile
	andlw	not (((1<<2)-1)<<2)
	iorlw	(01h & ((1<<2)-1))<<2
	movwf	((16222))&0ffh	;volatile
	line	167
	
l208:; BSR set to: 63

	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM2_Initialize
	__end_of_PWM2_Initialize:
	signat	_PWM2_Initialize,89
	global	_LCD_String_xy

;; *************** function _LCD_String_xy *****************
;; Defined at:
;;		line 80 in file "./LCD.h"
;; Parameters:    Size  Location     Type
;;  row             1    wreg     unsigned char 
;;  pos             1   13[COMRAM] unsigned char 
;;  msg             2   14[COMRAM] PTR const unsigned char 
;;		 -> PWM@percent(15), readADC@buffer(12), STR_2(15), STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  row             1   16[COMRAM] unsigned char 
;;  location        1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_LCD_Command
;;		_LCD_String
;; This function is called by:
;;		_main
;;		_readADC
;;		_PWM
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=0
	file	"./LCD.h"
	line	80
global __ptext40
__ptext40:
psect	text40
	file	"./LCD.h"
	line	80
	
_LCD_String_xy:; BSR set to: 63

;incstack = 0
	callstack 25
;LCD_String_xy@row stored from wreg
	movwf	((c:LCD_String_xy@row))^00h,c
	line	82
	
l3806:
	line	83
	
l3808:
;./LCD.h: 83:     if(row<=1)
		movlw	02h-0
	cpfslt	((c:LCD_String_xy@row))^00h,c
	goto	u4131
	goto	u4130

u4131:
	goto	l3814
u4130:
	line	85
	
l3810:
;./LCD.h: 84:     {;./LCD.h: 85:         location=(0x80) | ((pos) & 0x0f);
	movf	((c:LCD_String_xy@pos))^00h,c,w
	andlw	low(0Fh)
	iorlw	low(080h)
	movwf	((c:LCD_String_xy@location))^00h,c
	line	86
	
l3812:
;./LCD.h: 86:         LCD_Command(location);
	movf	((c:LCD_String_xy@location))^00h,c,w
	
	call	_LCD_Command
	line	87
;./LCD.h: 87:     }
	goto	l3818
	line	90
	
l3814:
;./LCD.h: 89:     {;./LCD.h: 90:         location=(0xC0) | ((pos) & 0x0f);
	movf	((c:LCD_String_xy@pos))^00h,c,w
	andlw	low(0Fh)
	iorlw	low(0C0h)
	movwf	((c:LCD_String_xy@location))^00h,c
	line	91
	
l3816:
;./LCD.h: 91:         LCD_Command(location);
	movf	((c:LCD_String_xy@location))^00h,c,w
	
	call	_LCD_Command
	line	93
	
l3818:
;./LCD.h: 93:     LCD_String(msg);
		movff	(c:LCD_String_xy@msg),(c:LCD_String@msg)
	movff	(c:LCD_String_xy@msg+1),(c:LCD_String@msg+1)

	call	_LCD_String	;wreg free
	line	95
	
l147:
	return	;funcret
	callstack 0
GLOBAL	__end_of_LCD_String_xy
	__end_of_LCD_String_xy:
	signat	_LCD_String_xy,12409
	global	_LCD_String

;; *************** function _LCD_String *****************
;; Defined at:
;;		line 71 in file "./LCD.h"
;; Parameters:    Size  Location     Type
;;  msg             2   11[COMRAM] PTR const unsigned char 
;;		 -> PWM@percent(15), readADC@buffer(12), STR_2(15), STR_1(6), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_LCD_Char
;; This function is called by:
;;		_LCD_String_xy
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=0
	line	71
global __ptext41
__ptext41:
psect	text41
	file	"./LCD.h"
	line	71
	
_LCD_String:
;incstack = 0
	callstack 25
	line	73
	
l3784:
;./LCD.h: 71: void LCD_String(const char *msg);./LCD.h: 72: {;./LCD.h: 73:     while((*msg)!=0)
	goto	l3790
	line	75
	
l3786:
;./LCD.h: 74:     {;./LCD.h: 75:       LCD_Char(*msg);
	movff	(c:LCD_String@msg),tblptrl
	movff	(c:LCD_String@msg+1),tblptrh
	movlw	low highword(__smallconst)
	movwf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u4097

	tblrd	*
	
	movf	tablat,w
	bra	u4090
u4097:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u4090:
	
	call	_LCD_Char
	line	76
	
l3788:
;./LCD.h: 76:       msg++;
	infsnz	((c:LCD_String@msg))^00h,c
	incf	((c:LCD_String@msg+1))^00h,c
	line	73
	
l3790:
;./LCD.h: 73:     while((*msg)!=0)
	movff	(c:LCD_String@msg),tblptrl
	movff	(c:LCD_String@msg+1),tblptrh
	movlw	low highword(__smallconst)
	movwf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u4107

	tblrd	*
	
	movf	tablat,w
	bra	u4100
u4107:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u4100:
	iorlw	0
	btfss	status,2
	goto	u4111
	goto	u4110
u4111:
	goto	l3786
u4110:
	line	78
	
l142:
	return	;funcret
	callstack 0
GLOBAL	__end_of_LCD_String
	__end_of_LCD_String:
	signat	_LCD_String,4217
	global	_LCD_Char

;; *************** function _LCD_Char *****************
;; Defined at:
;;		line 60 in file "./LCD.h"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_MSdelay
;; This function is called by:
;;		_LCD_String
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=0
	line	60
global __ptext42
__ptext42:
psect	text42
	file	"./LCD.h"
	line	60
	
_LCD_Char:
;incstack = 0
	callstack 25
;LCD_Char@dat stored from wreg
	movwf	((c:LCD_Char@dat))^00h,c
	line	62
	
l3688:
;./LCD.h: 60: void LCD_Char(char dat);./LCD.h: 61: {;./LCD.h: 62:     LATD= dat;
	movff	(c:LCD_Char@dat),(c:16317)	;volatile
	line	63
	
l3690:
;./LCD.h: 63:     LATC3 = 1;
	bsf	c:(130531/8),(130531)&7	;volatile
	line	64
	
l3692:
;./LCD.h: 64:     LATC4=1;
	bsf	c:(130532/8),(130532)&7	;volatile
	line	65
	
l3694:
;./LCD.h: 65:     __nop();
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	66
	
l3696:
;./LCD.h: 66:     LATC4=0;
	bcf	c:(130532/8),(130532)&7	;volatile
	line	67
	
l3698:
;./LCD.h: 67:     MSdelay(1);
	movlw	high(01h)
	movwf	((c:MSdelay@val+1))^00h,c
	movlw	low(01h)
	movwf	((c:MSdelay@val))^00h,c
	call	_MSdelay	;wreg free
	line	68
	
l136:
	return	;funcret
	callstack 0
GLOBAL	__end_of_LCD_Char
	__end_of_LCD_Char:
	signat	_LCD_Char,4217
	global	_LCD_Clear

;; *************** function _LCD_Clear *****************
;; Defined at:
;;		line 44 in file "./LCD.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_LCD_Command
;; This function is called by:
;;		_main
;;		_PWM
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2,group=0
	line	44
global __ptext43
__ptext43:
psect	text43
	file	"./LCD.h"
	line	44
	
_LCD_Clear:
;incstack = 0
	callstack 26
	line	46
	
l3804:
;./LCD.h: 46:         LCD_Command(0x01);
	movlw	(01h)&0ffh
	
	call	_LCD_Command
	line	47
	
l130:
	return	;funcret
	callstack 0
GLOBAL	__end_of_LCD_Clear
	__end_of_LCD_Clear:
	signat	_LCD_Clear,89
	global	_LCD_Init

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 33 in file "./LCD.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_LCD_Command
;;		_MSdelay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2,group=0
	line	33
global __ptext44
__ptext44:
psect	text44
	file	"./LCD.h"
	line	33
	
_LCD_Init:
;incstack = 0
	callstack 27
	line	35
	
l3962:
;./LCD.h: 35:     MSdelay(15);
	movlw	high(0Fh)
	movwf	((c:MSdelay@val+1))^00h,c
	movlw	low(0Fh)
	movwf	((c:MSdelay@val))^00h,c
	call	_MSdelay	;wreg free
	line	36
	
l3964:
;./LCD.h: 36:     TRISD = 0x00;
	clrf	((c:16325))^03f00h,c	;volatile
	line	37
	
l3966:
;./LCD.h: 37:     TRISC = 0x00;
	clrf	((c:16324))^03f00h,c	;volatile
	line	38
;./LCD.h: 38:     LCD_Command(0x01);
	movlw	(01h)&0ffh
	
	call	_LCD_Command
	line	39
;./LCD.h: 39:     LCD_Command(0x38);
	movlw	(038h)&0ffh
	
	call	_LCD_Command
	line	40
;./LCD.h: 40:     LCD_Command(0x0c);
	movlw	(0Ch)&0ffh
	
	call	_LCD_Command
	line	41
;./LCD.h: 41:     LCD_Command(0x06);
	movlw	(06h)&0ffh
	
	call	_LCD_Command
	line	42
	
l127:
	return	;funcret
	callstack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
	signat	_LCD_Init,89
	global	_LCD_Command

;; *************** function _LCD_Command *****************
;; Defined at:
;;		line 49 in file "./LCD.h"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_MSdelay
;; This function is called by:
;;		_LCD_Init
;;		_LCD_Clear
;;		_LCD_String_xy
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2,group=0
	line	49
global __ptext45
__ptext45:
psect	text45
	file	"./LCD.h"
	line	49
	
_LCD_Command:
;incstack = 0
	callstack 26
;LCD_Command@cmd stored from wreg
	movwf	((c:LCD_Command@cmd))^00h,c
	line	51
	
l3770:
;./LCD.h: 49: void LCD_Command(char cmd );./LCD.h: 50: {;./LCD.h: 51:     LATD= cmd;
	movff	(c:LCD_Command@cmd),(c:16317)	;volatile
	line	52
	
l3772:
;./LCD.h: 52:     _delay((unsigned long)((1)*(4000000/4000.0)));
	asmopt push
asmopt off
	movlw	200
u4857:
	nop2
decfsz	wreg,f
	bra	u4857
asmopt pop

	line	53
	
l3774:
;./LCD.h: 53:     LATC3 = 0;
	bcf	c:(130531/8),(130531)&7	;volatile
	line	54
	
l3776:
;./LCD.h: 54:     LATC4 = 1;
	bsf	c:(130532/8),(130532)&7	;volatile
	line	55
	
l3778:
;./LCD.h: 55:     __nop();
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	56
	
l3780:
;./LCD.h: 56:     LATC4 = 0;
	bcf	c:(130532/8),(130532)&7	;volatile
	line	57
	
l3782:
;./LCD.h: 57:     MSdelay(3);
	movlw	high(03h)
	movwf	((c:MSdelay@val+1))^00h,c
	movlw	low(03h)
	movwf	((c:MSdelay@val))^00h,c
	call	_MSdelay	;wreg free
	line	58
	
l133:
	return	;funcret
	callstack 0
GLOBAL	__end_of_LCD_Command
	__end_of_LCD_Command:
	signat	_LCD_Command,4217
	global	_MSdelay

;; *************** function _MSdelay *****************
;; Defined at:
;;		line 97 in file "./LCD.h"
;; Parameters:    Size  Location     Type
;;  val             2    4[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  j               2    8[COMRAM] unsigned int 
;;  i               2    6[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Init
;;		_LCD_Command
;;		_LCD_Char
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2,group=0
	line	97
global __ptext46
__ptext46:
psect	text46
	file	"./LCD.h"
	line	97
	
_MSdelay:
;incstack = 0
	callstack 25
	line	100
	
l3394:
;./LCD.h: 97: void MSdelay(unsigned int val);./LCD.h: 98: {;./LCD.h: 99:      unsigned int i,j;;./LCD.h: 100:         for(i=0;i<val;i++)
	movlw	high(0)
	movwf	((c:MSdelay@i+1))^00h,c
	movlw	low(0)
	movwf	((c:MSdelay@i))^00h,c
	goto	l3408
	line	101
	
l3396:
;./LCD.h: 101:             for(j=0;j<165;j++);
	movlw	high(0)
	movwf	((c:MSdelay@j+1))^00h,c
	movlw	low(0)
	movwf	((c:MSdelay@j))^00h,c
	
l3402:
	infsnz	((c:MSdelay@j))^00h,c
	incf	((c:MSdelay@j+1))^00h,c
	
l3404:
		movf	((c:MSdelay@j+1))^00h,c,w
	bnz	u3590
	movlw	165
	subwf	 ((c:MSdelay@j))^00h,c,w
	btfss	status,0
	goto	u3591
	goto	u3590

u3591:
	goto	l3402
u3590:
	
l3406:
	infsnz	((c:MSdelay@i))^00h,c
	incf	((c:MSdelay@i+1))^00h,c
	
l3408:
		movf	((c:MSdelay@val))^00h,c,w
	subwf	((c:MSdelay@i))^00h,c,w
	movf	((c:MSdelay@val+1))^00h,c,w
	subwfb	((c:MSdelay@i+1))^00h,c,w
	btfss	status,0
	goto	u3601
	goto	u3600

u3601:
	goto	l3396
u3600:
	line	102
	
l155:
	return	;funcret
	callstack 0
GLOBAL	__end_of_MSdelay
	__end_of_MSdelay:
	signat	_MSdelay,4217
	global	_Initialize

;; *************** function _Initialize *****************
;; Defined at:
;;		line 11 in file "./init.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2,group=0
	file	"./init.h"
	line	11
global __ptext47
__ptext47:
psect	text47
	file	"./init.h"
	line	11
	
_Initialize:
;incstack = 0
	callstack 29
	line	12
	
l2464:
;./init.h: 12:     TRISD = 0x00;
	clrf	((c:16325))^03f00h,c	;volatile
	line	13
	
l2466:
;./init.h: 13:     TRISC = 0b11000111;
	movlw	low(0C7h)
	movwf	((c:16324))^03f00h,c	;volatile
	line	14
	
l2468:
;./init.h: 14:     TRISE = 0xFF;
	setf	((c:16326))^03f00h,c	;volatile
	line	15
	
l2470:
;./init.h: 15:     ANSELE = 0x00;
	movlb	58	; () banked
	clrf	((14976))&0ffh	;volatile
	line	16
	
l2472:; BSR set to: 58

;./init.h: 16:     ANSELD = 0x00;
	clrf	((14960))&0ffh	;volatile
	line	17
	
l2474:; BSR set to: 58

;./init.h: 17:     ANSELC = 0x00;
	clrf	((14944))&0ffh	;volatile
	line	19
	
l2476:; BSR set to: 58

;./init.h: 19:     TRISAbits.TRISA0 = 1;
	bsf	((c:16322))^03f00h,c,0	;volatile
	line	20
	
l2478:; BSR set to: 58

;./init.h: 20:     ANSELAbits.ANSELA0 = 1;
	bsf	((14912))&0ffh,0	;volatile
	line	23
;./init.h: 23:     ADCON0bits.FM = 1;
	movlb	62	; () banked
	movf	((16120))&0ffh,w	;volatile
	andlw	not (((1<<2)-1)<<2)
	iorlw	(01h & ((1<<2)-1))<<2
	movwf	((16120))&0ffh	;volatile
	line	24
	
l2480:; BSR set to: 62

;./init.h: 24:     ADCON0bits.CS = 1;
	bsf	((16120))&0ffh,4	;volatile
	line	25
	
l2482:; BSR set to: 62

;./init.h: 25:     ADCLK = 0x00;
	clrf	((16127))&0ffh	;volatile
	line	26
	
l2484:; BSR set to: 62

;./init.h: 26:     ADPCH = 0x00;
	clrf	((16113))&0ffh	;volatile
	line	27
	
l2486:; BSR set to: 62

;./init.h: 27:     ADCAP = 0x00;
	clrf	((16117))&0ffh	;volatile
	line	28
	
l2488:; BSR set to: 62

;./init.h: 28:     ADREF = 0x00;
	clrf	((16125))&0ffh	;volatile
	line	29
	
l2490:; BSR set to: 62

;./init.h: 29:     ADPREL = 0x00;
	clrf	((16118))&0ffh	;volatile
	line	30
	
l2492:; BSR set to: 62

;./init.h: 30:     ADPREH = 0x00;
	clrf	((16119))&0ffh	;volatile
	line	31
	
l2494:; BSR set to: 62

;./init.h: 31:     ADACQL = 0x00;
	clrf	((16115))&0ffh	;volatile
	line	32
	
l2496:; BSR set to: 62

;./init.h: 32:     ADACQH = 0x00;
	clrf	((16116))&0ffh	;volatile
	line	33
	
l2498:; BSR set to: 62

;./init.h: 33:     ADCON0bits.ON = 1;
	bsf	((16120))&0ffh,7	;volatile
	line	37
	
l2500:; BSR set to: 62

;./init.h: 37:     IOCCPbits.IOCCP2 = 1;
	movlb	58	; () banked
	bsf	((14949))&0ffh,2	;volatile
	line	38
	
l2502:; BSR set to: 58

;./init.h: 38:     PIE0bits.IOCIE = 1;
	movlb	57	; () banked
	bsf	((14736))&0ffh,7	;volatile
	line	39
	
l2504:; BSR set to: 57

;./init.h: 39:     INTCON0bits.IPEN = 1;
	bsf	((c:16338))^03f00h,c,5	;volatile
	line	40
	
l2506:; BSR set to: 57

;./init.h: 40:     INTCON0bits.GIEH = 1;
	bsf	((c:16338))^03f00h,c,7	;volatile
	line	41
	
l2508:; BSR set to: 57

;./init.h: 41:     IOCCFbits.IOCCF2 = 0;
	movlb	58	; () banked
	bcf	((14951))&0ffh,2	;volatile
	line	42
	
l2510:; BSR set to: 58

;./init.h: 42:     WPUCbits.WPUC2 = 1;
	bsf	((14945))&0ffh,2	;volatile
	line	44
	
l158:; BSR set to: 58

	return	;funcret
	callstack 0
GLOBAL	__end_of_Initialize
	__end_of_Initialize:
	signat	_Initialize,89
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 45 in file "./init.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=4
global __ptext48
__ptext48:
psect	text48
	file	"./init.h"
	line	45
	
_ISR:; BSR set to: 58

;incstack = 0
	callstack 21
	line	46
	
i2l2600:
;./init.h: 46:     if (IOCCFbits.IOCCF2) {
	movlb	58	; () banked
	btfss	((14951))&0ffh,2	;volatile
	goto	i2u218_41
	goto	i2u218_40
i2u218_41:
	goto	i2l166
i2u218_40:
	line	48
	
i2l2602:; BSR set to: 58

;./init.h: 48:         for (int i = 0; i < 30; i++) {
	movlw	high(0)
	movwf	((c:ISR@i+1))^00h,c
	movlw	low(0)
	movwf	((c:ISR@i))^00h,c
	
i2l164:
	line	49
;./init.h: 49:             LATC5 = ~LATC5;
	btfss	c:(130533/8),(130533)&7	;volatile
	goto	i2u219_41
	goto	i2u219_40
i2u219_41:
	bsf	c:(130533/8),(130533)&7	;volatile
	goto	i2u220_45
i2u219_40:
	bcf	c:(130533/8),(130533)&7	;volatile
i2u220_45:
	line	50
	
i2l2608:
;./init.h: 50:             _delay((unsigned long)((300)*(4000000/4000.0)));
	asmopt push
asmopt off
movlw  2
movwf	(??_ISR+0+0+1)^00h,c
movlw	134
movwf	(??_ISR+0+0)^00h,c
	movlw	153
i2u486_47:
decfsz	wreg,f
	bra	i2u486_47
	decfsz	(??_ISR+0+0)^00h,c,f
	bra	i2u486_47
	decfsz	(??_ISR+0+0+1)^00h,c,f
	bra	i2u486_47
	nop
asmopt pop

	line	51
	
i2l2610:
;./init.h: 51:         }
	infsnz	((c:ISR@i))^00h,c
	incf	((c:ISR@i+1))^00h,c
	btfsc	((c:ISR@i+1))^00h,c,7
	goto	i2u221_41
	movf	((c:ISR@i+1))^00h,c,w
	bnz	i2u221_40
	movlw	30
	subwf	 ((c:ISR@i))^00h,c,w
	btfss	status,0
	goto	i2u221_41
	goto	i2u221_40

i2u221_41:
	goto	i2l164
i2u221_40:
	
i2l165:
	line	52
;./init.h: 52:         LATC5 = 0;
	bcf	c:(130533/8),(130533)&7	;volatile
	line	53
;./init.h: 53:         IOCCFbits.IOCCF2 = 0;
	movlb	58	; () banked
	bcf	((14951))&0ffh,2	;volatile
	line	56
	
i2l166:; BSR set to: 58

	retfie f
	callstack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
;
; H/W Interrupt Vector Table @ 0x8
;
psect	ivt0x8,class=CODE,space=0,reloc=2,delta=1,noexec,optim=
global __pivt0x8
__pivt0x8:
global	ivt0x8_undefint
global	ivt0x8_base
ivt0x8_base:
; Vector 0 : SWINT
	dw ivt0x8_undefint >> 2
; Vector 1 : HLVD
	dw ivt0x8_undefint >> 2
; Vector 2 : OSF
	dw ivt0x8_undefint >> 2
; Vector 3 : CSW
	dw ivt0x8_undefint >> 2
; Vector 4 : NVM
	dw ivt0x8_undefint >> 2
; Vector 5 : SCAN
	dw ivt0x8_undefint >> 2
; Vector 6 : CRC
	dw ivt0x8_undefint >> 2
; Vector 7 : IOC
	dw _ISR >> 2
; Vector 8 : INT0
	dw ivt0x8_undefint >> 2
; Vector 9 : ZCD
	dw ivt0x8_undefint >> 2
; Vector 10 : AD
	dw ivt0x8_undefint >> 2
; Vector 11 : ADT
	dw ivt0x8_undefint >> 2
; Vector 12 : CMP1
	dw ivt0x8_undefint >> 2
; Vector 13 : SMT1
	dw ivt0x8_undefint >> 2
; Vector 14 : SMT1PRA
	dw ivt0x8_undefint >> 2
; Vector 15 : SMT1PRW
	dw ivt0x8_undefint >> 2
; Vector 16 : DMA1SCNT
	dw ivt0x8_undefint >> 2
; Vector 17 : DMA1DCNT
	dw ivt0x8_undefint >> 2
; Vector 18 : DMA1OR
	dw ivt0x8_undefint >> 2
; Vector 19 : DMA1A
	dw ivt0x8_undefint >> 2
; Vector 20 : SPI1RX
	dw ivt0x8_undefint >> 2
; Vector 21 : SPI1TX
	dw ivt0x8_undefint >> 2
; Vector 22 : SPI1
	dw ivt0x8_undefint >> 2
; Vector 23 : I2C1RX
	dw ivt0x8_undefint >> 2
; Vector 24 : I2C1TX
	dw ivt0x8_undefint >> 2
; Vector 25 : I2C1
	dw ivt0x8_undefint >> 2
; Vector 26 : I2C1E
	dw ivt0x8_undefint >> 2
; Vector 27 : U1RX
	dw ivt0x8_undefint >> 2
; Vector 28 : U1TX
	dw ivt0x8_undefint >> 2
; Vector 29 : U1E
	dw ivt0x8_undefint >> 2
; Vector 30 : U1
	dw ivt0x8_undefint >> 2
; Vector 31 : TMR0
	dw ivt0x8_undefint >> 2
; Vector 32 : TMR1
	dw ivt0x8_undefint >> 2
; Vector 33 : TMR1G
	dw ivt0x8_undefint >> 2
; Vector 34 : TMR2
	dw ivt0x8_undefint >> 2
; Vector 35 : CCP1
	dw ivt0x8_undefint >> 2
; Vector 36 : Undefined
	dw ivt0x8_undefint >> 2
; Vector 37 : NCO1
	dw ivt0x8_undefint >> 2
; Vector 38 : CWG1
	dw ivt0x8_undefint >> 2
; Vector 39 : CLC1
	dw ivt0x8_undefint >> 2
; Vector 40 : INT1
	dw ivt0x8_undefint >> 2
; Vector 41 : CMP2
	dw ivt0x8_undefint >> 2
; Vector 42 : DMA2SCNT
	dw ivt0x8_undefint >> 2
; Vector 43 : DMA2DCNT
	dw ivt0x8_undefint >> 2
; Vector 44 : DMA2OR
	dw ivt0x8_undefint >> 2
; Vector 45 : DMA2A
	dw ivt0x8_undefint >> 2
; Vector 46 : I2C2RX
	dw ivt0x8_undefint >> 2
; Vector 47 : I2C2TX
	dw ivt0x8_undefint >> 2
; Vector 48 : I2C2
	dw ivt0x8_undefint >> 2
; Vector 49 : I2C2E
	dw ivt0x8_undefint >> 2
; Vector 50 : U2RX
	dw ivt0x8_undefint >> 2
; Vector 51 : U2TX
	dw ivt0x8_undefint >> 2
; Vector 52 : U2E
	dw ivt0x8_undefint >> 2
; Vector 53 : U2
	dw ivt0x8_undefint >> 2
; Vector 54 : TMR3
	dw ivt0x8_undefint >> 2
; Vector 55 : TMR3G
	dw ivt0x8_undefint >> 2
; Vector 56 : TMR4
	dw ivt0x8_undefint >> 2
; Vector 57 : CCP2
	dw ivt0x8_undefint >> 2
; Vector 58 : Undefined
	dw ivt0x8_undefint >> 2
; Vector 59 : CWG2
	dw ivt0x8_undefint >> 2
; Vector 60 : CLC2
	dw ivt0x8_undefint >> 2
; Vector 61 : INT2
	dw ivt0x8_undefint >> 2
; Vector 62 : Undefined
	dw ivt0x8_undefint >> 2
; Vector 63 : Undefined
	dw ivt0x8_undefint >> 2
; Vector 64 : Undefined
	dw ivt0x8_undefint >> 2
; Vector 65 : Undefined
	dw ivt0x8_undefint >> 2
; Vector 66 : Undefined
	dw ivt0x8_undefint >> 2
; Vector 67 : Undefined
	dw ivt0x8_undefint >> 2
; Vector 68 : Undefined
	dw ivt0x8_undefint >> 2
; Vector 69 : Undefined
	dw ivt0x8_undefint >> 2
; Vector 70 : TMR5
	dw ivt0x8_undefint >> 2
; Vector 71 : TMR5G
	dw ivt0x8_undefint >> 2
; Vector 72 : TMR6
	dw ivt0x8_undefint >> 2
; Vector 73 : CCP3
	dw ivt0x8_undefint >> 2
; Vector 74 : CWG3
	dw ivt0x8_undefint >> 2
; Vector 75 : CLC3
	dw ivt0x8_undefint >> 2
; Vector 76 : Undefined
	dw ivt0x8_undefint >> 2
; Vector 77 : Undefined
	dw ivt0x8_undefint >> 2
; Vector 78 : Undefined
	dw ivt0x8_undefint >> 2
; Vector 79 : Undefined
	dw ivt0x8_undefint >> 2
; Vector 80 : CCP4
	dw ivt0x8_undefint >> 2
; Vector 81 : CLC4
	dw ivt0x8_undefint >> 2
ivt0x8_undefint:
	reset
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
__smallconst	set	__psmallconst
	global	__mediumconst
__mediumconst	set	__psmallconst
	GLOBAL	__activetblptr
__activetblptr	EQU	3
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
