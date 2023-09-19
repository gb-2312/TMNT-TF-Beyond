.segment "BANK_04"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x008010-0x00C00F
.org $8000



.export _off006_screen_15
.export _off006_screen_16
.export _off006_screen_18
.export _off006_screen_19
.export _off006_screen_1A
.export _off006_screen_1B
.export _off006_screen_1C
.export _off006_screen_1D



    .byte con_bank_id + $04   ; 



_off006_screen_15:
    .incbin "incbin/screens/15.bin"

_off006_screen_16:
    .incbin "incbin/screens/16.bin"

_off006_screen_18:
    .incbin "incbin/screens/18.bin"

_off006_screen_19:
    .incbin "incbin/screens/19.bin"

_off006_screen_1A:
    .incbin "incbin/screens/1A.bin"

_off006_screen_1B:
    .incbin "incbin/screens/1B.bin"

_off006_screen_1C:
    .incbin "incbin/screens/1C.bin"

_off006_screen_1D:
    .incbin "incbin/screens/1D.bin"



.out .sprintf("Free bytes in bank 04: %d [%Xh]", ($C000 - *), ($C000 - *))
