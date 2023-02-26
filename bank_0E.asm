.segment "BANK_0E"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x01C010-0x02000F
.org $8000



.export _off006_0x000010_3C
.export _off006_0x000210_3E



_off006_0x000010_3C:
- D 0 - - - 0x000010 00:8000: 00        .byte $00, $20, $42, $00, $9B, $8C, $D5, $8C, $8B, $8D, $95, $00, $9D, $9E, $8B, $9C   ; 
- D 0 - I - 0x000020 00:8010: 9E        .byte $9E, $D5, $8F, $98, $8E, $00, $9D, $8F, $96, $8F, $8D, $9E, $D5, $8D, $9A, $9F   ; 
- D 0 - I - 0x000030 00:8020: 45        .byte $45, $00, $9B, $A9, $A9, $A9, $00, $A9, $A9, $A9, $00, $A9, $A9, $A9, $00, $A9   ; 
- D 0 - I - 0x000040 00:8030: A9        .byte $A9, $A9, $00, $A9, $A9, $A9, $00, $A9, $A9, $A9, $00, $A9, $A9, $A9, $46, $00   ; 
- D 0 - I - 0x000050 00:8040: 83        .byte $83, $96, $8F, $99, $04, $00, $84, $9C, $8B, $9A, $92, $03, $00, $84, $97, $93   ; 
- D 0 - I - 0x000060 00:8050: 95        .byte $95, $8F, $03, $00, $83, $8E, $99, $98, $28, $00, $86, $01, $02, $09, $0A, $03   ; 
- D 0 - I - 0x000070 00:8060: 00        .byte $00, $C3, $00, $84, $09, $0A, $03, $00, $C3, $00, $8A, $1A, $1B, $03, $00, $00   ; 
- D 0 - I - 0x000080 00:8070: 01        .byte $01, $38, $39, $02, $03, $06, $00, $81, $04, $C4, $0B, $83, $00, $00, $04, $C4   ; 
- D 0 - I - 0x000090 00:8080: 3A        .byte $3A, $83, $00, $00, $04, $C3, $1C, $84, $08, $00, $00, $04, $C3, $2B, $81, $08   ; 
- D 0 - I - 0x0000A0 00:8090: 06        .byte $06, $00, $81, $04, $C4, $0F, $83, $00, $00, $04, $C4, $3E, $83, $00, $00, $04   ; 
- D 0 - I - 0x0000B0 00:80A0: C4        .byte $C4, $1F, $83, $00, $00, $04, $C3, $2E, $81, $08, $06, $00, $81, $04, $C4, $13   ; 
- D 0 - I - 0x0000C0 00:80B0: 83        .byte $83, $00, $00, $04, $C4, $42, $83, $00, $00, $04, $C4, $23, $83, $00, $00, $04   ; 
- D 0 - I - 0x0000D0 00:80C0: C3        .byte $C3, $31, $81, $08, $06, $00, $82, $05, $06, $C3, $17, $84, $00, $00, $05, $06   ; 
- D 0 - I - 0x0000E0 00:80D0: C3        .byte $C3, $46, $83, $00, $00, $05, $C4, $27, $83, $00, $00, $05, $C4, $34, $49, $00   ; 
- D 0 - I - 0x0000F0 00:80E0: 85        .byte $85, $8D, $8B, $9D, $8F, $A3, $03, $00, $83, $92, $99, $9E, $05, $00, $85, $9D   ; 
- D 0 - I - 0x000100 00:80F0: 92        .byte $92, $9C, $8F, $8E, $2B, $00, $85, $01, $02, $49, $4A, $03, $03, $00, $81, $01   ; 
- D 0 - I - 0x000110 00:8100: C4        .byte $C4, $56, $03, $00, $85, $01, $69, $6A, $02, $03, $0B, $00, $85, $04, $00, $4B   ; 
- D 0 - I - 0x000120 00:8110: 4C        .byte $4C, $08, $03, $00, $81, $04, $C4, $5A, $03, $00, $C4, $6B, $81, $08, $0B, $00   ; 
- D 0 - I - 0x000130 00:8120: 81        .byte $81, $04, $C3, $4D, $81, $08, $03, $00, $81, $04, $C4, $5E, $03, $00, $C4, $6F   ; 
- D 0 - I - 0x000140 00:8130: 81        .byte $81, $08, $0B, $00, $81, $04, $C3, $50, $81, $08, $03, $00, $81, $04, $C4, $62   ; 
- D 0 - I - 0x000150 00:8140: 03        .byte $03, $00, $C4, $73, $81, $08, $0B, $00, $81, $05, $C3, $53, $81, $07, $03, $00   ; 
- D 0 - I - 0x000160 00:8150: 82        .byte $82, $05, $06, $C3, $66, $03, $00, $C5, $77, $47, $00, $9B, $A9, $A9, $A9, $00   ; 
- D 0 - I - 0x000170 00:8160: A9        .byte $A9, $A9, $A9, $00, $A9, $A9, $A9, $00, $A9, $A9, $A9, $00, $A9, $A9, $A9, $00   ; 
- D 0 - I - 0x000180 00:8170: A9        .byte $A9, $A9, $A9, $00, $A9, $A9, $A9, $63, $00, $08, $FE, $30, $00, $FF   ; 



_off006_0x000210_3E:
- D 0 - I - 0x000210 00:8200: 00        .byte $00, $20, $7E, $00, $42, $00, $1E, $00, $01, $01, $01, $00, $1E, $00, $82, $03   ; 
- D 0 - I - 0x000220 00:8210: 04        .byte $04, $1E, $00, $82, $07, $08, $1E, $00, $82, $10, $11, $1E, $00, $82, $14, $15   ; 
- D 0 - I - 0x000230 00:8220: 1E        .byte $1E, $00, $82, $18, $19, $1E, $00, $82, $1C, $1D, $1C, $00, $84, $20, $21, $22   ; 
- D 0 - I - 0x000240 00:8230: 23        .byte $23, $1B, $00, $85, $50, $51, $52, $53, $54, $1C, $00, $84, $57, $58, $59, $5A   ; 
- D 0 - I - 0x000250 00:8240: 85        .byte $85, $A0, $A1, $A4, $A5, $A6, $85, $A0, $A1, $A4, $A5, $A6, $85, $A0, $A1, $A4   ; 
- D 0 - I - 0x000260 00:8250: A5        .byte $A5, $A6, $85, $A0, $A1, $A4, $A5, $A6, $85, $A0, $A1, $A4, $A5, $A6, $85, $A0   ; 
- D 0 - I - 0x000270 00:8260: A1        .byte $A1, $A4, $A5, $A6, $82, $A0, $A1, $85, $AE, $AF, $A7, $A8, $A9, $85, $AE, $AF   ; 
- D 0 - I - 0x000280 00:8270: A7        .byte $A7, $A8, $A9, $85, $AE, $AF, $A7, $A8, $A9, $85, $AE, $AF, $A7, $A8, $A9, $85   ; 
- D 0 - I - 0x000290 00:8280: AE        .byte $AE, $AF, $A7, $A8, $A9, $85, $AE, $AF, $A7, $A8, $A9, $82, $AE, $AF, $85, $A2   ; 
- D 0 - I - 0x0002A0 00:8290: A3        .byte $A3, $AA, $AB, $AC, $85, $A2, $A3, $AA, $AB, $AC, $85, $A2, $A3, $AA, $AB, $AC   ; 
- D 0 - I - 0x0002B0 00:82A0: 85        .byte $85, $A2, $A3, $AA, $AB, $AC, $85, $A2, $A3, $AA, $AB, $AC, $85, $A2, $A3, $AA   ; 
- D 0 - I - 0x0002C0 00:82B0: AB        .byte $AB, $AC, $82, $A2, $A3, $84, $90, $91, $92, $93, $84, $90, $91, $92, $93, $84   ; 
- D 0 - I - 0x0002D0 00:82C0: 90        .byte $90, $91, $92, $93, $84, $90, $91, $92, $93, $84, $90, $91, $92, $93, $84, $90   ; 
- D 0 - I - 0x0002E0 00:82D0: 91        .byte $91, $92, $93, $84, $90, $91, $92, $93, $84, $90, $91, $92, $93, $84, $94, $95   ; 
- D 0 - I - 0x0002F0 00:82E0: 96        .byte $96, $97, $84, $94, $95, $96, $97, $84, $94, $95, $96, $97, $84, $94, $95, $96   ; 
- D 0 - I - 0x000300 00:82F0: 97        .byte $97, $84, $94, $95, $96, $97, $84, $94, $95, $96, $97, $84, $94, $95, $96, $97   ; 
- D 0 - I - 0x000310 00:8300: 84        .byte $84, $94, $95, $96, $97, $84, $98, $99, $9A, $9B, $84, $98, $99, $9A, $9B, $84   ; 
- D 0 - I - 0x000320 00:8310: 98        .byte $98, $99, $9A, $9B, $84, $98, $99, $9A, $9B, $84, $98, $99, $9A, $9B, $84, $98   ; 
- D 0 - I - 0x000330 00:8320: 99        .byte $99, $9A, $9B, $84, $98, $99, $9A, $9B, $84, $98, $99, $9A, $9B, $84, $98, $99   ; 
- D 0 - I - 0x000340 00:8330: 9A        .byte $9A, $9B, $84, $98, $99, $9A, $9B, $84, $98, $99, $9A, $9B, $84, $98, $99, $9A   ; 
- D 0 - I - 0x000350 00:8340: 9B        .byte $9B, $84, $98, $99, $9A, $9B, $84, $98, $99, $9A, $9B, $84, $98, $99, $9A, $9B   ; 
- D 0 - I - 0x000360 00:8350: 84        .byte $84, $98, $99, $9A, $9B, $84, $9C, $9D, $9E, $9F, $84, $9C, $9D, $9E, $9F, $84   ; 
- D 0 - I - 0x000370 00:8360: 9C        .byte $9C, $9D, $9E, $9F, $84, $9C, $9D, $9E, $9F, $84, $9C, $9D, $9E, $9F, $84, $9C   ; 
- D 0 - I - 0x000380 00:8370: 9D        .byte $9D, $9E, $9F, $84, $9C, $9D, $9E, $9F, $84, $9C, $9D, $9E, $9F, $60, $00, $60   ; 
- D 0 - I - 0x000390 00:8380: 00        .byte $00, $08, $FF, $08, $0F, $10, $00, $08, $AA, $08, $55, $10, $FF, $7E, $00, $42   ; 
- D 0 - I - 0x0003A0 00:8390: 00        .byte $00, $86, $00, $02, $26, $27, $28, $29, $1A, $00, $86, $05, $06, $2A, $2B, $2C   ; 
- D 0 - I - 0x0003B0 00:83A0: 2D        .byte $2D, $1A, $00, $86, $09, $0A, $2E, $2F, $0B, $0C, $1A, $00, $86, $12, $13, $30   ; 
- D 0 - I - 0x0003C0 00:83B0: 31        .byte $31, $32, $33, $1A, $00, $88, $16, $17, $0D, $0E, $0F, $34, $35, $36, $18, $00   ; 
- D 0 - I - 0x0003D0 00:83C0: 88        .byte $88, $1A, $1B, $37, $38, $39, $3A, $3B, $3C, $18, $00, $86, $1E, $1F, $40, $41   ; 
- D 0 - I - 0x0003E0 00:83D0: 42        .byte $42, $43, $1A, $00, $86, $24, $25, $44, $45, $46, $47, $1A, $00, $87, $55, $56   ; 
- D 0 - I - 0x0003F0 00:83E0: 60        .byte $60, $61, $62, $63, $64, $19, $00, $87, $5B, $5C, $65, $66, $67, $68, $69, $19   ; 
- D 0 - I - 0x000400 00:83F0: 00        .byte $00, $85, $A4, $A5, $A6, $A0, $A1, $85, $A4, $A5, $A6, $A0, $A1, $85, $A4, $A5   ; 
- D 0 - I - 0x000410 00:8400: A6        .byte $A6, $A0, $A1, $85, $A4, $A5, $A6, $A0, $A1, $85, $A4, $A5, $A6, $A0, $A1, $85   ; 
- D 0 - I - 0x000420 00:8410: A4        .byte $A4, $A5, $A6, $A0, $A1, $82, $A4, $A5, $85, $A7, $A8, $A9, $AE, $AF, $85, $A7   ; 
- D 0 - I - 0x000430 00:8420: A8        .byte $A8, $A9, $AE, $AF, $85, $A7, $A8, $A9, $AE, $AF, $85, $A7, $A8, $A9, $AE, $AF   ; 
- D 0 - I - 0x000440 00:8430: 85        .byte $85, $A7, $A8, $A9, $AE, $AF, $85, $A7, $A8, $A9, $AE, $AF, $82, $A7, $A8, $85   ; 
- D 0 - I - 0x000450 00:8440: AA        .byte $AA, $AB, $AC, $A2, $A3, $85, $AA, $AB, $AC, $A2, $A3, $85, $AA, $AB, $AC, $A2   ; 
- D 0 - I - 0x000460 00:8450: A3        .byte $A3, $85, $AA, $AB, $AC, $A2, $A3, $85, $AA, $AB, $AC, $A2, $A3, $85, $AA, $AB   ; 
- D 0 - I - 0x000470 00:8460: AC        .byte $AC, $A2, $A3, $82, $AA, $AB, $84, $90, $91, $92, $93, $84, $90, $91, $92, $93   ; 
- D 0 - I - 0x000480 00:8470: 84        .byte $84, $90, $91, $92, $93, $84, $90, $91, $92, $93, $84, $90, $91, $92, $93, $84   ; 
- D 0 - I - 0x000490 00:8480: 90        .byte $90, $91, $92, $93, $84, $90, $91, $92, $93, $84, $90, $91, $92, $93, $84, $94   ; 
- D 0 - I - 0x0004A0 00:8490: 95        .byte $95, $96, $97, $84, $94, $95, $96, $97, $84, $94, $95, $96, $97, $84, $94, $95   ; 
- D 0 - I - 0x0004B0 00:84A0: 96        .byte $96, $97, $84, $94, $95, $96, $97, $84, $94, $95, $96, $97, $84, $94, $95, $96   ; 
- D 0 - I - 0x0004C0 00:84B0: 97        .byte $97, $84, $94, $95, $96, $97, $84, $98, $99, $9A, $9B, $84, $98, $99, $9A, $9B   ; 
- D 0 - I - 0x0004D0 00:84C0: 84        .byte $84, $98, $99, $9A, $9B, $84, $98, $99, $9A, $9B, $84, $98, $99, $9A, $9B, $84   ; 
- D 0 - I - 0x0004E0 00:84D0: 98        .byte $98, $99, $9A, $9B, $84, $98, $99, $9A, $9B, $84, $98, $99, $9A, $9B, $84, $98   ; 
- D 0 - I - 0x0004F0 00:84E0: 99        .byte $99, $9A, $9B, $84, $98, $99, $9A, $9B, $84, $98, $99, $9A, $9B, $84, $98, $99   ; 
- D 0 - I - 0x000500 00:84F0: 9A        .byte $9A, $9B, $84, $98, $99, $9A, $9B, $84, $98, $99, $9A, $9B, $84, $98, $99, $9A   ; 
- D 0 - I - 0x000510 00:8500: 9B        .byte $9B, $84, $98, $99, $9A, $9B, $84, $9C, $9D, $9E, $9F, $84, $9C, $9D, $9E, $9F   ; 
- D 0 - I - 0x000520 00:8510: 84        .byte $84, $9C, $9D, $9E, $9F, $84, $9C, $9D, $9E, $9F, $84, $9C, $9D, $9E, $9F, $84   ; 
- D 0 - I - 0x000530 00:8520: 9C        .byte $9C, $9D, $9E, $9F, $84, $9C, $9D, $9E, $9F, $84, $9C, $9D, $9E, $9F, $60, $00   ; 
- D 0 - I - 0x000540 00:8530: 60        .byte $60, $00, $08, $FF, $08, $0F, $10, $00, $08, $AA, $08, $55, $10, $FF, $FF   ; 