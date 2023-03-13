;BKTurbo8_x64.exe CO C:\Users\Den\YandexDisk\home\src\pdp11\func\key2.asm

MOV #SETT1,R1 ;LOAD ADR SETTING
MOV #5377,R2 ; У Зальцмана 5377 это 12 код ВВОДа и 256 байт резерва
EMT 10
EMT 6 ;	WAIT...





SETT1:	.WORD 0

.END
