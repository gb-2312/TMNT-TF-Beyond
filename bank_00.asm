.segment "BANK_00"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x000010-0x00400F
.org $8000



.export _off006_screen_01
.export _off006_screen_02
.export _off006_screen_03
.export _off006_screen_09
.export _off006_screen_0B
.export _off006_screen_0C
.export _off006_screen_10
.export _off006_screen_14



_off006_screen_01:
    .incbin "incbin/screens/01.bin"

_off006_screen_02:
    .incbin "incbin/screens/02.bin"

_off006_screen_03:
    .incbin "incbin/screens/03.bin"

_off006_screen_09:
    .incbin "incbin/screens/09.bin"

_off006_screen_0B:
    .incbin "incbin/screens/0B.bin"

_off006_screen_0C:
    .incbin "incbin/screens/0C.bin"

_off006_screen_10:
    .incbin "incbin/screens/10.bin"

_off006_screen_14:
    .incbin "incbin/screens/14.bin"


