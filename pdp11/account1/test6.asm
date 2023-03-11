;;python -m pdpy11 C:\Users\Den\YandexDisk\home\src\pdp11\account1\test6.mac
;PRGOGRAM  INPUT IN string touch
ZERO=0

	MOV #TEXT1,R1
2$:	MOVB (R1)+,R0
	EMT 16
	CMPB ZERO,R0
	BNE 2$
3$: HALT	

	
TEXT1: .ASCIZ "Автор программы Устный счет - Zolton84"
;	   .BYTE 0
.END
