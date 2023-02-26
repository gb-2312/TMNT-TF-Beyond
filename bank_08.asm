.segment "BANK_08"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x010010-0x01400F
.org $8000



.export _off006_screen_1F
.export _off006_screen_0E



_off006_screen_1F:
    .incbin "incbin/screens/1F.bin"

_off006_screen_0E:
    .incbin "incbin/screens/0E.bin"


