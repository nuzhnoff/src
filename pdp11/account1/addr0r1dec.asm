;python -m pdpy11 C:\Users\Den\YandexDisk\home\src\pdp11\account1\addr0r1dec.mac
;Вывод на экран результата сложение r0 r1 в десятичном формате

;считаем число разрядов
	 MOV #762,R4
DES: MOV R7,R2 
	 ADD #40,R2
	 MOV #5,R3
2:	 MOV #57,R0
1:	 INC R0
	 SUB @R2,R4
	 BHIS 1
	 EMT 16
	 ADD @R2,R4
	 ADD #2,R2
	 SOB R3,2
	 RTS R7
	 NOP
.WORD 23420,
	  1750,
	  144,
	  12,
	  1