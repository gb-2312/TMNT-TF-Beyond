.segment "BANK_06"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x00C010-0x01000F
.org $8000



.export _off006_screen_04
.export _off006_screen_05
.export _off006_screen_07
.export _off006_screen_0A



    .byte con_bank_id + $06   ; 



_off006_screen_04:
    .incbin "incbin/screens/04.bin"

_off006_screen_05:
    .incbin "incbin/screens/05.bin"

_off006_screen_07:
    .incbin "incbin/screens/07.bin"

_off006_screen_0A:
    .incbin "incbin/screens/0A.bin"


