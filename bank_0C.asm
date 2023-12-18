.segment "BANK_0C"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x018010-0x01A00F
.org $A000



.out .sprintf("Free bytes in bank 0C: %d [%Xh]", ($C000 - *), ($C000 - *))
