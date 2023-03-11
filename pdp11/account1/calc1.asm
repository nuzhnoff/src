;BKTurbo8_x64.exe CO C:\Users\Den\YandexDisk\home\src\pdp11\account1\calc1.asm
	
			CALL SET1 ;SET PROGRAMM 10 OR 100 MANTIS; NUMBER OF CORRECT RESULTS TO END
			CALL RUNCOUNT ;RUN SYSTEM TIMER
			CALL SET2 ;GENERATE NUMBER FOR ONE EXAMPLE
			CALL START ;RUN PROGRAMM
			CALL ENDGAME ;GO END
	
	
		
SET1:		CALL CLRS1 ;CLEAR SCREEN      _DONE
			CALL WELC ;				      _DONE
			CALL ADDNUMB1 ; ADD LEVEL     _TODO
		









ADDNUMB1:   MOV #SETTING1,R1 ;LOAD ADR #SETTING1
			EMT 6			 ;INT KEYBOARD
			CMPB #61,R0		 
			BNE 3$
			MOV #1,(R1)+ ;LOAD NUMBER LEVEL DEFF
			BR 4$
3$:			MOV #2,(R1)+
4$:			;TODO NUMBER COUNT EXAMPLE
			
			
			
		    



WELC:  		MOV #TEXT1,R1
2$:	   		MOVB (R1)+,R0
			CMPB ZERO,R0
			BEQ 1$ ;GO RET
			EMT 16
			BR 2$
			CLR R3;CLR COUNT SYMBOL STRING
1$:	  	    RET



CLRS1: 		MOV #14,R0 ;ENTER CODE RESET
			EMT 16
			RET 


TEXT1:  	.ASCIZ "Введите уровень сложности (1 или 2) и нажмите ВВОД "
			.BYTE 0
SETTING1:   .WORD 0 ;МЛАДШИЙ БАЙТ КОЛ-ВО ПРИМЕРОВ,СТАРШИЙ УРОВЕНЬ СЛОЖНОСТИ
		    .BYTE 0
		  