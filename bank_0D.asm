.segment "BANK_0D"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x01A010-0x01C00F
.org $A000



.out .sprintf("Free bytes in bank 0D: %d [%Xh]", ($C000 - *), ($C000 - *))
