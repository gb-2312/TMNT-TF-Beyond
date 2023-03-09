.segment "BANK_02"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x004010-0x00800F
.org $8000



.export _off006_screen_08
.export _off006_screen_0D
.export _off006_screen_1E
.export _off006_screen_13
.export _off006_screen_11
.export _off006_screen_17
.export _off006_screen_12
.export _off006_screen_06
.export _off006_screen_0F
.export _off006_screen_00



    .byte con_bank_id + $02   ; 



_off006_screen_08:
    .incbin "incbin/screens/08.bin"

_off006_screen_0D:
    .incbin "incbin/screens/0D.bin"

_off006_screen_1E:
    .incbin "incbin/screens/1E.bin"

_off006_screen_13:
    .incbin "incbin/screens/13.bin"

_off006_screen_11:
    .incbin "incbin/screens/11.bin"

_off006_screen_17:
    .incbin "incbin/screens/17.bin"

_off006_screen_12:
    .incbin "incbin/screens/12.bin"

_off006_screen_06:
    .incbin "incbin/screens/06.bin"

_off006_screen_0F:
    .incbin "incbin/screens/0F.bin"

_off006_screen_00:
    .incbin "incbin/screens/00.bin"


