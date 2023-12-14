;.segment "BANK_0E"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x01C010-0x02000F
;.org $8000



    .include "famistudio_ca65.s"



.out .sprintf("Free bytes in bank 0E: %d [%Xh]", ($C000 - *), ($C000 - *))
