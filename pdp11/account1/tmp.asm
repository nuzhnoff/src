START:    	CALL WELC4
		CALL INFO1




INFO1:   MOV #SETTING2,R0
	 CALL OCT10
	 CALL INPUTSCR
INPUTSCR: ;вывод на экран числа попыток
 
	MOV #NUMB10ADR,R2
29$:	MOV (R2)+,R0
	EMT 16 ;ВЫВОД ПОСИМВОЛЬНО
	CMP (R2),#0 ;проверь!!!
	BNE 29$
	RET
OCT10:	 MOV #SETTING2,R0
	 MOV (R0),R4 ;WRITE NUMB8
	 MOV #MANTIS2,R5 ;WRITE ADR 0ARR1
	 CALL CLRS2
	 MOV #NUMB10ADR,R2 ;WRITE ADR 0 ARR2
 ;?MOV #ARR2,ADR WRITE ADRESS ARR2 TO ADR
	 MOV #47.,R3	 ;WRITE CODE SYMBOL 0-9	
26$:	CMP (R5)+,R4     ;COMPARE R5-R0
	BHI 26$          ;IF C=0 AND Z=0
	DEC R5 	   	 ;CORRECT ADR ARR1
	DEC R5		 ;TODO? тут только двух
;значные цифры
27$:	SUB (R5),R4  ;NUMBER - MANTIS
	INC R3	 ;COUNT CODE SYMBOL 0 1 2 . .9
	BHIS 27$	 ;IF C>=0 GOTO 3:
	ADD (R5)+,R4 ;CORRECT NUMB8
	MOV R3,(R2)+ ;WRITE RESULT SYMBOL
	MOV #47., R3  ;CORRECT CODE SYMBOL 0-9
	MOV (R5),R0
	BEQ 28$	 ;Z=1
	BNE 27$	 ;Z=0	
28$:	RET

WELC4:		MOV #TEXT6,R1
25$:   		MOVB (R1)+,R0
		CMPB #0,R0
		BEQ 24$ ;GO RET
		EMT 16
		BR 25$
		CLR R3;CLR COUNT SYMBOL STRING
24$:	        RET



MANTIS2: .WORD 1000.,100.,10.,1.,0 ;MANTIS

TEXT6:		.ASCIZ "Осталось примеров: "
