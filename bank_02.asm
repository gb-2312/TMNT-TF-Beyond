.segment "BANK_02"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x004010-0x00800F
.org $8000



.segment "EAEAEA"
; bzk garbage, удалить нахуй
- - - - - - 0x007BE8 01:BBD8: EA        NOP
- - - - - - 0x007BE9 01:BBD9: EA        NOP
- - - - - - 0x007BEA 01:BBDA: EA        NOP


