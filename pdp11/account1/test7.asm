;;python -m pdpy11 C:\Users\Den\YandexDisk\home\src\pdp11\account1\test7.mac
;PRGOGRAM  INPUT IN string touch
ZERO=0

	
	CLR R3;CLR COUNT SYMBOL STRING
	MOV #TEXT1,R2
1$:  INC R3
	MOVB (R2)+,R0
	CMPB ZERO,R0
	BNE 1$
	DEC R3 ;Коррекция чтобы не поймать 0 в R0 который идет в конце ->
	MOV #TEXT1,R2 ;->строки и обнуляет служебную строку - R0=0 -> CLR  string
	MOVB #ZERO,R1
2$:	MOVB (R2)+,R0
	INC R1
	EMT 22
	DEC R3
	BNE 2$
3$:  HALT	
	
TEXT1: .ASCII "Автор программы Устный счет - Zolton84"
.END   

