PORTB	EQU	06H
TRISB	EQU	86H
count1	EQU	20H
count2	EQU	21H

    LIST	P=16F877A
    ORG		0
    GOTO	START
    __CONFIG	3F79H	
DELAY	
    movlw	.255
    movwf	count1
    movlw	.255
    movwf	count2	
a
    decfsz	count1,1
    goto	a	
    decfsz	count2,1
    goto	a		
    RETLW	0
START	
    BANKSEL		TRISB		
    MOVLW		B'00000000'
    MOVWF		TRISB	
    BANKSEL		PORTB
BEGIN	
    CLRF PORTB
    CALL	DELAY		
    MOVLW B'00000001'
    MOVWF PORTB
    CALL	DELAY
    
    MOVLW B'00000010'
    MOVWF PORTB
    CALL	DELAY
    
    MOVLW B'00000100'
    MOVWF PORTB
    CALL	DELAY
    
    MOVLW B'00001000'
    MOVWF PORTB
    CALL	DELAY
    
    MOVLW B'00001111'
    MOVWF PORTB
    CALL	DELAY
    GOTO	BEGIN
    END
