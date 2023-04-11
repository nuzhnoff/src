define ASCII_left     $61
define ASCII_right $64 ;C5
define ASCII_up $77 ;
define ASCII_down $73
define pos_l $00
define pos_h $01
; 1AF sum 
JMP start
test:
LDA #$02
STA $01
SEC 
LDA #$ff
;CLC
t3:
 STA $00
LDA $00
SBC  #$0f
BCC  t1
JMP t3
t1:
INC   pos_h
JMP t3 
t2:
LDA #$01
STA ($00),y
JMP t3 

start:
LDA #$00
STA $00
LDA #$02
STA $01
LDA #$01
STA ($00),y
;LDA #$73
;STA $03 
wait: 
; wait to click button left

LDA $ff

;SEC 
BEQ wait 
ADC #$8c
BCS touch_up
ADC #$01
BCS  touch_down
SEC 
SBC #$f1
BEQ touch_right
JMP touch_left
JMP wait 
touch_up:
 ;;code
SEC  
LDA $00
SBC  #$20
BCC  up1 
JMP up2
up1:
DEC pos_h
STA $00
up2:
STA $00
LDA #$01
STA ($00),y
JMP loop
touch_down:
;;code
LDA $00
ADC   #$1f

BCS down1
JMP down2
down1:
INC   pos_h
down2:
STA $00
LDA #$01
STA ($00),y
JMP loop
touch_right:
INC  pos_l
;STA $00
LDA #$01
STA ($00),y
JMP loop
 

touch_left:
;LDA $ff
DEC pos_l 
;STA $00
LDA #$01
STA ($00),y
JMP loop
loop:
lda #0
sta $ff
CLC 
JMP wait 


