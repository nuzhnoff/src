 ;;python -m pdpy11 C:\Users\Den\YandexDisk\home\src\pdp11\account1\test5.mac
;PRGOGRAM  RND GENERATOR ARRAY
;1000DEC -> 1747OCT

	
	
	
	RT1=177706 ; ADR REG SETTING TIMER
	RT2=177710 ;ADR REG COUNTTIMER
	RT3=177712 ;ADR REG CONTROL
	;SWU=177716
	
	;ACTIVATION TIMER
	MOV #1747,RT1 ;SETUP 999DEC NUMBER
	MOVB #20,RT3 ;T=2.812
	
	MOV #12,R1 ;ENTER BUTTON
	MOV #40,R2 ;ПРОБЕЛ
	MOV #ARR1,R3 ;ADR ARR1
1:	EMT 6
	MOV RT2,(R3)+ ;WRITE RND TO ARR1
;	MOV @R1,R4 ;WRITE RND TO ARR1
	CMP R0,R1
	
	BEQ 1
	CMP R0,R2
	BNE 1
	HALT
ARR1: .WORD 0








