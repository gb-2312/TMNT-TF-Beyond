.segment "BANK_0C"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x018010-0x01C00F
.org $8000



    .byte con_bank_id + $0C   ; 


