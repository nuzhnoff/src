;BKTurbo8_x64.exe CO C:\Users\Den\YandexDisk\home\src\pdp11\account1\stack1.asm
;example work to stack

MOV #TEST1,R0
MOV R0,-(R6)
MOV #TEST2,R0
MOV R0,-(R6)
MOV (R6)+,R1
MOV (R6),R2


TEST1: .WORD 1000.
TEST2: .WORD 1000.
.END
