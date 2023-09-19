.segment "BANK_0A"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x014010-0x01800F
.org $8000



    .byte con_bank_id + $0A   ; 



.out .sprintf("Free bytes in bank 0A: %d [%Xh]", ($C000 - *), ($C000 - *))
