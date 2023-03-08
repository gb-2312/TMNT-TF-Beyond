.segment "BANK_14"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x028010-0x02C00F
.org $8000



.export _off000_0x028011_00_leo
.export _off000_0x028011_01_raph
.export _off000_0x028011_02_mike
.export _off000_0x028011_03_don
.export _off000_0x028E23_04_casey
.export _off000_0x029B62_05_hot
.export _off000_0x02AED5_06_shred
.export sub_0x02BD8C
.export sub_0x02BF21



- D 0 - - - 0x028010 0A:8000: 04        .byte con_bank_id + $04   ; 




_off000_0x028011_00_leo:
_off000_0x028011_01_raph:
_off000_0x028011_02_mike:
_off000_0x028011_03_don:
- D 0 - - - 0x028011 0A:8001: CD 80     .word _off002_80CD_80
- D 0 - I - 0x028013 0A:8003: F2 80     .word _off002_80F2_81
- D 0 - I - 0x028015 0A:8005: 17 81     .word _off002_8117_82
- D 0 - I - 0x028017 0A:8007: 3C 81     .word _off002_813C_83
- D 0 - I - 0x028019 0A:8009: 55 81     .word _off002_8155_84
- D 0 - I - 0x02801B 0A:800B: 7A 81     .word _off002_817A_85
- D 0 - I - 0x02801D 0A:800D: 9F 81     .word _off002_819F_86
- D 0 - I - 0x02801F 0A:800F: C4 81     .word _off002_81C4_87
- D 0 - I - 0x028021 0A:8011: E9 81     .word _off002_81E9_88
- D 0 - I - 0x028023 0A:8013: 12 82     .word _off002_8212_89
- D 0 - I - 0x028025 0A:8015: 3B 82     .word _off002_823B_8A
- D 0 - I - 0x028027 0A:8017: 60 82     .word _off002_8260_8B
- D 0 - I - 0x028029 0A:8019: 85 82     .word _off002_8285_8C
- D 0 - I - 0x02802B 0A:801B: AE 82     .word _off002_82AE_8D
- D 0 - I - 0x02802D 0A:801D: D3 82     .word _off002_82D3_8E
- D 0 - I - 0x02802F 0A:801F: FC 82     .word _off002_82FC_8F
- D 0 - I - 0x028031 0A:8021: 29 83     .word _off002_8329_90
- D 0 - I - 0x028033 0A:8023: 4A 83     .word _off002_834A_91
- D 0 - I - 0x028035 0A:8025: 77 83     .word _off002_8377_92
- D 0 - I - 0x028037 0A:8027: 98 83     .word _off002_8398_93
- D 0 - I - 0x028039 0A:8029: B9 83     .word _off002_83B9_94
- D 0 - I - 0x02803B 0A:802B: DE 83     .word _off002_83DE_95
- - - - - - 0x02803D 0A:802D: 03 84     .word _off002_8403_96
- D 0 - I - 0x02803F 0A:802F: 20 84     .word _off002_8420_97
- D 0 - I - 0x028041 0A:8031: 41 84     .word _off002_8441_98
- D 0 - I - 0x028043 0A:8033: 6A 84     .word _off002_846A_99
- D 0 - I - 0x028045 0A:8035: 8B 84     .word _off002_848B_9A
- D 0 - I - 0x028047 0A:8037: B4 84     .word _off002_84B4_9B
- D 0 - I - 0x028049 0A:8039: E1 84     .word _off002_84E1_9C
- D 0 - I - 0x02804B 0A:803B: 06 85     .word _off002_8506_9D
- D 0 - I - 0x02804D 0A:803D: 23 85     .word _off002_8523_9E
- D 0 - I - 0x02804F 0A:803F: 48 85     .word _off002_8548_9F
- D 0 - I - 0x028051 0A:8041: 65 85     .word _off002_8565_A0
- D 0 - I - 0x028053 0A:8043: 8A 85     .word _off002_858A_A1
- D 0 - I - 0x028055 0A:8045: B3 85     .word _off002_85B3_A2
- D 0 - I - 0x028057 0A:8047: DC 85     .word _off002_85DC_A3
- D 0 - I - 0x028059 0A:8049: 05 86     .word _off002_8605_A4
- D 0 - I - 0x02805B 0A:804B: 2E 86     .word _off002_862E_A5
- D 0 - I - 0x02805D 0A:804D: 53 86     .word _off002_8653_A6
- D 0 - I - 0x02805F 0A:804F: 74 86     .word _off002_8674_A7
- D 0 - I - 0x028061 0A:8051: BA 86     .word _off002_86BA_A8
- D 0 - I - 0x028063 0A:8053: DB 86     .word _off002_86DB_A9
- D 0 - I - 0x028065 0A:8055: F8 86     .word _off002_86F8_AA
- D 0 - I - 0x028067 0A:8057: 19 87     .word _off002_8719_AB
- D 0 - I - 0x028069 0A:8059: 3A 87     .word _off002_873A_AC
- D 0 - I - 0x02806B 0A:805B: 5B 87     .word _off002_875B_AD
- D 0 - I - 0x02806D 0A:805D: 7C 87     .word _off002_877C_AE
- D 0 - I - 0x02806F 0A:805F: A1 87     .word _off002_87A1_AF
- D 0 - I - 0x028071 0A:8061: D2 87     .word _off002_87D2_B0
- D 0 - I - 0x028073 0A:8063: FB 87     .word _off002_87FB_B1
- D 0 - I - 0x028075 0A:8065: 18 88     .word _off002_8818_B2
- D 0 - I - 0x028077 0A:8067: 3D 88     .word _off002_883D_B3
- D 0 - I - 0x028079 0A:8069: 5A 88     .word _off002_885A_B4
- D 0 - I - 0x02807B 0A:806B: 7F 88     .word _off002_887F_B5
- D 0 - I - 0x02807D 0A:806D: A4 88     .word _off002_88A4_B6
- D 0 - I - 0x02807F 0A:806F: C5 88     .word _off002_88C5_B7
- D 0 - I - 0x028081 0A:8071: EA 88     .word _off002_88EA_B8
- D 0 - I - 0x028083 0A:8073: 0F 89     .word _off002_890F_B9
- D 0 - I - 0x028085 0A:8075: 2C 89     .word _off002_892C_BA
- D 0 - I - 0x028087 0A:8077: 55 89     .word _off002_8955_BB
- D 0 - I - 0x028089 0A:8079: 5A 89     .word _off002_895A_BC
- D 0 - I - 0x02808B 0A:807B: 63 89     .word _off002_8963_BD
- D 0 - I - 0x02808D 0A:807D: 68 89     .word _off002_8968_BE
- D 0 - I - 0x02808F 0A:807F: 71 89     .word _off002_8971_BF
- D 0 - I - 0x028091 0A:8081: 7E 89     .word _off002_897E_C0
- D 0 - I - 0x028093 0A:8083: 87 89     .word _off002_8987_C1
- D 0 - I - 0x028095 0A:8085: 94 89     .word _off002_8994_C2
- D 0 - I - 0x028097 0A:8087: 9D 89     .word _off002_899D_C3
- D 0 - I - 0x028099 0A:8089: C6 89     .word _off002_89C6_C4
- D 0 - I - 0x02809B 0A:808B: EB 89     .word _off002_89EB_C5
- D 0 - I - 0x02809D 0A:808D: 14 8A     .word _off002_8A14_C6
- D 0 - I - 0x02809F 0A:808F: 35 8A     .word _off002_8A35_C7
- D 0 - I - 0x0280A1 0A:8091: 3A 8A     .word _off002_8A3A_C8
- D 0 - I - 0x0280A3 0A:8093: 5B 8A     .word _off002_8A5B_C9
- D 0 - I - 0x0280A5 0A:8095: 60 8A     .word _off002_8A60_CA
- D 0 - I - 0x0280A7 0A:8097: 69 8A     .word _off002_8A69_CB
- D 0 - I - 0x0280A9 0A:8099: 72 8A     .word _off002_8A72_CC
- D 0 - I - 0x0280AB 0A:809B: 97 8A     .word _off002_8A97_CD
- D 0 - I - 0x0280AD 0A:809D: BC 8A     .word _off002_8ABC_CE
- D 0 - I - 0x0280AF 0A:809F: E1 8A     .word _off002_8AE1_CF
- D 0 - I - 0x0280B1 0A:80A1: 06 8B     .word _off002_8B06_D0
- D 0 - I - 0x0280B3 0A:80A3: 33 8B     .word _off002_8B33_D1
- D 0 - I - 0x0280B5 0A:80A5: 5C 8B     .word _off002_8B5C_D2
- D 0 - I - 0x0280B7 0A:80A7: 7D 8B     .word _off002_8B7D_D3
- D 0 - I - 0x0280B9 0A:80A9: 9E 8B     .word _off002_8B9E_D4
- D 0 - I - 0x0280BB 0A:80AB: C7 8B     .word _off002_8BC7_D5
- D 0 - I - 0x0280BD 0A:80AD: EC 8B     .word _off002_8BEC_D6
- D 0 - I - 0x0280BF 0A:80AF: 11 8C     .word _off002_8C11_D7
- D 0 - I - 0x0280C1 0A:80B1: 3A 8C     .word _off002_8C3A_D8
- D 0 - I - 0x0280C3 0A:80B3: 99 86     .word _off002_8699_D9
- D 0 - I - 0x0280C5 0A:80B5: 5F 8C     .word _off002_8C5F_DA
- D 0 - I - 0x0280C7 0A:80B7: 80 8C     .word _off002_8C80_DB
- D 0 - I - 0x0280C9 0A:80B9: A5 8C     .word _off002_8CA5_DC
- D 0 - I - 0x0280CB 0A:80BB: CA 8C     .word _off002_8CCA_DD
- D 0 - I - 0x0280CD 0A:80BD: F7 8C     .word _off002_8CF7_DE
- D 0 - I - 0x0280CF 0A:80BF: 20 8D     .word _off002_8D20_DF
- D 0 - I - 0x0280D1 0A:80C1: 4D 8D     .word _off002_8D4D_E0
- D 0 - I - 0x0280D3 0A:80C3: 72 8D     .word _off002_8D72_E1
- D 0 - I - 0x0280D5 0A:80C5: 9B 8D     .word _off002_8D9B_E2
- D 0 - I - 0x0280D7 0A:80C7: C0 8D     .word _off002_8DC0_E3
- D 0 - I - 0x0280D9 0A:80C9: E9 8D     .word _off002_8DE9_E4
- D 0 - I - 0x0280DB 0A:80CB: 0A 8E     .word _off002_8E0A_E5



_off002_80CD_80:
- D 0 - I - 0x0280DD 0A:80CD: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0280DE 0A:80CE: C2        .byte $C2, $41, $00, $FC   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0280E2 0A:80D2: D2        .byte $D2, $01, $00, $F2   ; 
- D 0 - I - 0x0280E6 0A:80D6: D2        .byte $D2, $03, $00, $FA   ; 
- D 0 - I - 0x0280EA 0A:80DA: D2        .byte $D2, $05, $00, $02   ; 
- D 0 - I - 0x0280EE 0A:80DE: E2        .byte $E2, $07, $00, $F5   ; 
- D 0 - I - 0x0280F2 0A:80E2: E2        .byte $E2, $09, $00, $FD   ; 
- D 0 - I - 0x0280F6 0A:80E6: E2        .byte $E2, $0B, $00, $05   ; 
- D 0 - I - 0x0280FA 0A:80EA: F2        .byte $F2, $43, $00, $F4   ; 
- D 0 - I - 0x0280FE 0A:80EE: F2        .byte $F2, $45, $00, $02   ; 
@end:



_off002_80F2_81:
- D 0 - I - 0x028102 0A:80F2: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028103 0A:80F3: C1        .byte $C1, $41, $00, $FE   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028107 0A:80F7: D1        .byte $D1, $01, $00, $F4   ; 
- D 0 - I - 0x02810B 0A:80FB: D1        .byte $D1, $03, $00, $FC   ; 
- D 0 - I - 0x02810F 0A:80FF: D1        .byte $D1, $05, $00, $04   ; 
- D 0 - I - 0x028113 0A:8103: E1        .byte $E1, $0D, $00, $F6   ; 
- D 0 - I - 0x028117 0A:8107: E1        .byte $E1, $0F, $00, $FE   ; 
- D 0 - I - 0x02811B 0A:810B: E1        .byte $E1, $11, $00, $06   ; 
- D 0 - I - 0x02811F 0A:810F: F1        .byte $F1, $47, $00, $F6   ; 
- D 0 - I - 0x028123 0A:8113: F1        .byte $F1, $49, $00, $04   ; 
@end:



_off002_8117_82:
- D 0 - I - 0x028127 0A:8117: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028128 0A:8118: C2        .byte $C2, $41, $00, $00   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02812C 0A:811C: D2        .byte $D2, $13, $00, $F6   ; 
- D 0 - I - 0x028130 0A:8120: D2        .byte $D2, $15, $00, $FE   ; 
- D 0 - I - 0x028134 0A:8124: D2        .byte $D2, $05, $00, $06   ; 
- D 0 - I - 0x028138 0A:8128: E2        .byte $E2, $0D, $00, $F8   ; 
- D 0 - I - 0x02813C 0A:812C: E2        .byte $E2, $17, $00, $00   ; 
- D 0 - I - 0x028140 0A:8130: E2        .byte $E2, $19, $00, $08   ; 
- D 0 - I - 0x028144 0A:8134: F2        .byte $F2, $43, $00, $F6   ; 
- D 0 - I - 0x028148 0A:8138: F2        .byte $F2, $45, $00, $04   ; 
@end:



_off002_813C_83:
- D 0 - I - 0x02814C 0A:813C: 06        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02814D 0A:813D: D1        .byte $D1, $01, $00, $FA   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028151 0A:8141: D1        .byte $D1, $03, $00, $02   ; 
- D 0 - I - 0x028155 0A:8145: D1        .byte $D1, $05, $00, $0A   ; 
- D 0 - I - 0x028159 0A:8149: E1        .byte $E1, $07, $00, $FA   ; 
- D 0 - I - 0x02815D 0A:814D: E1        .byte $E1, $09, $00, $02   ; 
- D 0 - I - 0x028161 0A:8151: F1        .byte $F1, $47, $40, $00   ; 
@end:



_off002_8155_84:
- D 0 - I - 0x028165 0A:8155: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028166 0A:8156: C2        .byte $C2, $41, $00, $05   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02816A 0A:815A: D4        .byte $D4, $0B, $00, $F9   ; 
- D 0 - I - 0x02816E 0A:815E: D2        .byte $D2, $0D, $00, $01   ; 
- D 0 - I - 0x028172 0A:8162: D2        .byte $D2, $0F, $00, $09   ; 
- D 0 - I - 0x028176 0A:8166: E4        .byte $E4, $11, $00, $F9   ; 
- D 0 - I - 0x02817A 0A:816A: E2        .byte $E2, $13, $00, $01   ; 
- D 0 - I - 0x02817E 0A:816E: E2        .byte $E2, $15, $00, $09   ; 
- D 0 - I - 0x028182 0A:8172: E9        .byte $E9, $27, $00, $F1   ; 
- D 0 - I - 0x028186 0A:8176: F2        .byte $F2, $25, $00, $07   ; 
@end:



_off002_817A_85:
- D 0 - I - 0x02818A 0A:817A: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02818B 0A:817B: D0        .byte $D0, $17, $00, $FA   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02818F 0A:817F: D0        .byte $D0, $19, $00, $02   ; 
- D 0 - I - 0x028193 0A:8183: D0        .byte $D0, $05, $00, $0A   ; 
- D 0 - I - 0x028197 0A:8187: E0        .byte $E0, $1B, $00, $F8   ; 
- D 0 - I - 0x02819B 0A:818B: E0        .byte $E0, $1D, $00, $00   ; 
- D 0 - I - 0x02819F 0A:818F: E0        .byte $E0, $1F, $00, $08   ; 
- D 0 - I - 0x0281A3 0A:8193: F0        .byte $F0, $21, $00, $F5   ; 
- D 0 - I - 0x0281A7 0A:8197: F0        .byte $F0, $47, $40, $03   ; 
- D 0 - I - 0x0281AB 0A:819B: F0        .byte $F0, $23, $00, $FD   ; 
@end:



_off002_819F_86:
- D 0 - I - 0x0281AF 0A:819F: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0281B0 0A:81A0: C2        .byte $C2, $41, $00, $05   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0281B4 0A:81A4: D4        .byte $D4, $29, $00, $F8   ; 
- D 0 - I - 0x0281B8 0A:81A8: D2        .byte $D2, $2B, $00, $00   ; 
- D 0 - I - 0x0281BC 0A:81AC: D2        .byte $D2, $2D, $00, $08   ; 
- D 0 - I - 0x0281C0 0A:81B0: E4        .byte $E4, $2F, $00, $F8   ; 
- D 0 - I - 0x0281C4 0A:81B4: E2        .byte $E2, $31, $00, $00   ; 
- D 0 - I - 0x0281C8 0A:81B8: E2        .byte $E2, $33, $00, $08   ; 
- D 0 - I - 0x0281CC 0A:81BC: E9        .byte $E9, $27, $00, $F0   ; 
- D 0 - I - 0x0281D0 0A:81C0: F2        .byte $F2, $25, $00, $06   ; 
@end:



_off002_81C4_87:
- D 0 - I - 0x0281D4 0A:81C4: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0281D5 0A:81C5: D0        .byte $D0, $35, $00, $FA   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0281D9 0A:81C9: D0        .byte $D0, $37, $00, $02   ; 
- D 0 - I - 0x0281DD 0A:81CD: D0        .byte $D0, $05, $00, $0A   ; 
- D 0 - I - 0x0281E1 0A:81D1: E0        .byte $E0, $39, $00, $F8   ; 
- D 0 - I - 0x0281E5 0A:81D5: E0        .byte $E0, $3B, $00, $00   ; 
- D 0 - I - 0x0281E9 0A:81D9: E0        .byte $E0, $3D, $00, $08   ; 
- D 0 - I - 0x0281ED 0A:81DD: F0        .byte $F0, $21, $00, $F5   ; 
- D 0 - I - 0x0281F1 0A:81E1: F0        .byte $F0, $47, $40, $03   ; 
- D 0 - I - 0x0281F5 0A:81E5: F0        .byte $F0, $23, $00, $FD   ; 
@end:



_off002_81E9_88:
- D 0 - I - 0x0281F9 0A:81E9: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0281FA 0A:81EA: C1        .byte $C1, $01, $00, $FE   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0281FE 0A:81EE: D1        .byte $D1, $03, $00, $F6   ; 
- D 0 - I - 0x028202 0A:81F2: D1        .byte $D1, $05, $00, $FE   ; 
- D 0 - I - 0x028206 0A:81F6: D1        .byte $D1, $07, $00, $06   ; 
- D 0 - I - 0x02820A 0A:81FA: E1        .byte $E1, $09, $00, $F6   ; 
- D 0 - I - 0x02820E 0A:81FE: E1        .byte $E1, $0B, $00, $FE   ; 
- D 0 - I - 0x028212 0A:8202: E1        .byte $E1, $0D, $00, $06   ; 
- D 0 - I - 0x028216 0A:8206: F1        .byte $F1, $4B, $00, $EF   ; 
- D 0 - I - 0x02821A 0A:820A: F1        .byte $F1, $4D, $00, $F7   ; 
- D 0 - I - 0x02821E 0A:820E: F1        .byte $F1, $49, $00, $04   ; 
@end:



_off002_8212_89:
- D 0 - I - 0x028222 0A:8212: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028223 0A:8213: C0        .byte $C0, $01, $00, $FD   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028227 0A:8217: D0        .byte $D0, $03, $00, $F5   ; 
- D 0 - I - 0x02822B 0A:821B: D0        .byte $D0, $05, $00, $FD   ; 
- D 0 - I - 0x02822F 0A:821F: D0        .byte $D0, $07, $00, $05   ; 
- D 0 - I - 0x028233 0A:8223: E0        .byte $E0, $0F, $00, $F5   ; 
- D 0 - I - 0x028237 0A:8227: E0        .byte $E0, $11, $00, $FD   ; 
- D 0 - I - 0x02823B 0A:822B: E0        .byte $E0, $13, $00, $05   ; 
- D 0 - I - 0x02823F 0A:822F: F0        .byte $F0, $4F, $00, $F5   ; 
- D 0 - I - 0x028243 0A:8233: F0        .byte $F0, $4B, $00, $F8   ; 
- D 0 - I - 0x028247 0A:8237: F0        .byte $F0, $4D, $00, $00   ; 
@end:



_off002_823B_8A:
- D 0 - I - 0x02824B 0A:823B: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02824C 0A:823C: C1        .byte $C1, $01, $00, $FF   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028250 0A:8240: D1        .byte $D1, $03, $00, $F7   ; 
- D 0 - I - 0x028254 0A:8244: D1        .byte $D1, $05, $00, $FF   ; 
- D 0 - I - 0x028258 0A:8248: D1        .byte $D1, $07, $00, $07   ; 
- D 0 - I - 0x02825C 0A:824C: E1        .byte $E1, $15, $00, $F7   ; 
- D 0 - I - 0x028260 0A:8250: E1        .byte $E1, $17, $00, $FF   ; 
- D 0 - I - 0x028264 0A:8254: E1        .byte $E1, $19, $00, $07   ; 
- D 0 - I - 0x028268 0A:8258: F1        .byte $F1, $49, $00, $FD   ; 
- D 0 - I - 0x02826C 0A:825C: F1        .byte $F1, $4F, $00, $05   ; 
@end:



_off002_8260_8B:
- D 0 - I - 0x028270 0A:8260: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028271 0A:8261: C1        .byte $C1, $01, $00, $FD   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028275 0A:8265: D1        .byte $D1, $1B, $00, $F6   ; 
- D 0 - I - 0x028279 0A:8269: D1        .byte $D1, $1D, $00, $FE   ; 
- D 0 - I - 0x02827D 0A:826D: D1        .byte $D1, $1F, $00, $06   ; 
- D 0 - I - 0x028281 0A:8271: E1        .byte $E1, $21, $00, $F6   ; 
- D 0 - I - 0x028285 0A:8275: E1        .byte $E1, $23, $00, $FE   ; 
- D 0 - I - 0x028289 0A:8279: E1        .byte $E1, $25, $00, $06   ; 
- D 0 - I - 0x02828D 0A:827D: F1        .byte $F1, $4F, $00, $FA   ; 
- D 0 - I - 0x028291 0A:8281: F1        .byte $F1, $49, $00, $03   ; 
@end:



_off002_8285_8C:
- D 0 - I - 0x028295 0A:8285: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028296 0A:8286: C0        .byte $C0, $01, $00, $FB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02829A 0A:828A: D0        .byte $D0, $1B, $00, $F4   ; 
- D 0 - I - 0x02829E 0A:828E: D0        .byte $D0, $1D, $00, $FC   ; 
- D 0 - I - 0x0282A2 0A:8292: D0        .byte $D0, $1F, $00, $04   ; 
- D 0 - I - 0x0282A6 0A:8296: E0        .byte $E0, $21, $00, $F4   ; 
- D 0 - I - 0x0282AA 0A:829A: E0        .byte $E0, $23, $00, $FC   ; 
- D 0 - I - 0x0282AE 0A:829E: E0        .byte $E0, $25, $00, $04   ; 
- D 0 - I - 0x0282B2 0A:82A2: F0        .byte $F0, $4F, $40, $FA   ; 
- D 0 - I - 0x0282B6 0A:82A6: F0        .byte $F0, $4D, $40, $FF   ; 
- D 0 - I - 0x0282BA 0A:82AA: F0        .byte $F0, $4B, $40, $07   ; 
@end:



_off002_82AE_8D:
- D 0 - I - 0x0282BE 0A:82AE: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0282BF 0A:82AF: C1        .byte $C1, $01, $00, $FD   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0282C3 0A:82B3: D1        .byte $D1, $1B, $00, $F6   ; 
- D 0 - I - 0x0282C7 0A:82B7: D1        .byte $D1, $1D, $00, $FE   ; 
- D 0 - I - 0x0282CB 0A:82BB: D1        .byte $D1, $1F, $00, $06   ; 
- D 0 - I - 0x0282CF 0A:82BF: E1        .byte $E1, $27, $00, $F6   ; 
- D 0 - I - 0x0282D3 0A:82C3: E1        .byte $E1, $29, $00, $FE   ; 
- D 0 - I - 0x0282D7 0A:82C7: E1        .byte $E1, $25, $00, $06   ; 
- D 0 - I - 0x0282DB 0A:82CB: F1        .byte $F1, $49, $00, $F9   ; 
- D 0 - I - 0x0282DF 0A:82CF: F1        .byte $F1, $4F, $00, $01   ; 
@end:



_off002_82D3_8E:
- D 0 - I - 0x0282E3 0A:82D3: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0282E4 0A:82D4: C0        .byte $C0, $01, $00, $FB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0282E8 0A:82D8: D0        .byte $D0, $1B, $00, $F4   ; 
- D 0 - I - 0x0282EC 0A:82DC: D0        .byte $D0, $1D, $00, $FC   ; 
- D 0 - I - 0x0282F0 0A:82E0: D0        .byte $D0, $1F, $00, $04   ; 
- D 0 - I - 0x0282F4 0A:82E4: E0        .byte $E0, $21, $00, $F4   ; 
- D 0 - I - 0x0282F8 0A:82E8: E0        .byte $E0, $23, $00, $FC   ; 
- D 0 - I - 0x0282FC 0A:82EC: E0        .byte $E0, $25, $00, $04   ; 
- D 0 - I - 0x028300 0A:82F0: F0        .byte $F0, $4D, $40, $F7   ; 
- D 0 - I - 0x028304 0A:82F4: F0        .byte $F0, $4B, $40, $FF   ; 
- D 0 - I - 0x028308 0A:82F8: F0        .byte $F0, $4F, $40, $02   ; 
@end:



_off002_82FC_8F:
- D 0 - I - 0x02830C 0A:82FC: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02830D 0A:82FD: C1        .byte $C1, $01, $00, $06   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028311 0A:8301: D1        .byte $D1, $03, $00, $FF   ; 
- D 0 - I - 0x028315 0A:8305: D1        .byte $D1, $05, $00, $07   ; 
- D 0 - I - 0x028319 0A:8309: D1        .byte $D1, $07, $00, $0F   ; 
- D 0 - I - 0x02831D 0A:830D: CE        .byte $CE, $09, $00, $17   ; 
- D 0 - I - 0x028321 0A:8311: E1        .byte $E1, $0B, $00, $FF   ; 
- D 0 - I - 0x028325 0A:8315: E1        .byte $E1, $0D, $00, $07   ; 
- D 0 - I - 0x028329 0A:8319: E1        .byte $E1, $0F, $00, $0F   ; 
- D 0 - I - 0x02832D 0A:831D: F1        .byte $F1, $4B, $00, $F8   ; 
- D 0 - I - 0x028331 0A:8321: F1        .byte $F1, $11, $00, $00   ; 
- D 0 - I - 0x028335 0A:8325: F1        .byte $F1, $49, $00, $0B   ; 
@end:



_off002_8329_90:
- D 0 - I - 0x028339 0A:8329: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02833A 0A:832A: D2        .byte $D2, $13, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02833E 0A:832E: D2        .byte $D2, $1B, $00, $00   ; 
- D 0 - I - 0x028342 0A:8332: D2        .byte $D2, $1D, $00, $08   ; 
- D 0 - I - 0x028346 0A:8336: E2        .byte $E2, $0D, $00, $F9   ; 
- D 0 - I - 0x02834A 0A:833A: E2        .byte $E2, $17, $00, $01   ; 
- D 0 - I - 0x02834E 0A:833E: E2        .byte $E2, $19, $00, $09   ; 
- D 0 - I - 0x028352 0A:8342: F2        .byte $F2, $43, $00, $F6   ; 
- D 0 - I - 0x028356 0A:8346: F2        .byte $F2, $45, $00, $06   ; 
@end:



_off002_834A_91:
- D 0 - I - 0x02835A 0A:834A: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02835B 0A:834B: C1        .byte $C1, $41, $00, $07   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02835F 0A:834F: D1        .byte $D1, $13, $00, $FD   ; 
- D 0 - I - 0x028363 0A:8353: D1        .byte $D1, $15, $00, $05   ; 
- D 0 - I - 0x028367 0A:8357: D1        .byte $D1, $23, $00, $0D   ; 
- D 0 - I - 0x02836B 0A:835B: D1        .byte $D1, $25, $00, $15   ; 
- D 0 - I - 0x02836F 0A:835F: E1        .byte $E1, $0D, $00, $FF   ; 
- D 0 - I - 0x028373 0A:8363: E1        .byte $E1, $27, $00, $07   ; 
- D 0 - I - 0x028377 0A:8367: E1        .byte $E1, $29, $00, $0F   ; 
- D 0 - I - 0x02837B 0A:836B: F1        .byte $F1, $4B, $00, $F7   ; 
- D 0 - I - 0x02837F 0A:836F: F1        .byte $F1, $4D, $00, $FF   ; 
- D 0 - I - 0x028383 0A:8373: F1        .byte $F1, $47, $40, $0B   ; 
@end:



_off002_8377_92:
- D 0 - I - 0x028387 0A:8377: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028388 0A:8378: C1        .byte $C1, $01, $00, $06   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02838C 0A:837C: D1        .byte $D1, $03, $00, $FF   ; 
- D 0 - I - 0x028390 0A:8380: D1        .byte $D1, $13, $00, $07   ; 
- D 0 - I - 0x028394 0A:8384: D1        .byte $D1, $15, $00, $0F   ; 
- D 0 - I - 0x028398 0A:8388: E1        .byte $E1, $17, $00, $FF   ; 
- D 0 - I - 0x02839C 0A:838C: E1        .byte $E1, $19, $00, $07   ; 
- D 0 - I - 0x0283A0 0A:8390: E1        .byte $E1, $1B, $00, $0F   ; 
- D 0 - I - 0x0283A4 0A:8394: F1        .byte $F1, $51, $00, $02   ; 
@end:



_off002_8398_93:
- D 0 - I - 0x0283A8 0A:8398: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0283A9 0A:8399: CE        .byte $CE, $1D, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0283AD 0A:839D: D1        .byte $D1, $1F, $00, $00   ; 
- D 0 - I - 0x0283B1 0A:83A1: DE        .byte $DE, $21, $00, $F8   ; 
- D 0 - I - 0x0283B5 0A:83A5: E1        .byte $E1, $23, $00, $00   ; 
- D 0 - I - 0x0283B9 0A:83A9: D9        .byte $D9, $25, $00, $08   ; 
- D 0 - I - 0x0283BD 0A:83AD: D5        .byte $D5, $27, $00, $10   ; 
- D 0 - I - 0x0283C1 0A:83B1: D2        .byte $D2, $29, $00, $18   ; 
- D 0 - I - 0x0283C5 0A:83B5: F1        .byte $F1, $51, $00, $01   ; 
@end:



_off002_83B9_94:
- D 0 - I - 0x0283C9 0A:83B9: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0283CA 0A:83BA: D2        .byte $D2, $2B, $40, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0283CE 0A:83BE: D2        .byte $D2, $13, $40, $00   ; 
- D 0 - I - 0x0283D2 0A:83C2: D2        .byte $D2, $03, $40, $08   ; 
- D 0 - I - 0x0283D6 0A:83C6: C2        .byte $C2, $01, $40, $01   ; 
- D 0 - I - 0x0283DA 0A:83CA: DE        .byte $DE, $2D, $00, $F0   ; 
- D 0 - I - 0x0283DE 0A:83CE: E2        .byte $E2, $2F, $00, $F8   ; 
- D 0 - I - 0x0283E2 0A:83D2: E2        .byte $E2, $31, $00, $00   ; 
- D 0 - I - 0x0283E6 0A:83D6: E2        .byte $E2, $33, $00, $08   ; 
- D 0 - I - 0x0283EA 0A:83DA: F2        .byte $F2, $45, $40, $FE   ; 
@end:



_off002_83DE_95:
- D 0 - I - 0x0283EE 0A:83DE: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0283EF 0A:83DF: BA        .byte $BA, $01, $00, $FB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0283F3 0A:83E3: CA        .byte $CA, $03, $00, $F4   ; 
- D 0 - I - 0x0283F7 0A:83E7: CA        .byte $CA, $13, $00, $FC   ; 
- D 0 - I - 0x0283FB 0A:83EB: CA        .byte $CA, $2B, $00, $04   ; 
- D 0 - I - 0x0283FF 0A:83EF: DA        .byte $DA, $33, $40, $F4   ; 
- D 0 - I - 0x028403 0A:83F3: DA        .byte $DA, $31, $40, $FC   ; 
- D 0 - I - 0x028407 0A:83F7: DA        .byte $DA, $2F, $40, $04   ; 
- D 0 - I - 0x02840B 0A:83FB: D6        .byte $D6, $2D, $40, $0C   ; 
- D 0 - I - 0x02840F 0A:83FF: EA        .byte $EA, $35, $00, $FD   ; 
@end:



_off002_8403_96:
- - - - - - 0x028413 0A:8403: 07        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- - - - - - 0x028414 0A:8404: C4        .byte $C4, $1D, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- - - - - - 0x028418 0A:8408: C7        .byte $C7, $1F, $00, $00   ; 
- - - - - - 0x02841C 0A:840C: D4        .byte $D4, $21, $00, $F8   ; 
- - - - - - 0x028420 0A:8410: D7        .byte $D7, $23, $00, $00   ; 
- - - - - - 0x028424 0A:8414: CF        .byte $CF, $25, $00, $08   ; 
- - - - - - 0x028428 0A:8418: CB        .byte $CB, $27, $00, $10   ; 
- - - - - - 0x02842C 0A:841C: C8        .byte $C8, $29, $00, $18   ; 
@end:



_off002_8420_97:
- D 0 - I - 0x028430 0A:8420: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028431 0A:8421: C9        .byte $C9, $01, $00, $F2   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028435 0A:8425: C9        .byte $C9, $03, $00, $FA   ; 
- D 0 - I - 0x028439 0A:8429: C9        .byte $C9, $05, $00, $02   ; 
- D 0 - I - 0x02843D 0A:842D: CC        .byte $CC, $07, $00, $0A   ; 
- D 0 - I - 0x028441 0A:8431: D9        .byte $D9, $09, $00, $F2   ; 
- D 0 - I - 0x028445 0A:8435: D9        .byte $D9, $0B, $00, $FA   ; 
- D 0 - I - 0x028449 0A:8439: D9        .byte $D9, $0D, $00, $02   ; 
- D 0 - I - 0x02844D 0A:843D: E9        .byte $E9, $0F, $00, $F7   ; 
@end:



_off002_8441_98:
- D 0 - I - 0x028451 0A:8441: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028452 0A:8442: C8        .byte $C8, $01, $00, $F6   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028456 0A:8446: C8        .byte $C8, $03, $00, $FE   ; 
- D 0 - I - 0x02845A 0A:844A: C8        .byte $C8, $11, $00, $06   ; 
- D 0 - I - 0x02845E 0A:844E: BE        .byte $BE, $13, $00, $0E   ; 
- D 0 - I - 0x028462 0A:8452: D8        .byte $D8, $09, $00, $F6   ; 
- D 0 - I - 0x028466 0A:8456: D8        .byte $D8, $15, $00, $FE   ; 
- D 0 - I - 0x02846A 0A:845A: D8        .byte $D8, $17, $00, $06   ; 
- D 0 - I - 0x02846E 0A:845E: D8        .byte $D8, $19, $00, $0E   ; 
- D 0 - I - 0x028472 0A:8462: CE        .byte $CE, $1B, $00, $16   ; 
- D 0 - I - 0x028476 0A:8466: E8        .byte $E8, $0F, $00, $FB   ; 
@end:



_off002_846A_99:
- D 0 - I - 0x02847A 0A:846A: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02847B 0A:846B: CC        .byte $CC, $01, $00, $FA   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02847F 0A:846F: DC        .byte $DC, $1B, $00, $F3   ; 
- D 0 - I - 0x028483 0A:8473: DC        .byte $DC, $1D, $00, $FB   ; 
- D 0 - I - 0x028487 0A:8477: DC        .byte $DC, $2B, $00, $03   ; 
- D 0 - I - 0x02848B 0A:847B: EC        .byte $EC, $2D, $00, $F3   ; 
- D 0 - I - 0x02848F 0A:847F: EC        .byte $EC, $2F, $00, $FB   ; 
- D 0 - I - 0x028493 0A:8483: F1        .byte $F1, $53, $00, $03   ; 
- D 0 - I - 0x028497 0A:8487: FC        .byte $FC, $31, $00, $F6   ; 
@end:



_off002_848B_9A:
- D 0 - I - 0x02849B 0A:848B: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02849C 0A:848C: DC        .byte $DC, $01, $00, $F2   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0284A0 0A:8490: DC        .byte $DC, $03, $00, $FA   ; 
- D 0 - I - 0x0284A4 0A:8494: DC        .byte $DC, $05, $00, $02   ; 
- D 0 - I - 0x0284A8 0A:8498: DF        .byte $DF, $07, $00, $0A   ; 
- D 0 - I - 0x0284AC 0A:849C: EC        .byte $EC, $1D, $00, $F2   ; 
- D 0 - I - 0x0284B0 0A:84A0: EC        .byte $EC, $1F, $00, $FA   ; 
- D 0 - I - 0x0284B4 0A:84A4: EC        .byte $EC, $21, $00, $02   ; 
- D 0 - I - 0x0284B8 0A:84A8: F2        .byte $F2, $23, $00, $0A   ; 
- D 0 - I - 0x0284BC 0A:84AC: F6        .byte $F6, $25, $00, $12   ; 
- D 0 - I - 0x0284C0 0A:84B0: FC        .byte $FC, $27, $00, $F4   ; 
@end:



_off002_84B4_9B:
- D 0 - I - 0x0284C4 0A:84B4: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0284C5 0A:84B5: C1        .byte $C1, $01, $00, $FC   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0284C9 0A:84B9: D1        .byte $D1, $03, $00, $F4   ; 
- D 0 - I - 0x0284CD 0A:84BD: D1        .byte $D1, $05, $00, $FC   ; 
- D 0 - I - 0x0284D1 0A:84C1: D1        .byte $D1, $33, $00, $04   ; 
- D 0 - I - 0x0284D5 0A:84C5: D6        .byte $D6, $35, $00, $0C   ; 
- D 0 - I - 0x0284D9 0A:84C9: E1        .byte $E1, $09, $00, $F4   ; 
- D 0 - I - 0x0284DD 0A:84CD: E1        .byte $E1, $0B, $00, $FC   ; 
- D 0 - I - 0x0284E1 0A:84D1: E1        .byte $E1, $37, $00, $04   ; 
- D 0 - I - 0x0284E5 0A:84D5: F1        .byte $F1, $47, $00, $F4   ; 
- D 0 - I - 0x0284E9 0A:84D9: F1        .byte $F1, $4D, $40, $00   ; 
- D 0 - I - 0x0284ED 0A:84DD: F1        .byte $F1, $4B, $40, $08   ; 
@end:



_off002_84E1_9C:
- D 0 - I - 0x0284F1 0A:84E1: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0284F2 0A:84E2: CC        .byte $CC, $01, $00, $F9   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0284F6 0A:84E6: DC        .byte $DC, $03, $00, $F1   ; 
- D 0 - I - 0x0284FA 0A:84EA: DC        .byte $DC, $05, $00, $F9   ; 
- D 0 - I - 0x0284FE 0A:84EE: DC        .byte $DC, $33, $00, $01   ; 
- D 0 - I - 0x028502 0A:84F2: E1        .byte $E1, $35, $00, $09   ; 
- D 0 - I - 0x028506 0A:84F6: EC        .byte $EC, $39, $00, $F7   ; 
- D 0 - I - 0x02850A 0A:84FA: EC        .byte $EC, $3B, $00, $FF   ; 
- D 0 - I - 0x02850E 0A:84FE: F1        .byte $F1, $53, $40, $EF   ; 
- D 0 - I - 0x028512 0A:8502: F1        .byte $F1, $53, $00, $07   ; 
@end:



_off002_8506_9D:
- D 0 - I - 0x028516 0A:8506: 07        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028517 0A:8507: E6        .byte $E6, $01, $C0, $0D   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02851B 0A:850B: EF        .byte $EF, $03, $C0, $05   ; 
- D 0 - I - 0x02851F 0A:850F: EF        .byte $EF, $05, $C0, $FD   ; 
- D 0 - I - 0x028523 0A:8513: F4        .byte $F4, $07, $C0, $F5   ; 
- D 0 - I - 0x028527 0A:8517: DE        .byte $DE, $53, $C0, $F5   ; 
- D 0 - I - 0x02852B 0A:851B: DF        .byte $DF, $0B, $C0, $FD   ; 
- D 0 - I - 0x02852F 0A:851F: DF        .byte $DF, $09, $C0, $05   ; 
@end:



_off002_8523_9E:
- D 0 - I - 0x028533 0A:8523: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028534 0A:8524: F0        .byte $F0, $03, $C0, $0B   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028538 0A:8528: 00        .byte $00, $01, $C0, $04   ; 
- D 0 - I - 0x02853C 0A:852C: F0        .byte $F0, $13, $C0, $03   ; 
- D 0 - I - 0x028540 0A:8530: F0        .byte $F0, $2B, $C0, $FB   ; 
- D 0 - I - 0x028544 0A:8534: E4        .byte $E4, $2D, $80, $F3   ; 
- D 0 - I - 0x028548 0A:8538: E0        .byte $E0, $2F, $80, $FB   ; 
- D 0 - I - 0x02854C 0A:853C: E0        .byte $E0, $31, $80, $03   ; 
- D 0 - I - 0x028550 0A:8540: E0        .byte $E0, $33, $80, $0B   ; 
- D 0 - I - 0x028554 0A:8544: D0        .byte $D0, $35, $C0, $02   ; 
@end:



_off002_8548_9F:
- D 0 - I - 0x028558 0A:8548: 07        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028559 0A:8549: E4        .byte $E4, $01, $00, $F1   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02855D 0A:854D: DB        .byte $DB, $03, $00, $F9   ; 
- D 0 - I - 0x028561 0A:8551: DB        .byte $DB, $05, $00, $01   ; 
- D 0 - I - 0x028565 0A:8555: D6        .byte $D6, $07, $00, $09   ; 
- D 0 - I - 0x028569 0A:8559: EB        .byte $EB, $09, $00, $F9   ; 
- D 0 - I - 0x02856D 0A:855D: EB        .byte $EB, $0B, $00, $01   ; 
- D 0 - I - 0x028571 0A:8561: EC        .byte $EC, $53, $00, $09   ; 
@end:



_off002_8565_A0:
- D 0 - I - 0x028575 0A:8565: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028576 0A:8566: CE        .byte $CE, $01, $00, $FA   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02857A 0A:856A: DE        .byte $DE, $03, $00, $F3   ; 
- D 0 - I - 0x02857E 0A:856E: DE        .byte $DE, $13, $00, $FB   ; 
- D 0 - I - 0x028582 0A:8572: DE        .byte $DE, $2B, $00, $03   ; 
- D 0 - I - 0x028586 0A:8576: EE        .byte $EE, $33, $40, $F3   ; 
- D 0 - I - 0x02858A 0A:857A: EE        .byte $EE, $31, $40, $FB   ; 
- D 0 - I - 0x02858E 0A:857E: EE        .byte $EE, $2F, $40, $03   ; 
- D 0 - I - 0x028592 0A:8582: EA        .byte $EA, $2D, $40, $0B   ; 
- D 0 - I - 0x028596 0A:8586: FE        .byte $FE, $35, $00, $FC   ; 
@end:



_off002_858A_A1:
- D 0 - I - 0x02859A 0A:858A: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02859B 0A:858B: D1        .byte $D1, $33, $00, $E7   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02859F 0A:858F: D1        .byte $D1, $35, $00, $EF   ; 
- D 0 - I - 0x0285A3 0A:8593: D1        .byte $D1, $37, $00, $F7   ; 
- D 0 - I - 0x0285A7 0A:8597: E1        .byte $E1, $39, $00, $E7   ; 
- D 0 - I - 0x0285AB 0A:859B: E1        .byte $E1, $3B, $00, $EF   ; 
- D 0 - I - 0x0285AF 0A:859F: E1        .byte $E1, $3D, $00, $F7   ; 
- D 0 - I - 0x0285B3 0A:85A3: E1        .byte $E1, $3F, $00, $FF   ; 
- D 0 - I - 0x0285B7 0A:85A7: F1        .byte $F1, $49, $00, $F6   ; 
- D 0 - I - 0x0285BB 0A:85AB: F1        .byte $F1, $4D, $40, $FE   ; 
- D 0 - I - 0x0285BF 0A:85AF: F1        .byte $F1, $4B, $40, $06   ; 
@end:



_off002_85B3_A2:
- D 0 - I - 0x0285C3 0A:85B3: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0285C4 0A:85B4: D1        .byte $D1, $01, $00, $F0   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0285C8 0A:85B8: D1        .byte $D1, $03, $00, $F8   ; 
- D 0 - I - 0x0285CC 0A:85BC: D1        .byte $D1, $05, $00, $00   ; 
- D 0 - I - 0x0285D0 0A:85C0: E1        .byte $E1, $07, $00, $F0   ; 
- D 0 - I - 0x0285D4 0A:85C4: E1        .byte $E1, $09, $00, $F8   ; 
- D 0 - I - 0x0285D8 0A:85C8: E1        .byte $E1, $0B, $00, $00   ; 
- D 0 - I - 0x0285DC 0A:85CC: E1        .byte $E1, $0D, $00, $08   ; 
- D 0 - I - 0x0285E0 0A:85D0: F1        .byte $F1, $4D, $40, $F2   ; 
- D 0 - I - 0x0285E4 0A:85D4: F1        .byte $F1, $4B, $40, $FA   ; 
- D 0 - I - 0x0285E8 0A:85D8: F1        .byte $F1, $0F, $00, $02   ; 
@end:



_off002_85DC_A3:
- D 0 - I - 0x0285EC 0A:85DC: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0285ED 0A:85DD: E6        .byte $E6, $01, $C0, $06   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0285F1 0A:85E1: E6        .byte $E6, $03, $C0, $FE   ; 
- D 0 - I - 0x0285F5 0A:85E5: E6        .byte $E6, $05, $C0, $F6   ; 
- D 0 - I - 0x0285F9 0A:85E9: D6        .byte $D6, $07, $C0, $06   ; 
- D 0 - I - 0x0285FD 0A:85ED: D6        .byte $D6, $09, $C0, $FE   ; 
- D 0 - I - 0x028601 0A:85F1: D6        .byte $D6, $0B, $C0, $F6   ; 
- D 0 - I - 0x028605 0A:85F5: D6        .byte $D6, $0D, $C0, $EE   ; 
- D 0 - I - 0x028609 0A:85F9: C6        .byte $C6, $4D, $80, $04   ; 
- D 0 - I - 0x02860D 0A:85FD: C6        .byte $C6, $4B, $80, $FC   ; 
- D 0 - I - 0x028611 0A:8601: C6        .byte $C6, $0F, $C0, $F4   ; 
@end:



_off002_8605_A4:
- D 0 - I - 0x028615 0A:8605: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028616 0A:8606: DB        .byte $DB, $2B, $C0, $F2   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02861A 0A:860A: DB        .byte $DB, $4B, $80, $FA   ; 
- D 0 - I - 0x02861E 0A:860E: DB        .byte $DB, $4D, $80, $02   ; 
- D 0 - I - 0x028622 0A:8612: EB        .byte $EB, $2D, $00, $F4   ; 
- D 0 - I - 0x028626 0A:8616: EB        .byte $EB, $2F, $00, $FC   ; 
- D 0 - I - 0x02862A 0A:861A: EB        .byte $EB, $31, $00, $04   ; 
- D 0 - I - 0x02862E 0A:861E: F1        .byte $F1, $39, $00, $0C   ; 
- D 0 - I - 0x028632 0A:8622: FB        .byte $FB, $33, $00, $F4   ; 
- D 0 - I - 0x028636 0A:8626: FB        .byte $FB, $35, $00, $FC   ; 
- D 0 - I - 0x02863A 0A:862A: FB        .byte $FB, $37, $00, $04   ; 
@end:



_off002_862E_A5:
- D 0 - I - 0x02863E 0A:862E: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02863F 0A:862F: E1        .byte $E1, $21, $00, $F3   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028643 0A:8633: E1        .byte $E1, $23, $00, $FB   ; 
- D 0 - I - 0x028647 0A:8637: F3        .byte $F3, $25, $00, $EB   ; 
- D 0 - I - 0x02864B 0A:863B: F1        .byte $F1, $27, $00, $F3   ; 
- D 0 - I - 0x02864F 0A:863F: F1        .byte $F1, $29, $00, $FB   ; 
- D 0 - I - 0x028653 0A:8643: EF        .byte $EF, $2B, $00, $03   ; 
- D 0 - I - 0x028657 0A:8647: EF        .byte $EF, $2D, $00, $0B   ; 
- D 0 - I - 0x02865B 0A:864B: F1        .byte $F1, $2F, $00, $13   ; 
- D 0 - I - 0x02865F 0A:864F: E1        .byte $E1, $31, $00, $13   ; 
@end:



_off002_8653_A6:
- D 0 - I - 0x028663 0A:8653: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028664 0A:8654: EE        .byte $EE, $29, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028668 0A:8658: E5        .byte $E5, $2B, $00, $F3   ; 
- D 0 - I - 0x02866C 0A:865C: E5        .byte $E5, $2D, $00, $FB   ; 
- D 0 - I - 0x028670 0A:8660: F5        .byte $F5, $2F, $00, $F3   ; 
- D 0 - I - 0x028674 0A:8664: F5        .byte $F5, $31, $00, $FB   ; 
- D 0 - I - 0x028678 0A:8668: ED        .byte $ED, $33, $00, $03   ; 
- D 0 - I - 0x02867C 0A:866C: ED        .byte $ED, $35, $00, $0B   ; 
- D 0 - I - 0x028680 0A:8670: EF        .byte $EF, $37, $00, $13   ; 
@end:



_off002_8674_A7:
- D 0 - I - 0x028684 0A:8674: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028685 0A:8675: D9        .byte $D9, $21, $C0, $0B   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028689 0A:8679: D9        .byte $D9, $23, $C0, $03   ; 
- D 0 - I - 0x02868D 0A:867D: C7        .byte $C7, $25, $C0, $13   ; 
- D 0 - I - 0x028691 0A:8681: C9        .byte $C9, $27, $C0, $0B   ; 
- D 0 - I - 0x028695 0A:8685: C9        .byte $C9, $29, $C0, $03   ; 
- D 0 - I - 0x028699 0A:8689: CB        .byte $CB, $2B, $C0, $FB   ; 
- D 0 - I - 0x02869D 0A:868D: CB        .byte $CB, $2D, $C0, $F3   ; 
- D 0 - I - 0x0286A1 0A:8691: C9        .byte $C9, $2F, $C0, $EB   ; 
- D 0 - I - 0x0286A5 0A:8695: D9        .byte $D9, $31, $C0, $EB   ; 
@end:



_off002_8699_D9:
- D 0 - I - 0x0286A9 0A:8699: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0286AA 0A:869A: CD        .byte $CD, $01, $40, $F2   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0286AE 0A:869E: DD        .byte $DD, $03, $00, $EE   ; 
- D 0 - I - 0x0286B2 0A:86A2: DD        .byte $DD, $05, $00, $F6   ; 
- D 0 - I - 0x0286B6 0A:86A6: ED        .byte $ED, $0D, $00, $EB   ; 
- D 0 - I - 0x0286BA 0A:86AA: ED        .byte $ED, $0F, $00, $F3   ; 
- D 0 - I - 0x0286BE 0A:86AE: ED        .byte $ED, $19, $40, $FB   ; 
- D 0 - I - 0x0286C2 0A:86B2: FD        .byte $FD, $57, $00, $EF   ; 
- D 0 - I - 0x0286C6 0A:86B6: F6        .byte $F6, $17, $40, $03   ; 
@end:



_off002_86BA_A8:
- D 0 - I - 0x0286CA 0A:86BA: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0286CB 0A:86BB: BA        .byte $BA, $01, $40, $05   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0286CF 0A:86BF: CA        .byte $CA, $2B, $40, $FC   ; 
- D 0 - I - 0x0286D3 0A:86C3: CA        .byte $CA, $13, $40, $04   ; 
- D 0 - I - 0x0286D7 0A:86C7: CA        .byte $CA, $03, $40, $0C   ; 
- D 0 - I - 0x0286DB 0A:86CB: DA        .byte $DA, $2F, $00, $FC   ; 
- D 0 - I - 0x0286DF 0A:86CF: DA        .byte $DA, $31, $00, $04   ; 
- D 0 - I - 0x0286E3 0A:86D3: DA        .byte $DA, $33, $00, $0C   ; 
- D 0 - I - 0x0286E7 0A:86D7: EA        .byte $EA, $45, $40, $02   ; 
@end:



_off002_86DB_A9:
- D 0 - I - 0x0286EB 0A:86DB: 07        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0286EC 0A:86DC: C8        .byte $C8, $1D, $00, $F9   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0286F0 0A:86E0: CB        .byte $CB, $1F, $00, $01   ; 
- D 0 - I - 0x0286F4 0A:86E4: D8        .byte $D8, $21, $00, $F9   ; 
- D 0 - I - 0x0286F8 0A:86E8: DB        .byte $DB, $23, $00, $01   ; 
- D 0 - I - 0x0286FC 0A:86EC: D3        .byte $D3, $25, $00, $09   ; 
- D 0 - I - 0x028700 0A:86F0: CF        .byte $CF, $27, $00, $11   ; 
- D 0 - I - 0x028704 0A:86F4: EB        .byte $EB, $51, $00, $02   ; 
@end:



_off002_86F8_AA:
- D 0 - I - 0x028708 0A:86F8: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028709 0A:86F9: C1        .byte $C1, $01, $00, $06   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02870D 0A:86FD: D1        .byte $D1, $03, $00, $FF   ; 
- D 0 - I - 0x028711 0A:8701: D1        .byte $D1, $13, $00, $07   ; 
- D 0 - I - 0x028715 0A:8705: D1        .byte $D1, $15, $00, $0F   ; 
- D 0 - I - 0x028719 0A:8709: E1        .byte $E1, $17, $00, $FF   ; 
- D 0 - I - 0x02871D 0A:870D: E1        .byte $E1, $19, $00, $07   ; 
- D 0 - I - 0x028721 0A:8711: E1        .byte $E1, $1B, $00, $0F   ; 
- D 0 - I - 0x028725 0A:8715: F1        .byte $F1, $51, $00, $02   ; 
@end:



_off002_8719_AB:
- D 0 - I - 0x028729 0A:8719: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02872A 0A:871A: EB        .byte $EB, $11, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02872E 0A:871E: EA        .byte $EA, $13, $00, $F3   ; 
- D 0 - I - 0x028732 0A:8722: EA        .byte $EA, $15, $00, $FB   ; 
- D 0 - I - 0x028736 0A:8726: E1        .byte $E1, $17, $00, $03   ; 
- D 0 - I - 0x02873A 0A:872A: E1        .byte $E1, $19, $00, $0B   ; 
- D 0 - I - 0x02873E 0A:872E: F1        .byte $F1, $1B, $00, $03   ; 
- D 0 - I - 0x028742 0A:8732: F1        .byte $F1, $1D, $00, $0B   ; 
- D 0 - I - 0x028746 0A:8736: E9        .byte $E9, $1F, $00, $13   ; 
@end:



_off002_873A_AC:
- D 0 - I - 0x02874A 0A:873A: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02874B 0A:873B: E9        .byte $E9, $11, $80, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02874F 0A:873F: EA        .byte $EA, $13, $80, $F3   ; 
- D 0 - I - 0x028753 0A:8743: EA        .byte $EA, $15, $80, $FB   ; 
- D 0 - I - 0x028757 0A:8747: F3        .byte $F3, $17, $80, $03   ; 
- D 0 - I - 0x02875B 0A:874B: F3        .byte $F3, $19, $80, $0B   ; 
- D 0 - I - 0x02875F 0A:874F: E3        .byte $E3, $1B, $80, $03   ; 
- D 0 - I - 0x028763 0A:8753: E3        .byte $E3, $1D, $80, $0B   ; 
- D 0 - I - 0x028767 0A:8757: EB        .byte $EB, $1F, $80, $13   ; 
@end:



_off002_875B_AD:
- D 0 - I - 0x02876B 0A:875B: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02876C 0A:875C: E9        .byte $E9, $01, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028770 0A:8760: E9        .byte $E9, $03, $00, $F3   ; 
- D 0 - I - 0x028774 0A:8764: E9        .byte $E9, $05, $00, $FB   ; 
- D 0 - I - 0x028778 0A:8768: E1        .byte $E1, $07, $00, $03   ; 
- D 0 - I - 0x02877C 0A:876C: E1        .byte $E1, $09, $00, $0B   ; 
- D 0 - I - 0x028780 0A:8770: F1        .byte $F1, $0B, $00, $03   ; 
- D 0 - I - 0x028784 0A:8774: F1        .byte $F1, $0D, $00, $0B   ; 
- D 0 - I - 0x028788 0A:8778: E9        .byte $E9, $0F, $00, $13   ; 
@end:



_off002_877C_AE:
- D 0 - I - 0x02878C 0A:877C: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02878D 0A:877D: DB        .byte $DB, $2B, $C0, $F2   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028791 0A:8781: DB        .byte $DB, $4B, $80, $FA   ; 
- D 0 - I - 0x028795 0A:8785: DB        .byte $DB, $4D, $80, $02   ; 
- D 0 - I - 0x028799 0A:8789: EB        .byte $EB, $2D, $00, $F4   ; 
- D 0 - I - 0x02879D 0A:878D: EB        .byte $EB, $2F, $00, $FC   ; 
- D 0 - I - 0x0287A1 0A:8791: EB        .byte $EB, $3B, $00, $04   ; 
- D 0 - I - 0x0287A5 0A:8795: FB        .byte $FB, $33, $00, $F4   ; 
- D 0 - I - 0x0287A9 0A:8799: FB        .byte $FB, $35, $00, $FC   ; 
- D 0 - I - 0x0287AD 0A:879D: FB        .byte $FB, $3D, $00, $04   ; 
@end:



_off002_87A1_AF:
- D 0 - I - 0x0287B1 0A:87A1: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0287B2 0A:87A2: E7        .byte $E7, $21, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0287B6 0A:87A6: EE        .byte $EE, $21, $00, $F3   ; 
- D 0 - I - 0x0287BA 0A:87AA: DE        .byte $DE, $23, $00, $F3   ; 
- D 0 - I - 0x0287BE 0A:87AE: D6        .byte $D6, $25, $00, $FB   ; 
- D 0 - I - 0x0287C2 0A:87B2: E6        .byte $E6, $27, $00, $FB   ; 
- D 0 - I - 0x0287C6 0A:87B6: D1        .byte $D1, $2B, $00, $03   ; 
- D 0 - I - 0x0287CA 0A:87BA: CE        .byte $CE, $2D, $00, $0B   ; 
- D 0 - I - 0x0287CE 0A:87BE: C2        .byte $C2, $2F, $00, $13   ; 
- D 0 - I - 0x0287D2 0A:87C2: DE        .byte $DE, $31, $00, $0B   ; 
- D 0 - I - 0x0287D6 0A:87C6: D2        .byte $D2, $33, $00, $13   ; 
- D 0 - I - 0x0287DA 0A:87CA: C8        .byte $C8, $35, $00, $1B   ; 
- D 0 - I - 0x0287DE 0A:87CE: E1        .byte $E1, $29, $00, $03   ; 
@end:



_off002_87D2_B0:
- D 0 - I - 0x0287E2 0A:87D2: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0287E3 0A:87D3: E7        .byte $E7, $21, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0287E7 0A:87D7: EE        .byte $EE, $21, $00, $F3   ; 
- D 0 - I - 0x0287EB 0A:87DB: DE        .byte $DE, $23, $00, $F3   ; 
- D 0 - I - 0x0287EF 0A:87DF: D6        .byte $D6, $25, $00, $FB   ; 
- D 0 - I - 0x0287F3 0A:87E3: E6        .byte $E6, $27, $00, $FB   ; 
- D 0 - I - 0x0287F7 0A:87E7: E1        .byte $E1, $29, $00, $03   ; 
- D 0 - I - 0x0287FB 0A:87EB: D1        .byte $D1, $39, $00, $03   ; 
- D 0 - I - 0x0287FF 0A:87EF: DE        .byte $DE, $3B, $00, $0B   ; 
- D 0 - I - 0x028803 0A:87F3: D1        .byte $D1, $3D, $00, $13   ; 
- D 0 - I - 0x028807 0A:87F7: CE        .byte $CE, $37, $00, $0B   ; 
@end:



_off002_87FB_B1:
- D 0 - I - 0x02880B 0A:87FB: 07        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02880C 0A:87FC: D6        .byte $D6, $01, $C0, $0D   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028810 0A:8800: DF        .byte $DF, $03, $C0, $05   ; 
- D 0 - I - 0x028814 0A:8804: DF        .byte $DF, $05, $C0, $FD   ; 
- D 0 - I - 0x028818 0A:8808: CF        .byte $CF, $09, $C0, $05   ; 
- D 0 - I - 0x02881C 0A:880C: CF        .byte $CF, $0B, $C0, $FD   ; 
- D 0 - I - 0x028820 0A:8810: CE        .byte $CE, $53, $C0, $F5   ; 
- D 0 - I - 0x028824 0A:8814: E4        .byte $E4, $07, $C0, $F5   ; 
@end:



_off002_8818_B2:
- D 0 - I - 0x028828 0A:8818: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028829 0A:8819: 00        .byte $00, $01, $C0, $04   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02882D 0A:881D: F0        .byte $F0, $13, $C0, $03   ; 
- D 0 - I - 0x028831 0A:8821: F0        .byte $F0, $2B, $C0, $FB   ; 
- D 0 - I - 0x028835 0A:8825: F0        .byte $F0, $03, $C0, $0B   ; 
- D 0 - I - 0x028839 0A:8829: E0        .byte $E0, $33, $80, $0B   ; 
- D 0 - I - 0x02883D 0A:882D: E0        .byte $E0, $31, $80, $03   ; 
- D 0 - I - 0x028841 0A:8831: E0        .byte $E0, $37, $C0, $FB   ; 
- D 0 - I - 0x028845 0A:8835: D0        .byte $D0, $35, $C0, $02   ; 
- D 0 - I - 0x028849 0A:8839: EB        .byte $EB, $39, $C0, $F3   ; 
@end:



_off002_883D_B3:
- D 0 - I - 0x02884D 0A:883D: 07        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02884E 0A:883E: E4        .byte $E4, $01, $00, $F1   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028852 0A:8842: DB        .byte $DB, $03, $00, $F9   ; 
- D 0 - I - 0x028856 0A:8846: DB        .byte $DB, $05, $00, $01   ; 
- D 0 - I - 0x02885A 0A:884A: D6        .byte $D6, $07, $00, $09   ; 
- D 0 - I - 0x02885E 0A:884E: EB        .byte $EB, $09, $00, $F9   ; 
- D 0 - I - 0x028862 0A:8852: EB        .byte $EB, $0B, $00, $01   ; 
- D 0 - I - 0x028866 0A:8856: EC        .byte $EC, $53, $00, $09   ; 
@end:



_off002_885A_B4:
- D 0 - I - 0x02886A 0A:885A: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02886B 0A:885B: CE        .byte $CE, $01, $00, $FA   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02886F 0A:885F: DE        .byte $DE, $03, $00, $F3   ; 
- D 0 - I - 0x028873 0A:8863: DE        .byte $DE, $13, $00, $FB   ; 
- D 0 - I - 0x028877 0A:8867: DE        .byte $DE, $2B, $00, $03   ; 
- D 0 - I - 0x02887B 0A:886B: EE        .byte $EE, $33, $40, $F3   ; 
- D 0 - I - 0x02887F 0A:886F: EE        .byte $EE, $37, $00, $03   ; 
- D 0 - I - 0x028883 0A:8873: FE        .byte $FE, $35, $00, $FC   ; 
- D 0 - I - 0x028887 0A:8877: E3        .byte $E3, $39, $00, $0B   ; 
- D 0 - I - 0x02888B 0A:887B: EE        .byte $EE, $31, $40, $FB   ; 
@end:



_off002_887F_B5:
- D 0 - I - 0x02888F 0A:887F: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028890 0A:8880: C1        .byte $C1, $11, $00, $03   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028894 0A:8884: D1        .byte $D1, $13, $00, $FC   ; 
- D 0 - I - 0x028898 0A:8888: D1        .byte $D1, $15, $00, $04   ; 
- D 0 - I - 0x02889C 0A:888C: D1        .byte $D1, $17, $00, $0C   ; 
- D 0 - I - 0x0288A0 0A:8890: E1        .byte $E1, $19, $00, $FC   ; 
- D 0 - I - 0x0288A4 0A:8894: E1        .byte $E1, $1B, $00, $04   ; 
- D 0 - I - 0x0288A8 0A:8898: E1        .byte $E1, $1D, $00, $0C   ; 
- D 0 - I - 0x0288AC 0A:889C: F1        .byte $F1, $51, $00, $FF   ; 
- D 0 - I - 0x0288B0 0A:88A0: F1        .byte $F1, $55, $00, $07   ; 
@end:



_off002_88A4_B6:
- D 0 - I - 0x0288B4 0A:88A4: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0288B5 0A:88A5: D1        .byte $D1, $0F, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0288B9 0A:88A9: D1        .byte $D1, $11, $00, $00   ; 
- D 0 - I - 0x0288BD 0A:88AD: D1        .byte $D1, $13, $00, $08   ; 
- D 0 - I - 0x0288C1 0A:88B1: E1        .byte $E1, $15, $00, $F9   ; 
- D 0 - I - 0x0288C5 0A:88B5: E1        .byte $E1, $17, $00, $01   ; 
- D 0 - I - 0x0288C9 0A:88B9: E1        .byte $E1, $19, $00, $09   ; 
- D 0 - I - 0x0288CD 0A:88BD: F1        .byte $F1, $55, $40, $FE   ; 
- D 0 - I - 0x0288D1 0A:88C1: F1        .byte $F1, $55, $40, $06   ; 
@end:



_off002_88C5_B7:
- D 0 - I - 0x0288D5 0A:88C5: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0288D6 0A:88C6: D1        .byte $D1, $1B, $00, $F6   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0288DA 0A:88CA: D1        .byte $D1, $1D, $00, $FE   ; 
- D 0 - I - 0x0288DE 0A:88CE: D1        .byte $D1, $1F, $00, $06   ; 
- D 0 - I - 0x0288E2 0A:88D2: E1        .byte $E1, $21, $00, $F0   ; 
- D 0 - I - 0x0288E6 0A:88D6: E1        .byte $E1, $23, $00, $F8   ; 
- D 0 - I - 0x0288EA 0A:88DA: E1        .byte $E1, $25, $00, $00   ; 
- D 0 - I - 0x0288EE 0A:88DE: E1        .byte $E1, $27, $00, $08   ; 
- D 0 - I - 0x0288F2 0A:88E2: F1        .byte $F1, $29, $00, $F7   ; 
- D 0 - I - 0x0288F6 0A:88E6: F1        .byte $F1, $2B, $00, $FF   ; 
@end:



_off002_88EA_B8:
- D 0 - I - 0x0288FA 0A:88EA: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0288FB 0A:88EB: C2        .byte $C2, $01, $00, $FD   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0288FF 0A:88EF: D2        .byte $D2, $03, $00, $F6   ; 
- D 0 - I - 0x028903 0A:88F3: D2        .byte $D2, $13, $00, $FE   ; 
- D 0 - I - 0x028907 0A:88F7: D2        .byte $D2, $2B, $00, $06   ; 
- D 0 - I - 0x02890B 0A:88FB: E2        .byte $E2, $33, $40, $F6   ; 
- D 0 - I - 0x02890F 0A:88FF: E2        .byte $E2, $31, $40, $FE   ; 
- D 0 - I - 0x028913 0A:8903: E2        .byte $E2, $2F, $40, $06   ; 
- D 0 - I - 0x028917 0A:8907: DE        .byte $DE, $2D, $40, $0E   ; 
- D 0 - I - 0x02891B 0A:890B: F2        .byte $F2, $45, $00, $00   ; 
@end:



_off002_890F_B9:
- D 0 - I - 0x02891F 0A:890F: 07        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028920 0A:8910: E9        .byte $E9, $01, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028924 0A:8914: E0        .byte $E0, $03, $00, $F3   ; 
- D 0 - I - 0x028928 0A:8918: E0        .byte $E0, $05, $00, $FB   ; 
- D 0 - I - 0x02892C 0A:891C: DB        .byte $DB, $07, $00, $03   ; 
- D 0 - I - 0x028930 0A:8920: F0        .byte $F0, $09, $00, $F3   ; 
- D 0 - I - 0x028934 0A:8924: F0        .byte $F0, $0B, $00, $FB   ; 
- D 0 - I - 0x028938 0A:8928: F1        .byte $F1, $53, $00, $03   ; 
@end:



_off002_892C_BA:
- D 0 - I - 0x02893C 0A:892C: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02893D 0A:892D: F4        .byte $F4, $1B, $80, $ED   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028941 0A:8931: F4        .byte $F4, $1D, $80, $F5   ; 
- D 0 - I - 0x028945 0A:8935: F4        .byte $F4, $1F, $80, $FD   ; 
- D 0 - I - 0x028949 0A:8939: E4        .byte $E4, $21, $80, $E7   ; 
- D 0 - I - 0x02894D 0A:893D: E4        .byte $E4, $31, $00, $EF   ; 
- D 0 - I - 0x028951 0A:8941: E4        .byte $E4, $33, $00, $F7   ; 
- D 0 - I - 0x028955 0A:8945: E4        .byte $E4, $35, $00, $FF   ; 
- D 0 - I - 0x028959 0A:8949: D4        .byte $D4, $2D, $00, $E7   ; 
- D 0 - I - 0x02895D 0A:894D: D4        .byte $D4, $2F, $00, $EF   ; 
- D 0 - I - 0x028961 0A:8951: E9        .byte $E9, $37, $00, $07   ; 
@end:



_off002_8955_BB:
- D 0 - I - 0x028965 0A:8955: 01        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028966 0A:8956: DA        .byte $DA, $59, $03, $F5   ; spt_Y, spr_T, spr_A, spr_X
@end:



_off002_895A_BC:
- D 0 - I - 0x02896A 0A:895A: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02896B 0A:895B: C9        .byte $C9, $3D, $03, $11   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02896F 0A:895F: C9        .byte $C9, $3F, $03, $19   ; 
@end:



_off002_8963_BD:
- D 0 - I - 0x028973 0A:8963: 01        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028974 0A:8964: D1        .byte $D1, $5B, $03, $1B   ; spt_Y, spr_T, spr_A, spr_X
@end:



_off002_8968_BE:
- D 0 - I - 0x028978 0A:8968: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028979 0A:8969: C3        .byte $C3, $5D, $02, $12   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02897D 0A:896D: C8        .byte $C8, $5F, $02, $1A   ; 
@end:



_off002_8971_BF:
- D 0 - I - 0x028981 0A:8971: 03        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028982 0A:8972: F3        .byte $F3, $0D, $03, $F6   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028986 0A:8976: FF        .byte $FF, $57, $83, $06   ; 
- D 0 - I - 0x02898A 0A:897A: FF        .byte $FF, $57, $C3, $FE   ; 
@end:



_off002_897E_C0:
- D 0 - I - 0x02898E 0A:897E: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02898F 0A:897F: EE        .byte $EE, $3B, $C3, $F0   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028993 0A:8983: 00        .byte $00, $57, $C3, $F9   ; 
@end:



_off002_8987_C1:
- D 0 - I - 0x028997 0A:8987: 03        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028998 0A:8988: D7        .byte $D7, $0D, $C3, $08   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02899C 0A:898C: CB        .byte $CB, $57, $03, $00   ; 
- D 0 - I - 0x0289A0 0A:8990: CB        .byte $CB, $57, $43, $F8   ; 
@end:



_off002_8994_C2:
- D 0 - I - 0x0289A4 0A:8994: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0289A5 0A:8995: E0        .byte $E0, $3B, $03, $0E   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0289A9 0A:8999: CE        .byte $CE, $57, $03, $05   ; 
@end:



_off002_899D_C3:
- D 0 - I - 0x0289AD 0A:899D: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0289AE 0A:899E: BE        .byte $BE, $01, $00, $F7   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0289B2 0A:89A2: CE        .byte $CE, $07, $00, $EA   ; 
- D 0 - I - 0x0289B6 0A:89A6: CE        .byte $CE, $09, $00, $F2   ; 
- D 0 - I - 0x0289BA 0A:89AA: CE        .byte $CE, $0B, $00, $FA   ; 
- D 0 - I - 0x0289BE 0A:89AE: DE        .byte $DE, $0D, $00, $EF   ; 
- D 0 - I - 0x0289C2 0A:89B2: DE        .byte $DE, $0F, $00, $F7   ; 
- D 0 - I - 0x0289C6 0A:89B6: DE        .byte $DE, $11, $00, $FF   ; 
- D 0 - I - 0x0289CA 0A:89BA: EE        .byte $EE, $57, $00, $F3   ; 
- D 0 - I - 0x0289CE 0A:89BE: EE        .byte $EE, $53, $00, $F6   ; 
- D 0 - I - 0x0289D2 0A:89C2: EE        .byte $EE, $55, $00, $FE   ; 
@end:



_off002_89C6_C4:
- D 0 - I - 0x0289D6 0A:89C6: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0289D7 0A:89C7: D1        .byte $D1, $03, $00, $F5   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0289DB 0A:89CB: D1        .byte $D1, $05, $00, $FD   ; 
- D 0 - I - 0x0289DF 0A:89CF: D1        .byte $D1, $07, $00, $05   ; 
- D 0 - I - 0x0289E3 0A:89D3: E1        .byte $E1, $17, $00, $F2   ; 
- D 0 - I - 0x0289E7 0A:89D7: E1        .byte $E1, $19, $00, $FA   ; 
- D 0 - I - 0x0289EB 0A:89DB: E1        .byte $E1, $1B, $00, $02   ; 
- D 0 - I - 0x0289EF 0A:89DF: F1        .byte $F1, $53, $00, $F8   ; 
- D 0 - I - 0x0289F3 0A:89E3: F1        .byte $F1, $55, $00, $00   ; 
- D 0 - I - 0x0289F7 0A:89E7: D1        .byte $D1, $01, $00, $ED   ; 
@end:



_off002_89EB_C5:
- D 0 - I - 0x0289FB 0A:89EB: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0289FC 0A:89EC: CA        .byte $CA, $25, $00, $F9   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028A00 0A:89F0: CA        .byte $CA, $27, $00, $01   ; 
- D 0 - I - 0x028A04 0A:89F4: CA        .byte $CA, $29, $00, $09   ; 
- D 0 - I - 0x028A08 0A:89F8: DA        .byte $DA, $2B, $00, $F9   ; 
- D 0 - I - 0x028A0C 0A:89FC: DA        .byte $DA, $2D, $00, $01   ; 
- D 0 - I - 0x028A10 0A:8A00: DA        .byte $DA, $2F, $00, $09   ; 
- D 0 - I - 0x028A14 0A:8A04: D2        .byte $D2, $31, $00, $11   ; 
- D 0 - I - 0x028A18 0A:8A08: EA        .byte $EA, $4B, $40, $03   ; 
- D 0 - I - 0x028A1C 0A:8A0C: EA        .byte $EA, $4D, $40, $FB   ; 
- D 0 - I - 0x028A20 0A:8A10: EA        .byte $EA, $3F, $00, $07   ; 
@end:



_off002_8A14_C6:
- D 0 - I - 0x028A24 0A:8A14: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028A25 0A:8A15: C9        .byte $C9, $2B, $00, $F5   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028A29 0A:8A19: C9        .byte $C9, $2D, $00, $FD   ; 
- D 0 - I - 0x028A2D 0A:8A1D: C9        .byte $C9, $2F, $00, $05   ; 
- D 0 - I - 0x028A31 0A:8A21: D9        .byte $D9, $35, $00, $F5   ; 
- D 0 - I - 0x028A35 0A:8A25: D9        .byte $D9, $37, $00, $FD   ; 
- D 0 - I - 0x028A39 0A:8A29: D9        .byte $D9, $39, $00, $05   ; 
- D 0 - I - 0x028A3D 0A:8A2D: CB        .byte $CB, $33, $00, $0D   ; 
- D 0 - I - 0x028A41 0A:8A31: E9        .byte $E9, $4F, $00, $FB   ; 
@end:



_off002_8A35_C7:
- D 0 - I - 0x028A45 0A:8A35: 01        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028A46 0A:8A36: E9        .byte $E9, $3B, $03, $03   ; spt_Y, spr_T, spr_A, spr_X
@end:



_off002_8A3A_C8:
- D 0 - I - 0x028A4A 0A:8A3A: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028A4B 0A:8A3B: C1        .byte $C1, $17, $00, $F6   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028A4F 0A:8A3F: C1        .byte $C1, $19, $00, $FE   ; 
- D 0 - I - 0x028A53 0A:8A43: C1        .byte $C1, $1B, $00, $06   ; 
- D 0 - I - 0x028A57 0A:8A47: D1        .byte $D1, $1D, $00, $F6   ; 
- D 0 - I - 0x028A5B 0A:8A4B: D1        .byte $D1, $1F, $00, $FE   ; 
- D 0 - I - 0x028A5F 0A:8A4F: D1        .byte $D1, $21, $00, $06   ; 
- D 0 - I - 0x028A63 0A:8A53: CE        .byte $CE, $23, $00, $0E   ; 
- D 0 - I - 0x028A67 0A:8A57: E1        .byte $E1, $4F, $00, $FD   ; 
@end:



_off002_8A5B_C9:
- D 0 - I - 0x028A6B 0A:8A5B: 01        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028A6C 0A:8A5C: D1        .byte $D1, $1D, $02, $EE   ; spt_Y, spr_T, spr_A, spr_X
@end:



_off002_8A60_CA:
- D 0 - I - 0x028A70 0A:8A60: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028A71 0A:8A61: F8        .byte $F8, $77, $02, $00   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028A75 0A:8A65: F8        .byte $F8, $75, $02, $F8   ; 
@end:



_off002_8A69_CB:
- D 0 - I - 0x028A79 0A:8A69: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028A7A 0A:8A6A: F8        .byte $F8, $71, $03, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028A7E 0A:8A6E: F8        .byte $F8, $73, $03, $00   ; 
@end:



_off002_8A72_CC:
- D 0 - I - 0x028A82 0A:8A72: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028A83 0A:8A73: C9        .byte $C9, $2B, $00, $F5   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028A87 0A:8A77: C9        .byte $C9, $2D, $00, $FD   ; 
- D 0 - I - 0x028A8B 0A:8A7B: C9        .byte $C9, $2F, $00, $05   ; 
- D 0 - I - 0x028A8F 0A:8A7F: D9        .byte $D9, $35, $00, $F5   ; 
- D 0 - I - 0x028A93 0A:8A83: D9        .byte $D9, $3D, $00, $FD   ; 
- D 0 - I - 0x028A97 0A:8A87: D9        .byte $D9, $3F, $00, $05   ; 
- D 0 - I - 0x028A9B 0A:8A8B: CB        .byte $CB, $33, $00, $0D   ; 
- D 0 - I - 0x028A9F 0A:8A8F: E9        .byte $E9, $5D, $00, $03   ; 
- D 0 - I - 0x028AA3 0A:8A93: E9        .byte $E9, $5F, $00, $0B   ; 
@end:



_off002_8A97_CD:
- D 0 - I - 0x028AA7 0A:8A97: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028AA8 0A:8A98: CA        .byte $CA, $2B, $00, $F5   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028AAC 0A:8A9C: CA        .byte $CA, $2D, $00, $FD   ; 
- D 0 - I - 0x028AB0 0A:8AA0: CA        .byte $CA, $31, $00, $05   ; 
- D 0 - I - 0x028AB4 0A:8AA4: CC        .byte $CC, $33, $00, $0D   ; 
- D 0 - I - 0x028AB8 0A:8AA8: DA        .byte $DA, $35, $00, $F5   ; 
- D 0 - I - 0x028ABC 0A:8AAC: DA        .byte $DA, $3D, $00, $FD   ; 
- D 0 - I - 0x028AC0 0A:8AB0: DA        .byte $DA, $3F, $00, $05   ; 
- D 0 - I - 0x028AC4 0A:8AB4: EA        .byte $EA, $5D, $00, $03   ; 
- D 0 - I - 0x028AC8 0A:8AB8: EA        .byte $EA, $5F, $00, $0B   ; 
@end:



_off002_8ABC_CE:
- D 0 - I - 0x028ACC 0A:8ABC: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028ACD 0A:8ABD: E1        .byte $E1, $03, $00, $F3   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028AD1 0A:8AC1: E1        .byte $E1, $05, $00, $FB   ; 
- D 0 - I - 0x028AD5 0A:8AC5: E1        .byte $E1, $07, $00, $03   ; 
- D 0 - I - 0x028AD9 0A:8AC9: E1        .byte $E1, $09, $00, $0B   ; 
- D 0 - I - 0x028ADD 0A:8ACD: D1        .byte $D1, $01, $00, $01   ; 
- D 0 - I - 0x028AE1 0A:8AD1: F1        .byte $F1, $0B, $00, $F3   ; 
- D 0 - I - 0x028AE5 0A:8AD5: F1        .byte $F1, $0D, $00, $FB   ; 
- D 0 - I - 0x028AE9 0A:8AD9: F1        .byte $F1, $0F, $00, $03   ; 
- D 0 - I - 0x028AED 0A:8ADD: F1        .byte $F1, $11, $00, $0B   ; 
@end:



_off002_8AE1_CF:
- D 0 - I - 0x028AF1 0A:8AE1: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028AF2 0A:8AE2: E1        .byte $E1, $03, $00, $F3   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028AF6 0A:8AE6: E1        .byte $E1, $13, $00, $FB   ; 
- D 0 - I - 0x028AFA 0A:8AEA: E1        .byte $E1, $15, $00, $03   ; 
- D 0 - I - 0x028AFE 0A:8AEE: E1        .byte $E1, $09, $00, $0B   ; 
- D 0 - I - 0x028B02 0A:8AF2: D1        .byte $D1, $01, $00, $01   ; 
- D 0 - I - 0x028B06 0A:8AF6: F1        .byte $F1, $0B, $00, $F3   ; 
- D 0 - I - 0x028B0A 0A:8AFA: F1        .byte $F1, $0D, $00, $FB   ; 
- D 0 - I - 0x028B0E 0A:8AFE: F1        .byte $F1, $0F, $00, $03   ; 
- D 0 - I - 0x028B12 0A:8B02: F1        .byte $F1, $11, $00, $0B   ; 
@end:



_off002_8B06_D0:
- D 0 - I - 0x028B16 0A:8B06: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028B17 0A:8B07: D3        .byte $D3, $07, $00, $EE   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028B1B 0A:8B0B: D3        .byte $D3, $09, $00, $F6   ; 
- D 0 - I - 0x028B1F 0A:8B0F: D3        .byte $D3, $0B, $00, $FE   ; 
- D 0 - I - 0x028B23 0A:8B13: C3        .byte $C3, $01, $00, $FB   ; 
- D 0 - I - 0x028B27 0A:8B17: E3        .byte $E3, $29, $00, $F3   ; 
- D 0 - I - 0x028B2B 0A:8B1B: E3        .byte $E3, $2B, $00, $FB   ; 
- D 0 - I - 0x028B2F 0A:8B1F: E3        .byte $E3, $11, $00, $03   ; 
- D 0 - I - 0x028B33 0A:8B23: F3        .byte $F3, $53, $00, $F2   ; 
- D 0 - I - 0x028B37 0A:8B27: F3        .byte $F3, $55, $00, $FA   ; 
- D 0 - I - 0x028B3B 0A:8B2B: F3        .byte $F3, $53, $00, $FA   ; 
- D 0 - I - 0x028B3F 0A:8B2F: F3        .byte $F3, $55, $00, $02   ; 
@end:



_off002_8B33_D1:
- D 0 - I - 0x028B43 0A:8B33: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028B44 0A:8B34: D2        .byte $D2, $01, $00, $E9   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028B48 0A:8B38: D2        .byte $D2, $03, $00, $F1   ; 
- D 0 - I - 0x028B4C 0A:8B3C: D2        .byte $D2, $09, $00, $F9   ; 
- D 0 - I - 0x028B50 0A:8B40: D2        .byte $D2, $0B, $00, $01   ; 
- D 0 - I - 0x028B54 0A:8B44: E2        .byte $E2, $13, $00, $EE   ; 
- D 0 - I - 0x028B58 0A:8B48: E2        .byte $E2, $15, $00, $F6   ; 
- D 0 - I - 0x028B5C 0A:8B4C: E2        .byte $E2, $1B, $00, $FE   ; 
- D 0 - I - 0x028B60 0A:8B50: F2        .byte $F2, $43, $40, $F6   ; 
- D 0 - I - 0x028B64 0A:8B54: F2        .byte $F2, $43, $40, $FF   ; 
- D 0 - I - 0x028B68 0A:8B58: DC        .byte $DC, $11, $00, $09   ; 
@end:



_off002_8B5C_D2:
- D 0 - I - 0x028B6C 0A:8B5C: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028B6D 0A:8B5D: D2        .byte $D2, $33, $00, $F0   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028B71 0A:8B61: D2        .byte $D2, $35, $00, $F8   ; 
- D 0 - I - 0x028B75 0A:8B65: D2        .byte $D2, $37, $00, $00   ; 
- D 0 - I - 0x028B79 0A:8B69: E9        .byte $E9, $43, $00, $ED   ; 
- D 0 - I - 0x028B7D 0A:8B6D: E2        .byte $E2, $39, $00, $F3   ; 
- D 0 - I - 0x028B81 0A:8B71: E2        .byte $E2, $3B, $00, $FB   ; 
- D 0 - I - 0x028B85 0A:8B75: E2        .byte $E2, $3D, $00, $03   ; 
- D 0 - I - 0x028B89 0A:8B79: F2        .byte $F2, $45, $00, $02   ; 
@end:



_off002_8B7D_D3:
- D 0 - I - 0x028B8D 0A:8B7D: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028B8E 0A:8B7E: D2        .byte $D2, $37, $40, $F7   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028B92 0A:8B82: D2        .byte $D2, $35, $40, $FF   ; 
- D 0 - I - 0x028B96 0A:8B86: D2        .byte $D2, $33, $40, $07   ; 
- D 0 - I - 0x028B9A 0A:8B8A: E2        .byte $E2, $3D, $40, $F4   ; 
- D 0 - I - 0x028B9E 0A:8B8E: E2        .byte $E2, $3B, $40, $FC   ; 
- D 0 - I - 0x028BA2 0A:8B92: F2        .byte $F2, $45, $40, $F5   ; 
- D 0 - I - 0x028BA6 0A:8B96: E9        .byte $E9, $43, $40, $0A   ; 
- D 0 - I - 0x028BAA 0A:8B9A: E2        .byte $E2, $39, $40, $04   ; 
@end:



_off002_8B9E_D4:
- D 0 - I - 0x028BAE 0A:8B9E: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028BAF 0A:8B9F: D1        .byte $D1, $13, $00, $E7   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028BB3 0A:8BA3: D3        .byte $D3, $15, $00, $EF   ; 
- D 0 - I - 0x028BB7 0A:8BA7: C9        .byte $C9, $17, $00, $F7   ; 
- D 0 - I - 0x028BBB 0A:8BAB: D9        .byte $D9, $19, $00, $F7   ; 
- D 0 - I - 0x028BBF 0A:8BAF: D1        .byte $D1, $1B, $00, $FF   ; 
- D 0 - I - 0x028BC3 0A:8BB3: E1        .byte $E1, $1D, $00, $FF   ; 
- D 0 - I - 0x028BC7 0A:8BB7: D1        .byte $D1, $1F, $00, $07   ; 
- D 0 - I - 0x028BCB 0A:8BBB: E1        .byte $E1, $21, $00, $07   ; 
- D 0 - I - 0x028BCF 0A:8BBF: D9        .byte $D9, $23, $00, $0F   ; 
- D 0 - I - 0x028BD3 0A:8BC3: E9        .byte $E9, $25, $00, $0F   ; 
@end:



_off002_8BC7_D5:
- D 0 - I - 0x028BD7 0A:8BC7: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028BD8 0A:8BC8: CB        .byte $CB, $03, $00, $10   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028BDC 0A:8BCC: CB        .byte $CB, $01, $00, $08   ; 
- D 0 - I - 0x028BE0 0A:8BD0: D1        .byte $D1, $05, $00, $F8   ; 
- D 0 - I - 0x028BE4 0A:8BD4: D1        .byte $D1, $07, $00, $00   ; 
- D 0 - I - 0x028BE8 0A:8BD8: E1        .byte $E1, $09, $00, $F3   ; 
- D 0 - I - 0x028BEC 0A:8BDC: E1        .byte $E1, $0B, $00, $FB   ; 
- D 0 - I - 0x028BF0 0A:8BE0: E1        .byte $E1, $0D, $00, $03   ; 
- D 0 - I - 0x028BF4 0A:8BE4: F1        .byte $F1, $0F, $00, $F5   ; 
- D 0 - I - 0x028BF8 0A:8BE8: F1        .byte $F1, $11, $00, $FD   ; 
@end:



_off002_8BEC_D6:
- D 0 - I - 0x028BFC 0A:8BEC: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028BFD 0A:8BED: D1        .byte $D1, $29, $00, $E5   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028C01 0A:8BF1: D1        .byte $D1, $2B, $00, $ED   ; 
- D 0 - I - 0x028C05 0A:8BF5: D1        .byte $D1, $31, $00, $F5   ; 
- D 0 - I - 0x028C09 0A:8BF9: E1        .byte $E1, $2D, $00, $E3   ; 
- D 0 - I - 0x028C0D 0A:8BFD: E1        .byte $E1, $2F, $00, $EB   ; 
- D 0 - I - 0x028C11 0A:8C01: E1        .byte $E1, $33, $00, $F3   ; 
- D 0 - I - 0x028C15 0A:8C05: E1        .byte $E1, $35, $00, $FB   ; 
- D 0 - I - 0x028C19 0A:8C09: F1        .byte $F1, $5B, $40, $F5   ; 
- D 0 - I - 0x028C1D 0A:8C0D: F1        .byte $F1, $59, $40, $FD   ; 
@end:



_off002_8C11_D7:
- D 0 - I - 0x028C21 0A:8C11: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028C22 0A:8C12: D2        .byte $D2, $29, $00, $ED   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028C26 0A:8C16: D2        .byte $D2, $2B, $00, $F5   ; 
- D 0 - I - 0x028C2A 0A:8C1A: E2        .byte $E2, $2D, $00, $EB   ; 
- D 0 - I - 0x028C2E 0A:8C1E: E2        .byte $E2, $2F, $00, $F3   ; 
- D 0 - I - 0x028C32 0A:8C22: D2        .byte $D2, $37, $00, $FD   ; 
- D 0 - I - 0x028C36 0A:8C26: D2        .byte $D2, $39, $00, $05   ; 
- D 0 - I - 0x028C3A 0A:8C2A: D7        .byte $D7, $3B, $00, $0B   ; 
- D 0 - I - 0x028C3E 0A:8C2E: E2        .byte $E2, $3D, $00, $FB   ; 
- D 0 - I - 0x028C42 0A:8C32: E2        .byte $E2, $3F, $00, $03   ; 
- D 0 - I - 0x028C46 0A:8C36: F2        .byte $F2, $43, $00, $FE   ; 
@end:



_off002_8C3A_D8:
- D 0 - I - 0x028C4A 0A:8C3A: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028C4B 0A:8C3B: DF        .byte $DF, $01, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028C4F 0A:8C3F: D9        .byte $D9, $03, $00, $F3   ; 
- D 0 - I - 0x028C53 0A:8C43: E9        .byte $E9, $05, $00, $F3   ; 
- D 0 - I - 0x028C57 0A:8C47: D1        .byte $D1, $07, $00, $FB   ; 
- D 0 - I - 0x028C5B 0A:8C4B: E1        .byte $E1, $09, $00, $FB   ; 
- D 0 - I - 0x028C5F 0A:8C4F: D1        .byte $D1, $0D, $00, $03   ; 
- D 0 - I - 0x028C63 0A:8C53: E1        .byte $E1, $0B, $00, $03   ; 
- D 0 - I - 0x028C67 0A:8C57: CC        .byte $CC, $0F, $00, $0B   ; 
- D 0 - I - 0x028C6B 0A:8C5B: F1        .byte $F1, $49, $40, $FE   ; 
@end:



_off002_8C5F_DA:
- D 0 - I - 0x028C6F 0A:8C5F: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028C70 0A:8C60: ED        .byte $ED, $31, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028C74 0A:8C64: E9        .byte $E9, $33, $00, $F3   ; 
- D 0 - I - 0x028C78 0A:8C68: EB        .byte $EB, $35, $00, $FB   ; 
- D 0 - I - 0x028C7C 0A:8C6C: F9        .byte $F9, $37, $00, $F3   ; 
- D 0 - I - 0x028C80 0A:8C70: FB        .byte $FB, $39, $00, $FB   ; 
- D 0 - I - 0x028C84 0A:8C74: F1        .byte $F1, $3B, $00, $03   ; 
- D 0 - I - 0x028C88 0A:8C78: F1        .byte $F1, $3D, $00, $0B   ; 
- D 0 - I - 0x028C8C 0A:8C7C: F1        .byte $F1, $3F, $00, $13   ; 
@end:



_off002_8C80_DB:
- D 0 - I - 0x028C90 0A:8C80: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028C91 0A:8C81: CD        .byte $CD, $01, $00, $05   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028C95 0A:8C85: DD        .byte $DD, $13, $00, $01   ; 
- D 0 - I - 0x028C99 0A:8C89: DD        .byte $DD, $15, $00, $09   ; 
- D 0 - I - 0x028C9D 0A:8C8D: DD        .byte $DD, $07, $40, $11   ; 
- D 0 - I - 0x028CA1 0A:8C91: ED        .byte $ED, $19, $00, $FC   ; 
- D 0 - I - 0x028CA5 0A:8C95: ED        .byte $ED, $0F, $40, $04   ; 
- D 0 - I - 0x028CA9 0A:8C99: ED        .byte $ED, $0D, $40, $0C   ; 
- D 0 - I - 0x028CAD 0A:8C9D: F6        .byte $F6, $17, $00, $F4   ; 
- D 0 - I - 0x028CB1 0A:8CA1: FD        .byte $FD, $57, $40, $08   ; 
@end:



_off002_8CA5_DC:
- D 0 - I - 0x028CB5 0A:8CA5: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028CB6 0A:8CA6: C2        .byte $C2, $01, $00, $05   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028CBA 0A:8CAA: D2        .byte $D2, $13, $00, $01   ; 
- D 0 - I - 0x028CBE 0A:8CAE: D2        .byte $D2, $15, $00, $09   ; 
- D 0 - I - 0x028CC2 0A:8CB2: D2        .byte $D2, $1B, $00, $11   ; 
- D 0 - I - 0x028CC6 0A:8CB6: E2        .byte $E2, $11, $40, $FC   ; 
- D 0 - I - 0x028CCA 0A:8CBA: E2        .byte $E2, $25, $00, $04   ; 
- D 0 - I - 0x028CCE 0A:8CBE: E2        .byte $E2, $27, $00, $0C   ; 
- D 0 - I - 0x028CD2 0A:8CC2: F2        .byte $F2, $43, $00, $FB   ; 
- D 0 - I - 0x028CD6 0A:8CC6: F2        .byte $F2, $45, $00, $05   ; 
@end:



_off002_8CCA_DD:
- D 0 - I - 0x028CDA 0A:8CCA: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028CDB 0A:8CCB: BF        .byte $BF, $1D, $00, $04   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028CDF 0A:8CCF: BF        .byte $BF, $1F, $00, $0C   ; 
- D 0 - I - 0x028CE3 0A:8CD3: C7        .byte $C7, $23, $00, $14   ; 
- D 0 - I - 0x028CE7 0A:8CD7: CF        .byte $CF, $13, $00, $04   ; 
- D 0 - I - 0x028CEB 0A:8CDB: CF        .byte $CF, $21, $00, $0C   ; 
- D 0 - I - 0x028CEF 0A:8CDF: DF        .byte $DF, $11, $40, $FF   ; 
- D 0 - I - 0x028CF3 0A:8CE3: DF        .byte $DF, $25, $00, $07   ; 
- D 0 - I - 0x028CF7 0A:8CE7: DF        .byte $DF, $27, $00, $0F   ; 
- D 0 - I - 0x028CFB 0A:8CEB: EF        .byte $EF, $4F, $00, $FD   ; 
- D 0 - I - 0x028CFF 0A:8CEF: EF        .byte $EF, $4B, $00, $02   ; 
- D 0 - I - 0x028D03 0A:8CF3: EF        .byte $EF, $4D, $00, $0A   ; 
@end:



_off002_8CF7_DE:
- D 0 - I - 0x028D07 0A:8CF7: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028D08 0A:8CF8: DC        .byte $DC, $1F, $00, $F4   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028D0C 0A:8CFC: DC        .byte $DC, $09, $00, $FC   ; 
- D 0 - I - 0x028D10 0A:8D00: DC        .byte $DC, $0B, $00, $04   ; 
- D 0 - I - 0x028D14 0A:8D04: EC        .byte $EC, $25, $00, $F3   ; 
- D 0 - I - 0x028D18 0A:8D08: EC        .byte $EC, $27, $00, $FB   ; 
- D 0 - I - 0x028D1C 0A:8D0C: F1        .byte $F1, $53, $00, $03   ; 
- D 0 - I - 0x028D20 0A:8D10: FC        .byte $FC, $61, $00, $F6   ; 
- D 0 - I - 0x028D24 0A:8D14: E1        .byte $E1, $21, $00, $0C   ; 
- D 0 - I - 0x028D28 0A:8D18: E1        .byte $E1, $23, $00, $14   ; 
- D 0 - I - 0x028D2C 0A:8D1C: EC        .byte $EC, $29, $00, $03   ; 
@end:



_off002_8D20_DF:
- D 0 - I - 0x028D30 0A:8D20: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028D31 0A:8D21: D1        .byte $D1, $01, $00, $ED   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028D35 0A:8D25: D1        .byte $D1, $03, $00, $F5   ; 
- D 0 - I - 0x028D39 0A:8D29: D1        .byte $D1, $09, $00, $FD   ; 
- D 0 - I - 0x028D3D 0A:8D2D: D1        .byte $D1, $0B, $00, $05   ; 
- D 0 - I - 0x028D41 0A:8D31: DA        .byte $DA, $0D, $00, $0D   ; 
- D 0 - I - 0x028D45 0A:8D35: DE        .byte $DE, $0F, $00, $15   ; 
- D 0 - I - 0x028D49 0A:8D39: E1        .byte $E1, $17, $00, $F2   ; 
- D 0 - I - 0x028D4D 0A:8D3D: E1        .byte $E1, $19, $00, $FA   ; 
- D 0 - I - 0x028D51 0A:8D41: E1        .byte $E1, $1B, $00, $02   ; 
- D 0 - I - 0x028D55 0A:8D45: F1        .byte $F1, $59, $00, $FB   ; 
- D 0 - I - 0x028D59 0A:8D49: F1        .byte $F1, $5B, $00, $03   ; 
@end:



_off002_8D4D_E0:
- D 0 - I - 0x028D5D 0A:8D4D: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028D5E 0A:8D4E: CE        .byte $CE, $1D, $00, $F2   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028D62 0A:8D52: CE        .byte $CE, $1F, $00, $FA   ; 
- D 0 - I - 0x028D66 0A:8D56: CE        .byte $CE, $21, $00, $02   ; 
- D 0 - I - 0x028D6A 0A:8D5A: CE        .byte $CE, $23, $00, $0A   ; 
- D 0 - I - 0x028D6E 0A:8D5E: DE        .byte $DE, $25, $00, $F4   ; 
- D 0 - I - 0x028D72 0A:8D62: DE        .byte $DE, $27, $00, $FC   ; 
- D 0 - I - 0x028D76 0A:8D66: DE        .byte $DE, $29, $00, $04   ; 
- D 0 - I - 0x028D7A 0A:8D6A: EE        .byte $EE, $2B, $00, $FC   ; 
- D 0 - I - 0x028D7E 0A:8D6E: EE        .byte $EE, $2D, $00, $04   ; 
@end:



_off002_8D72_E1:
- D 0 - I - 0x028D82 0A:8D72: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028D83 0A:8D73: C4        .byte $C4, $11, $00, $F0   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028D87 0A:8D77: C1        .byte $C1, $13, $00, $F8   ; 
- D 0 - I - 0x028D8B 0A:8D7B: D4        .byte $D4, $15, $00, $F0   ; 
- D 0 - I - 0x028D8F 0A:8D7F: D1        .byte $D1, $17, $00, $F8   ; 
- D 0 - I - 0x028D93 0A:8D83: D1        .byte $D1, $19, $00, $00   ; 
- D 0 - I - 0x028D97 0A:8D87: D1        .byte $D1, $1B, $00, $08   ; 
- D 0 - I - 0x028D9B 0A:8D8B: E1        .byte $E1, $1D, $00, $FB   ; 
- D 0 - I - 0x028D9F 0A:8D8F: E1        .byte $E1, $1F, $00, $03   ; 
- D 0 - I - 0x028DA3 0A:8D93: E1        .byte $E1, $21, $00, $0B   ; 
- D 0 - I - 0x028DA7 0A:8D97: E7        .byte $E7, $23, $00, $13   ; 
@end:



_off002_8D9B_E2:
- D 0 - I - 0x028DAB 0A:8D9B: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028DAC 0A:8D9C: D1        .byte $D1, $2F, $00, $FB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028DB0 0A:8DA0: CC        .byte $CC, $31, $00, $03   ; 
- D 0 - I - 0x028DB4 0A:8DA4: C9        .byte $C9, $33, $00, $0B   ; 
- D 0 - I - 0x028DB8 0A:8DA8: D1        .byte $D1, $35, $00, $13   ; 
- D 0 - I - 0x028DBC 0A:8DAC: E5        .byte $E5, $37, $00, $EB   ; 
- D 0 - I - 0x028DC0 0A:8DB0: DC        .byte $DC, $39, $00, $F3   ; 
- D 0 - I - 0x028DC4 0A:8DB4: E1        .byte $E1, $3B, $00, $FB   ; 
- D 0 - I - 0x028DC8 0A:8DB8: DC        .byte $DC, $3D, $00, $03   ; 
- D 0 - I - 0x028DCC 0A:8DBC: D9        .byte $D9, $3F, $00, $0B   ; 
@end:



_off002_8DC0_E3:
- D 0 - I - 0x028DD0 0A:8DC0: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028DD1 0A:8DC1: CF        .byte $CF, $01, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028DD5 0A:8DC5: CF        .byte $CF, $03, $00, $F3   ; 
- D 0 - I - 0x028DD9 0A:8DC9: DF        .byte $DF, $05, $00, $EB   ; 
- D 0 - I - 0x028DDD 0A:8DCD: DF        .byte $DF, $07, $00, $F3   ; 
- D 0 - I - 0x028DE1 0A:8DD1: D9        .byte $D9, $09, $00, $FB   ; 
- D 0 - I - 0x028DE5 0A:8DD5: E9        .byte $E9, $0B, $00, $FB   ; 
- D 0 - I - 0x028DE9 0A:8DD9: D8        .byte $D8, $0D, $00, $03   ; 
- D 0 - I - 0x028DED 0A:8DDD: E8        .byte $E8, $0F, $00, $03   ; 
- D 0 - I - 0x028DF1 0A:8DE1: D4        .byte $D4, $11, $00, $0B   ; 
- D 0 - I - 0x028DF5 0A:8DE5: D1        .byte $D1, $13, $00, $13   ; 
@end:



_off002_8DE9_E4:
- D 0 - I - 0x028DF9 0A:8DE9: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028DFA 0A:8DEA: D7        .byte $D7, $01, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028DFE 0A:8DEE: D7        .byte $D7, $03, $00, $F3   ; 
- D 0 - I - 0x028E02 0A:8DF2: E7        .byte $E7, $05, $00, $EB   ; 
- D 0 - I - 0x028E06 0A:8DF6: E7        .byte $E7, $07, $00, $F3   ; 
- D 0 - I - 0x028E0A 0A:8DFA: F1        .byte $F1, $0B, $00, $FB   ; 
- D 0 - I - 0x028E0E 0A:8DFE: F1        .byte $F1, $0F, $00, $03   ; 
- D 0 - I - 0x028E12 0A:8E02: E1        .byte $E1, $15, $00, $FB   ; 
- D 0 - I - 0x028E16 0A:8E06: E1        .byte $E1, $17, $00, $03   ; 
@end:



_off002_8E0A_E5:
- D 0 - I - 0x028E1A 0A:8E0A: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028E1B 0A:8E0B: DD        .byte $DD, $19, $02, $0A   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028E1F 0A:8E0F: DB        .byte $DB, $1B, $02, $12   ; 
@end:



_off000_0x028E23_04_casey:
- D 0 - I - 0x028E23 0A:8E13: C5 8E     .word _off003_8EC5_80
- D 0 - I - 0x028E25 0A:8E15: F2 8E     .word _off003_8EF2_81
- D 0 - I - 0x028E27 0A:8E17: 1F 8F     .word _off003_8F1F_82
- D 0 - I - 0x028E29 0A:8E19: 40 8F     .word _off003_8F40_83
- D 0 - I - 0x028E2B 0A:8E1B: 65 8F     .word _off003_8F65_84
- D 0 - I - 0x028E2D 0A:8E1D: 86 8F     .word _off003_8F86_85
- D 0 - I - 0x028E2F 0A:8E1F: AB 8F     .word _off003_8FAB_86
- D 0 - I - 0x028E31 0A:8E21: CC 8F     .word _off003_8FCC_87
- D 0 - I - 0x028E33 0A:8E23: F9 8F     .word _off003_8FF9_88
- D 0 - I - 0x028E35 0A:8E25: 2E 90     .word _off003_902E_89
- D 0 - I - 0x028E37 0A:8E27: 63 90     .word _off003_9063_8A
- D 0 - I - 0x028E39 0A:8E29: 94 90     .word _off003_9094_8B
- D 0 - I - 0x028E3B 0A:8E2B: C5 90     .word _off003_90C5_8C
- D 0 - I - 0x028E3D 0A:8E2D: F6 90     .word _off003_90F6_8D
- D 0 - I - 0x028E3F 0A:8E2F: 23 91     .word _off003_9123_8E
- D 0 - I - 0x028E41 0A:8E31: 54 91     .word _off003_9154_8F
- D 0 - I - 0x028E43 0A:8E33: 81 91     .word _off003_9181_90
- D 0 - I - 0x028E45 0A:8E35: BA 91     .word _off003_91BA_91
- D 0 - I - 0x028E47 0A:8E37: DF 91     .word _off003_91DF_92
- D 0 - I - 0x028E49 0A:8E39: 08 92     .word _off003_9208_93
- D 0 - I - 0x028E4B 0A:8E3B: 29 92     .word _off003_9229_94
- D 0 - I - 0x028E4D 0A:8E3D: 52 92     .word _off003_9252_95
- D 0 - I - 0x028E4F 0A:8E3F: 73 92     .word _off003_9273_96
- D 0 - I - 0x028E51 0A:8E41: 9C 92     .word _off003_929C_97
- D 0 - I - 0x028E53 0A:8E43: CD 92     .word _off003_92CD_98
- D 0 - I - 0x028E55 0A:8E45: FE 92     .word _off003_92FE_99
- D 0 - I - 0x028E57 0A:8E47: 2F 93     .word _off003_932F_9A
- D 0 - I - 0x028E59 0A:8E49: 54 93     .word _off003_9354_9B
- D 0 - I - 0x028E5B 0A:8E4B: 81 93     .word _off003_9381_9C
- D 0 - I - 0x028E5D 0A:8E4D: A6 93     .word _off003_93A6_9D
- D 0 - I - 0x028E5F 0A:8E4F: CF 93     .word _off003_93CF_9E
- D 0 - I - 0x028E61 0A:8E51: F8 93     .word _off003_93F8_9F
- - - - - - 0x028E63 0A:8E53: 29 94     .word _off003_9429_A0
- D 0 - I - 0x028E65 0A:8E55: 4A 94     .word _off003_944A_A1
- D 0 - I - 0x028E67 0A:8E57: 6F 94     .word _off003_946F_A2
- D 0 - I - 0x028E69 0A:8E59: 90 94     .word _off003_9490_A3
- D 0 - I - 0x028E6B 0A:8E5B: BD 94     .word _off003_94BD_A4
- D 0 - I - 0x028E6D 0A:8E5D: E2 94     .word _off003_94E2_A5
- - - - - - 0x028E6F 0A:8E5F: 07 95     .word _off003_9507_A6
- D 0 - I - 0x028E71 0A:8E61: 2C 95     .word _off003_952C_A7
- D 0 - I - 0x028E73 0A:8E63: 51 95     .word _off003_9551_A8
- D 0 - I - 0x028E75 0A:8E65: 72 95     .word _off003_9572_A9
- D 0 - I - 0x028E77 0A:8E67: 97 95     .word _off003_9597_AA
- D 0 - I - 0x028E79 0A:8E69: BC 95     .word _off003_95BC_AB
- D 0 - I - 0x028E7B 0A:8E6B: E1 95     .word _off003_95E1_AC
- D 0 - I - 0x028E7D 0A:8E6D: 0A 96     .word _off003_960A_AD
- D 0 - I - 0x028E7F 0A:8E6F: 3B 96     .word _off003_963B_AE
- D 0 - I - 0x028E81 0A:8E71: 68 96     .word _off003_9668_AF
- D 0 - I - 0x028E83 0A:8E73: 91 96     .word _off003_9691_B0
- D 0 - I - 0x028E85 0A:8E75: BE 96     .word _off003_96BE_B1
- D 0 - I - 0x028E87 0A:8E77: E3 96     .word _off003_96E3_B2
- D 0 - I - 0x028E89 0A:8E79: 08 97     .word _off003_9708_B3
- D 0 - I - 0x028E8B 0A:8E7B: 31 97     .word _off003_9731_B4
- D 0 - I - 0x028E8D 0A:8E7D: 56 97     .word _off003_9756_B5
- D 0 - I - 0x028E8F 0A:8E7F: 77 97     .word _off003_9777_B6
- D 0 - I - 0x028E91 0A:8E81: 80 97     .word _off003_9780_B7
- D 0 - I - 0x028E93 0A:8E83: 89 97     .word _off003_9789_B8
- D 0 - I - 0x028E95 0A:8E85: B2 97     .word _off003_97B2_B9
- D 0 - I - 0x028E97 0A:8E87: D7 97     .word _off003_97D7_BA
- D 0 - I - 0x028E99 0A:8E89: 00 98     .word _off003_9800_BB
- D 0 - I - 0x028E9B 0A:8E8B: 25 98     .word _off003_9825_BC
- D 0 - I - 0x028E9D 0A:8E8D: 46 98     .word _off003_9846_BD
- D 0 - I - 0x028E9F 0A:8E8F: 4B 98     .word _off003_984B_BE
- D 0 - I - 0x028EA1 0A:8E91: 54 98     .word _off003_9854_BF
- D 0 - I - 0x028EA3 0A:8E93: 6A 98     .word _off003_986A_C0
- D 0 - I - 0x028EA5 0A:8E95: 61 98     .word _off003_9861_C1
- D 0 - I - 0x028EA7 0A:8E97: 73 98     .word _off003_9873_C2
- D 0 - I - 0x028EA9 0A:8E99: 98 98     .word _off003_9898_C3
- D 0 - I - 0x028EAB 0A:8E9B: B9 98     .word _off003_98B9_C4
- D 0 - I - 0x028EAD 0A:8E9D: E2 98     .word _off003_98E2_C5
- D 0 - I - 0x028EAF 0A:8E9F: EB 98     .word _off003_98EB_C6
- D 0 - I - 0x028EB1 0A:8EA1: F4 98     .word _off003_98F4_C7
- D 0 - I - 0x028EB3 0A:8EA3: FD 98     .word _off003_98FD_C8
- D 0 - I - 0x028EB5 0A:8EA5: 1E 99     .word _off003_991E_C9
- D 0 - I - 0x028EB7 0A:8EA7: 2F 99     .word _off003_992F_CA
- D 0 - I - 0x028EB9 0A:8EA9: 50 99     .word _off003_9950_CB
- D 0 - I - 0x028EBB 0A:8EAB: 61 99     .word _off003_9961_CC
- D 0 - I - 0x028EBD 0A:8EAD: 8A 99     .word _off003_998A_CD
- D 0 - I - 0x028EBF 0A:8EAF: B3 99     .word _off003_99B3_CE
- D 0 - I - 0x028EC1 0A:8EB1: D8 99     .word _off003_99D8_CF
- D 0 - I - 0x028EC3 0A:8EB3: 01 9A     .word _off003_9A01_D0
- D 0 - I - 0x028EC5 0A:8EB5: 32 9A     .word _off003_9A32_D1
- D 0 - I - 0x028EC7 0A:8EB7: 5F 9A     .word _off003_9A5F_D2
- D 0 - I - 0x028EC9 0A:8EB9: 80 9A     .word _off003_9A80_D3
- D 0 - I - 0x028ECB 0A:8EBB: A1 9A     .word _off003_9AA1_D4
- D 0 - I - 0x028ECD 0A:8EBD: C6 9A     .word _off003_9AC6_D5
- D 0 - I - 0x028ECF 0A:8EBF: EB 9A     .word _off003_9AEB_D6
- D 0 - I - 0x028ED1 0A:8EC1: 0C 9B     .word _off003_9B0C_D7
- D 0 - I - 0x028ED3 0A:8EC3: 31 9B     .word _off003_9B31_D8



_off003_8EC5_80:
- D 0 - I - 0x028ED5 0A:8EC5: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028ED6 0A:8EC6: C1        .byte $C1, $01, $00, $F7   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028EDA 0A:8ECA: C1        .byte $C1, $03, $00, $FF   ; 
- D 0 - I - 0x028EDE 0A:8ECE: D1        .byte $D1, $05, $00, $F5   ; 
- D 0 - I - 0x028EE2 0A:8ED2: D1        .byte $D1, $07, $00, $FD   ; 
- D 0 - I - 0x028EE6 0A:8ED6: D1        .byte $D1, $09, $00, $05   ; 
- D 0 - I - 0x028EEA 0A:8EDA: E1        .byte $E1, $0B, $00, $F5   ; 
- D 0 - I - 0x028EEE 0A:8EDE: E1        .byte $E1, $0D, $00, $FD   ; 
- D 0 - I - 0x028EF2 0A:8EE2: E1        .byte $E1, $0F, $00, $05   ; 
- D 0 - I - 0x028EF6 0A:8EE6: F1        .byte $F1, $41, $00, $F4   ; 
- D 0 - I - 0x028EFA 0A:8EEA: F1        .byte $F1, $43, $00, $FC   ; 
- D 0 - I - 0x028EFE 0A:8EEE: F1        .byte $F1, $45, $00, $06   ; 
@end:



_off003_8EF2_81:
- D 0 - I - 0x028F02 0A:8EF2: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028F03 0A:8EF3: C0        .byte $C0, $01, $00, $F5   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028F07 0A:8EF7: C0        .byte $C0, $03, $00, $FD   ; 
- D 0 - I - 0x028F0B 0A:8EFB: D0        .byte $D0, $11, $00, $F4   ; 
- D 0 - I - 0x028F0F 0A:8EFF: D0        .byte $D0, $13, $00, $FC   ; 
- D 0 - I - 0x028F13 0A:8F03: D0        .byte $D0, $15, $00, $04   ; 
- D 0 - I - 0x028F17 0A:8F07: E0        .byte $E0, $0F, $40, $F5   ; 
- D 0 - I - 0x028F1B 0A:8F0B: E0        .byte $E0, $0D, $40, $FD   ; 
- D 0 - I - 0x028F1F 0A:8F0F: E0        .byte $E0, $0B, $40, $05   ; 
- D 0 - I - 0x028F23 0A:8F13: F0        .byte $F0, $47, $00, $F4   ; 
- D 0 - I - 0x028F27 0A:8F17: F0        .byte $F0, $43, $40, $FE   ; 
- D 0 - I - 0x028F2B 0A:8F1B: F0        .byte $F0, $49, $00, $06   ; 
@end:



_off003_8F1F_82:
- D 0 - I - 0x028F2F 0A:8F1F: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028F30 0A:8F20: BF        .byte $BF, $01, $00, $00   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028F34 0A:8F24: C8        .byte $C8, $03, $00, $08   ; 
- D 0 - I - 0x028F38 0A:8F28: CF        .byte $CF, $05, $00, $F8   ; 
- D 0 - I - 0x028F3C 0A:8F2C: CF        .byte $CF, $07, $00, $00   ; 
- D 0 - I - 0x028F40 0A:8F30: DF        .byte $DF, $09, $00, $F9   ; 
- D 0 - I - 0x028F44 0A:8F34: DF        .byte $DF, $0B, $00, $01   ; 
- D 0 - I - 0x028F48 0A:8F38: EF        .byte $EF, $35, $00, $FA   ; 
- D 0 - I - 0x028F4C 0A:8F3C: EF        .byte $EF, $37, $00, $02   ; 
@end:



_off003_8F40_83:
- D 0 - I - 0x028F50 0A:8F40: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028F51 0A:8F41: B9        .byte $B9, $0D, $00, $06   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028F55 0A:8F45: CF        .byte $CF, $0F, $00, $F9   ; 
- D 0 - I - 0x028F59 0A:8F49: C9        .byte $C9, $11, $00, $01   ; 
- D 0 - I - 0x028F5D 0A:8F4D: C9        .byte $C9, $13, $00, $09   ; 
- D 0 - I - 0x028F61 0A:8F51: DF        .byte $DF, $51, $00, $F1   ; 
- D 0 - I - 0x028F65 0A:8F55: DF        .byte $DF, $15, $00, $F9   ; 
- D 0 - I - 0x028F69 0A:8F59: D9        .byte $D9, $17, $00, $01   ; 
- D 0 - I - 0x028F6D 0A:8F5D: D9        .byte $D9, $19, $00, $09   ; 
- D 0 - I - 0x028F71 0A:8F61: E9        .byte $E9, $4F, $00, $07   ; 
@end:



_off003_8F65_84:
- D 0 - I - 0x028F75 0A:8F65: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028F76 0A:8F66: C0        .byte $C0, $01, $00, $00   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028F7A 0A:8F6A: C9        .byte $C9, $03, $00, $08   ; 
- D 0 - I - 0x028F7E 0A:8F6E: D0        .byte $D0, $1B, $00, $F8   ; 
- D 0 - I - 0x028F82 0A:8F72: D0        .byte $D0, $1D, $00, $00   ; 
- D 0 - I - 0x028F86 0A:8F76: E1        .byte $E1, $53, $00, $F3   ; 
- D 0 - I - 0x028F8A 0A:8F7A: E0        .byte $E0, $1F, $00, $FB   ; 
- D 0 - I - 0x028F8E 0A:8F7E: E0        .byte $E0, $21, $00, $03   ; 
- D 0 - I - 0x028F92 0A:8F82: F0        .byte $F0, $4F, $00, $03   ; 
@end:



_off003_8F86_85:
- D 0 - I - 0x028F96 0A:8F86: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028F97 0A:8F87: B9        .byte $B9, $0D, $00, $06   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028F9B 0A:8F8B: CF        .byte $CF, $25, $00, $F9   ; 
- D 0 - I - 0x028F9F 0A:8F8F: C9        .byte $C9, $23, $00, $01   ; 
- D 0 - I - 0x028FA3 0A:8F93: C9        .byte $C9, $13, $00, $09   ; 
- D 0 - I - 0x028FA7 0A:8F97: DF        .byte $DF, $51, $00, $F1   ; 
- D 0 - I - 0x028FAB 0A:8F9B: DF        .byte $DF, $27, $00, $F9   ; 
- D 0 - I - 0x028FAF 0A:8F9F: D9        .byte $D9, $29, $00, $01   ; 
- D 0 - I - 0x028FB3 0A:8FA3: D9        .byte $D9, $2B, $00, $09   ; 
- D 0 - I - 0x028FB7 0A:8FA7: E9        .byte $E9, $4F, $00, $07   ; 
@end:



_off003_8FAB_86:
- D 0 - I - 0x028FBB 0A:8FAB: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028FBC 0A:8FAC: C0        .byte $C0, $01, $00, $00   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028FC0 0A:8FB0: C9        .byte $C9, $03, $00, $08   ; 
- D 0 - I - 0x028FC4 0A:8FB4: D0        .byte $D0, $2D, $00, $F8   ; 
- D 0 - I - 0x028FC8 0A:8FB8: D0        .byte $D0, $2F, $00, $00   ; 
- D 0 - I - 0x028FCC 0A:8FBC: E1        .byte $E1, $53, $00, $F3   ; 
- D 0 - I - 0x028FD0 0A:8FC0: E0        .byte $E0, $31, $00, $FB   ; 
- D 0 - I - 0x028FD4 0A:8FC4: E0        .byte $E0, $33, $00, $03   ; 
- D 0 - I - 0x028FD8 0A:8FC8: F0        .byte $F0, $4F, $00, $03   ; 
@end:



_off003_8FCC_87:
- D 0 - I - 0x028FDC 0A:8FCC: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x028FDD 0A:8FCD: C1        .byte $C1, $01, $00, $F6   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x028FE1 0A:8FD1: C1        .byte $C1, $03, $00, $FE   ; 
- D 0 - I - 0x028FE5 0A:8FD5: D1        .byte $D1, $11, $00, $F4   ; 
- D 0 - I - 0x028FE9 0A:8FD9: D1        .byte $D1, $1B, $00, $FC   ; 
- D 0 - I - 0x028FED 0A:8FDD: D1        .byte $D1, $1D, $00, $04   ; 
- D 0 - I - 0x028FF1 0A:8FE1: E1        .byte $E1, $0B, $00, $F4   ; 
- D 0 - I - 0x028FF5 0A:8FE5: E1        .byte $E1, $0D, $00, $FC   ; 
- D 0 - I - 0x028FF9 0A:8FE9: E1        .byte $E1, $0F, $00, $04   ; 
- D 0 - I - 0x028FFD 0A:8FED: F1        .byte $F1, $41, $00, $F3   ; 
- D 0 - I - 0x029001 0A:8FF1: F1        .byte $F1, $43, $00, $FB   ; 
- D 0 - I - 0x029005 0A:8FF5: F1        .byte $F1, $45, $00, $05   ; 
@end:



_off003_8FF9_88:
- D 0 - I - 0x029009 0A:8FF9: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02900A 0A:8FFA: BF        .byte $BF, $01, $00, $FA   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02900E 0A:8FFE: BF        .byte $BF, $03, $00, $02   ; 
- D 0 - I - 0x029012 0A:9002: CF        .byte $CF, $05, $00, $F8   ; 
- D 0 - I - 0x029016 0A:9006: CF        .byte $CF, $1F, $00, $00   ; 
- D 0 - I - 0x02901A 0A:900A: CF        .byte $CF, $21, $00, $08   ; 
- D 0 - I - 0x02901E 0A:900E: CF        .byte $CF, $23, $00, $10   ; 
- D 0 - I - 0x029022 0A:9012: DF        .byte $DF, $19, $40, $FF   ; 
- D 0 - I - 0x029026 0A:9016: DF        .byte $DF, $17, $40, $07   ; 
- D 0 - I - 0x02902A 0A:901A: EF        .byte $EF, $43, $00, $FA   ; 
- D 0 - I - 0x02902E 0A:901E: EF        .byte $EF, $49, $40, $FB   ; 
- D 0 - I - 0x029032 0A:9022: EF        .byte $EF, $43, $00, $03   ; 
- D 0 - I - 0x029036 0A:9026: DF        .byte $DF, $0F, $40, $F7   ; 
- D 0 - I - 0x02903A 0A:902A: EF        .byte $EF, $41, $00, $F2   ; 
@end:



_off003_902E_89:
- D 0 - I - 0x02903E 0A:902E: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02903F 0A:902F: BF        .byte $BF, $01, $00, $FB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029043 0A:9033: BF        .byte $BF, $03, $00, $03   ; 
- D 0 - I - 0x029047 0A:9037: CF        .byte $CF, $05, $00, $F9   ; 
- D 0 - I - 0x02904B 0A:903B: CF        .byte $CF, $1F, $00, $01   ; 
- D 0 - I - 0x02904F 0A:903F: CF        .byte $CF, $21, $00, $09   ; 
- D 0 - I - 0x029053 0A:9043: CF        .byte $CF, $23, $00, $11   ; 
- D 0 - I - 0x029057 0A:9047: DF        .byte $DF, $0F, $40, $F9   ; 
- D 0 - I - 0x02905B 0A:904B: DF        .byte $DF, $19, $40, $01   ; 
- D 0 - I - 0x02905F 0A:904F: DF        .byte $DF, $17, $40, $09   ; 
- D 0 - I - 0x029063 0A:9053: EF        .byte $EF, $41, $00, $F4   ; 
- D 0 - I - 0x029067 0A:9057: EF        .byte $EF, $43, $00, $FC   ; 
- D 0 - I - 0x02906B 0A:905B: EF        .byte $EF, $49, $40, $FD   ; 
- D 0 - I - 0x02906F 0A:905F: EF        .byte $EF, $43, $00, $05   ; 
@end:



_off003_9063_8A:
- D 0 - I - 0x029073 0A:9063: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029074 0A:9064: C0        .byte $C0, $01, $00, $F7   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029078 0A:9068: C0        .byte $C0, $03, $00, $FF   ; 
- D 0 - I - 0x02907C 0A:906C: D0        .byte $D0, $05, $00, $F5   ; 
- D 0 - I - 0x029080 0A:9070: D0        .byte $D0, $1F, $00, $FD   ; 
- D 0 - I - 0x029084 0A:9074: D0        .byte $D0, $21, $00, $05   ; 
- D 0 - I - 0x029088 0A:9078: D0        .byte $D0, $23, $00, $0D   ; 
- D 0 - I - 0x02908C 0A:907C: E0        .byte $E0, $0B, $00, $F5   ; 
- D 0 - I - 0x029090 0A:9080: E0        .byte $E0, $0D, $00, $FD   ; 
- D 0 - I - 0x029094 0A:9084: E0        .byte $E0, $0F, $00, $05   ; 
- D 0 - I - 0x029098 0A:9088: F0        .byte $F0, $47, $00, $F8   ; 
- D 0 - I - 0x02909C 0A:908C: F0        .byte $F0, $41, $40, $0A   ; 
- D 0 - I - 0x0290A0 0A:9090: F0        .byte $F0, $43, $40, $02   ; 
@end:



_off003_9094_8B:
- D 0 - I - 0x0290A4 0A:9094: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0290A5 0A:9095: BF        .byte $BF, $01, $00, $F2   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0290A9 0A:9099: BF        .byte $BF, $03, $00, $FA   ; 
- D 0 - I - 0x0290AD 0A:909D: CF        .byte $CF, $11, $00, $F1   ; 
- D 0 - I - 0x0290B1 0A:90A1: CF        .byte $CF, $13, $00, $F9   ; 
- D 0 - I - 0x0290B5 0A:90A5: CF        .byte $CF, $15, $00, $01   ; 
- D 0 - I - 0x0290B9 0A:90A9: DF        .byte $DF, $17, $00, $F2   ; 
- D 0 - I - 0x0290BD 0A:90AD: DF        .byte $DF, $19, $00, $FA   ; 
- D 0 - I - 0x0290C1 0A:90B1: DF        .byte $DF, $0F, $00, $02   ; 
- D 0 - I - 0x0290C5 0A:90B5: EF        .byte $EF, $43, $40, $F6   ; 
- D 0 - I - 0x0290C9 0A:90B9: EF        .byte $EF, $49, $00, $FE   ; 
- D 0 - I - 0x0290CD 0A:90BD: EF        .byte $EF, $43, $40, $FF   ; 
- D 0 - I - 0x0290D1 0A:90C1: EF        .byte $EF, $41, $40, $07   ; 
@end:



_off003_90C5_8C:
- D 0 - I - 0x0290D5 0A:90C5: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0290D6 0A:90C6: BF        .byte $BF, $01, $00, $F1   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0290DA 0A:90CA: BF        .byte $BF, $03, $00, $F9   ; 
- D 0 - I - 0x0290DE 0A:90CE: CF        .byte $CF, $11, $00, $F0   ; 
- D 0 - I - 0x0290E2 0A:90D2: CF        .byte $CF, $13, $00, $F8   ; 
- D 0 - I - 0x0290E6 0A:90D6: CF        .byte $CF, $15, $00, $00   ; 
- D 0 - I - 0x0290EA 0A:90DA: DF        .byte $DF, $17, $00, $F0   ; 
- D 0 - I - 0x0290EE 0A:90DE: DF        .byte $DF, $19, $00, $F8   ; 
- D 0 - I - 0x0290F2 0A:90E2: DF        .byte $DF, $0F, $00, $00   ; 
- D 0 - I - 0x0290F6 0A:90E6: EF        .byte $EF, $43, $40, $F4   ; 
- D 0 - I - 0x0290FA 0A:90EA: EF        .byte $EF, $49, $00, $FC   ; 
- D 0 - I - 0x0290FE 0A:90EE: EF        .byte $EF, $43, $40, $FD   ; 
- D 0 - I - 0x029102 0A:90F2: EF        .byte $EF, $41, $40, $05   ; 
@end:



_off003_90F6_8D:
- D 0 - I - 0x029106 0A:90F6: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029107 0A:90F7: C0        .byte $C0, $01, $00, $F7   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02910B 0A:90FB: C0        .byte $C0, $03, $00, $FF   ; 
- D 0 - I - 0x02910F 0A:90FF: D0        .byte $D0, $05, $00, $F5   ; 
- D 0 - I - 0x029113 0A:9103: D0        .byte $D0, $07, $00, $FD   ; 
- D 0 - I - 0x029117 0A:9107: D0        .byte $D0, $09, $00, $05   ; 
- D 0 - I - 0x02911B 0A:910B: E0        .byte $E0, $0F, $40, $F5   ; 
- D 0 - I - 0x02911F 0A:910F: E0        .byte $E0, $0D, $40, $FD   ; 
- D 0 - I - 0x029123 0A:9113: E0        .byte $E0, $0B, $40, $05   ; 
- D 0 - I - 0x029127 0A:9117: F0        .byte $F0, $47, $00, $F4   ; 
- D 0 - I - 0x02912B 0A:911B: F0        .byte $F0, $43, $40, $FE   ; 
- D 0 - I - 0x02912F 0A:911F: F0        .byte $F0, $49, $00, $06   ; 
@end:



_off003_9123_8E:
- D 0 - I - 0x029133 0A:9123: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029134 0A:9124: C0        .byte $C0, $01, $00, $F9   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029138 0A:9128: C0        .byte $C0, $03, $00, $01   ; 
- D 0 - I - 0x02913C 0A:912C: D0        .byte $D0, $05, $00, $F5   ; 
- D 0 - I - 0x029140 0A:9130: D0        .byte $D0, $07, $00, $FD   ; 
- D 0 - I - 0x029144 0A:9134: D0        .byte $D0, $09, $00, $05   ; 
- D 0 - I - 0x029148 0A:9138: E0        .byte $E0, $0B, $00, $F5   ; 
- D 0 - I - 0x02914C 0A:913C: E0        .byte $E0, $0D, $00, $FD   ; 
- D 0 - I - 0x029150 0A:9140: E0        .byte $E0, $0F, $00, $05   ; 
- D 0 - I - 0x029154 0A:9144: F0        .byte $F0, $49, $40, $F2   ; 
- D 0 - I - 0x029158 0A:9148: F0        .byte $F0, $43, $00, $FA   ; 
- D 0 - I - 0x02915C 0A:914C: F0        .byte $F0, $43, $40, $01   ; 
- D 0 - I - 0x029160 0A:9150: F0        .byte $F0, $49, $00, $09   ; 
@end:



_off003_9154_8F:
- D 0 - I - 0x029164 0A:9154: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029165 0A:9155: C0        .byte $C0, $01, $00, $F6   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029169 0A:9159: C0        .byte $C0, $03, $00, $FE   ; 
- D 0 - I - 0x02916D 0A:915D: D0        .byte $D0, $11, $00, $F4   ; 
- D 0 - I - 0x029171 0A:9161: D0        .byte $D0, $1B, $00, $FC   ; 
- D 0 - I - 0x029175 0A:9165: D0        .byte $D0, $1D, $00, $04   ; 
- D 0 - I - 0x029179 0A:9169: E0        .byte $E0, $0F, $40, $F4   ; 
- D 0 - I - 0x02917D 0A:916D: E0        .byte $E0, $0D, $40, $FC   ; 
- D 0 - I - 0x029181 0A:9171: E0        .byte $E0, $0B, $40, $04   ; 
- D 0 - I - 0x029185 0A:9175: F0        .byte $F0, $47, $00, $F3   ; 
- D 0 - I - 0x029189 0A:9179: F0        .byte $F0, $43, $40, $FD   ; 
- D 0 - I - 0x02918D 0A:917D: F0        .byte $F0, $49, $00, $05   ; 
@end:



_off003_9181_90:
- D 0 - I - 0x029191 0A:9181: 0E        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029192 0A:9182: BF        .byte $BF, $01, $00, $FB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029196 0A:9186: BF        .byte $BF, $03, $00, $03   ; 
- D 0 - I - 0x02919A 0A:918A: CF        .byte $CF, $05, $00, $F9   ; 
- D 0 - I - 0x02919E 0A:918E: CF        .byte $CF, $1F, $00, $01   ; 
- D 0 - I - 0x0291A2 0A:9192: CF        .byte $CF, $25, $00, $09   ; 
- D 0 - I - 0x0291A6 0A:9196: C6        .byte $C6, $27, $00, $11   ; 
- D 0 - I - 0x0291AA 0A:919A: C6        .byte $C6, $29, $00, $19   ; 
- D 0 - I - 0x0291AE 0A:919E: DF        .byte $DF, $17, $40, $08   ; 
- D 0 - I - 0x0291B2 0A:91A2: DF        .byte $DF, $19, $40, $00   ; 
- D 0 - I - 0x0291B6 0A:91A6: DF        .byte $DF, $0F, $40, $F8   ; 
- D 0 - I - 0x0291BA 0A:91AA: EF        .byte $EF, $41, $00, $F3   ; 
- D 0 - I - 0x0291BE 0A:91AE: EF        .byte $EF, $43, $00, $FB   ; 
- D 0 - I - 0x0291C2 0A:91B2: EF        .byte $EF, $49, $40, $FC   ; 
- D 0 - I - 0x0291C6 0A:91B6: EF        .byte $EF, $43, $00, $04   ; 
@end:



_off003_91BA_91:
- D 0 - I - 0x0291CA 0A:91BA: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0291CB 0A:91BB: C0        .byte $C0, $01, $00, $FB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0291CF 0A:91BF: C0        .byte $C0, $03, $00, $03   ; 
- D 0 - I - 0x0291D3 0A:91C3: D0        .byte $D0, $05, $00, $F7   ; 
- D 0 - I - 0x0291D7 0A:91C7: D0        .byte $D0, $07, $00, $FF   ; 
- D 0 - I - 0x0291DB 0A:91CB: D0        .byte $D0, $09, $00, $07   ; 
- D 0 - I - 0x0291DF 0A:91CF: E0        .byte $E0, $1B, $00, $F5   ; 
- D 0 - I - 0x0291E3 0A:91D3: E0        .byte $E0, $1D, $00, $FD   ; 
- D 0 - I - 0x0291E7 0A:91D7: E0        .byte $E0, $59, $00, $05   ; 
- D 0 - I - 0x0291EB 0A:91DB: F0        .byte $F0, $1F, $00, $FA   ; 
@end:



_off003_91DF_92:
- D 0 - I - 0x0291EF 0A:91DF: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0291F0 0A:91E0: C0        .byte $C0, $19, $00, $FE   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0291F4 0A:91E4: C0        .byte $C0, $1B, $00, $06   ; 
- D 0 - I - 0x0291F8 0A:91E8: D0        .byte $D0, $1D, $00, $FB   ; 
- D 0 - I - 0x0291FC 0A:91EC: D0        .byte $D0, $1F, $00, $03   ; 
- D 0 - I - 0x029200 0A:91F0: D0        .byte $D0, $29, $00, $0B   ; 
- D 0 - I - 0x029204 0A:91F4: D7        .byte $D7, $2B, $00, $13   ; 
- D 0 - I - 0x029208 0A:91F8: E0        .byte $E0, $59, $40, $F5   ; 
- D 0 - I - 0x02920C 0A:91FC: E0        .byte $E0, $2D, $00, $FD   ; 
- D 0 - I - 0x029210 0A:9200: E0        .byte $E0, $2F, $00, $05   ; 
- D 0 - I - 0x029214 0A:9204: F0        .byte $F0, $31, $40, $00   ; 
@end:



_off003_9208_93:
- D 0 - I - 0x029218 0A:9208: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029219 0A:9209: D0        .byte $D0, $01, $00, $FB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02921D 0A:920D: D0        .byte $D0, $03, $00, $03   ; 
- D 0 - I - 0x029221 0A:9211: E0        .byte $E0, $05, $00, $F7   ; 
- D 0 - I - 0x029225 0A:9215: E0        .byte $E0, $07, $00, $FF   ; 
- D 0 - I - 0x029229 0A:9219: E0        .byte $E0, $09, $00, $07   ; 
- D 0 - I - 0x02922D 0A:921D: F0        .byte $F0, $55, $00, $F5   ; 
- D 0 - I - 0x029231 0A:9221: F0        .byte $F0, $57, $00, $FD   ; 
- D 0 - I - 0x029235 0A:9225: F0        .byte $F0, $59, $00, $05   ; 
@end:



_off003_9229_94:
- D 0 - I - 0x029239 0A:9229: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02923A 0A:922A: D0        .byte $D0, $19, $00, $F9   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02923E 0A:922E: D0        .byte $D0, $1B, $00, $01   ; 
- D 0 - I - 0x029242 0A:9232: E0        .byte $E0, $1D, $00, $F6   ; 
- D 0 - I - 0x029246 0A:9236: E0        .byte $E0, $1F, $00, $FE   ; 
- D 0 - I - 0x02924A 0A:923A: E0        .byte $E0, $23, $00, $06   ; 
- D 0 - I - 0x02924E 0A:923E: D9        .byte $D9, $25, $00, $0E   ; 
- D 0 - I - 0x029252 0A:9242: D9        .byte $D9, $27, $00, $16   ; 
- D 0 - I - 0x029256 0A:9246: F0        .byte $F0, $55, $00, $F5   ; 
- D 0 - I - 0x02925A 0A:924A: F0        .byte $F0, $57, $00, $FD   ; 
- D 0 - I - 0x02925E 0A:924E: F0        .byte $F0, $59, $00, $05   ; 
@end:



_off003_9252_95:
- D 0 - I - 0x029262 0A:9252: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029263 0A:9253: D0        .byte $D0, $01, $00, $FB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029267 0A:9257: D0        .byte $D0, $03, $00, $03   ; 
- D 0 - I - 0x02926B 0A:925B: E0        .byte $E0, $05, $00, $F9   ; 
- D 0 - I - 0x02926F 0A:925F: E0        .byte $E0, $07, $00, $01   ; 
- D 0 - I - 0x029273 0A:9263: E0        .byte $E0, $09, $00, $09   ; 
- D 0 - I - 0x029277 0A:9267: F0        .byte $F0, $49, $40, $F5   ; 
- D 0 - I - 0x02927B 0A:926B: F0        .byte $F0, $43, $00, $FD   ; 
- D 0 - I - 0x02927F 0A:926F: F0        .byte $F0, $47, $40, $07   ; 
@end:



_off003_9273_96:
- D 0 - I - 0x029283 0A:9273: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029284 0A:9274: C0        .byte $C0, $0B, $00, $09   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029288 0A:9278: D0        .byte $D0, $0D, $00, $FC   ; 
- D 0 - I - 0x02928C 0A:927C: D0        .byte $D0, $0F, $00, $04   ; 
- D 0 - I - 0x029290 0A:9280: D0        .byte $D0, $11, $00, $0C   ; 
- D 0 - I - 0x029294 0A:9284: C8        .byte $C8, $13, $00, $14   ; 
- D 0 - I - 0x029298 0A:9288: E0        .byte $E0, $15, $00, $FF   ; 
- D 0 - I - 0x02929C 0A:928C: E0        .byte $E0, $17, $00, $07   ; 
- D 0 - I - 0x0292A0 0A:9290: F0        .byte $F0, $4B, $00, $F9   ; 
- D 0 - I - 0x0292A4 0A:9294: F0        .byte $F0, $4D, $00, $01   ; 
- D 0 - I - 0x0292A8 0A:9298: F0        .byte $F0, $47, $40, $09   ; 
@end:



_off003_929C_97:
- D 0 - I - 0x0292AC 0A:929C: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0292AD 0A:929D: C0        .byte $C0, $01, $00, $FF   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0292B1 0A:92A1: C0        .byte $C0, $03, $00, $07   ; 
- D 0 - I - 0x0292B5 0A:92A5: D0        .byte $D0, $05, $00, $FD   ; 
- D 0 - I - 0x0292B9 0A:92A9: D0        .byte $D0, $1F, $00, $05   ; 
- D 0 - I - 0x0292BD 0A:92AD: D0        .byte $D0, $21, $00, $0D   ; 
- D 0 - I - 0x0292C1 0A:92B1: D0        .byte $D0, $23, $00, $15   ; 
- D 0 - I - 0x0292C5 0A:92B5: E0        .byte $E0, $0F, $40, $FD   ; 
- D 0 - I - 0x0292C9 0A:92B9: E0        .byte $E0, $0D, $40, $05   ; 
- D 0 - I - 0x0292CD 0A:92BD: E0        .byte $E0, $0B, $40, $0D   ; 
- D 0 - I - 0x0292D1 0A:92C1: F0        .byte $F0, $49, $40, $F8   ; 
- D 0 - I - 0x0292D5 0A:92C5: F0        .byte $F0, $43, $00, $00   ; 
- D 0 - I - 0x0292D9 0A:92C9: F0        .byte $F0, $47, $40, $0A   ; 
@end:



_off003_92CD_98:
- D 0 - I - 0x0292DD 0A:92CD: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0292DE 0A:92CE: C0        .byte $C0, $2B, $00, $FF   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0292E2 0A:92D2: C0        .byte $C0, $2D, $00, $07   ; 
- D 0 - I - 0x0292E6 0A:92D6: BE        .byte $BE, $3F, $00, $0E   ; 
- D 0 - I - 0x0292EA 0A:92DA: D0        .byte $D0, $2F, $00, $FF   ; 
- D 0 - I - 0x0292EE 0A:92DE: D0        .byte $D0, $3B, $00, $07   ; 
- D 0 - I - 0x0292F2 0A:92E2: CE        .byte $CE, $3D, $00, $0E   ; 
- D 0 - I - 0x0292F6 0A:92E6: E0        .byte $E0, $0F, $40, $FE   ; 
- D 0 - I - 0x0292FA 0A:92EA: E0        .byte $E0, $0D, $40, $06   ; 
- D 0 - I - 0x0292FE 0A:92EE: E0        .byte $E0, $0B, $40, $0E   ; 
- D 0 - I - 0x029302 0A:92F2: F0        .byte $F0, $49, $40, $F9   ; 
- D 0 - I - 0x029306 0A:92F6: F0        .byte $F0, $43, $00, $01   ; 
- D 0 - I - 0x02930A 0A:92FA: F0        .byte $F0, $47, $40, $0B   ; 
@end:



_off003_92FE_99:
- D 0 - I - 0x02930E 0A:92FE: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02930F 0A:92FF: BF        .byte $BF, $01, $00, $04   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029313 0A:9303: BF        .byte $BF, $03, $00, $0C   ; 
- D 0 - I - 0x029317 0A:9307: D6        .byte $D6, $29, $00, $F5   ; 
- D 0 - I - 0x02931B 0A:930B: CF        .byte $CF, $2B, $00, $FD   ; 
- D 0 - I - 0x02931F 0A:930F: CF        .byte $CF, $2D, $00, $05   ; 
- D 0 - I - 0x029323 0A:9313: CF        .byte $CF, $2F, $00, $0D   ; 
- D 0 - I - 0x029327 0A:9317: CE        .byte $CE, $31, $00, $15   ; 
- D 0 - I - 0x02932B 0A:931B: C7        .byte $C7, $27, $80, $1D   ; 
- D 0 - I - 0x02932F 0A:931F: EF        .byte $EF, $25, $00, $FA   ; 
- D 0 - I - 0x029333 0A:9323: EF        .byte $EF, $43, $00, $02   ; 
- D 0 - I - 0x029337 0A:9327: DF        .byte $DF, $33, $00, $00   ; 
- D 0 - I - 0x02933B 0A:932B: DF        .byte $DF, $35, $00, $08   ; 
@end:



_off003_932F_9A:
- D 0 - I - 0x02933F 0A:932F: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029340 0A:9330: C0        .byte $C0, $5D, $00, $F4   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029344 0A:9334: C0        .byte $C0, $5F, $00, $FC   ; 
- D 0 - I - 0x029348 0A:9338: D0        .byte $D0, $11, $00, $F4   ; 
- D 0 - I - 0x02934C 0A:933C: D0        .byte $D0, $13, $00, $FC   ; 
- D 0 - I - 0x029350 0A:9340: C8        .byte $C8, $15, $00, $04   ; 
- D 0 - I - 0x029354 0A:9344: E0        .byte $E0, $37, $00, $F5   ; 
- D 0 - I - 0x029358 0A:9348: E0        .byte $E0, $39, $00, $FD   ; 
- D 0 - I - 0x02935C 0A:934C: E0        .byte $E0, $59, $00, $05   ; 
- D 0 - I - 0x029360 0A:9350: F0        .byte $F0, $47, $00, $F5   ; 
@end:



_off003_9354_9B:
- D 0 - I - 0x029364 0A:9354: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029365 0A:9355: CB        .byte $CB, $01, $00, $F0   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029369 0A:9359: CB        .byte $CB, $03, $00, $F8   ; 
- D 0 - I - 0x02936D 0A:935D: CB        .byte $CB, $05, $00, $00   ; 
- D 0 - I - 0x029371 0A:9361: DB        .byte $DB, $07, $00, $F2   ; 
- D 0 - I - 0x029375 0A:9365: DB        .byte $DB, $09, $00, $FA   ; 
- D 0 - I - 0x029379 0A:9369: DB        .byte $DB, $19, $00, $02   ; 
- D 0 - I - 0x02937D 0A:936D: D8        .byte $D8, $1B, $00, $0A   ; 
- D 0 - I - 0x029381 0A:9371: D0        .byte $D0, $15, $80, $12   ; 
- D 0 - I - 0x029385 0A:9375: D4        .byte $D4, $17, $00, $1A   ; 
- D 0 - I - 0x029389 0A:9379: F1        .byte $F1, $41, $00, $F4   ; 
- D 0 - I - 0x02938D 0A:937D: EB        .byte $EB, $1D, $00, $F9   ; 
@end:



_off003_9381_9C:
- D 0 - I - 0x029391 0A:9381: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029392 0A:9382: C0        .byte $C0, $5D, $00, $F4   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029396 0A:9386: C0        .byte $C0, $5F, $00, $FC   ; 
- D 0 - I - 0x02939A 0A:938A: D0        .byte $D0, $11, $00, $F4   ; 
- D 0 - I - 0x02939E 0A:938E: D0        .byte $D0, $13, $00, $FC   ; 
- D 0 - I - 0x0293A2 0A:9392: C8        .byte $C8, $15, $00, $04   ; 
- D 0 - I - 0x0293A6 0A:9396: E0        .byte $E0, $1B, $00, $F5   ; 
- D 0 - I - 0x0293AA 0A:939A: E0        .byte $E0, $1D, $00, $FD   ; 
- D 0 - I - 0x0293AE 0A:939E: E0        .byte $E0, $59, $00, $05   ; 
- D 0 - I - 0x0293B2 0A:93A2: F0        .byte $F0, $1F, $00, $FA   ; 
@end:



_off003_93A6_9D:
- D 0 - I - 0x0293B6 0A:93A6: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0293B7 0A:93A7: C7        .byte $C7, $01, $00, $EF   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0293BB 0A:93AB: C7        .byte $C7, $03, $00, $F7   ; 
- D 0 - I - 0x0293BF 0A:93AF: C7        .byte $C7, $05, $00, $FF   ; 
- D 0 - I - 0x0293C3 0A:93B3: D7        .byte $D7, $07, $00, $F1   ; 
- D 0 - I - 0x0293C7 0A:93B7: D7        .byte $D7, $09, $00, $F9   ; 
- D 0 - I - 0x0293CB 0A:93BB: D7        .byte $D7, $0F, $00, $09   ; 
- D 0 - I - 0x0293CF 0A:93BF: DF        .byte $DF, $15, $00, $11   ; 
- D 0 - I - 0x0293D3 0A:93C3: E2        .byte $E2, $17, $00, $19   ; 
- D 0 - I - 0x0293D7 0A:93C7: E7        .byte $E7, $11, $00, $F8   ; 
- D 0 - I - 0x0293DB 0A:93CB: D7        .byte $D7, $0B, $00, $01   ; 
@end:



_off003_93CF_9E:
- D 0 - I - 0x0293DF 0A:93CF: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0293E0 0A:93D0: DA        .byte $DA, $01, $00, $ED   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0293E4 0A:93D4: DA        .byte $DA, $03, $00, $F5   ; 
- D 0 - I - 0x0293E8 0A:93D8: DA        .byte $DA, $05, $00, $FD   ; 
- D 0 - I - 0x0293EC 0A:93DC: EA        .byte $EA, $07, $00, $EF   ; 
- D 0 - I - 0x0293F0 0A:93E0: EA        .byte $EA, $09, $00, $F7   ; 
- D 0 - I - 0x0293F4 0A:93E4: EA        .byte $EA, $0D, $00, $FF   ; 
- D 0 - I - 0x0293F8 0A:93E8: EA        .byte $EA, $0F, $00, $07   ; 
- D 0 - I - 0x0293FC 0A:93EC: F2        .byte $F2, $15, $00, $0F   ; 
- D 0 - I - 0x029400 0A:93F0: F5        .byte $F5, $17, $00, $17   ; 
- D 0 - I - 0x029404 0A:93F4: FA        .byte $FA, $13, $00, $F6   ; 
@end:



_off003_93F8_9F:
- D 0 - I - 0x029408 0A:93F8: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029409 0A:93F9: C0        .byte $C0, $01, $00, $F9   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02940D 0A:93FD: C0        .byte $C0, $03, $00, $01   ; 
- D 0 - I - 0x029411 0A:9401: D0        .byte $D0, $05, $00, $F5   ; 
- D 0 - I - 0x029415 0A:9405: D0        .byte $D0, $17, $00, $FD   ; 
- D 0 - I - 0x029419 0A:9409: D0        .byte $D0, $19, $00, $05   ; 
- D 0 - I - 0x02941D 0A:940D: E0        .byte $E0, $0B, $00, $F5   ; 
- D 0 - I - 0x029421 0A:9411: E0        .byte $E0, $0D, $00, $FD   ; 
- D 0 - I - 0x029425 0A:9415: E0        .byte $E0, $0F, $00, $05   ; 
- D 0 - I - 0x029429 0A:9419: F0        .byte $F0, $49, $40, $F2   ; 
- D 0 - I - 0x02942D 0A:941D: F0        .byte $F0, $43, $00, $FA   ; 
- D 0 - I - 0x029431 0A:9421: F0        .byte $F0, $43, $40, $01   ; 
- D 0 - I - 0x029435 0A:9425: F0        .byte $F0, $49, $00, $09   ; 
@end:



_off003_9429_A0:
- - - - - - 0x029439 0A:9429: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- - - - - - 0x02943A 0A:942A: D0        .byte $D0, $5D, $00, $F4   ; spt_Y, spr_T, spr_A, spr_X
- - - - - - 0x02943E 0A:942E: D0        .byte $D0, $5F, $00, $FC   ; 
- - - - - - 0x029442 0A:9432: E0        .byte $E0, $11, $00, $F4   ; 
- - - - - - 0x029446 0A:9436: E0        .byte $E0, $13, $00, $FC   ; 
- - - - - - 0x02944A 0A:943A: D8        .byte $D8, $15, $00, $04   ; 
- - - - - - 0x02944E 0A:943E: F0        .byte $F0, $59, $40, $F2   ; 
- - - - - - 0x029452 0A:9442: F0        .byte $F0, $57, $40, $FA   ; 
- - - - - - 0x029456 0A:9446: F0        .byte $F0, $55, $40, $02   ; 
@end:



_off003_944A_A1:
- D 0 - I - 0x02945A 0A:944A: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02945B 0A:944B: C0        .byte $C0, $01, $00, $04   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02945F 0A:944F: C0        .byte $C0, $03, $00, $0C   ; 
- D 0 - I - 0x029463 0A:9453: D0        .byte $D0, $05, $00, $00   ; 
- D 0 - I - 0x029467 0A:9457: D0        .byte $D0, $07, $00, $08   ; 
- D 0 - I - 0x02946B 0A:945B: D0        .byte $D0, $09, $00, $10   ; 
- D 0 - I - 0x02946F 0A:945F: E0        .byte $E0, $21, $00, $00   ; 
- D 0 - I - 0x029473 0A:9463: E0        .byte $E0, $23, $00, $08   ; 
- D 0 - I - 0x029477 0A:9467: F0        .byte $F0, $25, $00, $F9   ; 
- D 0 - I - 0x02947B 0A:946B: F0        .byte $F0, $27, $00, $01   ; 
@end:



_off003_946F_A2:
- D 0 - I - 0x02947F 0A:946F: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029480 0A:9470: D0        .byte $D0, $19, $00, $F9   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029484 0A:9474: D0        .byte $D0, $1B, $00, $01   ; 
- D 0 - I - 0x029488 0A:9478: E0        .byte $E0, $1D, $00, $F6   ; 
- D 0 - I - 0x02948C 0A:947C: E0        .byte $E0, $1F, $00, $FE   ; 
- D 0 - I - 0x029490 0A:9480: E0        .byte $E0, $21, $00, $06   ; 
- D 0 - I - 0x029494 0A:9484: F0        .byte $F0, $55, $00, $F5   ; 
- D 0 - I - 0x029498 0A:9488: F0        .byte $F0, $57, $00, $FD   ; 
- D 0 - I - 0x02949C 0A:948C: F0        .byte $F0, $59, $00, $05   ; 
@end:



_off003_9490_A3:
- D 0 - I - 0x0294A0 0A:9490: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0294A1 0A:9491: BF        .byte $BF, $01, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0294A5 0A:9495: CF        .byte $CF, $03, $00, $E7   ; 
- D 0 - I - 0x0294A9 0A:9499: CF        .byte $CF, $05, $00, $EF   ; 
- D 0 - I - 0x0294AD 0A:949D: CF        .byte $CF, $07, $00, $F7   ; 
- D 0 - I - 0x0294B1 0A:94A1: CF        .byte $CF, $09, $00, $FF   ; 
- D 0 - I - 0x0294B5 0A:94A5: DF        .byte $DF, $0D, $00, $F2   ; 
- D 0 - I - 0x0294B9 0A:94A9: DF        .byte $DF, $0F, $00, $FA   ; 
- D 0 - I - 0x0294BD 0A:94AD: DF        .byte $DF, $11, $00, $02   ; 
- D 0 - I - 0x0294C1 0A:94B1: EF        .byte $EF, $49, $40, $F0   ; 
- D 0 - I - 0x0294C5 0A:94B5: EF        .byte $EF, $43, $00, $F8   ; 
- D 0 - I - 0x0294C9 0A:94B9: EF        .byte $EF, $4F, $00, $02   ; 
@end:



_off003_94BD_A4:
- D 0 - I - 0x0294CD 0A:94BD: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0294CE 0A:94BE: CD        .byte $CD, $19, $00, $F0   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0294D2 0A:94C2: CD        .byte $CD, $1B, $00, $F8   ; 
- D 0 - I - 0x0294D6 0A:94C6: CD        .byte $CD, $1D, $00, $00   ; 
- D 0 - I - 0x0294DA 0A:94CA: DD        .byte $DD, $1F, $00, $F1   ; 
- D 0 - I - 0x0294DE 0A:94CE: DD        .byte $DD, $21, $00, $F9   ; 
- D 0 - I - 0x0294E2 0A:94D2: DD        .byte $DD, $23, $00, $01   ; 
- D 0 - I - 0x0294E6 0A:94D6: ED        .byte $ED, $43, $40, $F0   ; 
- D 0 - I - 0x0294EA 0A:94DA: ED        .byte $ED, $49, $00, $F8   ; 
- D 0 - I - 0x0294EE 0A:94DE: ED        .byte $ED, $5B, $00, $00   ; 
@end:



_off003_94E2_A5:
- D 0 - I - 0x0294F2 0A:94E2: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0294F3 0A:94E3: E1        .byte $E1, $1D, $C0, $FA   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0294F7 0A:94E7: E1        .byte $E1, $1B, $C0, $02   ; 
- D 0 - I - 0x0294FB 0A:94EB: E1        .byte $E1, $19, $C0, $0A   ; 
- D 0 - I - 0x0294FF 0A:94EF: D1        .byte $D1, $23, $C0, $F9   ; 
- D 0 - I - 0x029503 0A:94F3: D1        .byte $D1, $21, $C0, $01   ; 
- D 0 - I - 0x029507 0A:94F7: D1        .byte $D1, $1F, $C0, $09   ; 
- D 0 - I - 0x02950B 0A:94FB: C1        .byte $C1, $43, $80, $0A   ; 
- D 0 - I - 0x02950F 0A:94FF: C1        .byte $C1, $49, $C0, $02   ; 
- D 0 - I - 0x029513 0A:9503: C1        .byte $C1, $5B, $C0, $FA   ; 
@end:



_off003_9507_A6:
- - - - - - 0x029517 0A:9507: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- - - - - - 0x029518 0A:9508: D7        .byte $D7, $5B, $C0, $FA   ; spt_Y, spr_T, spr_A, spr_X
- - - - - - 0x02951C 0A:950C: D7        .byte $D7, $5B, $C0, $04   ; 
- - - - - - 0x029520 0A:9510: E7        .byte $E7, $25, $00, $FA   ; 
- - - - - - 0x029524 0A:9514: E7        .byte $E7, $27, $00, $02   ; 
- - - - - - 0x029528 0A:9518: E7        .byte $E7, $29, $00, $0A   ; 
- - - - - - 0x02952C 0A:951C: F7        .byte $F7, $2B, $00, $FA   ; 
- - - - - - 0x029530 0A:9520: F7        .byte $F7, $2D, $00, $02   ; 
- - - - - - 0x029534 0A:9524: F7        .byte $F7, $2F, $00, $0A   ; 
- - - - - - 0x029538 0A:9528: F1        .byte $F1, $09, $80, $12   ; 
@end:



_off003_952C_A7:
- D 0 - I - 0x02953C 0A:952C: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02953D 0A:952D: E7        .byte $E7, $2D, $00, $EF   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029541 0A:9531: E7        .byte $E7, $2F, $00, $F7   ; 
- D 0 - I - 0x029545 0A:9535: E7        .byte $E7, $31, $00, $FF   ; 
- D 0 - I - 0x029549 0A:9539: F7        .byte $F7, $33, $00, $EF   ; 
- D 0 - I - 0x02954D 0A:953D: F7        .byte $F7, $35, $00, $F7   ; 
- D 0 - I - 0x029551 0A:9541: F7        .byte $F7, $37, $00, $FF   ; 
- D 0 - I - 0x029555 0A:9545: F1        .byte $F1, $39, $00, $07   ; 
- D 0 - I - 0x029559 0A:9549: F0        .byte $F0, $3B, $00, $0F   ; 
- D 0 - I - 0x02955D 0A:954D: F0        .byte $F0, $3D, $00, $17   ; 
@end:



_off003_9551_A8:
- D 0 - I - 0x029561 0A:9551: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029562 0A:9552: F3        .byte $F3, $31, $00, $ED   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029566 0A:9556: F2        .byte $F2, $33, $00, $F5   ; 
- D 0 - I - 0x02956A 0A:955A: F2        .byte $F2, $35, $00, $FD   ; 
- D 0 - I - 0x02956E 0A:955E: E7        .byte $E7, $37, $00, $05   ; 
- D 0 - I - 0x029572 0A:9562: E7        .byte $E7, $39, $00, $0D   ; 
- D 0 - I - 0x029576 0A:9566: F7        .byte $F7, $3B, $00, $05   ; 
- D 0 - I - 0x02957A 0A:956A: F7        .byte $F7, $3D, $00, $0D   ; 
- D 0 - I - 0x02957E 0A:956E: F2        .byte $F2, $3F, $00, $15   ; 
@end:



_off003_9572_A9:
- D 0 - I - 0x029582 0A:9572: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029583 0A:9573: CE        .byte $CE, $3D, $C0, $E6   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029587 0A:9577: CE        .byte $CE, $3B, $C0, $EE   ; 
- D 0 - I - 0x02958B 0A:957B: CD        .byte $CD, $39, $C0, $F6   ; 
- D 0 - I - 0x02958F 0A:957F: C7        .byte $C7, $37, $C0, $FE   ; 
- D 0 - I - 0x029593 0A:9583: C7        .byte $C7, $35, $C0, $06   ; 
- D 0 - I - 0x029597 0A:9587: C7        .byte $C7, $33, $C0, $0E   ; 
- D 0 - I - 0x02959B 0A:958B: D7        .byte $D7, $31, $C0, $FE   ; 
- D 0 - I - 0x02959F 0A:958F: D7        .byte $D7, $2F, $C0, $06   ; 
- D 0 - I - 0x0295A3 0A:9593: D7        .byte $D7, $2D, $C0, $0E   ; 
@end:



_off003_9597_AA:
- D 0 - I - 0x0295A7 0A:9597: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0295A8 0A:9598: C9        .byte $C9, $01, $00, $EF   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0295AC 0A:959C: D9        .byte $D9, $03, $00, $EB   ; 
- D 0 - I - 0x0295B0 0A:95A0: D9        .byte $D9, $07, $00, $FB   ; 
- D 0 - I - 0x0295B4 0A:95A4: D9        .byte $D9, $09, $00, $03   ; 
- D 0 - I - 0x0295B8 0A:95A8: E9        .byte $E9, $13, $00, $F4   ; 
- D 0 - I - 0x0295BC 0A:95AC: E9        .byte $E9, $15, $00, $FC   ; 
- D 0 - I - 0x0295C0 0A:95B0: E9        .byte $E9, $59, $00, $04   ; 
- D 0 - I - 0x0295C4 0A:95B4: F9        .byte $F9, $17, $00, $F9   ; 
- D 0 - I - 0x0295C8 0A:95B8: D9        .byte $D9, $0B, $00, $F3   ; 
@end:



_off003_95BC_AB:
- D 0 - I - 0x0295CC 0A:95BC: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0295CD 0A:95BD: CF        .byte $CF, $5D, $00, $F4   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0295D1 0A:95C1: CF        .byte $CF, $5F, $00, $FC   ; 
- D 0 - I - 0x0295D5 0A:95C5: D7        .byte $D7, $39, $00, $EC   ; 
- D 0 - I - 0x0295D9 0A:95C9: DF        .byte $DF, $3B, $00, $F4   ; 
- D 0 - I - 0x0295DD 0A:95CD: DF        .byte $DF, $3D, $00, $FC   ; 
- D 0 - I - 0x0295E1 0A:95D1: D7        .byte $D7, $3F, $00, $04   ; 
- D 0 - I - 0x0295E5 0A:95D5: EF        .byte $EF, $59, $40, $F2   ; 
- D 0 - I - 0x0295E9 0A:95D9: EF        .byte $EF, $57, $40, $FA   ; 
- D 0 - I - 0x0295ED 0A:95DD: EF        .byte $EF, $55, $40, $02   ; 
@end:



_off003_95E1_AC:
- D 0 - I - 0x0295F1 0A:95E1: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0295F2 0A:95E2: D2        .byte $D2, $1F, $00, $E5   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0295F6 0A:95E6: D6        .byte $D6, $21, $00, $ED   ; 
- D 0 - I - 0x0295FA 0A:95EA: D0        .byte $D0, $23, $00, $F5   ; 
- D 0 - I - 0x0295FE 0A:95EE: D0        .byte $D0, $25, $00, $FD   ; 
- D 0 - I - 0x029602 0A:95F2: E0        .byte $E0, $27, $00, $F5   ; 
- D 0 - I - 0x029606 0A:95F6: E0        .byte $E0, $29, $00, $FD   ; 
- D 0 - I - 0x02960A 0A:95FA: DF        .byte $DF, $2B, $00, $05   ; 
- D 0 - I - 0x02960E 0A:95FE: F0        .byte $F0, $41, $00, $F3   ; 
- D 0 - I - 0x029612 0A:9602: F0        .byte $F0, $43, $00, $FB   ; 
- D 0 - I - 0x029616 0A:9606: EF        .byte $EF, $4F, $00, $05   ; 
@end:



_off003_960A_AD:
- D 0 - I - 0x02961A 0A:960A: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02961B 0A:960B: BF        .byte $BF, $2B, $00, $F7   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02961F 0A:960F: BF        .byte $BF, $2D, $00, $FF   ; 
- D 0 - I - 0x029623 0A:9613: CF        .byte $CF, $2F, $00, $F7   ; 
- D 0 - I - 0x029627 0A:9617: CF        .byte $CF, $31, $00, $FF   ; 
- D 0 - I - 0x02962B 0A:961B: CF        .byte $CF, $33, $00, $07   ; 
- D 0 - I - 0x02962F 0A:961F: DF        .byte $DF, $0D, $40, $FF   ; 
- D 0 - I - 0x029633 0A:9623: DF        .byte $DF, $0B, $40, $07   ; 
- D 0 - I - 0x029637 0A:9627: EF        .byte $EF, $43, $00, $FA   ; 
- D 0 - I - 0x02963B 0A:962B: EF        .byte $EF, $47, $40, $04   ; 
- D 0 - I - 0x02963F 0A:962F: DF        .byte $DF, $0F, $40, $F7   ; 
- D 0 - I - 0x029643 0A:9633: EF        .byte $EF, $41, $00, $F2   ; 
- D 0 - I - 0x029647 0A:9637: DA        .byte $DA, $35, $00, $0F   ; 
@end:



_off003_963B_AE:
- D 0 - I - 0x02964B 0A:963B: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02964C 0A:963C: C7        .byte $C7, $15, $00, $E8   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029650 0A:9640: BF        .byte $BF, $17, $00, $F0   ; 
- D 0 - I - 0x029654 0A:9644: B7        .byte $B7, $19, $00, $F8   ; 
- D 0 - I - 0x029658 0A:9648: B7        .byte $B7, $1B, $00, $00   ; 
- D 0 - I - 0x02965C 0A:964C: C7        .byte $C7, $1D, $00, $F8   ; 
- D 0 - I - 0x029660 0A:9650: C7        .byte $C7, $1F, $00, $00   ; 
- D 0 - I - 0x029664 0A:9654: D7        .byte $D7, $21, $00, $FA   ; 
- D 0 - I - 0x029668 0A:9658: D7        .byte $D7, $23, $00, $02   ; 
- D 0 - I - 0x02966C 0A:965C: D7        .byte $D7, $59, $00, $0A   ; 
- D 0 - I - 0x029670 0A:9660: E7        .byte $E7, $4B, $00, $F3   ; 
- D 0 - I - 0x029674 0A:9664: E7        .byte $E7, $4D, $00, $FB   ; 
@end:



_off003_9668_AF:
- D 0 - I - 0x029678 0A:9668: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029679 0A:9669: C3        .byte $C3, $01, $00, $ED   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02967D 0A:966D: BF        .byte $BF, $03, $00, $F5   ; 
- D 0 - I - 0x029681 0A:9671: C5        .byte $C5, $05, $00, $FD   ; 
- D 0 - I - 0x029685 0A:9675: C7        .byte $C7, $0F, $00, $05   ; 
- D 0 - I - 0x029689 0A:9679: CB        .byte $CB, $11, $00, $0D   ; 
- D 0 - I - 0x02968D 0A:967D: D3        .byte $D3, $07, $00, $ED   ; 
- D 0 - I - 0x029691 0A:9681: CF        .byte $CF, $0B, $00, $F5   ; 
- D 0 - I - 0x029695 0A:9685: DF        .byte $DF, $0D, $00, $F5   ; 
- D 0 - I - 0x029699 0A:9689: DB        .byte $DB, $13, $00, $07   ; 
- D 0 - I - 0x02969D 0A:968D: DB        .byte $DB, $43, $00, $0F   ; 
@end:



_off003_9691_B0:
- D 0 - I - 0x0296A1 0A:9691: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0296A2 0A:9692: B7        .byte $B7, $4D, $C0, $F7   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0296A6 0A:9696: B7        .byte $B7, $4B, $C0, $FF   ; 
- D 0 - I - 0x0296AA 0A:969A: C7        .byte $C7, $59, $C0, $E8   ; 
- D 0 - I - 0x0296AE 0A:969E: C7        .byte $C7, $23, $C0, $F0   ; 
- D 0 - I - 0x0296B2 0A:96A2: C7        .byte $C7, $21, $C0, $F8   ; 
- D 0 - I - 0x0296B6 0A:96A6: D7        .byte $D7, $1F, $C0, $F2   ; 
- D 0 - I - 0x0296BA 0A:96AA: D7        .byte $D7, $1D, $C0, $FA   ; 
- D 0 - I - 0x0296BE 0A:96AE: E7        .byte $E7, $1B, $C0, $F2   ; 
- D 0 - I - 0x0296C2 0A:96B2: E7        .byte $E7, $19, $C0, $FA   ; 
- D 0 - I - 0x0296C6 0A:96B6: DF        .byte $DF, $17, $C0, $02   ; 
- D 0 - I - 0x0296CA 0A:96BA: D7        .byte $D7, $15, $C0, $0A   ; 
@end:



_off003_96BE_B1:
- D 0 - I - 0x0296CE 0A:96BE: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0296CF 0A:96BF: CD        .byte $CD, $09, $40, $EC   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0296D3 0A:96C3: C7        .byte $C7, $2B, $C0, $04   ; 
- D 0 - I - 0x0296D7 0A:96C7: C7        .byte $C7, $2D, $C0, $FC   ; 
- D 0 - I - 0x0296DB 0A:96CB: C7        .byte $C7, $2F, $C0, $F4   ; 
- D 0 - I - 0x0296DF 0A:96CF: D7        .byte $D7, $29, $C0, $F4   ; 
- D 0 - I - 0x0296E3 0A:96D3: D7        .byte $D7, $27, $C0, $FC   ; 
- D 0 - I - 0x0296E7 0A:96D7: D7        .byte $D7, $25, $C0, $04   ; 
- D 0 - I - 0x0296EB 0A:96DB: E7        .byte $E7, $5B, $00, $FA   ; 
- D 0 - I - 0x0296EF 0A:96DF: E7        .byte $E7, $5B, $00, $04   ; 
@end:



_off003_96E3_B2:
- D 0 - I - 0x0296F3 0A:96E3: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0296F4 0A:96E4: BF        .byte $BF, $0D, $00, $06   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0296F8 0A:96E8: D5        .byte $D5, $25, $00, $F9   ; 
- D 0 - I - 0x0296FC 0A:96EC: CF        .byte $CF, $23, $00, $01   ; 
- D 0 - I - 0x029700 0A:96F0: CF        .byte $CF, $13, $00, $09   ; 
- D 0 - I - 0x029704 0A:96F4: DF        .byte $DF, $2B, $00, $09   ; 
- D 0 - I - 0x029708 0A:96F8: E5        .byte $E5, $51, $00, $F1   ; 
- D 0 - I - 0x02970C 0A:96FC: E5        .byte $E5, $27, $00, $F9   ; 
- D 0 - I - 0x029710 0A:9700: EF        .byte $EF, $4F, $00, $07   ; 
- D 0 - I - 0x029714 0A:9704: DF        .byte $DF, $29, $00, $01   ; 
@end:



_off003_9708_B3:
- D 0 - I - 0x029718 0A:9708: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029719 0A:9709: C7        .byte $C7, $27, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02971D 0A:970D: BF        .byte $BF, $19, $00, $00   ; 
- D 0 - I - 0x029721 0A:9711: BF        .byte $BF, $1B, $00, $08   ; 
- D 0 - I - 0x029725 0A:9715: CF        .byte $CF, $1D, $00, $00   ; 
- D 0 - I - 0x029729 0A:9719: CF        .byte $CF, $1F, $00, $08   ; 
- D 0 - I - 0x02972D 0A:971D: DF        .byte $DF, $21, $00, $02   ; 
- D 0 - I - 0x029731 0A:9721: DF        .byte $DF, $29, $00, $0A   ; 
- D 0 - I - 0x029735 0A:9725: EF        .byte $EF, $13, $00, $FF   ; 
- D 0 - I - 0x029739 0A:9729: EF        .byte $EF, $43, $00, $07   ; 
- D 0 - I - 0x02973D 0A:972D: EF        .byte $EF, $4F, $00, $0B   ; 
@end:



_off003_9731_B4:
- D 0 - I - 0x029741 0A:9731: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029742 0A:9732: D7        .byte $D7, $01, $00, $ED   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029746 0A:9736: D3        .byte $D3, $03, $00, $F5   ; 
- D 0 - I - 0x02974A 0A:973A: D9        .byte $D9, $05, $00, $FD   ; 
- D 0 - I - 0x02974E 0A:973E: DB        .byte $DB, $0F, $00, $05   ; 
- D 0 - I - 0x029752 0A:9742: DF        .byte $DF, $11, $00, $0D   ; 
- D 0 - I - 0x029756 0A:9746: E7        .byte $E7, $09, $00, $ED   ; 
- D 0 - I - 0x02975A 0A:974A: EF        .byte $EF, $13, $00, $07   ; 
- D 0 - I - 0x02975E 0A:974E: EF        .byte $EF, $43, $00, $0F   ; 
- D 0 - I - 0x029762 0A:9752: E3        .byte $E3, $0B, $00, $F5   ; 
@end:



_off003_9756_B5:
- D 0 - I - 0x029766 0A:9756: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029767 0A:9757: EC        .byte $EC, $2B, $00, $ED   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02976B 0A:975B: E6        .byte $E6, $2D, $00, $F5   ; 
- D 0 - I - 0x02976F 0A:975F: E4        .byte $E4, $31, $00, $FD   ; 
- D 0 - I - 0x029773 0A:9763: F6        .byte $F6, $2F, $00, $F5   ; 
- D 0 - I - 0x029777 0A:9767: DF        .byte $DF, $33, $00, $05   ; 
- D 0 - I - 0x02977B 0A:976B: DF        .byte $DF, $35, $00, $0D   ; 
- D 0 - I - 0x02977F 0A:976F: EF        .byte $EF, $13, $00, $08   ; 
- D 0 - I - 0x029783 0A:9773: EF        .byte $EF, $43, $00, $10   ; 
@end:



_off003_9777_B6:
- D 0 - I - 0x029787 0A:9777: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029788 0A:9778: DC        .byte $DC, $37, $02, $16   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02978C 0A:977C: DF        .byte $DF, $39, $02, $1E   ; 
@end:



_off003_9780_B7:
- D 0 - I - 0x029790 0A:9780: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029791 0A:9781: B9        .byte $B9, $25, $02, $1D   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029795 0A:9785: C9        .byte $C9, $25, $82, $1D   ; 
@end:



_off003_9789_B8:
- D 0 - I - 0x029799 0A:9789: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02979A 0A:978A: C0        .byte $C0, $19, $00, $F9   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02979E 0A:978E: C0        .byte $C0, $1B, $00, $01   ; 
- D 0 - I - 0x0297A2 0A:9792: D0        .byte $D0, $33, $00, $F7   ; 
- D 0 - I - 0x0297A6 0A:9796: D0        .byte $D0, $35, $00, $FF   ; 
- D 0 - I - 0x0297AA 0A:979A: D0        .byte $D0, $37, $00, $07   ; 
- D 0 - I - 0x0297AE 0A:979E: E0        .byte $E0, $39, $00, $F4   ; 
- D 0 - I - 0x0297B2 0A:97A2: E0        .byte $E0, $3B, $00, $FC   ; 
- D 0 - I - 0x0297B6 0A:97A6: E0        .byte $E0, $2F, $00, $04   ; 
- D 0 - I - 0x0297BA 0A:97AA: F0        .byte $F0, $31, $00, $F8   ; 
- D 0 - I - 0x0297BE 0A:97AE: F0        .byte $F0, $31, $00, $01   ; 
@end:



_off003_97B2_B9:
- D 0 - I - 0x0297C2 0A:97B2: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0297C3 0A:97B3: D0        .byte $D0, $01, $00, $E5   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0297C7 0A:97B7: D0        .byte $D0, $03, $00, $ED   ; 
- D 0 - I - 0x0297CB 0A:97BB: D0        .byte $D0, $05, $00, $F5   ; 
- D 0 - I - 0x0297CF 0A:97BF: D0        .byte $D0, $07, $00, $FD   ; 
- D 0 - I - 0x0297D3 0A:97C3: E0        .byte $E0, $09, $00, $E7   ; 
- D 0 - I - 0x0297D7 0A:97C7: E0        .byte $E0, $0B, $00, $EF   ; 
- D 0 - I - 0x0297DB 0A:97CB: E0        .byte $E0, $0D, $00, $F7   ; 
- D 0 - I - 0x0297DF 0A:97CF: E0        .byte $E0, $0F, $00, $FF   ; 
- D 0 - I - 0x0297E3 0A:97D3: F0        .byte $F0, $47, $00, $F4   ; 
@end:



_off003_97D7_BA:
- D 0 - I - 0x0297E7 0A:97D7: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0297E8 0A:97D8: C0        .byte $C0, $11, $00, $F7   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0297EC 0A:97DC: C0        .byte $C0, $13, $00, $FF   ; 
- D 0 - I - 0x0297F0 0A:97E0: D0        .byte $D0, $15, $00, $FA   ; 
- D 0 - I - 0x0297F4 0A:97E4: D0        .byte $D0, $17, $00, $02   ; 
- D 0 - I - 0x0297F8 0A:97E8: E0        .byte $E0, $19, $00, $F9   ; 
- D 0 - I - 0x0297FC 0A:97EC: E0        .byte $E0, $1B, $00, $01   ; 
- D 0 - I - 0x029800 0A:97F0: E0        .byte $E0, $1D, $00, $09   ; 
- D 0 - I - 0x029804 0A:97F4: F0        .byte $F0, $49, $40, $F4   ; 
- D 0 - I - 0x029808 0A:97F8: F0        .byte $F0, $43, $00, $FC   ; 
- D 0 - I - 0x02980C 0A:97FC: F0        .byte $F0, $4F, $00, $07   ; 
@end:



_off003_9800_BB:
- D 0 - I - 0x029810 0A:9800: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029811 0A:9801: D6        .byte $D6, $1F, $00, $FD   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029815 0A:9805: D6        .byte $D6, $25, $00, $15   ; 
- D 0 - I - 0x029819 0A:9809: D0        .byte $D0, $23, $00, $0D   ; 
- D 0 - I - 0x02981D 0A:980D: D0        .byte $D0, $21, $00, $05   ; 
- D 0 - I - 0x029821 0A:9811: E6        .byte $E6, $51, $00, $F5   ; 
- D 0 - I - 0x029825 0A:9815: E6        .byte $E6, $27, $00, $FD   ; 
- D 0 - I - 0x029829 0A:9819: E0        .byte $E0, $29, $00, $05   ; 
- D 0 - I - 0x02982D 0A:981D: E0        .byte $E0, $1D, $00, $0D   ; 
- D 0 - I - 0x029831 0A:9821: F0        .byte $F0, $4F, $00, $0B   ; 
@end:



_off003_9825_BC:
- D 0 - I - 0x029835 0A:9825: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029836 0A:9826: D6        .byte $D6, $2B, $00, $FE   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02983A 0A:982A: D0        .byte $D0, $2D, $00, $06   ; 
- D 0 - I - 0x02983E 0A:982E: D0        .byte $D0, $2F, $00, $0E   ; 
- D 0 - I - 0x029842 0A:9832: E5        .byte $E5, $51, $00, $F6   ; 
- D 0 - I - 0x029846 0A:9836: E6        .byte $E6, $27, $00, $FE   ; 
- D 0 - I - 0x02984A 0A:983A: F0        .byte $F0, $4F, $00, $0B   ; 
- D 0 - I - 0x02984E 0A:983E: E0        .byte $E0, $31, $00, $06   ; 
- D 0 - I - 0x029852 0A:9842: E0        .byte $E0, $33, $00, $0E   ; 
@end:



_off003_9846_BD:
- D 0 - I - 0x029856 0A:9846: 01        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029857 0A:9847: EE        .byte $EE, $35, $03, $E9   ; spt_Y, spr_T, spr_A, spr_X
@end:



_off003_984B_BE:
- D 0 - I - 0x02985B 0A:984B: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02985C 0A:984C: C7        .byte $C7, $37, $03, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029860 0A:9850: C7        .byte $C7, $39, $03, $F3   ; 
@end:



_off003_9854_BF:
- D 0 - I - 0x029864 0A:9854: 03        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029865 0A:9855: C5        .byte $C5, $3B, $03, $08   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029869 0A:9859: C9        .byte $C9, $3D, $03, $10   ; 
- D 0 - I - 0x02986D 0A:985D: CD        .byte $CD, $3F, $03, $18   ; 
@end:



_off003_9861_C1:
- D 0 - I - 0x029871 0A:9861: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029872 0A:9862: F9        .byte $F9, $61, $03, $F9   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029876 0A:9866: F9        .byte $F9, $63, $03, $00   ; 
@end:



_off003_986A_C0:
- D 0 - I - 0x02987A 0A:986A: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02987B 0A:986B: F9        .byte $F9, $75, $03, $F9   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02987F 0A:986F: F9        .byte $F9, $77, $03, $00   ; 
@end:



_off003_9873_C2:
- D 0 - I - 0x029883 0A:9873: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029884 0A:9874: C8        .byte $C8, $01, $00, $FC   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029888 0A:9878: C8        .byte $C8, $03, $00, $04   ; 
- D 0 - I - 0x02988C 0A:987C: D0        .byte $D0, $05, $00, $0C   ; 
- D 0 - I - 0x029890 0A:9880: D8        .byte $D8, $07, $00, $FC   ; 
- D 0 - I - 0x029894 0A:9884: D8        .byte $D8, $09, $00, $04   ; 
- D 0 - I - 0x029898 0A:9888: E5        .byte $E5, $0B, $00, $F4   ; 
- D 0 - I - 0x02989C 0A:988C: E8        .byte $E8, $0D, $00, $FC   ; 
- D 0 - I - 0x0298A0 0A:9890: E8        .byte $E8, $0F, $00, $04   ; 
- D 0 - I - 0x0298A4 0A:9894: F8        .byte $F8, $11, $00, $FF   ; 
@end:



_off003_9898_C3:
- D 0 - I - 0x0298A8 0A:9898: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0298A9 0A:9899: C4        .byte $C4, $13, $00, $F3   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0298AD 0A:989D: C8        .byte $C8, $15, $00, $FB   ; 
- D 0 - I - 0x0298B1 0A:98A1: C8        .byte $C8, $17, $00, $03   ; 
- D 0 - I - 0x0298B5 0A:98A5: C8        .byte $C8, $19, $00, $0B   ; 
- D 0 - I - 0x0298B9 0A:98A9: D8        .byte $D8, $1B, $00, $00   ; 
- D 0 - I - 0x0298BD 0A:98AD: D8        .byte $D8, $1D, $00, $08   ; 
- D 0 - I - 0x0298C1 0A:98B1: E8        .byte $E8, $1F, $00, $FA   ; 
- D 0 - I - 0x0298C5 0A:98B5: E8        .byte $E8, $21, $00, $02   ; 
@end:



_off003_98B9_C4:
- D 0 - I - 0x0298C9 0A:98B9: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0298CA 0A:98BA: C0        .byte $C0, $23, $00, $FE   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0298CE 0A:98BE: C0        .byte $C0, $25, $00, $06   ; 
- D 0 - I - 0x0298D2 0A:98C2: D0        .byte $D0, $27, $00, $FD   ; 
- D 0 - I - 0x0298D6 0A:98C6: D0        .byte $D0, $29, $00, $05   ; 
- D 0 - I - 0x0298DA 0A:98CA: E0        .byte $E0, $2B, $00, $F5   ; 
- D 0 - I - 0x0298DE 0A:98CE: E0        .byte $E0, $2D, $00, $FD   ; 
- D 0 - I - 0x0298E2 0A:98D2: E0        .byte $E0, $2F, $00, $05   ; 
- D 0 - I - 0x0298E6 0A:98D6: F0        .byte $F0, $31, $00, $F5   ; 
- D 0 - I - 0x0298EA 0A:98DA: F0        .byte $F0, $33, $00, $FD   ; 
- D 0 - I - 0x0298EE 0A:98DE: F0        .byte $F0, $35, $00, $05   ; 
@end:



_off003_98E2_C5:
- D 0 - I - 0x0298F2 0A:98E2: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0298F3 0A:98E3: E4        .byte $E4, $3F, $03, $F5   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0298F7 0A:98E7: E3        .byte $E3, $75, $03, $ED   ; 
@end:



_off003_98EB_C6:
- D 0 - I - 0x0298FB 0A:98EB: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0298FC 0A:98EC: E1        .byte $E1, $75, $03, $FD   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029900 0A:98F0: E1        .byte $E1, $77, $03, $05   ; 
@end:



_off003_98F4_C7:
- D 0 - I - 0x029904 0A:98F4: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029905 0A:98F5: E8        .byte $E8, $73, $03, $13   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029909 0A:98F9: F0        .byte $F0, $73, $03, $10   ; 
@end:



_off003_98FD_C8:
- D 0 - I - 0x02990D 0A:98FD: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02990E 0A:98FE: E1        .byte $E1, $75, $03, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029912 0A:9902: E1        .byte $E1, $77, $03, $00   ; 
- D 0 - I - 0x029916 0A:9906: F1        .byte $F1, $75, $03, $FC   ; 
- D 0 - I - 0x02991A 0A:990A: F1        .byte $F1, $77, $03, $04   ; 
- D 0 - I - 0x02991E 0A:990E: 01        .byte $01, $75, $03, $F8   ; 
- D 0 - I - 0x029922 0A:9912: 01        .byte $01, $77, $03, $00   ; 
- D 0 - I - 0x029926 0A:9916: 11        .byte $11, $75, $03, $FC   ; 
- D 0 - I - 0x02992A 0A:991A: 11        .byte $11, $77, $03, $04   ; 
@end:



_off003_991E_C9:
- D 0 - I - 0x02992E 0A:991E: 04        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02992F 0A:991F: E2        .byte $E2, $73, $03, $12   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029933 0A:9923: F2        .byte $F2, $73, $03, $0D   ; 
- D 0 - I - 0x029937 0A:9927: 02        .byte $02, $73, $03, $12   ; 
- D 0 - I - 0x02993B 0A:992B: 12        .byte $12, $73, $03, $0D   ; 
@end:



_off003_992F_CA:
- D 0 - I - 0x02993F 0A:992F: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029940 0A:9930: E2        .byte $E2, $71, $03, $0E   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029944 0A:9934: F2        .byte $F2, $71, $03, $09   ; 
- D 0 - I - 0x029948 0A:9938: 02        .byte $02, $71, $03, $0E   ; 
- D 0 - I - 0x02994C 0A:993C: 12        .byte $12, $71, $03, $09   ; 
- D 0 - I - 0x029950 0A:9940: E2        .byte $E2, $71, $43, $EC   ; 
- D 0 - I - 0x029954 0A:9944: F2        .byte $F2, $71, $43, $F1   ; 
- D 0 - I - 0x029958 0A:9948: 02        .byte $02, $71, $43, $EC   ; 
- D 0 - I - 0x02995C 0A:994C: 12        .byte $12, $71, $43, $F1   ; 
@end:



_off003_9950_CB:
- D 0 - I - 0x029960 0A:9950: 04        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029961 0A:9951: E2        .byte $E2, $73, $43, $E6   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029965 0A:9955: F2        .byte $F2, $73, $43, $EB   ; 
- D 0 - I - 0x029969 0A:9959: 02        .byte $02, $73, $43, $E6   ; 
- D 0 - I - 0x02996D 0A:995D: 12        .byte $12, $73, $43, $EB   ; 
@end:



_off003_9961_CC:
- D 0 - I - 0x029971 0A:9961: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029972 0A:9962: C0        .byte $C0, $01, $00, $F7   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029976 0A:9966: D3        .byte $D3, $03, $00, $EB   ; 
- D 0 - I - 0x02997A 0A:996A: D0        .byte $D0, $05, $00, $F3   ; 
- D 0 - I - 0x02997E 0A:996E: D0        .byte $D0, $07, $00, $FB   ; 
- D 0 - I - 0x029982 0A:9972: E0        .byte $E0, $09, $00, $F3   ; 
- D 0 - I - 0x029986 0A:9976: E0        .byte $E0, $0B, $00, $FB   ; 
- D 0 - I - 0x02998A 0A:997A: E0        .byte $E0, $0D, $00, $03   ; 
- D 0 - I - 0x02998E 0A:997E: F0        .byte $F0, $49, $40, $F2   ; 
- D 0 - I - 0x029992 0A:9982: F0        .byte $F0, $43, $00, $FA   ; 
- D 0 - I - 0x029996 0A:9986: F0        .byte $F0, $47, $40, $03   ; 
@end:



_off003_998A_CD:
- D 0 - I - 0x02999A 0A:998A: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x02999B 0A:998B: D0        .byte $D0, $19, $00, $F3   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x02999F 0A:998F: D0        .byte $D0, $1B, $00, $FB   ; 
- D 0 - I - 0x0299A3 0A:9993: D0        .byte $D0, $1D, $00, $03   ; 
- D 0 - I - 0x0299A7 0A:9997: E0        .byte $E0, $1F, $00, $F0   ; 
- D 0 - I - 0x0299AB 0A:999B: E0        .byte $E0, $21, $00, $F8   ; 
- D 0 - I - 0x0299AF 0A:999F: E0        .byte $E0, $23, $00, $00   ; 
- D 0 - I - 0x0299B3 0A:99A3: F0        .byte $F0, $49, $40, $F0   ; 
- D 0 - I - 0x0299B7 0A:99A7: F0        .byte $F0, $43, $00, $F8   ; 
- D 0 - I - 0x0299BB 0A:99AB: F0        .byte $F0, $43, $40, $FC   ; 
- D 0 - I - 0x0299BF 0A:99AF: F0        .byte $F0, $49, $00, $04   ; 
@end:



_off003_99B3_CE:
- D 0 - I - 0x0299C3 0A:99B3: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0299C4 0A:99B4: D0        .byte $D0, $01, $00, $FA   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0299C8 0A:99B8: E0        .byte $E0, $05, $00, $F6   ; 
- D 0 - I - 0x0299CC 0A:99BC: E0        .byte $E0, $07, $00, $FE   ; 
- D 0 - I - 0x0299D0 0A:99C0: F0        .byte $F0, $0F, $00, $ED   ; 
- D 0 - I - 0x0299D4 0A:99C4: F0        .byte $F0, $11, $00, $F5   ; 
- D 0 - I - 0x0299D8 0A:99C8: F0        .byte $F0, $15, $00, $05   ; 
- D 0 - I - 0x0299DC 0A:99CC: F0        .byte $F0, $17, $00, $0D   ; 
- D 0 - I - 0x0299E0 0A:99D0: F0        .byte $F0, $13, $00, $FD   ; 
- D 0 - I - 0x0299E4 0A:99D4: E0        .byte $E0, $3B, $00, $EE   ; 
@end:



_off003_99D8_CF:
- D 0 - I - 0x0299E8 0A:99D8: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x0299E9 0A:99D9: C0        .byte $C0, $31, $80, $F5   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x0299ED 0A:99DD: C0        .byte $C0, $33, $80, $FD   ; 
- D 0 - I - 0x0299F1 0A:99E1: C0        .byte $C0, $35, $80, $05   ; 
- D 0 - I - 0x0299F5 0A:99E5: D0        .byte $D0, $2B, $80, $F5   ; 
- D 0 - I - 0x0299F9 0A:99E9: D0        .byte $D0, $2D, $80, $FD   ; 
- D 0 - I - 0x0299FD 0A:99ED: D0        .byte $D0, $2F, $80, $05   ; 
- D 0 - I - 0x029A01 0A:99F1: E0        .byte $E0, $27, $80, $FD   ; 
- D 0 - I - 0x029A05 0A:99F5: E0        .byte $E0, $29, $80, $05   ; 
- D 0 - I - 0x029A09 0A:99F9: F0        .byte $F0, $23, $80, $FE   ; 
- D 0 - I - 0x029A0D 0A:99FD: F0        .byte $F0, $25, $80, $06   ; 
@end:



_off003_9A01_D0:
- D 0 - I - 0x029A11 0A:9A01: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029A12 0A:9A02: C0        .byte $C0, $25, $00, $FC   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029A16 0A:9A06: C0        .byte $C0, $33, $00, $04   ; 
- D 0 - I - 0x029A1A 0A:9A0A: D0        .byte $D0, $35, $00, $FC   ; 
- D 0 - I - 0x029A1E 0A:9A0E: D0        .byte $D0, $37, $00, $04   ; 
- D 0 - I - 0x029A22 0A:9A12: C8        .byte $C8, $39, $00, $0C   ; 
- D 0 - I - 0x029A26 0A:9A16: E0        .byte $E0, $2D, $00, $FA   ; 
- D 0 - I - 0x029A2A 0A:9A1A: E0        .byte $E0, $2F, $00, $02   ; 
- D 0 - I - 0x029A2E 0A:9A1E: E0        .byte $E0, $31, $00, $0A   ; 
- D 0 - I - 0x029A32 0A:9A22: F0        .byte $F0, $49, $40, $F7   ; 
- D 0 - I - 0x029A36 0A:9A26: F0        .byte $F0, $43, $40, $06   ; 
- D 0 - I - 0x029A3A 0A:9A2A: F0        .byte $F0, $49, $00, $0E   ; 
- D 0 - I - 0x029A3E 0A:9A2E: F0        .byte $F0, $43, $00, $FF   ; 
@end:



_off003_9A32_D1:
- D 0 - I - 0x029A42 0A:9A32: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029A43 0A:9A33: C0        .byte $C0, $25, $00, $FB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029A47 0A:9A37: C0        .byte $C0, $27, $00, $03   ; 
- D 0 - I - 0x029A4B 0A:9A3B: D0        .byte $D0, $29, $00, $FB   ; 
- D 0 - I - 0x029A4F 0A:9A3F: D0        .byte $D0, $2B, $00, $03   ; 
- D 0 - I - 0x029A53 0A:9A43: E0        .byte $E0, $2D, $00, $F9   ; 
- D 0 - I - 0x029A57 0A:9A47: E0        .byte $E0, $2F, $00, $01   ; 
- D 0 - I - 0x029A5B 0A:9A4B: E0        .byte $E0, $31, $00, $09   ; 
- D 0 - I - 0x029A5F 0A:9A4F: F0        .byte $F0, $49, $00, $0D   ; 
- D 0 - I - 0x029A63 0A:9A53: F0        .byte $F0, $43, $00, $FE   ; 
- D 0 - I - 0x029A67 0A:9A57: F0        .byte $F0, $49, $40, $F6   ; 
- D 0 - I - 0x029A6B 0A:9A5B: F0        .byte $F0, $43, $40, $05   ; 
@end:



_off003_9A5F_D2:
- D 0 - I - 0x029A6F 0A:9A5F: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029A70 0A:9A60: CD        .byte $CD, $01, $00, $EC   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029A74 0A:9A64: CC        .byte $CC, $03, $00, $F4   ; 
- D 0 - I - 0x029A78 0A:9A68: DC        .byte $DC, $05, $00, $F4   ; 
- D 0 - I - 0x029A7C 0A:9A6C: D1        .byte $D1, $0F, $00, $FC   ; 
- D 0 - I - 0x029A80 0A:9A70: CB        .byte $CB, $07, $00, $04   ; 
- D 0 - I - 0x029A84 0A:9A74: E1        .byte $E1, $09, $00, $FC   ; 
- D 0 - I - 0x029A88 0A:9A78: DB        .byte $DB, $0B, $00, $04   ; 
- D 0 - I - 0x029A8C 0A:9A7C: DE        .byte $DE, $0D, $00, $0C   ; 
@end:



_off003_9A80_D3:
- D 0 - I - 0x029A90 0A:9A80: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029A91 0A:9A81: D0        .byte $D0, $01, $00, $EC   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029A95 0A:9A85: CF        .byte $CF, $03, $00, $F4   ; 
- D 0 - I - 0x029A99 0A:9A89: DF        .byte $DF, $05, $00, $F4   ; 
- D 0 - I - 0x029A9D 0A:9A8D: D4        .byte $D4, $0F, $00, $FC   ; 
- D 0 - I - 0x029AA1 0A:9A91: CE        .byte $CE, $11, $00, $04   ; 
- D 0 - I - 0x029AA5 0A:9A95: DE        .byte $DE, $0B, $00, $04   ; 
- D 0 - I - 0x029AA9 0A:9A99: CA        .byte $CA, $13, $00, $0C   ; 
- D 0 - I - 0x029AAD 0A:9A9D: E1        .byte $E1, $0D, $00, $0C   ; 
@end:



_off003_9AA1_D4:
- D 0 - I - 0x029AB1 0A:9AA1: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029AB2 0A:9AA2: D2        .byte $D2, $01, $00, $EC   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029AB6 0A:9AA6: D1        .byte $D1, $03, $00, $F4   ; 
- D 0 - I - 0x029ABA 0A:9AAA: E1        .byte $E1, $1B, $00, $F4   ; 
- D 0 - I - 0x029ABE 0A:9AAE: D3        .byte $D3, $17, $00, $FC   ; 
- D 0 - I - 0x029AC2 0A:9AB2: E3        .byte $E3, $1D, $00, $FC   ; 
- D 0 - I - 0x029AC6 0A:9AB6: CD        .byte $CD, $19, $00, $04   ; 
- D 0 - I - 0x029ACA 0A:9ABA: DD        .byte $DD, $0B, $00, $04   ; 
- D 0 - I - 0x029ACE 0A:9ABE: E0        .byte $E0, $0D, $00, $0C   ; 
- D 0 - I - 0x029AD2 0A:9AC2: BD        .byte $BD, $15, $00, $05   ; 
@end:



_off003_9AC6_D5:
- D 0 - I - 0x029AD6 0A:9AC6: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029AD7 0A:9AC7: E5        .byte $E5, $01, $00, $EC   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029ADB 0A:9ACB: E4        .byte $E4, $03, $00, $F4   ; 
- D 0 - I - 0x029ADF 0A:9ACF: F4        .byte $F4, $1B, $00, $F4   ; 
- D 0 - I - 0x029AE3 0A:9AD3: E6        .byte $E6, $17, $00, $FC   ; 
- D 0 - I - 0x029AE7 0A:9AD7: F6        .byte $F6, $1D, $00, $FC   ; 
- D 0 - I - 0x029AEB 0A:9ADB: E0        .byte $E0, $19, $00, $04   ; 
- D 0 - I - 0x029AEF 0A:9ADF: D0        .byte $D0, $15, $00, $05   ; 
- D 0 - I - 0x029AF3 0A:9AE3: F3        .byte $F3, $0D, $00, $0C   ; 
- D 0 - I - 0x029AF7 0A:9AE7: F0        .byte $F0, $0B, $00, $04   ; 
@end:



_off003_9AEB_D6:
- D 0 - I - 0x029AFB 0A:9AEB: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029AFC 0A:9AEC: D1        .byte $D1, $0D, $C0, $EF   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029B00 0A:9AF0: D4        .byte $D4, $0B, $C0, $F7   ; 
- D 0 - I - 0x029B04 0A:9AF4: E8        .byte $E8, $13, $C0, $EF   ; 
- D 0 - I - 0x029B08 0A:9AF8: E4        .byte $E4, $11, $C0, $F7   ; 
- D 0 - I - 0x029B0C 0A:9AFC: DE        .byte $DE, $0F, $C0, $FF   ; 
- D 0 - I - 0x029B10 0A:9B00: D3        .byte $D3, $05, $C0, $07   ; 
- D 0 - I - 0x029B14 0A:9B04: E3        .byte $E3, $03, $C0, $07   ; 
- D 0 - I - 0x029B18 0A:9B08: E2        .byte $E2, $01, $C0, $0F   ; 
@end:



_off003_9B0C_D7:
- D 0 - I - 0x029B1C 0A:9B0C: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029B1D 0A:9B0D: D0        .byte $D0, $05, $40, $F6   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029B21 0A:9B11: C8        .byte $C8, $03, $40, $FE   ; 
- D 0 - I - 0x029B25 0A:9B15: C8        .byte $C8, $01, $40, $06   ; 
- D 0 - I - 0x029B29 0A:9B19: D8        .byte $D8, $07, $40, $06   ; 
- D 0 - I - 0x029B2D 0A:9B1D: D8        .byte $D8, $09, $40, $FE   ; 
- D 0 - I - 0x029B31 0A:9B21: E8        .byte $E8, $0F, $40, $FE   ; 
- D 0 - I - 0x029B35 0A:9B25: E8        .byte $E8, $0D, $40, $06   ; 
- D 0 - I - 0x029B39 0A:9B29: E5        .byte $E5, $0B, $40, $0E   ; 
- D 0 - I - 0x029B3D 0A:9B2D: F8        .byte $F8, $11, $40, $03   ; 
@end:



_off003_9B31_D8:
- D 0 - I - 0x029B41 0A:9B31: 08        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029B42 0A:9B32: D1        .byte $D1, $0D, $80, $13   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029B46 0A:9B36: D4        .byte $D4, $0B, $80, $0B   ; 
- D 0 - I - 0x029B4A 0A:9B3A: E8        .byte $E8, $13, $80, $13   ; 
- D 0 - I - 0x029B4E 0A:9B3E: E4        .byte $E4, $11, $80, $0B   ; 
- D 0 - I - 0x029B52 0A:9B42: DE        .byte $DE, $0F, $80, $03   ; 
- D 0 - I - 0x029B56 0A:9B46: D3        .byte $D3, $05, $80, $FB   ; 
- D 0 - I - 0x029B5A 0A:9B4A: E3        .byte $E3, $03, $80, $FB   ; 
- D 0 - I - 0x029B5E 0A:9B4E: E2        .byte $E2, $01, $80, $F3   ; 
@end:



_off000_0x029B62_05_hot:
- D 0 - I - 0x029B62 0A:9B52: DC 9B     .word _off004_9BDC_80
- D 0 - I - 0x029B64 0A:9B54: 31 9C     .word _off004_9C31_81
- D 0 - I - 0x029B66 0A:9B56: 86 9C     .word _off004_9C86_82
- D 0 - I - 0x029B68 0A:9B58: DF 9C     .word _off004_9CDF_83
- D 0 - I - 0x029B6A 0A:9B5A: 38 9D     .word _off004_9D38_84
- D 0 - I - 0x029B6C 0A:9B5C: 8D 9D     .word _off004_9D8D_85
- D 0 - I - 0x029B6E 0A:9B5E: D6 9D     .word _off004_9DD6_86
- D 0 - I - 0x029B70 0A:9B60: 27 9E     .word _off004_9E27_87
- D 0 - I - 0x029B72 0A:9B62: 78 9E     .word _off004_9E78_88
- D 0 - I - 0x029B74 0A:9B64: CD 9E     .word _off004_9ECD_89
- D 0 - I - 0x029B76 0A:9B66: 16 9F     .word _off004_9F16_8A
- D 0 - I - 0x029B78 0A:9B68: 67 9F     .word _off004_9F67_8B
- D 0 - I - 0x029B7A 0A:9B6A: C0 9F     .word _off004_9FC0_8C
- D 0 - I - 0x029B7C 0A:9B6C: 19 A0     .word _off004_A019_8D
- D 0 - I - 0x029B7E 0A:9B6E: 72 A0     .word _off004_A072_8E
- - - - - - 0x029B80 0A:9B70: CB A0     .word _off004_A0CB_8F
- D 0 - I - 0x029B82 0A:9B72: 24 A1     .word _off004_A124_90
- D 0 - I - 0x029B84 0A:9B74: 81 A1     .word _off004_A181_91
- D 0 - I - 0x029B86 0A:9B76: D2 A1     .word _off004_A1D2_92
- D 0 - I - 0x029B88 0A:9B78: 1B A2     .word _off004_A21B_93
- D 0 - I - 0x029B8A 0A:9B7A: 64 A2     .word _off004_A264_94
- D 0 - I - 0x029B8C 0A:9B7C: B5 A2     .word _off004_A2B5_95
- D 0 - I - 0x029B8E 0A:9B7E: 0E A3     .word _off004_A30E_96
- D 0 - I - 0x029B90 0A:9B80: 67 A3     .word _off004_A367_97
- D 0 - I - 0x029B92 0A:9B82: B0 A3     .word _off004_A3B0_98
- D 0 - I - 0x029B94 0A:9B84: 05 A4     .word _off004_A405_99
- D 0 - I - 0x029B96 0A:9B86: 52 A4     .word _off004_A452_9A
- D 0 - I - 0x029B98 0A:9B88: A7 A4     .word _off004_A4A7_9B
- D 0 - I - 0x029B9A 0A:9B8A: EC A4     .word _off004_A4EC_9C
- D 0 - I - 0x029B9C 0A:9B8C: 41 A5     .word _off004_A541_9D
- D 0 - I - 0x029B9E 0A:9B8E: 8A A5     .word _off004_A58A_9E
- D 0 - I - 0x029BA0 0A:9B90: DB A5     .word _off004_A5DB_9F
- D 0 - I - 0x029BA2 0A:9B92: 30 A6     .word _off004_A630_A0
- D 0 - I - 0x029BA4 0A:9B94: 85 A6     .word _off004_A685_A1
- D 0 - I - 0x029BA6 0A:9B96: CA A6     .word _off004_A6CA_A2
- D 0 - I - 0x029BA8 0A:9B98: 03 A7     .word _off004_A703_A3
- - - - - - 0x029BAA 0A:9B9A: 48 A7     .word _off004_A748_A4
- D 0 - I - 0x029BAC 0A:9B9C: 89 A7     .word _off004_A789_A5
- - - - - - 0x029BAE 0A:9B9E: CE A7     .word _off004_A7CE_A6
- - - - - - 0x029BB0 0A:9BA0: D3 A7     .word _off004_A7D3_A7
- - - - - - 0x029BB2 0A:9BA2: DC A7     .word _off004_A7DC_A8
- - - - - - 0x029BB4 0A:9BA4: E5 A7     .word _off004_A7E5_A9
- D 0 - I - 0x029BB6 0A:9BA6: EE A7     .word _off004_A7EE_AA
- D 0 - I - 0x029BB8 0A:9BA8: F3 A7     .word _off004_A7F3_AB
- D 0 - I - 0x029BBA 0A:9BAA: FC A7     .word _off004_A7FC_AC
- D 0 - I - 0x029BBC 0A:9BAC: 15 A8     .word _off004_A815_AD
- D 0 - I - 0x029BBE 0A:9BAE: 2A A8     .word _off004_A82A_AE
- D 0 - I - 0x029BC0 0A:9BB0: 2F A8     .word _off004_A82F_AF
- D 0 - I - 0x029BC2 0A:9BB2: 84 A8     .word _off004_A884_B0
- D 0 - I - 0x029BC4 0A:9BB4: D5 A8     .word _off004_A8D5_B1
- D 0 - I - 0x029BC6 0A:9BB6: 26 A9     .word _off004_A926_B2
- D 0 - I - 0x029BC8 0A:9BB8: 6F A9     .word _off004_A96F_B3
- D 0 - I - 0x029BCA 0A:9BBA: C0 A9     .word _off004_A9C0_B4
- D 0 - I - 0x029BCC 0A:9BBC: 09 AA     .word _off004_AA09_B5
- D 0 - I - 0x029BCE 0A:9BBE: 62 AA     .word _off004_AA62_B6
- D 0 - I - 0x029BD0 0A:9BC0: C3 AA     .word _off004_AAC3_B7
- D 0 - I - 0x029BD2 0A:9BC2: 1C AB     .word _off004_AB1C_B8
- D 0 - I - 0x029BD4 0A:9BC4: 75 AB     .word _off004_AB75_B9
- D 0 - I - 0x029BD6 0A:9BC6: C6 AB     .word _off004_ABC6_BA
- D 0 - I - 0x029BD8 0A:9BC8: 13 AC     .word _off004_AC13_BB
- D 0 - I - 0x029BDA 0A:9BCA: 4C AC     .word _off004_AC4C_BC
- D 0 - I - 0x029BDC 0A:9BCC: B1 AC     .word _off004_ACB1_BD
- D 0 - I - 0x029BDE 0A:9BCE: 26 AD     .word _off004_AD26_BE
- D 0 - I - 0x029BE0 0A:9BD0: 93 AD     .word _off004_AD93_BF
- D 0 - I - 0x029BE2 0A:9BD2: 00 AE     .word _off004_AE00_C0
- D 0 - I - 0x029BE4 0A:9BD4: 09 AE     .word _off004_AE09_C1
- D 0 - I - 0x029BE6 0A:9BD6: 12 AE     .word _off004_AE12_C2
- D 0 - I - 0x029BE8 0A:9BD8: 1B AE     .word _off004_AE1B_C3
- D 0 - I - 0x029BEA 0A:9BDA: 70 AE     .word _off004_AE70_C4



_off004_9BDC_80:
- D 0 - I - 0x029BEC 0A:9BDC: 15        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029BED 0A:9BDD: B1        .byte $B1, $01, $00, $FD   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029BF1 0A:9BE1: B1        .byte $B1, $01, $40, $05   ; 
- D 0 - I - 0x029BF5 0A:9BE5: C1        .byte $C1, $03, $00, $F3   ; 
- D 0 - I - 0x029BF9 0A:9BE9: C1        .byte $C1, $05, $00, $FB   ; 
- D 0 - I - 0x029BFD 0A:9BED: C1        .byte $C1, $07, $00, $03   ; 
- D 0 - I - 0x029C01 0A:9BF1: C1        .byte $C1, $09, $00, $0B   ; 
- D 0 - I - 0x029C05 0A:9BF5: BF        .byte $BF, $0B, $00, $13   ; 
- D 0 - I - 0x029C09 0A:9BF9: D1        .byte $D1, $0D, $00, $F3   ; 
- D 0 - I - 0x029C0D 0A:9BFD: D1        .byte $D1, $0F, $00, $FB   ; 
- D 0 - I - 0x029C11 0A:9C01: D1        .byte $D1, $11, $00, $03   ; 
- D 0 - I - 0x029C15 0A:9C05: D1        .byte $D1, $13, $00, $0B   ; 
- D 0 - I - 0x029C19 0A:9C09: CF        .byte $CF, $15, $00, $13   ; 
- D 0 - I - 0x029C1D 0A:9C0D: E1        .byte $E1, $41, $00, $E8   ; 
- D 0 - I - 0x029C21 0A:9C11: E1        .byte $E1, $43, $00, $F0   ; 
- D 0 - I - 0x029C25 0A:9C15: E1        .byte $E1, $45, $00, $F8   ; 
- D 0 - I - 0x029C29 0A:9C19: E1        .byte $E1, $47, $00, $00   ; 
- D 0 - I - 0x029C2D 0A:9C1D: E1        .byte $E1, $4B, $00, $08   ; 
- D 0 - I - 0x029C31 0A:9C21: F1        .byte $F1, $4F, $00, $F0   ; 
- D 0 - I - 0x029C35 0A:9C25: F1        .byte $F1, $51, $00, $F8   ; 
- D 0 - I - 0x029C39 0A:9C29: F1        .byte $F1, $53, $00, $03   ; 
- D 0 - I - 0x029C3D 0A:9C2D: F1        .byte $F1, $55, $00, $0B   ; 
@end:



_off004_9C31_81:
- D 0 - I - 0x029C41 0A:9C31: 15        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029C42 0A:9C32: B1        .byte $B1, $01, $00, $FA   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029C46 0A:9C36: B1        .byte $B1, $03, $00, $02   ; 
- D 0 - I - 0x029C4A 0A:9C3A: C1        .byte $C1, $23, $00, $F2   ; 
- D 0 - I - 0x029C4E 0A:9C3E: C1        .byte $C1, $25, $00, $FA   ; 
- D 0 - I - 0x029C52 0A:9C42: C1        .byte $C1, $27, $00, $02   ; 
- D 0 - I - 0x029C56 0A:9C46: BF        .byte $BF, $29, $00, $0A   ; 
- D 0 - I - 0x029C5A 0A:9C4A: BF        .byte $BF, $2B, $00, $12   ; 
- D 0 - I - 0x029C5E 0A:9C4E: D1        .byte $D1, $2D, $00, $F2   ; 
- D 0 - I - 0x029C62 0A:9C52: D1        .byte $D1, $2F, $00, $FA   ; 
- D 0 - I - 0x029C66 0A:9C56: D1        .byte $D1, $31, $00, $02   ; 
- D 0 - I - 0x029C6A 0A:9C5A: CF        .byte $CF, $33, $00, $0A   ; 
- D 0 - I - 0x029C6E 0A:9C5E: CF        .byte $CF, $35, $00, $12   ; 
- D 0 - I - 0x029C72 0A:9C62: E1        .byte $E1, $41, $00, $E9   ; 
- D 0 - I - 0x029C76 0A:9C66: E1        .byte $E1, $5F, $00, $F1   ; 
- D 0 - I - 0x029C7A 0A:9C6A: E1        .byte $E1, $61, $00, $F9   ; 
- D 0 - I - 0x029C7E 0A:9C6E: E1        .byte $E1, $47, $00, $01   ; 
- D 0 - I - 0x029C82 0A:9C72: E1        .byte $E1, $4B, $00, $09   ; 
- D 0 - I - 0x029C86 0A:9C76: F1        .byte $F1, $4F, $00, $F0   ; 
- D 0 - I - 0x029C8A 0A:9C7A: F1        .byte $F1, $51, $00, $F8   ; 
- D 0 - I - 0x029C8E 0A:9C7E: F1        .byte $F1, $53, $00, $03   ; 
- D 0 - I - 0x029C92 0A:9C82: F1        .byte $F1, $55, $00, $0B   ; 
@end:



_off004_9C86_82:
- D 0 - I - 0x029C96 0A:9C86: 16        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029C97 0A:9C87: B1        .byte $B1, $01, $00, $FB   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029C9B 0A:9C8B: B1        .byte $B1, $03, $00, $03   ; 
- D 0 - I - 0x029C9F 0A:9C8F: B1        .byte $B1, $05, $00, $0B   ; 
- D 0 - I - 0x029CA3 0A:9C93: C1        .byte $C1, $07, $00, $F3   ; 
- D 0 - I - 0x029CA7 0A:9C97: C1        .byte $C1, $09, $00, $FB   ; 
- D 0 - I - 0x029CAB 0A:9C9B: C1        .byte $C1, $0B, $00, $03   ; 
- D 0 - I - 0x029CAF 0A:9C9F: C1        .byte $C1, $0D, $00, $0B   ; 
- D 0 - I - 0x029CB3 0A:9CA3: C9        .byte $C9, $11, $00, $13   ; 
- D 0 - I - 0x029CB7 0A:9CA7: D1        .byte $D1, $13, $00, $F3   ; 
- D 0 - I - 0x029CBB 0A:9CAB: D1        .byte $D1, $15, $00, $FB   ; 
- D 0 - I - 0x029CBF 0A:9CAF: D1        .byte $D1, $17, $00, $03   ; 
- D 0 - I - 0x029CC3 0A:9CB3: D1        .byte $D1, $19, $00, $0B   ; 
- D 0 - I - 0x029CC7 0A:9CB7: E1        .byte $E1, $41, $00, $E8   ; 
- D 0 - I - 0x029CCB 0A:9CBB: E1        .byte $E1, $43, $00, $F0   ; 
- D 0 - I - 0x029CCF 0A:9CBF: E1        .byte $E1, $45, $00, $F8   ; 
- D 0 - I - 0x029CD3 0A:9CC3: E1        .byte $E1, $47, $00, $00   ; 
- D 0 - I - 0x029CD7 0A:9CC7: E1        .byte $E1, $4B, $00, $08   ; 
- D 0 - I - 0x029CDB 0A:9CCB: F1        .byte $F1, $4F, $00, $F0   ; 
- D 0 - I - 0x029CDF 0A:9CCF: F1        .byte $F1, $51, $00, $F8   ; 
- D 0 - I - 0x029CE3 0A:9CD3: F1        .byte $F1, $53, $00, $03   ; 
- D 0 - I - 0x029CE7 0A:9CD7: F1        .byte $F1, $55, $00, $0B   ; 
- D 0 - I - 0x029CEB 0A:9CDB: B9        .byte $B9, $0F, $00, $13   ; 
@end:



_off004_9CDF_83:
- D 0 - I - 0x029CEF 0A:9CDF: 16        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029CF0 0A:9CE0: AE        .byte $AE, $01, $00, $03   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029CF4 0A:9CE4: AE        .byte $AE, $01, $40, $0B   ; 
- D 0 - I - 0x029CF8 0A:9CE8: BE        .byte $BE, $03, $00, $F0   ; 
- D 0 - I - 0x029CFC 0A:9CEC: BE        .byte $BE, $05, $00, $F8   ; 
- D 0 - I - 0x029D00 0A:9CF0: BE        .byte $BE, $07, $00, $00   ; 
- D 0 - I - 0x029D04 0A:9CF4: BE        .byte $BE, $09, $00, $08   ; 
- D 0 - I - 0x029D08 0A:9CF8: BE        .byte $BE, $0B, $00, $10   ; 
- D 0 - I - 0x029D0C 0A:9CFC: C1        .byte $C1, $0D, $00, $18   ; 
- D 0 - I - 0x029D10 0A:9D00: CE        .byte $CE, $21, $00, $E8   ; 
- D 0 - I - 0x029D14 0A:9D04: CE        .byte $CE, $0F, $00, $F0   ; 
- D 0 - I - 0x029D18 0A:9D08: CE        .byte $CE, $11, $00, $F8   ; 
- D 0 - I - 0x029D1C 0A:9D0C: CE        .byte $CE, $13, $00, $00   ; 
- D 0 - I - 0x029D20 0A:9D10: CE        .byte $CE, $15, $00, $08   ; 
- D 0 - I - 0x029D24 0A:9D14: CE        .byte $CE, $17, $00, $10   ; 
- D 0 - I - 0x029D28 0A:9D18: DE        .byte $DE, $19, $00, $E8   ; 
- D 0 - I - 0x029D2C 0A:9D1C: DE        .byte $DE, $1B, $00, $F0   ; 
- D 0 - I - 0x029D30 0A:9D20: DE        .byte $DE, $4D, $00, $F8   ; 
- D 0 - I - 0x029D34 0A:9D24: DE        .byte $DE, $47, $00, $00   ; 
- D 0 - I - 0x029D38 0A:9D28: E0        .byte $E0, $1D, $00, $08   ; 
- D 0 - I - 0x029D3C 0A:9D2C: EE        .byte $EE, $5D, $40, $E8   ; 
- D 0 - I - 0x029D40 0A:9D30: F0        .byte $F0, $1F, $00, $08   ; 
- D 0 - I - 0x029D44 0A:9D34: E9        .byte $E9, $5B, $00, $10   ; 
@end:



_off004_9D38_84:
- D 0 - I - 0x029D48 0A:9D38: 15        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029D49 0A:9D39: B1        .byte $B1, $01, $00, $03   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029D4D 0A:9D3D: B1        .byte $B1, $01, $40, $0B   ; 
- D 0 - I - 0x029D51 0A:9D41: C1        .byte $C1, $03, $00, $F0   ; 
- D 0 - I - 0x029D55 0A:9D45: C1        .byte $C1, $05, $00, $F8   ; 
- D 0 - I - 0x029D59 0A:9D49: C1        .byte $C1, $07, $00, $00   ; 
- D 0 - I - 0x029D5D 0A:9D4D: C1        .byte $C1, $09, $00, $08   ; 
- D 0 - I - 0x029D61 0A:9D51: C1        .byte $C1, $0B, $00, $10   ; 
- D 0 - I - 0x029D65 0A:9D55: C4        .byte $C4, $0D, $00, $18   ; 
- D 0 - I - 0x029D69 0A:9D59: D1        .byte $D1, $21, $00, $E8   ; 
- D 0 - I - 0x029D6D 0A:9D5D: D1        .byte $D1, $0F, $00, $F0   ; 
- D 0 - I - 0x029D71 0A:9D61: D1        .byte $D1, $11, $00, $F8   ; 
- D 0 - I - 0x029D75 0A:9D65: D1        .byte $D1, $13, $00, $00   ; 
- D 0 - I - 0x029D79 0A:9D69: D1        .byte $D1, $15, $00, $08   ; 
- D 0 - I - 0x029D7D 0A:9D6D: D1        .byte $D1, $17, $00, $10   ; 
- D 0 - I - 0x029D81 0A:9D71: E1        .byte $E1, $23, $00, $E6   ; 
- D 0 - I - 0x029D85 0A:9D75: E1        .byte $E1, $25, $00, $EE   ; 
- D 0 - I - 0x029D89 0A:9D79: E1        .byte $E1, $4D, $00, $F6   ; 
- D 0 - I - 0x029D8D 0A:9D7D: E1        .byte $E1, $47, $00, $FE   ; 
- D 0 - I - 0x029D91 0A:9D81: E1        .byte $E1, $27, $00, $06   ; 
- D 0 - I - 0x029D95 0A:9D85: F1        .byte $F1, $53, $00, $FE   ; 
- D 0 - I - 0x029D99 0A:9D89: F1        .byte $F1, $55, $00, $06   ; 
@end:



_off004_9D8D_85:
- D 0 - I - 0x029D9D 0A:9D8D: 12        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029D9E 0A:9D8E: B0        .byte $B0, $01, $00, $03   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029DA2 0A:9D92: B0        .byte $B0, $01, $40, $0B   ; 
- D 0 - I - 0x029DA6 0A:9D96: C0        .byte $C0, $03, $00, $F0   ; 
- D 0 - I - 0x029DAA 0A:9D9A: C0        .byte $C0, $05, $00, $F8   ; 
- D 0 - I - 0x029DAE 0A:9D9E: C0        .byte $C0, $07, $00, $00   ; 
- D 0 - I - 0x029DB2 0A:9DA2: C0        .byte $C0, $09, $00, $08   ; 
- D 0 - I - 0x029DB6 0A:9DA6: C0        .byte $C0, $0B, $00, $10   ; 
- D 0 - I - 0x029DBA 0A:9DAA: C3        .byte $C3, $0D, $00, $18   ; 
- D 0 - I - 0x029DBE 0A:9DAE: D0        .byte $D0, $21, $00, $E8   ; 
- D 0 - I - 0x029DC2 0A:9DB2: D0        .byte $D0, $0F, $00, $F0   ; 
- D 0 - I - 0x029DC6 0A:9DB6: D0        .byte $D0, $11, $00, $F8   ; 
- D 0 - I - 0x029DCA 0A:9DBA: D0        .byte $D0, $13, $00, $00   ; 
- D 0 - I - 0x029DCE 0A:9DBE: D0        .byte $D0, $15, $00, $08   ; 
- D 0 - I - 0x029DD2 0A:9DC2: D0        .byte $D0, $17, $00, $10   ; 
- D 0 - I - 0x029DD6 0A:9DC6: E0        .byte $E0, $29, $00, $ED   ; 
- D 0 - I - 0x029DDA 0A:9DCA: E0        .byte $E0, $2B, $00, $F5   ; 
- D 0 - I - 0x029DDE 0A:9DCE: E0        .byte $E0, $2D, $00, $FD   ; 
- D 0 - I - 0x029DE2 0A:9DD2: F0        .byte $F0, $5D, $40, $F1   ; 
@end:



_off004_9DD6_86:
- D 0 - I - 0x029DE6 0A:9DD6: 14        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029DE7 0A:9DD7: AE        .byte $AE, $01, $00, $03   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029DEB 0A:9DDB: AE        .byte $AE, $01, $40, $0B   ; 
- D 0 - I - 0x029DEF 0A:9DDF: BE        .byte $BE, $03, $00, $F0   ; 
- D 0 - I - 0x029DF3 0A:9DE3: BE        .byte $BE, $05, $00, $F8   ; 
- D 0 - I - 0x029DF7 0A:9DE7: BE        .byte $BE, $07, $00, $00   ; 
- D 0 - I - 0x029DFB 0A:9DEB: BE        .byte $BE, $09, $00, $08   ; 
- D 0 - I - 0x029DFF 0A:9DEF: BE        .byte $BE, $0B, $00, $10   ; 
- D 0 - I - 0x029E03 0A:9DF3: C1        .byte $C1, $0D, $00, $18   ; 
- D 0 - I - 0x029E07 0A:9DF7: CE        .byte $CE, $21, $00, $E8   ; 
- D 0 - I - 0x029E0B 0A:9DFB: CE        .byte $CE, $0F, $00, $F0   ; 
- D 0 - I - 0x029E0F 0A:9DFF: CE        .byte $CE, $11, $00, $F8   ; 
- D 0 - I - 0x029E13 0A:9E03: CE        .byte $CE, $13, $00, $00   ; 
- D 0 - I - 0x029E17 0A:9E07: CE        .byte $CE, $15, $00, $08   ; 
- D 0 - I - 0x029E1B 0A:9E0B: CE        .byte $CE, $17, $00, $10   ; 
- D 0 - I - 0x029E1F 0A:9E0F: DE        .byte $DE, $1F, $00, $E8   ; 
- D 0 - I - 0x029E23 0A:9E13: DE        .byte $DE, $2F, $00, $F0   ; 
- D 0 - I - 0x029E27 0A:9E17: DE        .byte $DE, $31, $00, $F8   ; 
- D 0 - I - 0x029E2B 0A:9E1B: DE        .byte $DE, $33, $00, $00   ; 
- D 0 - I - 0x029E2F 0A:9E1F: EE        .byte $EE, $57, $00, $F8   ; 
- D 0 - I - 0x029E33 0A:9E23: EE        .byte $EE, $5B, $00, $00   ; 
@end:



_off004_9E27_87:
- D 0 - I - 0x029E37 0A:9E27: 14        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029E38 0A:9E28: B1        .byte $B1, $01, $00, $03   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029E3C 0A:9E2C: B1        .byte $B1, $01, $40, $0B   ; 
- D 0 - I - 0x029E40 0A:9E30: C1        .byte $C1, $03, $00, $F0   ; 
- D 0 - I - 0x029E44 0A:9E34: C1        .byte $C1, $05, $00, $F8   ; 
- D 0 - I - 0x029E48 0A:9E38: C1        .byte $C1, $09, $00, $08   ; 
- D 0 - I - 0x029E4C 0A:9E3C: C1        .byte $C1, $0B, $00, $10   ; 
- D 0 - I - 0x029E50 0A:9E40: C4        .byte $C4, $0D, $00, $18   ; 
- D 0 - I - 0x029E54 0A:9E44: D1        .byte $D1, $21, $00, $E8   ; 
- D 0 - I - 0x029E58 0A:9E48: D1        .byte $D1, $0F, $00, $F0   ; 
- D 0 - I - 0x029E5C 0A:9E4C: D1        .byte $D1, $11, $00, $F8   ; 
- D 0 - I - 0x029E60 0A:9E50: D1        .byte $D1, $13, $00, $00   ; 
- D 0 - I - 0x029E64 0A:9E54: D1        .byte $D1, $15, $00, $08   ; 
- D 0 - I - 0x029E68 0A:9E58: D1        .byte $D1, $17, $00, $10   ; 
- D 0 - I - 0x029E6C 0A:9E5C: E1        .byte $E1, $1F, $00, $E8   ; 
- D 0 - I - 0x029E70 0A:9E60: E1        .byte $E1, $5F, $00, $F0   ; 
- D 0 - I - 0x029E74 0A:9E64: E1        .byte $E1, $61, $00, $F8   ; 
- D 0 - I - 0x029E78 0A:9E68: E1        .byte $E1, $33, $00, $00   ; 
- D 0 - I - 0x029E7C 0A:9E6C: F1        .byte $F1, $4F, $00, $F0   ; 
- D 0 - I - 0x029E80 0A:9E70: F1        .byte $F1, $51, $00, $F8   ; 
- D 0 - I - 0x029E84 0A:9E74: C1        .byte $C1, $07, $00, $00   ; 
@end:



_off004_9E78_88:
- D 0 - I - 0x029E88 0A:9E78: 15        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029E89 0A:9E79: B1        .byte $B1, $01, $00, $FD   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029E8D 0A:9E7D: B1        .byte $B1, $01, $40, $05   ; 
- D 0 - I - 0x029E91 0A:9E81: C1        .byte $C1, $03, $00, $F3   ; 
- D 0 - I - 0x029E95 0A:9E85: C1        .byte $C1, $05, $00, $FB   ; 
- D 0 - I - 0x029E99 0A:9E89: C1        .byte $C1, $07, $00, $03   ; 
- D 0 - I - 0x029E9D 0A:9E8D: C1        .byte $C1, $09, $00, $0B   ; 
- D 0 - I - 0x029EA1 0A:9E91: BF        .byte $BF, $0B, $00, $13   ; 
- D 0 - I - 0x029EA5 0A:9E95: D1        .byte $D1, $17, $00, $F3   ; 
- D 0 - I - 0x029EA9 0A:9E99: D1        .byte $D1, $19, $00, $FB   ; 
- D 0 - I - 0x029EAD 0A:9E9D: D1        .byte $D1, $1B, $00, $03   ; 
- D 0 - I - 0x029EB1 0A:9EA1: D1        .byte $D1, $1D, $00, $0B   ; 
- D 0 - I - 0x029EB5 0A:9EA5: CF        .byte $CF, $15, $00, $13   ; 
- D 0 - I - 0x029EB9 0A:9EA9: E1        .byte $E1, $41, $00, $EA   ; 
- D 0 - I - 0x029EBD 0A:9EAD: E1        .byte $E1, $35, $00, $F2   ; 
- D 0 - I - 0x029EC1 0A:9EB1: E1        .byte $E1, $4D, $40, $FA   ; 
- D 0 - I - 0x029EC5 0A:9EB5: E1        .byte $E1, $47, $00, $02   ; 
- D 0 - I - 0x029EC9 0A:9EB9: E1        .byte $E1, $37, $00, $0A   ; 
- D 0 - I - 0x029ECD 0A:9EBD: F1        .byte $F1, $3B, $00, $EA   ; 
- D 0 - I - 0x029ED1 0A:9EC1: F1        .byte $F1, $3D, $00, $F2   ; 
- D 0 - I - 0x029ED5 0A:9EC5: F1        .byte $F1, $53, $00, $03   ; 
- D 0 - I - 0x029ED9 0A:9EC9: F1        .byte $F1, $55, $00, $0B   ; 
@end:



_off004_9ECD_89:
- D 0 - I - 0x029EDD 0A:9ECD: 12        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029EDE 0A:9ECE: B1        .byte $B1, $01, $00, $FC   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029EE2 0A:9ED2: B1        .byte $B1, $01, $40, $04   ; 
- D 0 - I - 0x029EE6 0A:9ED6: C1        .byte $C1, $03, $00, $F2   ; 
- D 0 - I - 0x029EEA 0A:9EDA: C1        .byte $C1, $05, $00, $FA   ; 
- D 0 - I - 0x029EEE 0A:9EDE: C1        .byte $C1, $07, $00, $02   ; 
- D 0 - I - 0x029EF2 0A:9EE2: C1        .byte $C1, $09, $00, $0A   ; 
- D 0 - I - 0x029EF6 0A:9EE6: BF        .byte $BF, $0B, $00, $12   ; 
- D 0 - I - 0x029EFA 0A:9EEA: D1        .byte $D1, $27, $00, $EA   ; 
- D 0 - I - 0x029EFE 0A:9EEE: D1        .byte $D1, $0D, $00, $F2   ; 
- D 0 - I - 0x029F02 0A:9EF2: D1        .byte $D1, $0F, $00, $FA   ; 
- D 0 - I - 0x029F06 0A:9EF6: D1        .byte $D1, $11, $00, $02   ; 
- D 0 - I - 0x029F0A 0A:9EFA: D1        .byte $D1, $13, $00, $0A   ; 
- D 0 - I - 0x029F0E 0A:9EFE: CF        .byte $CF, $15, $00, $12   ; 
- D 0 - I - 0x029F12 0A:9F02: E1        .byte $E1, $2F, $00, $EF   ; 
- D 0 - I - 0x029F16 0A:9F06: E1        .byte $E1, $31, $00, $F7   ; 
- D 0 - I - 0x029F1A 0A:9F0A: E1        .byte $E1, $33, $00, $FF   ; 
- D 0 - I - 0x029F1E 0A:9F0E: F1        .byte $F1, $53, $00, $F3   ; 
- D 0 - I - 0x029F22 0A:9F12: F1        .byte $F1, $39, $00, $FB   ; 
@end:



_off004_9F16_8A:
- D 0 - I - 0x029F26 0A:9F16: 14        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029F27 0A:9F17: B1        .byte $B1, $01, $00, $FE   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029F2B 0A:9F1B: B1        .byte $B1, $01, $40, $06   ; 
- D 0 - I - 0x029F2F 0A:9F1F: C1        .byte $C1, $03, $00, $F4   ; 
- D 0 - I - 0x029F33 0A:9F23: C1        .byte $C1, $05, $00, $FC   ; 
- D 0 - I - 0x029F37 0A:9F27: C1        .byte $C1, $07, $00, $04   ; 
- D 0 - I - 0x029F3B 0A:9F2B: C1        .byte $C1, $09, $00, $0C   ; 
- D 0 - I - 0x029F3F 0A:9F2F: BF        .byte $BF, $0B, $00, $14   ; 
- D 0 - I - 0x029F43 0A:9F33: D1        .byte $D1, $27, $00, $EC   ; 
- D 0 - I - 0x029F47 0A:9F37: D1        .byte $D1, $1F, $00, $F4   ; 
- D 0 - I - 0x029F4B 0A:9F3B: D1        .byte $D1, $21, $00, $FC   ; 
- D 0 - I - 0x029F4F 0A:9F3F: D1        .byte $D1, $23, $00, $04   ; 
- D 0 - I - 0x029F53 0A:9F43: D1        .byte $D1, $25, $00, $0C   ; 
- D 0 - I - 0x029F57 0A:9F47: CF        .byte $CF, $15, $00, $14   ; 
- D 0 - I - 0x029F5B 0A:9F4B: E1        .byte $E1, $29, $00, $EE   ; 
- D 0 - I - 0x029F5F 0A:9F4F: E1        .byte $E1, $2B, $00, $F6   ; 
- D 0 - I - 0x029F63 0A:9F53: E1        .byte $E1, $2D, $00, $FE   ; 
- D 0 - I - 0x029F67 0A:9F57: F1        .byte $F1, $3B, $00, $EB   ; 
- D 0 - I - 0x029F6B 0A:9F5B: F1        .byte $F1, $3D, $00, $F3   ; 
- D 0 - I - 0x029F6F 0A:9F5F: F1        .byte $F1, $53, $00, $FC   ; 
- D 0 - I - 0x029F73 0A:9F63: F1        .byte $F1, $55, $00, $04   ; 
@end:



_off004_9F67_8B:
- D 0 - I - 0x029F77 0A:9F67: 16        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029F78 0A:9F68: B1        .byte $B1, $01, $00, $F3   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029F7C 0A:9F6C: B1        .byte $B1, $03, $00, $FB   ; 
- D 0 - I - 0x029F80 0A:9F70: B1        .byte $B1, $05, $00, $03   ; 
- D 0 - I - 0x029F84 0A:9F74: C1        .byte $C1, $07, $00, $EB   ; 
- D 0 - I - 0x029F88 0A:9F78: C1        .byte $C1, $09, $00, $F3   ; 
- D 0 - I - 0x029F8C 0A:9F7C: C1        .byte $C1, $0B, $00, $FB   ; 
- D 0 - I - 0x029F90 0A:9F80: C1        .byte $C1, $0D, $00, $03   ; 
- D 0 - I - 0x029F94 0A:9F84: C1        .byte $C1, $0F, $00, $0B   ; 
- D 0 - I - 0x029F98 0A:9F88: D1        .byte $D1, $11, $00, $EB   ; 
- D 0 - I - 0x029F9C 0A:9F8C: D1        .byte $D1, $13, $00, $F3   ; 
- D 0 - I - 0x029FA0 0A:9F90: D1        .byte $D1, $15, $00, $FB   ; 
- D 0 - I - 0x029FA4 0A:9F94: D1        .byte $D1, $17, $00, $03   ; 
- D 0 - I - 0x029FA8 0A:9F98: D1        .byte $D1, $19, $00, $0B   ; 
- D 0 - I - 0x029FAC 0A:9F9C: E1        .byte $E1, $41, $00, $E7   ; 
- D 0 - I - 0x029FB0 0A:9FA0: E1        .byte $E1, $5F, $00, $EF   ; 
- D 0 - I - 0x029FB4 0A:9FA4: E1        .byte $E1, $61, $00, $F7   ; 
- D 0 - I - 0x029FB8 0A:9FA8: E1        .byte $E1, $47, $00, $FF   ; 
- D 0 - I - 0x029FBC 0A:9FAC: E1        .byte $E1, $4B, $00, $07   ; 
- D 0 - I - 0x029FC0 0A:9FB0: F1        .byte $F1, $63, $00, $F0   ; 
- D 0 - I - 0x029FC4 0A:9FB4: F1        .byte $F1, $65, $00, $F8   ; 
- D 0 - I - 0x029FC8 0A:9FB8: F1        .byte $F1, $53, $00, $04   ; 
- D 0 - I - 0x029FCC 0A:9FBC: F1        .byte $F1, $55, $00, $0C   ; 
@end:



_off004_9FC0_8C:
- D 0 - I - 0x029FD0 0A:9FC0: 16        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 0 - I - 0x029FD1 0A:9FC1: B1        .byte $B1, $01, $00, $EF   ; spt_Y, spr_T, spr_A, spr_X
- D 0 - I - 0x029FD5 0A:9FC5: B1        .byte $B1, $03, $00, $F7   ; 
- D 0 - I - 0x029FD9 0A:9FC9: B1        .byte $B1, $05, $00, $FF   ; 
- D 0 - I - 0x029FDD 0A:9FCD: C1        .byte $C1, $07, $00, $E7   ; 
- D 0 - I - 0x029FE1 0A:9FD1: C1        .byte $C1, $09, $00, $EF   ; 
- D 0 - I - 0x029FE5 0A:9FD5: C1        .byte $C1, $0B, $00, $F7   ; 
- D 0 - I - 0x029FE9 0A:9FD9: C1        .byte $C1, $0D, $00, $FF   ; 
- D 0 - I - 0x029FED 0A:9FDD: C1        .byte $C1, $0F, $00, $07   ; 
- D 0 - I - 0x029FF1 0A:9FE1: D1        .byte $D1, $11, $00, $E7   ; 
- D 0 - I - 0x029FF5 0A:9FE5: D1        .byte $D1, $13, $00, $EF   ; 
- D 0 - I - 0x029FF9 0A:9FE9: D1        .byte $D1, $15, $00, $F7   ; 
- D 0 - I - 0x029FFD 0A:9FED: D1        .byte $D1, $17, $00, $FF   ; 
- D 0 - I - 0x02A001 0A:9FF1: D1        .byte $D1, $19, $00, $07   ; 
- D 0 - I - 0x02A005 0A:9FF5: E1        .byte $E1, $4B, $40, $E3   ; 
- D 0 - I - 0x02A009 0A:9FF9: E1        .byte $E1, $47, $40, $EB   ; 
- D 0 - I - 0x02A00D 0A:9FFD: E1        .byte $E1, $4D, $40, $F3   ; 
- D 1 - I - 0x02A011 0A:A001: E1        .byte $E1, $47, $00, $FB   ; 
- D 1 - I - 0x02A015 0A:A005: E1        .byte $E1, $4B, $00, $03   ; 
- D 1 - I - 0x02A019 0A:A009: F1        .byte $F1, $51, $40, $E0   ; 
- D 1 - I - 0x02A01D 0A:A00D: F1        .byte $F1, $4F, $40, $E8   ; 
- D 1 - I - 0x02A021 0A:A011: F1        .byte $F1, $57, $00, $03   ; 
- D 1 - I - 0x02A025 0A:A015: F1        .byte $F1, $59, $00, $0B   ; 
@end:



_off004_A019_8D:
- D 1 - I - 0x02A029 0A:A019: 16        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A02A 0A:A01A: B1        .byte $B1, $01, $00, $F3   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A02E 0A:A01E: B1        .byte $B1, $03, $00, $FB   ; 
- D 1 - I - 0x02A032 0A:A022: B1        .byte $B1, $05, $00, $03   ; 
- D 1 - I - 0x02A036 0A:A026: C1        .byte $C1, $07, $00, $EB   ; 
- D 1 - I - 0x02A03A 0A:A02A: C1        .byte $C1, $09, $00, $F3   ; 
- D 1 - I - 0x02A03E 0A:A02E: C1        .byte $C1, $0B, $00, $FB   ; 
- D 1 - I - 0x02A042 0A:A032: C1        .byte $C1, $0D, $00, $03   ; 
- D 1 - I - 0x02A046 0A:A036: B9        .byte $B9, $0F, $00, $0B   ; 
- D 1 - I - 0x02A04A 0A:A03A: C9        .byte $C9, $11, $00, $0B   ; 
- D 1 - I - 0x02A04E 0A:A03E: D1        .byte $D1, $13, $00, $EB   ; 
- D 1 - I - 0x02A052 0A:A042: D1        .byte $D1, $15, $00, $F3   ; 
- D 1 - I - 0x02A056 0A:A046: D1        .byte $D1, $17, $00, $FB   ; 
- D 1 - I - 0x02A05A 0A:A04A: D1        .byte $D1, $19, $00, $03   ; 
- D 1 - I - 0x02A05E 0A:A04E: E1        .byte $E1, $41, $00, $E6   ; 
- D 1 - I - 0x02A062 0A:A052: E1        .byte $E1, $5F, $00, $EE   ; 
- D 1 - I - 0x02A066 0A:A056: E1        .byte $E1, $61, $00, $F6   ; 
- D 1 - I - 0x02A06A 0A:A05A: E1        .byte $E1, $47, $00, $FE   ; 
- D 1 - I - 0x02A06E 0A:A05E: E1        .byte $E1, $4B, $00, $06   ; 
- D 1 - I - 0x02A072 0A:A062: F1        .byte $F1, $4F, $00, $F0   ; 
- D 1 - I - 0x02A076 0A:A066: F1        .byte $F1, $51, $00, $F8   ; 
- D 1 - I - 0x02A07A 0A:A06A: F1        .byte $F1, $63, $00, $01   ; 
- D 1 - I - 0x02A07E 0A:A06E: F1        .byte $F1, $65, $00, $09   ; 
@end:



_off004_A072_8E:
- D 1 - I - 0x02A082 0A:A072: 16        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A083 0A:A073: B0        .byte $B0, $01, $00, $EC   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A087 0A:A077: B0        .byte $B0, $03, $00, $F4   ; 
- D 1 - I - 0x02A08B 0A:A07B: B0        .byte $B0, $05, $00, $FC   ; 
- D 1 - I - 0x02A08F 0A:A07F: B8        .byte $B8, $0F, $00, $04   ; 
- D 1 - I - 0x02A093 0A:A083: C0        .byte $C0, $09, $00, $EC   ; 
- D 1 - I - 0x02A097 0A:A087: C0        .byte $C0, $0B, $00, $F4   ; 
- D 1 - I - 0x02A09B 0A:A08B: C0        .byte $C0, $0D, $00, $FC   ; 
- D 1 - I - 0x02A09F 0A:A08F: C8        .byte $C8, $11, $00, $04   ; 
- D 1 - I - 0x02A0A3 0A:A093: D0        .byte $D0, $3B, $00, $EC   ; 
- D 1 - I - 0x02A0A7 0A:A097: D0        .byte $D0, $3D, $00, $F4   ; 
- D 1 - I - 0x02A0AB 0A:A09B: D0        .byte $D0, $3F, $00, $FC   ; 
- D 1 - I - 0x02A0AF 0A:A09F: C5        .byte $C5, $37, $00, $DC   ; 
- D 1 - I - 0x02A0B3 0A:A0A3: C0        .byte $C0, $39, $00, $E4   ; 
- D 1 - I - 0x02A0B7 0A:A0A7: E0        .byte $E0, $41, $00, $E7   ; 
- D 1 - I - 0x02A0BB 0A:A0AB: E0        .byte $E0, $5F, $00, $EF   ; 
- D 1 - I - 0x02A0BF 0A:A0AF: E0        .byte $E0, $61, $00, $F7   ; 
- D 1 - I - 0x02A0C3 0A:A0B3: E0        .byte $E0, $4B, $00, $07   ; 
- D 1 - I - 0x02A0C7 0A:A0B7: F0        .byte $F0, $4F, $00, $F1   ; 
- D 1 - I - 0x02A0CB 0A:A0BB: F0        .byte $F0, $51, $00, $F9   ; 
- D 1 - I - 0x02A0CF 0A:A0BF: F0        .byte $F0, $63, $00, $02   ; 
- D 1 - I - 0x02A0D3 0A:A0C3: F0        .byte $F0, $65, $00, $0A   ; 
- D 1 - I - 0x02A0D7 0A:A0C7: E0        .byte $E0, $47, $00, $FF   ; 
@end:



_off004_A0CB_8F:
- - - - - - 0x02A0DB 0A:A0CB: 16        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- - - - - - 0x02A0DC 0A:A0CC: B1        .byte $B1, $01, $00, $0B   ; spt_Y, spr_T, spr_A, spr_X
- - - - - - 0x02A0E0 0A:A0D0: B1        .byte $B1, $03, $00, $13   ; 
- - - - - - 0x02A0E4 0A:A0D4: C1        .byte $C1, $05, $00, $FA   ; 
- - - - - - 0x02A0E8 0A:A0D8: C1        .byte $C1, $07, $00, $02   ; 
- - - - - - 0x02A0EC 0A:A0DC: C1        .byte $C1, $09, $00, $0A   ; 
- - - - - - 0x02A0F0 0A:A0E0: C1        .byte $C1, $0B, $00, $12   ; 
- - - - - - 0x02A0F4 0A:A0E4: C1        .byte $C1, $0D, $00, $1A   ; 
- - - - - - 0x02A0F8 0A:A0E8: D1        .byte $D1, $0F, $00, $F4   ; 
- - - - - - 0x02A0FC 0A:A0EC: D1        .byte $D1, $11, $00, $FC   ; 
- - - - - - 0x02A100 0A:A0F0: D1        .byte $D1, $13, $00, $04   ; 
- - - - - - 0x02A104 0A:A0F4: D1        .byte $D1, $17, $00, $14   ; 
- - - - - - 0x02A108 0A:A0F8: D1        .byte $D1, $19, $00, $1C   ; 
- - - - - - 0x02A10C 0A:A0FC: E1        .byte $E1, $41, $00, $E9   ; 
- - - - - - 0x02A110 0A:A100: E1        .byte $E1, $43, $00, $F1   ; 
- - - - - - 0x02A114 0A:A104: E1        .byte $E1, $45, $00, $F9   ; 
- - - - - - 0x02A118 0A:A108: E1        .byte $E1, $47, $00, $01   ; 
- - - - - - 0x02A11C 0A:A10C: E1        .byte $E1, $4B, $00, $09   ; 
- - - - - - 0x02A120 0A:A110: F1        .byte $F1, $4F, $00, $F1   ; 
- - - - - - 0x02A124 0A:A114: F1        .byte $F1, $51, $00, $F9   ; 
- - - - - - 0x02A128 0A:A118: F1        .byte $F1, $53, $00, $04   ; 
- - - - - - 0x02A12C 0A:A11C: F1        .byte $F1, $55, $00, $0C   ; 
- - - - - - 0x02A130 0A:A120: D1        .byte $D1, $15, $00, $0C   ; 
@end:



_off004_A124_90:
- D 1 - I - 0x02A134 0A:A124: 17        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A135 0A:A125: A5        .byte $A5, $01, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A139 0A:A129: A5        .byte $A5, $03, $00, $00   ; 
- D 1 - I - 0x02A13D 0A:A12D: A5        .byte $A5, $05, $00, $08   ; 
- D 1 - I - 0x02A141 0A:A131: A5        .byte $A5, $2D, $00, $13   ; 
- D 1 - I - 0x02A145 0A:A135: B5        .byte $B5, $07, $00, $F0   ; 
- D 1 - I - 0x02A149 0A:A139: B5        .byte $B5, $09, $00, $F8   ; 
- D 1 - I - 0x02A14D 0A:A13D: B5        .byte $B5, $0B, $00, $00   ; 
- D 1 - I - 0x02A151 0A:A141: B5        .byte $B5, $0D, $00, $08   ; 
- D 1 - I - 0x02A155 0A:A145: B5        .byte $B5, $29, $00, $10   ; 
- D 1 - I - 0x02A159 0A:A149: B5        .byte $B5, $2B, $00, $18   ; 
- D 1 - I - 0x02A15D 0A:A14D: C5        .byte $C5, $11, $00, $F0   ; 
- D 1 - I - 0x02A161 0A:A151: C5        .byte $C5, $1B, $00, $F8   ; 
- D 1 - I - 0x02A165 0A:A155: C5        .byte $C5, $1D, $00, $00   ; 
- D 1 - I - 0x02A169 0A:A159: C5        .byte $C5, $1F, $00, $08   ; 
- D 1 - I - 0x02A16D 0A:A15D: C5        .byte $C5, $19, $00, $10   ; 
- D 1 - I - 0x02A171 0A:A161: D5        .byte $D5, $21, $00, $F0   ; 
- D 1 - I - 0x02A175 0A:A165: D5        .byte $D5, $23, $00, $F8   ; 
- D 1 - I - 0x02A179 0A:A169: D5        .byte $D5, $4D, $00, $00   ; 
- D 1 - I - 0x02A17D 0A:A16D: D5        .byte $D5, $4B, $00, $08   ; 
- D 1 - I - 0x02A181 0A:A171: E5        .byte $E5, $25, $00, $F0   ; 
- D 1 - I - 0x02A185 0A:A175: E5        .byte $E5, $27, $00, $F8   ; 
- D 1 - I - 0x02A189 0A:A179: F5        .byte $F5, $5D, $40, $F2   ; 
- D 1 - I - 0x02A18D 0A:A17D: E5        .byte $E5, $5D, $40, $05   ; 
@end:



_off004_A181_91:
- D 1 - I - 0x02A191 0A:A181: 14        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A192 0A:A182: AD        .byte $AD, $01, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A196 0A:A186: AD        .byte $AD, $03, $00, $00   ; 
- D 1 - I - 0x02A19A 0A:A18A: AD        .byte $AD, $05, $00, $08   ; 
- D 1 - I - 0x02A19E 0A:A18E: C3        .byte $C3, $2B, $40, $E8   ; 
- D 1 - I - 0x02A1A2 0A:A192: BD        .byte $BD, $2F, $00, $F0   ; 
- D 1 - I - 0x02A1A6 0A:A196: BD        .byte $BD, $09, $00, $F8   ; 
- D 1 - I - 0x02A1AA 0A:A19A: BD        .byte $BD, $0B, $00, $00   ; 
- D 1 - I - 0x02A1AE 0A:A19E: BD        .byte $BD, $0D, $00, $08   ; 
- D 1 - I - 0x02A1B2 0A:A1A2: BD        .byte $BD, $0F, $00, $10   ; 
- D 1 - I - 0x02A1B6 0A:A1A6: CD        .byte $CD, $31, $00, $F8   ; 
- D 1 - I - 0x02A1BA 0A:A1AA: CD        .byte $CD, $33, $00, $00   ; 
- D 1 - I - 0x02A1BE 0A:A1AE: CD        .byte $CD, $1F, $00, $08   ; 
- D 1 - I - 0x02A1C2 0A:A1B2: D0        .byte $D0, $37, $00, $18   ; 
- D 1 - I - 0x02A1C6 0A:A1B6: D5        .byte $D5, $4B, $40, $F0   ; 
- D 1 - I - 0x02A1CA 0A:A1BA: E5        .byte $E5, $5D, $00, $EF   ; 
- D 1 - I - 0x02A1CE 0A:A1BE: ED        .byte $ED, $5D, $00, $06   ; 
- D 1 - I - 0x02A1D2 0A:A1C2: DD        .byte $DD, $4D, $40, $F8   ; 
- D 1 - I - 0x02A1D6 0A:A1C6: DD        .byte $DD, $47, $00, $00   ; 
- D 1 - I - 0x02A1DA 0A:A1CA: DD        .byte $DD, $4B, $00, $08   ; 
- D 1 - I - 0x02A1DE 0A:A1CE: CD        .byte $CD, $35, $00, $10   ; 
@end:



_off004_A1D2_92:
- D 1 - I - 0x02A1E2 0A:A1D2: 12        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A1E3 0A:A1D3: C1        .byte $C1, $01, $00, $F1   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A1E7 0A:A1D7: C1        .byte $C1, $03, $00, $F9   ; 
- D 1 - I - 0x02A1EB 0A:A1DB: C1        .byte $C1, $05, $00, $01   ; 
- D 1 - I - 0x02A1EF 0A:A1DF: D1        .byte $D1, $07, $00, $E9   ; 
- D 1 - I - 0x02A1F3 0A:A1E3: D1        .byte $D1, $09, $00, $F1   ; 
- D 1 - I - 0x02A1F7 0A:A1E7: D1        .byte $D1, $0B, $00, $F9   ; 
- D 1 - I - 0x02A1FB 0A:A1EB: D1        .byte $D1, $0D, $00, $01   ; 
- D 1 - I - 0x02A1FF 0A:A1EF: D1        .byte $D1, $0F, $00, $09   ; 
- D 1 - I - 0x02A203 0A:A1F3: E1        .byte $E1, $11, $00, $E9   ; 
- D 1 - I - 0x02A207 0A:A1F7: E1        .byte $E1, $15, $00, $F9   ; 
- D 1 - I - 0x02A20B 0A:A1FB: E1        .byte $E1, $19, $00, $09   ; 
- D 1 - I - 0x02A20F 0A:A1FF: F1        .byte $F1, $4B, $40, $E7   ; 
- D 1 - I - 0x02A213 0A:A203: F1        .byte $F1, $4D, $00, $F7   ; 
- D 1 - I - 0x02A217 0A:A207: F1        .byte $F1, $45, $00, $FF   ; 
- D 1 - I - 0x02A21B 0A:A20B: F1        .byte $F1, $51, $00, $07   ; 
- D 1 - I - 0x02A21F 0A:A20F: E1        .byte $E1, $13, $00, $F1   ; 
- D 1 - I - 0x02A223 0A:A213: E1        .byte $E1, $17, $00, $01   ; 
- D 1 - I - 0x02A227 0A:A217: F1        .byte $F1, $5B, $40, $EF   ; 
@end:



_off004_A21B_93:
- D 1 - I - 0x02A22B 0A:A21B: 12        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A22C 0A:A21C: C1        .byte $C1, $01, $00, $0B   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A230 0A:A220: C1        .byte $C1, $03, $00, $13   ; 
- D 1 - I - 0x02A234 0A:A224: D1        .byte $D1, $05, $00, $FA   ; 
- D 1 - I - 0x02A238 0A:A228: D1        .byte $D1, $07, $00, $02   ; 
- D 1 - I - 0x02A23C 0A:A22C: D1        .byte $D1, $09, $00, $0A   ; 
- D 1 - I - 0x02A240 0A:A230: D1        .byte $D1, $0B, $00, $12   ; 
- D 1 - I - 0x02A244 0A:A234: D1        .byte $D1, $0D, $00, $1A   ; 
- D 1 - I - 0x02A248 0A:A238: E1        .byte $E1, $0F, $00, $F4   ; 
- D 1 - I - 0x02A24C 0A:A23C: E1        .byte $E1, $11, $00, $FC   ; 
- D 1 - I - 0x02A250 0A:A240: E1        .byte $E1, $13, $00, $04   ; 
- D 1 - I - 0x02A254 0A:A244: E1        .byte $E1, $17, $00, $14   ; 
- D 1 - I - 0x02A258 0A:A248: E1        .byte $E1, $19, $00, $1C   ; 
- D 1 - I - 0x02A25C 0A:A24C: F1        .byte $F1, $41, $00, $E9   ; 
- D 1 - I - 0x02A260 0A:A250: F1        .byte $F1, $43, $00, $F1   ; 
- D 1 - I - 0x02A264 0A:A254: F1        .byte $F1, $45, $00, $F9   ; 
- D 1 - I - 0x02A268 0A:A258: F1        .byte $F1, $47, $00, $01   ; 
- D 1 - I - 0x02A26C 0A:A25C: F1        .byte $F1, $49, $00, $09   ; 
- D 1 - I - 0x02A270 0A:A260: E1        .byte $E1, $15, $00, $0C   ; 
@end:



_off004_A264_94:
- D 1 - I - 0x02A274 0A:A264: 14        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A275 0A:A265: B1        .byte $B1, $01, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A279 0A:A269: B1        .byte $B1, $03, $00, $00   ; 
- D 1 - I - 0x02A27D 0A:A26D: B1        .byte $B1, $05, $00, $08   ; 
- D 1 - I - 0x02A281 0A:A271: C1        .byte $C1, $07, $00, $F0   ; 
- D 1 - I - 0x02A285 0A:A275: C1        .byte $C1, $09, $00, $F8   ; 
- D 1 - I - 0x02A289 0A:A279: C1        .byte $C1, $0B, $00, $00   ; 
- D 1 - I - 0x02A28D 0A:A27D: C1        .byte $C1, $0F, $00, $10   ; 
- D 1 - I - 0x02A291 0A:A281: D1        .byte $D1, $11, $00, $F0   ; 
- D 1 - I - 0x02A295 0A:A285: D1        .byte $D1, $13, $00, $F8   ; 
- D 1 - I - 0x02A299 0A:A289: D1        .byte $D1, $15, $00, $00   ; 
- D 1 - I - 0x02A29D 0A:A28D: D1        .byte $D1, $17, $00, $08   ; 
- D 1 - I - 0x02A2A1 0A:A291: D1        .byte $D1, $19, $00, $10   ; 
- D 1 - I - 0x02A2A5 0A:A295: E1        .byte $E1, $4B, $40, $EE   ; 
- D 1 - I - 0x02A2A9 0A:A299: E1        .byte $E1, $5B, $40, $F6   ; 
- D 1 - I - 0x02A2AD 0A:A29D: E1        .byte $E1, $4D, $00, $FE   ; 
- D 1 - I - 0x02A2B1 0A:A2A1: E1        .byte $E1, $45, $00, $06   ; 
- D 1 - I - 0x02A2B5 0A:A2A5: E1        .byte $E1, $51, $00, $0E   ; 
- D 1 - I - 0x02A2B9 0A:A2A9: F1        .byte $F1, $4F, $40, $F1   ; 
- D 1 - I - 0x02A2BD 0A:A2AD: F1        .byte $F1, $51, $40, $E9   ; 
- D 1 - I - 0x02A2C1 0A:A2B1: C1        .byte $C1, $0D, $00, $08   ; 
@end:



_off004_A2B5_95:
- D 1 - I - 0x02A2C5 0A:A2B5: 16        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A2C6 0A:A2B6: B1        .byte $B1, $01, $00, $F2   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A2CA 0A:A2BA: B1        .byte $B1, $03, $00, $FA   ; 
- D 1 - I - 0x02A2CE 0A:A2BE: B1        .byte $B1, $05, $00, $02   ; 
- D 1 - I - 0x02A2D2 0A:A2C2: B9        .byte $B9, $0F, $00, $0A   ; 
- D 1 - I - 0x02A2D6 0A:A2C6: C6        .byte $C6, $37, $00, $E2   ; 
- D 1 - I - 0x02A2DA 0A:A2CA: C1        .byte $C1, $39, $00, $EA   ; 
- D 1 - I - 0x02A2DE 0A:A2CE: C1        .byte $C1, $09, $00, $F2   ; 
- D 1 - I - 0x02A2E2 0A:A2D2: C1        .byte $C1, $0B, $00, $FA   ; 
- D 1 - I - 0x02A2E6 0A:A2D6: C1        .byte $C1, $0D, $00, $02   ; 
- D 1 - I - 0x02A2EA 0A:A2DA: C9        .byte $C9, $11, $00, $0A   ; 
- D 1 - I - 0x02A2EE 0A:A2DE: D1        .byte $D1, $3B, $00, $F2   ; 
- D 1 - I - 0x02A2F2 0A:A2E2: D1        .byte $D1, $3D, $00, $FA   ; 
- D 1 - I - 0x02A2F6 0A:A2E6: D1        .byte $D1, $3F, $00, $02   ; 
- D 1 - I - 0x02A2FA 0A:A2EA: E1        .byte $E1, $4B, $40, $EE   ; 
- D 1 - I - 0x02A2FE 0A:A2EE: E1        .byte $E1, $5B, $40, $F6   ; 
- D 1 - I - 0x02A302 0A:A2F2: E1        .byte $E1, $4D, $00, $FE   ; 
- D 1 - I - 0x02A306 0A:A2F6: E1        .byte $E1, $1B, $00, $06   ; 
- D 1 - I - 0x02A30A 0A:A2FA: E1        .byte $E1, $1D, $00, $0E   ; 
- D 1 - I - 0x02A30E 0A:A2FE: E3        .byte $E3, $1F, $00, $16   ; 
- D 1 - I - 0x02A312 0A:A302: E3        .byte $E3, $21, $00, $1E   ; 
- D 1 - I - 0x02A316 0A:A306: F1        .byte $F1, $51, $40, $EA   ; 
- D 1 - I - 0x02A31A 0A:A30A: F1        .byte $F1, $4F, $40, $F2   ; 
@end:



_off004_A30E_96:
- D 1 - I - 0x02A31E 0A:A30E: 16        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A31F 0A:A30F: A5        .byte $A5, $01, $00, $FA   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A323 0A:A313: A5        .byte $A5, $03, $00, $02   ; 
- D 1 - I - 0x02A327 0A:A317: A5        .byte $A5, $05, $00, $0A   ; 
- D 1 - I - 0x02A32B 0A:A31B: B5        .byte $B5, $07, $00, $F2   ; 
- D 1 - I - 0x02A32F 0A:A31F: B5        .byte $B5, $09, $00, $FA   ; 
- D 1 - I - 0x02A333 0A:A323: B5        .byte $B5, $0B, $00, $02   ; 
- D 1 - I - 0x02A337 0A:A327: B5        .byte $B5, $0D, $00, $0A   ; 
- D 1 - I - 0x02A33B 0A:A32B: B5        .byte $B5, $0F, $00, $12   ; 
- D 1 - I - 0x02A33F 0A:A32F: C5        .byte $C5, $11, $00, $F2   ; 
- D 1 - I - 0x02A343 0A:A333: C5        .byte $C5, $1B, $00, $FA   ; 
- D 1 - I - 0x02A347 0A:A337: C5        .byte $C5, $1D, $00, $02   ; 
- D 1 - I - 0x02A34B 0A:A33B: C5        .byte $C5, $1F, $00, $0A   ; 
- D 1 - I - 0x02A34F 0A:A33F: C5        .byte $C5, $3D, $00, $12   ; 
- D 1 - I - 0x02A353 0A:A343: C8        .byte $C8, $3F, $00, $1A   ; 
- D 1 - I - 0x02A357 0A:A347: D5        .byte $D5, $21, $00, $F2   ; 
- D 1 - I - 0x02A35B 0A:A34B: D5        .byte $D5, $23, $00, $FA   ; 
- D 1 - I - 0x02A35F 0A:A34F: D5        .byte $D5, $4D, $40, $02   ; 
- D 1 - I - 0x02A363 0A:A353: D5        .byte $D5, $39, $00, $0A   ; 
- D 1 - I - 0x02A367 0A:A357: D5        .byte $D5, $3B, $00, $12   ; 
- D 1 - I - 0x02A36B 0A:A35B: E5        .byte $E5, $25, $00, $F2   ; 
- D 1 - I - 0x02A36F 0A:A35F: E5        .byte $E5, $27, $00, $FA   ; 
- D 1 - I - 0x02A373 0A:A363: F5        .byte $F5, $5D, $40, $F4   ; 
@end:



_off004_A367_97:
- D 1 - I - 0x02A377 0A:A367: 12        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A378 0A:A368: C1        .byte $C1, $01, $00, $F0   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A37C 0A:A36C: C1        .byte $C1, $03, $00, $F8   ; 
- D 1 - I - 0x02A380 0A:A370: C1        .byte $C1, $05, $00, $00   ; 
- D 1 - I - 0x02A384 0A:A374: C9        .byte $C9, $0F, $00, $08   ; 
- D 1 - I - 0x02A388 0A:A378: D6        .byte $D6, $37, $00, $E0   ; 
- D 1 - I - 0x02A38C 0A:A37C: D1        .byte $D1, $39, $00, $E8   ; 
- D 1 - I - 0x02A390 0A:A380: D1        .byte $D1, $25, $00, $F0   ; 
- D 1 - I - 0x02A394 0A:A384: D1        .byte $D1, $0B, $00, $F8   ; 
- D 1 - I - 0x02A398 0A:A388: D1        .byte $D1, $0D, $00, $00   ; 
- D 1 - I - 0x02A39C 0A:A38C: D9        .byte $D9, $11, $00, $08   ; 
- D 1 - I - 0x02A3A0 0A:A390: E1        .byte $E1, $3B, $00, $F0   ; 
- D 1 - I - 0x02A3A4 0A:A394: E1        .byte $E1, $3D, $00, $F8   ; 
- D 1 - I - 0x02A3A8 0A:A398: E1        .byte $E1, $3F, $00, $00   ; 
- D 1 - I - 0x02A3AC 0A:A39C: F0        .byte $F0, $41, $00, $E9   ; 
- D 1 - I - 0x02A3B0 0A:A3A0: F1        .byte $F1, $43, $00, $F1   ; 
- D 1 - I - 0x02A3B4 0A:A3A4: F1        .byte $F1, $45, $00, $F9   ; 
- D 1 - I - 0x02A3B8 0A:A3A8: F1        .byte $F1, $47, $00, $01   ; 
- D 1 - I - 0x02A3BC 0A:A3AC: F1        .byte $F1, $49, $00, $09   ; 
@end:



_off004_A3B0_98:
- D 1 - I - 0x02A3C0 0A:A3B0: 15        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A3C1 0A:A3B1: C1        .byte $C1, $01, $00, $F0   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A3C5 0A:A3B5: C1        .byte $C1, $03, $00, $F8   ; 
- D 1 - I - 0x02A3C9 0A:A3B9: C1        .byte $C1, $05, $00, $00   ; 
- D 1 - I - 0x02A3CD 0A:A3BD: D6        .byte $D6, $37, $00, $E0   ; 
- D 1 - I - 0x02A3D1 0A:A3C1: D1        .byte $D1, $39, $00, $E8   ; 
- D 1 - I - 0x02A3D5 0A:A3C5: D1        .byte $D1, $09, $00, $F0   ; 
- D 1 - I - 0x02A3D9 0A:A3C9: D1        .byte $D1, $0B, $00, $F8   ; 
- D 1 - I - 0x02A3DD 0A:A3CD: D1        .byte $D1, $0D, $00, $00   ; 
- D 1 - I - 0x02A3E1 0A:A3D1: C9        .byte $C9, $0F, $00, $08   ; 
- D 1 - I - 0x02A3E5 0A:A3D5: E1        .byte $E1, $3B, $00, $F0   ; 
- D 1 - I - 0x02A3E9 0A:A3D9: E1        .byte $E1, $3D, $00, $F8   ; 
- D 1 - I - 0x02A3ED 0A:A3DD: E1        .byte $E1, $3F, $00, $00   ; 
- D 1 - I - 0x02A3F1 0A:A3E1: F1        .byte $F1, $4B, $40, $EC   ; 
- D 1 - I - 0x02A3F5 0A:A3E5: F1        .byte $F1, $47, $40, $F4   ; 
- D 1 - I - 0x02A3F9 0A:A3E9: F1        .byte $F1, $4D, $00, $FC   ; 
- D 1 - I - 0x02A3FD 0A:A3ED: F1        .byte $F1, $1B, $00, $04   ; 
- D 1 - I - 0x02A401 0A:A3F1: F1        .byte $F1, $1D, $00, $0C   ; 
- D 1 - I - 0x02A405 0A:A3F5: F3        .byte $F3, $1F, $00, $14   ; 
- D 1 - I - 0x02A409 0A:A3F9: F3        .byte $F3, $21, $00, $1C   ; 
- D 1 - I - 0x02A40D 0A:A3FD: 01        .byte $01, $5D, $00, $ED   ; 
- D 1 - I - 0x02A411 0A:A401: D9        .byte $D9, $11, $00, $08   ; 
@end:



_off004_A405_99:
- D 1 - I - 0x02A415 0A:A405: 13        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A416 0A:A406: C1        .byte $C1, $01, $00, $F9   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A41A 0A:A40A: C1        .byte $C1, $03, $00, $01   ; 
- D 1 - I - 0x02A41E 0A:A40E: D1        .byte $D1, $23, $00, $F1   ; 
- D 1 - I - 0x02A422 0A:A412: D1        .byte $D1, $25, $00, $F9   ; 
- D 1 - I - 0x02A426 0A:A416: D1        .byte $D1, $27, $00, $01   ; 
- D 1 - I - 0x02A42A 0A:A41A: CF        .byte $CF, $29, $00, $09   ; 
- D 1 - I - 0x02A42E 0A:A41E: CF        .byte $CF, $2B, $00, $11   ; 
- D 1 - I - 0x02A432 0A:A422: E1        .byte $E1, $2D, $00, $F1   ; 
- D 1 - I - 0x02A436 0A:A426: E1        .byte $E1, $2F, $00, $F9   ; 
- D 1 - I - 0x02A43A 0A:A42A: E1        .byte $E1, $31, $00, $01   ; 
- D 1 - I - 0x02A43E 0A:A42E: DF        .byte $DF, $33, $00, $09   ; 
- D 1 - I - 0x02A442 0A:A432: DF        .byte $DF, $35, $00, $11   ; 
- D 1 - I - 0x02A446 0A:A436: F1        .byte $F1, $51, $40, $EA   ; 
- D 1 - I - 0x02A44A 0A:A43A: F1        .byte $F1, $45, $40, $F2   ; 
- D 1 - I - 0x02A44E 0A:A43E: F1        .byte $F1, $4D, $40, $FA   ; 
- D 1 - I - 0x02A452 0A:A442: F1        .byte $F1, $5B, $00, $02   ; 
- D 1 - I - 0x02A456 0A:A446: F2        .byte $F2, $1D, $00, $0A   ; 
- D 1 - I - 0x02A45A 0A:A44A: F4        .byte $F4, $1F, $00, $12   ; 
- D 1 - I - 0x02A45E 0A:A44E: F4        .byte $F4, $21, $00, $1A   ; 
@end:



_off004_A452_9A:
- D 1 - I - 0x02A462 0A:A452: 15        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A463 0A:A453: B1        .byte $B1, $01, $00, $F1   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A467 0A:A457: B1        .byte $B1, $01, $40, $F9   ; 
- D 1 - I - 0x02A46B 0A:A45B: C1        .byte $C1, $03, $00, $E8   ; 
- D 1 - I - 0x02A46F 0A:A45F: C1        .byte $C1, $05, $00, $F0   ; 
- D 1 - I - 0x02A473 0A:A463: C1        .byte $C1, $07, $00, $F8   ; 
- D 1 - I - 0x02A477 0A:A467: C1        .byte $C1, $09, $00, $00   ; 
- D 1 - I - 0x02A47B 0A:A46B: C1        .byte $C1, $0B, $00, $08   ; 
- D 1 - I - 0x02A47F 0A:A46F: D1        .byte $D1, $0D, $00, $E8   ; 
- D 1 - I - 0x02A483 0A:A473: D1        .byte $D1, $0F, $00, $F0   ; 
- D 1 - I - 0x02A487 0A:A477: D1        .byte $D1, $13, $00, $00   ; 
- D 1 - I - 0x02A48B 0A:A47B: D1        .byte $D1, $15, $00, $08   ; 
- D 1 - I - 0x02A48F 0A:A47F: E1        .byte $E1, $41, $00, $E6   ; 
- D 1 - I - 0x02A493 0A:A483: E1        .byte $E1, $5F, $00, $EE   ; 
- D 1 - I - 0x02A497 0A:A487: E1        .byte $E1, $61, $00, $F6   ; 
- D 1 - I - 0x02A49B 0A:A48B: E1        .byte $E1, $47, $00, $FE   ; 
- D 1 - I - 0x02A49F 0A:A48F: E1        .byte $E1, $4B, $00, $06   ; 
- D 1 - I - 0x02A4A3 0A:A493: F1        .byte $F1, $4F, $00, $F0   ; 
- D 1 - I - 0x02A4A7 0A:A497: F1        .byte $F1, $51, $00, $F8   ; 
- D 1 - I - 0x02A4AB 0A:A49B: F1        .byte $F1, $63, $00, $01   ; 
- D 1 - I - 0x02A4AF 0A:A49F: F1        .byte $F1, $65, $00, $09   ; 
- D 1 - I - 0x02A4B3 0A:A4A3: D1        .byte $D1, $11, $00, $F8   ; 
@end:



_off004_A4A7_9B:
- D 1 - I - 0x02A4B7 0A:A4A7: 11        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A4B8 0A:A4A8: C1        .byte $C1, $01, $00, $ED   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A4BC 0A:A4AC: C1        .byte $C1, $01, $40, $F5   ; 
- D 1 - I - 0x02A4C0 0A:A4B0: D1        .byte $D1, $03, $00, $E4   ; 
- D 1 - I - 0x02A4C4 0A:A4B4: D1        .byte $D1, $05, $00, $EC   ; 
- D 1 - I - 0x02A4C8 0A:A4B8: D1        .byte $D1, $07, $00, $F4   ; 
- D 1 - I - 0x02A4CC 0A:A4BC: D1        .byte $D1, $09, $00, $FC   ; 
- D 1 - I - 0x02A4D0 0A:A4C0: D1        .byte $D1, $0B, $00, $04   ; 
- D 1 - I - 0x02A4D4 0A:A4C4: E1        .byte $E1, $0D, $00, $E4   ; 
- D 1 - I - 0x02A4D8 0A:A4C8: E1        .byte $E1, $0F, $00, $EC   ; 
- D 1 - I - 0x02A4DC 0A:A4CC: E1        .byte $E1, $13, $00, $FC   ; 
- D 1 - I - 0x02A4E0 0A:A4D0: E1        .byte $E1, $15, $00, $04   ; 
- D 1 - I - 0x02A4E4 0A:A4D4: F1        .byte $F1, $51, $40, $E4   ; 
- D 1 - I - 0x02A4E8 0A:A4D8: F1        .byte $F1, $45, $40, $EC   ; 
- D 1 - I - 0x02A4EC 0A:A4DC: F1        .byte $F1, $4D, $40, $F4   ; 
- D 1 - I - 0x02A4F0 0A:A4E0: F1        .byte $F1, $5B, $00, $FC   ; 
- D 1 - I - 0x02A4F4 0A:A4E4: F1        .byte $F1, $4B, $00, $04   ; 
- D 1 - I - 0x02A4F8 0A:A4E8: E1        .byte $E1, $11, $00, $F4   ; 
@end:



_off004_A4EC_9C:
- D 1 - I - 0x02A4FC 0A:A4EC: 15        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A4FD 0A:A4ED: A1        .byte $A1, $01, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A501 0A:A4F1: A1        .byte $A1, $03, $00, $00   ; 
- D 1 - I - 0x02A505 0A:A4F5: A1        .byte $A1, $05, $00, $08   ; 
- D 1 - I - 0x02A509 0A:A4F9: B1        .byte $B1, $07, $00, $F0   ; 
- D 1 - I - 0x02A50D 0A:A4FD: B1        .byte $B1, $09, $00, $F8   ; 
- D 1 - I - 0x02A511 0A:A501: B1        .byte $B1, $0B, $00, $00   ; 
- D 1 - I - 0x02A515 0A:A505: B1        .byte $B1, $0D, $00, $08   ; 
- D 1 - I - 0x02A519 0A:A509: B1        .byte $B1, $0F, $00, $10   ; 
- D 1 - I - 0x02A51D 0A:A50D: C1        .byte $C1, $11, $00, $F0   ; 
- D 1 - I - 0x02A521 0A:A511: C1        .byte $C1, $1B, $00, $F8   ; 
- D 1 - I - 0x02A525 0A:A515: C1        .byte $C1, $1D, $00, $00   ; 
- D 1 - I - 0x02A529 0A:A519: C1        .byte $C1, $1F, $00, $08   ; 
- D 1 - I - 0x02A52D 0A:A51D: C1        .byte $C1, $19, $00, $10   ; 
- D 1 - I - 0x02A531 0A:A521: D1        .byte $D1, $21, $00, $F0   ; 
- D 1 - I - 0x02A535 0A:A525: D1        .byte $D1, $23, $00, $F8   ; 
- D 1 - I - 0x02A539 0A:A529: D1        .byte $D1, $4D, $00, $00   ; 
- D 1 - I - 0x02A53D 0A:A52D: D1        .byte $D1, $4B, $00, $08   ; 
- D 1 - I - 0x02A541 0A:A531: E1        .byte $E1, $25, $00, $F0   ; 
- D 1 - I - 0x02A545 0A:A535: E1        .byte $E1, $27, $00, $F8   ; 
- D 1 - I - 0x02A549 0A:A539: F1        .byte $F1, $5D, $40, $F2   ; 
- D 1 - I - 0x02A54D 0A:A53D: E1        .byte $E1, $5D, $40, $05   ; 
@end:



_off004_A541_9D:
- D 1 - I - 0x02A551 0A:A541: 12        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A552 0A:A542: C1        .byte $C1, $01, $00, $FB   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A556 0A:A546: C1        .byte $C1, $03, $00, $03   ; 
- D 1 - I - 0x02A55A 0A:A54A: C1        .byte $C1, $05, $00, $0B   ; 
- D 1 - I - 0x02A55E 0A:A54E: D1        .byte $D1, $07, $00, $F3   ; 
- D 1 - I - 0x02A562 0A:A552: D1        .byte $D1, $09, $00, $FB   ; 
- D 1 - I - 0x02A566 0A:A556: D1        .byte $D1, $0B, $00, $03   ; 
- D 1 - I - 0x02A56A 0A:A55A: C9        .byte $C9, $0F, $00, $13   ; 
- D 1 - I - 0x02A56E 0A:A55E: E1        .byte $E1, $13, $00, $F3   ; 
- D 1 - I - 0x02A572 0A:A562: E1        .byte $E1, $15, $00, $FB   ; 
- D 1 - I - 0x02A576 0A:A566: E1        .byte $E1, $17, $00, $03   ; 
- D 1 - I - 0x02A57A 0A:A56A: E1        .byte $E1, $19, $00, $0B   ; 
- D 1 - I - 0x02A57E 0A:A56E: F1        .byte $F1, $41, $00, $E9   ; 
- D 1 - I - 0x02A582 0A:A572: F1        .byte $F1, $43, $00, $F1   ; 
- D 1 - I - 0x02A586 0A:A576: F1        .byte $F1, $45, $00, $F9   ; 
- D 1 - I - 0x02A58A 0A:A57A: F1        .byte $F1, $47, $00, $01   ; 
- D 1 - I - 0x02A58E 0A:A57E: F1        .byte $F1, $49, $00, $09   ; 
- D 1 - I - 0x02A592 0A:A582: D1        .byte $D1, $0D, $00, $0B   ; 
- D 1 - I - 0x02A596 0A:A586: D9        .byte $D9, $11, $00, $13   ; 
@end:



_off004_A58A_9E:
- D 1 - I - 0x02A59A 0A:A58A: 14        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A59B 0A:A58B: B1        .byte $B1, $17, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A59F 0A:A58F: B1        .byte $B1, $19, $00, $F3   ; 
- D 1 - I - 0x02A5A3 0A:A593: B1        .byte $B1, $1B, $00, $FB   ; 
- D 1 - I - 0x02A5A7 0A:A597: C1        .byte $C1, $03, $00, $E3   ; 
- D 1 - I - 0x02A5AB 0A:A59B: C1        .byte $C1, $1F, $00, $F3   ; 
- D 1 - I - 0x02A5AF 0A:A59F: C1        .byte $C1, $21, $00, $FB   ; 
- D 1 - I - 0x02A5B3 0A:A5A3: D1        .byte $D1, $0D, $00, $E3   ; 
- D 1 - I - 0x02A5B7 0A:A5A7: D1        .byte $D1, $0F, $00, $EB   ; 
- D 1 - I - 0x02A5BB 0A:A5AB: D1        .byte $D1, $23, $00, $F3   ; 
- D 1 - I - 0x02A5BF 0A:A5AF: D1        .byte $D1, $25, $00, $FB   ; 
- D 1 - I - 0x02A5C3 0A:A5B3: E1        .byte $E1, $41, $00, $E2   ; 
- D 1 - I - 0x02A5C7 0A:A5B7: E1        .byte $E1, $5F, $00, $EA   ; 
- D 1 - I - 0x02A5CB 0A:A5BB: E1        .byte $E1, $61, $00, $F2   ; 
- D 1 - I - 0x02A5CF 0A:A5BF: E1        .byte $E1, $47, $00, $FA   ; 
- D 1 - I - 0x02A5D3 0A:A5C3: E1        .byte $E1, $4B, $00, $02   ; 
- D 1 - I - 0x02A5D7 0A:A5C7: F1        .byte $F1, $57, $00, $F2   ; 
- D 1 - I - 0x02A5DB 0A:A5CB: F1        .byte $F1, $59, $00, $FA   ; 
- D 1 - I - 0x02A5DF 0A:A5CF: F1        .byte $F1, $57, $00, $02   ; 
- D 1 - I - 0x02A5E3 0A:A5D3: F1        .byte $F1, $59, $00, $0A   ; 
- D 1 - I - 0x02A5E7 0A:A5D7: C1        .byte $C1, $1D, $00, $EB   ; 
@end:



_off004_A5DB_9F:
- D 1 - I - 0x02A5EB 0A:A5DB: 15        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A5EC 0A:A5DC: AD        .byte $AD, $01, $00, $00   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A5F0 0A:A5E0: AD        .byte $AD, $03, $00, $08   ; 
- D 1 - I - 0x02A5F4 0A:A5E4: BD        .byte $BD, $05, $00, $F1   ; 
- D 1 - I - 0x02A5F8 0A:A5E8: BD        .byte $BD, $07, $00, $F9   ; 
- D 1 - I - 0x02A5FC 0A:A5EC: BD        .byte $BD, $1B, $00, $01   ; 
- D 1 - I - 0x02A600 0A:A5F0: BD        .byte $BD, $3B, $00, $09   ; 
- D 1 - I - 0x02A604 0A:A5F4: BE        .byte $BE, $1D, $00, $11   ; 
- D 1 - I - 0x02A608 0A:A5F8: CD        .byte $CD, $0F, $00, $E9   ; 
- D 1 - I - 0x02A60C 0A:A5FC: CD        .byte $CD, $1F, $00, $F1   ; 
- D 1 - I - 0x02A610 0A:A600: CD        .byte $CD, $21, $00, $F9   ; 
- D 1 - I - 0x02A614 0A:A604: CD        .byte $CD, $3F, $00, $09   ; 
- D 1 - I - 0x02A618 0A:A608: DD        .byte $DD, $41, $00, $E0   ; 
- D 1 - I - 0x02A61C 0A:A60C: DD        .byte $DD, $5F, $00, $E8   ; 
- D 1 - I - 0x02A620 0A:A610: DD        .byte $DD, $61, $00, $F0   ; 
- D 1 - I - 0x02A624 0A:A614: DD        .byte $DD, $47, $00, $F8   ; 
- D 1 - I - 0x02A628 0A:A618: DD        .byte $DD, $4B, $00, $00   ; 
- D 1 - I - 0x02A62C 0A:A61C: ED        .byte $ED, $57, $00, $F0   ; 
- D 1 - I - 0x02A630 0A:A620: ED        .byte $ED, $5B, $00, $F8   ; 
- D 1 - I - 0x02A634 0A:A624: ED        .byte $ED, $57, $00, $00   ; 
- D 1 - I - 0x02A638 0A:A628: ED        .byte $ED, $5B, $00, $08   ; 
- D 1 - I - 0x02A63C 0A:A62C: CD        .byte $CD, $3D, $00, $01   ; 
@end:



_off004_A630_A0:
- D 1 - I - 0x02A640 0A:A630: 15        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A641 0A:A631: F1        .byte $F1, $01, $C0, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A645 0A:A635: F1        .byte $F1, $03, $C0, $F0   ; 
- D 1 - I - 0x02A649 0A:A639: E1        .byte $E1, $05, $C0, $07   ; 
- D 1 - I - 0x02A64D 0A:A63D: E1        .byte $E1, $07, $C0, $FF   ; 
- D 1 - I - 0x02A651 0A:A641: E1        .byte $E1, $1B, $C0, $F7   ; 
- D 1 - I - 0x02A655 0A:A645: E1        .byte $E1, $3B, $C0, $EF   ; 
- D 1 - I - 0x02A659 0A:A649: E0        .byte $E0, $1D, $C0, $E7   ; 
- D 1 - I - 0x02A65D 0A:A64D: D1        .byte $D1, $3F, $C0, $EF   ; 
- D 1 - I - 0x02A661 0A:A651: D1        .byte $D1, $3D, $C0, $F7   ; 
- D 1 - I - 0x02A665 0A:A655: D1        .byte $D1, $21, $C0, $FF   ; 
- D 1 - I - 0x02A669 0A:A659: D1        .byte $D1, $1F, $C0, $07   ; 
- D 1 - I - 0x02A66D 0A:A65D: D1        .byte $D1, $0F, $C0, $0F   ; 
- D 1 - I - 0x02A671 0A:A661: C1        .byte $C1, $41, $C0, $18   ; 
- D 1 - I - 0x02A675 0A:A665: C1        .byte $C1, $5F, $C0, $10   ; 
- D 1 - I - 0x02A679 0A:A669: C1        .byte $C1, $61, $C0, $08   ; 
- D 1 - I - 0x02A67D 0A:A66D: C1        .byte $C1, $47, $C0, $00   ; 
- D 1 - I - 0x02A681 0A:A671: C1        .byte $C1, $4B, $C0, $F8   ; 
- D 1 - I - 0x02A685 0A:A675: B1        .byte $B1, $57, $C0, $08   ; 
- D 1 - I - 0x02A689 0A:A679: B1        .byte $B1, $57, $C0, $F8   ; 
- D 1 - I - 0x02A68D 0A:A67D: B1        .byte $B1, $5B, $C0, $00   ; 
- D 1 - I - 0x02A691 0A:A681: B1        .byte $B1, $5B, $C0, $F0   ; 
@end:



_off004_A685_A1:
- D 1 - I - 0x02A695 0A:A685: 11        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A696 0A:A686: D1        .byte $D1, $17, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A69A 0A:A68A: D1        .byte $D1, $19, $00, $F3   ; 
- D 1 - I - 0x02A69E 0A:A68E: D1        .byte $D1, $1B, $00, $FB   ; 
- D 1 - I - 0x02A6A2 0A:A692: D1        .byte $D1, $3F, $00, $0B   ; 
- D 1 - I - 0x02A6A6 0A:A696: E1        .byte $E1, $27, $00, $E8   ; 
- D 1 - I - 0x02A6AA 0A:A69A: E1        .byte $E1, $29, $00, $F0   ; 
- D 1 - I - 0x02A6AE 0A:A69E: E1        .byte $E1, $2B, $00, $F8   ; 
- D 1 - I - 0x02A6B2 0A:A6A2: E1        .byte $E1, $2D, $00, $00   ; 
- D 1 - I - 0x02A6B6 0A:A6A6: E1        .byte $E1, $2F, $00, $08   ; 
- D 1 - I - 0x02A6BA 0A:A6AA: E1        .byte $E1, $31, $00, $10   ; 
- D 1 - I - 0x02A6BE 0A:A6AE: F1        .byte $F1, $33, $00, $E8   ; 
- D 1 - I - 0x02A6C2 0A:A6B2: F1        .byte $F1, $35, $00, $F0   ; 
- D 1 - I - 0x02A6C6 0A:A6B6: F1        .byte $F1, $37, $00, $F8   ; 
- D 1 - I - 0x02A6CA 0A:A6BA: F1        .byte $F1, $39, $00, $00   ; 
- D 1 - I - 0x02A6CE 0A:A6BE: F1        .byte $F1, $3D, $00, $10   ; 
- D 1 - I - 0x02A6D2 0A:A6C2: F1        .byte $F1, $3B, $00, $08   ; 
- D 1 - I - 0x02A6D6 0A:A6C6: E9        .byte $E9, $5B, $00, $18   ; 
@end:



_off004_A6CA_A2:
- D 1 - I - 0x02A6DA 0A:A6CA: 0E        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A6DB 0A:A6CB: E4        .byte $E4, $01, $00, $E0   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A6DF 0A:A6CF: E4        .byte $E4, $03, $00, $E8   ; 
- D 1 - I - 0x02A6E3 0A:A6D3: F4        .byte $F4, $05, $00, $E0   ; 
- D 1 - I - 0x02A6E7 0A:A6D7: F4        .byte $F4, $07, $00, $E8   ; 
- D 1 - I - 0x02A6EB 0A:A6DB: E9        .byte $E9, $09, $00, $F0   ; 
- D 1 - I - 0x02A6EF 0A:A6DF: E9        .byte $E9, $0B, $00, $F8   ; 
- D 1 - I - 0x02A6F3 0A:A6E3: EB        .byte $EB, $0D, $00, $00   ; 
- D 1 - I - 0x02A6F7 0A:A6E7: FB        .byte $FB, $13, $00, $00   ; 
- D 1 - I - 0x02A6FB 0A:A6EB: F1        .byte $F1, $15, $00, $08   ; 
- D 1 - I - 0x02A6FF 0A:A6EF: F1        .byte $F1, $17, $00, $10   ; 
- D 1 - I - 0x02A703 0A:A6F3: E1        .byte $E1, $19, $00, $11   ; 
- D 1 - I - 0x02A707 0A:A6F7: F1        .byte $F1, $55, $00, $18   ; 
- D 1 - I - 0x02A70B 0A:A6FB: F9        .byte $F9, $0F, $00, $F0   ; 
- D 1 - I - 0x02A70F 0A:A6FF: F9        .byte $F9, $11, $00, $F8   ; 
@end:



_off004_A703_A3:
- D 1 - I - 0x02A713 0A:A703: 11        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A714 0A:A704: E1        .byte $E1, $17, $C0, $15   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A718 0A:A708: E1        .byte $E1, $19, $C0, $0D   ; 
- D 1 - I - 0x02A71C 0A:A70C: E1        .byte $E1, $1B, $C0, $05   ; 
- D 1 - I - 0x02A720 0A:A710: E1        .byte $E1, $3F, $C0, $F5   ; 
- D 1 - I - 0x02A724 0A:A714: D1        .byte $D1, $27, $C0, $18   ; 
- D 1 - I - 0x02A728 0A:A718: D1        .byte $D1, $29, $C0, $10   ; 
- D 1 - I - 0x02A72C 0A:A71C: D1        .byte $D1, $2B, $C0, $08   ; 
- D 1 - I - 0x02A730 0A:A720: D1        .byte $D1, $2D, $C0, $00   ; 
- D 1 - I - 0x02A734 0A:A724: D1        .byte $D1, $2F, $C0, $F8   ; 
- D 1 - I - 0x02A738 0A:A728: D1        .byte $D1, $31, $C0, $F0   ; 
- D 1 - I - 0x02A73C 0A:A72C: C9        .byte $C9, $5B, $C0, $E8   ; 
- D 1 - I - 0x02A740 0A:A730: C1        .byte $C1, $33, $C0, $18   ; 
- D 1 - I - 0x02A744 0A:A734: C1        .byte $C1, $35, $C0, $10   ; 
- D 1 - I - 0x02A748 0A:A738: C1        .byte $C1, $37, $C0, $08   ; 
- D 1 - I - 0x02A74C 0A:A73C: C1        .byte $C1, $3B, $C0, $F8   ; 
- D 1 - I - 0x02A750 0A:A740: C1        .byte $C1, $3D, $C0, $F0   ; 
- D 1 - I - 0x02A754 0A:A744: C1        .byte $C1, $39, $C0, $00   ; 
@end:



_off004_A748_A4:
- - - - - - 0x02A758 0A:A748: 10        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- - - - - - 0x02A759 0A:A749: C1        .byte $C1, $17, $00, $F0   ; spt_Y, spr_T, spr_A, spr_X
- - - - - - 0x02A75D 0A:A74D: C1        .byte $C1, $19, $00, $F8   ; 
- - - - - - 0x02A761 0A:A751: C1        .byte $C1, $1B, $00, $00   ; 
- - - - - - 0x02A765 0A:A755: D1        .byte $D1, $03, $00, $E8   ; 
- - - - - - 0x02A769 0A:A759: D1        .byte $D1, $1D, $00, $F0   ; 
- - - - - - 0x02A76D 0A:A75D: D1        .byte $D1, $1F, $00, $F8   ; 
- - - - - - 0x02A771 0A:A761: D1        .byte $D1, $21, $00, $00   ; 
- - - - - - 0x02A775 0A:A765: E1        .byte $E1, $0D, $00, $E8   ; 
- - - - - - 0x02A779 0A:A769: E1        .byte $E1, $0F, $00, $F0   ; 
- - - - - - 0x02A77D 0A:A76D: E1        .byte $E1, $23, $00, $F8   ; 
- - - - - - 0x02A781 0A:A771: E1        .byte $E1, $25, $00, $00   ; 
- - - - - - 0x02A785 0A:A775: F1        .byte $F1, $51, $40, $E5   ; 
- - - - - - 0x02A789 0A:A779: F1        .byte $F1, $45, $40, $ED   ; 
- - - - - - 0x02A78D 0A:A77D: F1        .byte $F1, $4D, $40, $F5   ; 
- - - - - - 0x02A791 0A:A781: F1        .byte $F1, $5B, $00, $FD   ; 
- - - - - - 0x02A795 0A:A785: F1        .byte $F1, $4B, $00, $05   ; 
@end:



_off004_A789_A5:
- D 1 - I - 0x02A799 0A:A789: 11        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A79A 0A:A78A: C1        .byte $C1, $01, $00, $0B   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A79E 0A:A78E: C1        .byte $C1, $03, $00, $13   ; 
- D 1 - I - 0x02A7A2 0A:A792: D1        .byte $D1, $05, $00, $FC   ; 
- D 1 - I - 0x02A7A6 0A:A796: D1        .byte $D1, $07, $00, $04   ; 
- D 1 - I - 0x02A7AA 0A:A79A: D1        .byte $D1, $1B, $00, $0C   ; 
- D 1 - I - 0x02A7AE 0A:A79E: D1        .byte $D1, $0B, $00, $14   ; 
- D 1 - I - 0x02A7B2 0A:A7A2: D2        .byte $D2, $1D, $00, $1C   ; 
- D 1 - I - 0x02A7B6 0A:A7A6: E1        .byte $E1, $0F, $00, $F4   ; 
- D 1 - I - 0x02A7BA 0A:A7AA: E1        .byte $E1, $1F, $00, $FC   ; 
- D 1 - I - 0x02A7BE 0A:A7AE: E1        .byte $E1, $21, $00, $04   ; 
- D 1 - I - 0x02A7C2 0A:A7B2: E1        .byte $E1, $23, $00, $0C   ; 
- D 1 - I - 0x02A7C6 0A:A7B6: E1        .byte $E1, $25, $00, $14   ; 
- D 1 - I - 0x02A7CA 0A:A7BA: F1        .byte $F1, $41, $00, $E9   ; 
- D 1 - I - 0x02A7CE 0A:A7BE: F1        .byte $F1, $43, $00, $F1   ; 
- D 1 - I - 0x02A7D2 0A:A7C2: F1        .byte $F1, $45, $00, $F9   ; 
- D 1 - I - 0x02A7D6 0A:A7C6: F1        .byte $F1, $47, $00, $01   ; 
- D 1 - I - 0x02A7DA 0A:A7CA: F1        .byte $F1, $49, $00, $09   ; 
@end:



_off004_A7CE_A6:
- - - - - - 0x02A7DE 0A:A7CE: 01        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- - - - - - 0x02A7DF 0A:A7CF: FE        .byte $FE, $27, $02, $FD   ; spt_Y, spr_T, spr_A, spr_X
@end:



_off004_A7D3_A7:
- - - - - - 0x02A7E3 0A:A7D3: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- - - - - - 0x02A7E4 0A:A7D4: FE        .byte $FE, $29, $02, $F9   ; spt_Y, spr_T, spr_A, spr_X
- - - - - - 0x02A7E8 0A:A7D8: FE        .byte $FE, $29, $42, $01   ; 
@end:



_off004_A7DC_A8:
- - - - - - 0x02A7EC 0A:A7DC: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- - - - - - 0x02A7ED 0A:A7DD: FE        .byte $FE, $2B, $02, $F9   ; spt_Y, spr_T, spr_A, spr_X
- - - - - - 0x02A7F1 0A:A7E1: FE        .byte $FE, $2B, $42, $01   ; 
@end:



_off004_A7E5_A9:
- - - - - - 0x02A7F5 0A:A7E5: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- - - - - - 0x02A7F6 0A:A7E6: FE        .byte $FE, $2D, $02, $F9   ; spt_Y, spr_T, spr_A, spr_X
- - - - - - 0x02A7FA 0A:A7EA: FE        .byte $FE, $2D, $42, $01   ; 
@end:



_off004_A7EE_AA:
- D 1 - I - 0x02A7FE 0A:A7EE: 01        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A7FF 0A:A7EF: E9        .byte $E9, $2F, $02, $EF   ; spt_Y, spr_T, spr_A, spr_X
@end:



_off004_A7F3_AB:
- D 1 - I - 0x02A803 0A:A7F3: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A804 0A:A7F4: E9        .byte $E9, $31, $02, $EF   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A808 0A:A7F8: EC        .byte $EC, $33, $02, $F7   ; 
@end:



_off004_A7FC_AC:
- D 1 - I - 0x02A80C 0A:A7FC: 06        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A80D 0A:A7FD: E9        .byte $E9, $2F, $02, $EF   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A811 0A:A801: F1        .byte $F1, $31, $02, $F7   ; 
- D 1 - I - 0x02A815 0A:A805: F7        .byte $F7, $35, $02, $FF   ; 
- D 1 - I - 0x02A819 0A:A809: EB        .byte $EB, $37, $02, $FF   ; 
- D 1 - I - 0x02A81D 0A:A80D: F4        .byte $F4, $37, $02, $07   ; 
- D 1 - I - 0x02A821 0A:A811: FC        .byte $FC, $33, $02, $07   ; 
@end:



_off004_A815_AD:
- D 1 - I - 0x02A825 0A:A815: 05        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A826 0A:A816: F1        .byte $F1, $2F, $02, $F7   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A82A 0A:A81A: F9        .byte $F9, $31, $02, $FF   ; 
- D 1 - I - 0x02A82E 0A:A81E: FD        .byte $FD, $33, $02, $07   ; 
- D 1 - I - 0x02A832 0A:A822: E5        .byte $E5, $39, $02, $FF   ; 
- D 1 - I - 0x02A836 0A:A826: EE        .byte $EE, $39, $02, $07   ; 
@end:



_off004_A82A_AE:
- D 1 - I - 0x02A83A 0A:A82A: 01        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A83B 0A:A82B: 01        .byte $01, $2F, $02, $09   ; spt_Y, spr_T, spr_A, spr_X
@end:



_off004_A82F_AF:
- D 1 - I - 0x02A83F 0A:A82F: 15        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A840 0A:A830: B1        .byte $B1, $01, $00, $14   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A844 0A:A834: B1        .byte $B1, $03, $00, $1C   ; 
- D 1 - I - 0x02A848 0A:A838: C1        .byte $C1, $05, $00, $05   ; 
- D 1 - I - 0x02A84C 0A:A83C: C1        .byte $C1, $07, $00, $0D   ; 
- D 1 - I - 0x02A850 0A:A840: C1        .byte $C1, $1B, $00, $15   ; 
- D 1 - I - 0x02A854 0A:A844: C1        .byte $C1, $0B, $00, $1D   ; 
- D 1 - I - 0x02A858 0A:A848: C2        .byte $C2, $1D, $00, $25   ; 
- D 1 - I - 0x02A85C 0A:A84C: D1        .byte $D1, $0F, $00, $FD   ; 
- D 1 - I - 0x02A860 0A:A850: D1        .byte $D1, $1F, $00, $05   ; 
- D 1 - I - 0x02A864 0A:A854: D1        .byte $D1, $21, $00, $0D   ; 
- D 1 - I - 0x02A868 0A:A858: D1        .byte $D1, $23, $00, $15   ; 
- D 1 - I - 0x02A86C 0A:A85C: D1        .byte $D1, $25, $00, $1D   ; 
- D 1 - I - 0x02A870 0A:A860: E1        .byte $E1, $4B, $40, $F3   ; 
- D 1 - I - 0x02A874 0A:A864: E1        .byte $E1, $47, $40, $FB   ; 
- D 1 - I - 0x02A878 0A:A868: E1        .byte $E1, $4D, $00, $03   ; 
- D 1 - I - 0x02A87C 0A:A86C: E1        .byte $E1, $47, $00, $0B   ; 
- D 1 - I - 0x02A880 0A:A870: E1        .byte $E1, $4B, $00, $13   ; 
- D 1 - I - 0x02A884 0A:A874: F1        .byte $F1, $59, $40, $EA   ; 
- D 1 - I - 0x02A888 0A:A878: F1        .byte $F1, $57, $40, $F2   ; 
- D 1 - I - 0x02A88C 0A:A87C: F1        .byte $F1, $53, $00, $0E   ; 
- D 1 - I - 0x02A890 0A:A880: F1        .byte $F1, $55, $00, $16   ; 
@end:



_off004_A884_B0:
- D 1 - I - 0x02A894 0A:A884: 14        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A895 0A:A885: B1        .byte $B1, $17, $00, $FB   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A899 0A:A889: B1        .byte $B1, $19, $00, $03   ; 
- D 1 - I - 0x02A89D 0A:A88D: B1        .byte $B1, $1B, $00, $0B   ; 
- D 1 - I - 0x02A8A1 0A:A891: C1        .byte $C1, $03, $00, $F3   ; 
- D 1 - I - 0x02A8A5 0A:A895: C1        .byte $C1, $1D, $00, $FB   ; 
- D 1 - I - 0x02A8A9 0A:A899: C1        .byte $C1, $1F, $00, $03   ; 
- D 1 - I - 0x02A8AD 0A:A89D: C1        .byte $C1, $21, $00, $0B   ; 
- D 1 - I - 0x02A8B1 0A:A8A1: D1        .byte $D1, $0D, $00, $F3   ; 
- D 1 - I - 0x02A8B5 0A:A8A5: D1        .byte $D1, $0F, $00, $FB   ; 
- D 1 - I - 0x02A8B9 0A:A8A9: D1        .byte $D1, $23, $00, $03   ; 
- D 1 - I - 0x02A8BD 0A:A8AD: D1        .byte $D1, $25, $00, $0B   ; 
- D 1 - I - 0x02A8C1 0A:A8B1: E1        .byte $E1, $4B, $40, $ED   ; 
- D 1 - I - 0x02A8C5 0A:A8B5: E1        .byte $E1, $47, $40, $F5   ; 
- D 1 - I - 0x02A8C9 0A:A8B9: E1        .byte $E1, $4D, $00, $FD   ; 
- D 1 - I - 0x02A8CD 0A:A8BD: E1        .byte $E1, $47, $00, $05   ; 
- D 1 - I - 0x02A8D1 0A:A8C1: E1        .byte $E1, $4B, $00, $0D   ; 
- D 1 - I - 0x02A8D5 0A:A8C5: F1        .byte $F1, $51, $40, $E8   ; 
- D 1 - I - 0x02A8D9 0A:A8C9: F1        .byte $F1, $4F, $40, $F0   ; 
- D 1 - I - 0x02A8DD 0A:A8CD: F1        .byte $F1, $53, $00, $09   ; 
- D 1 - I - 0x02A8E1 0A:A8D1: F1        .byte $F1, $55, $00, $11   ; 
@end:



_off004_A8D5_B1:
- D 1 - I - 0x02A8E5 0A:A8D5: 14        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A8E6 0A:A8D6: B1        .byte $B1, $17, $40, $FA   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A8EA 0A:A8DA: B1        .byte $B1, $19, $40, $F2   ; 
- D 1 - I - 0x02A8EE 0A:A8DE: B1        .byte $B1, $1B, $40, $EA   ; 
- D 1 - I - 0x02A8F2 0A:A8E2: C1        .byte $C1, $03, $40, $03   ; 
- D 1 - I - 0x02A8F6 0A:A8E6: C1        .byte $C1, $1D, $40, $FB   ; 
- D 1 - I - 0x02A8FA 0A:A8EA: C1        .byte $C1, $1F, $40, $F3   ; 
- D 1 - I - 0x02A8FE 0A:A8EE: C1        .byte $C1, $21, $40, $EB   ; 
- D 1 - I - 0x02A902 0A:A8F2: D1        .byte $D1, $0D, $40, $04   ; 
- D 1 - I - 0x02A906 0A:A8F6: D1        .byte $D1, $0F, $40, $FC   ; 
- D 1 - I - 0x02A90A 0A:A8FA: D1        .byte $D1, $23, $40, $F4   ; 
- D 1 - I - 0x02A90E 0A:A8FE: D1        .byte $D1, $25, $40, $EC   ; 
- D 1 - I - 0x02A912 0A:A902: E1        .byte $E1, $4B, $00, $0B   ; 
- D 1 - I - 0x02A916 0A:A906: E1        .byte $E1, $47, $00, $03   ; 
- D 1 - I - 0x02A91A 0A:A90A: E1        .byte $E1, $4D, $40, $FB   ; 
- D 1 - I - 0x02A91E 0A:A90E: E1        .byte $E1, $47, $40, $F3   ; 
- D 1 - I - 0x02A922 0A:A912: E1        .byte $E1, $4B, $40, $EB   ; 
- D 1 - I - 0x02A926 0A:A916: F1        .byte $F1, $51, $00, $10   ; 
- D 1 - I - 0x02A92A 0A:A91A: F1        .byte $F1, $4F, $00, $08   ; 
- D 1 - I - 0x02A92E 0A:A91E: F1        .byte $F1, $53, $40, $EF   ; 
- D 1 - I - 0x02A932 0A:A922: F1        .byte $F1, $55, $40, $E7   ; 
@end:



_off004_A926_B2:
- D 1 - I - 0x02A936 0A:A926: 12        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A937 0A:A927: C1        .byte $C1, $1B, $00, $F1   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A93B 0A:A92B: C1        .byte $C1, $1D, $00, $F9   ; 
- D 1 - I - 0x02A93F 0A:A92F: C1        .byte $C1, $1F, $00, $01   ; 
- D 1 - I - 0x02A943 0A:A933: C1        .byte $C1, $21, $00, $09   ; 
- D 1 - I - 0x02A947 0A:A937: D5        .byte $D5, $23, $00, $E9   ; 
- D 1 - I - 0x02A94B 0A:A93B: D1        .byte $D1, $25, $00, $F1   ; 
- D 1 - I - 0x02A94F 0A:A93F: D1        .byte $D1, $27, $00, $F9   ; 
- D 1 - I - 0x02A953 0A:A943: D1        .byte $D1, $29, $00, $01   ; 
- D 1 - I - 0x02A957 0A:A947: D1        .byte $D1, $2B, $00, $09   ; 
- D 1 - I - 0x02A95B 0A:A94B: E1        .byte $E1, $2D, $00, $F1   ; 
- D 1 - I - 0x02A95F 0A:A94F: E1        .byte $E1, $2F, $00, $F9   ; 
- D 1 - I - 0x02A963 0A:A953: E1        .byte $E1, $31, $00, $01   ; 
- D 1 - I - 0x02A967 0A:A957: E1        .byte $E1, $33, $00, $09   ; 
- D 1 - I - 0x02A96B 0A:A95B: F1        .byte $F1, $4B, $40, $ED   ; 
- D 1 - I - 0x02A96F 0A:A95F: F1        .byte $F1, $5B, $40, $F5   ; 
- D 1 - I - 0x02A973 0A:A963: F1        .byte $F1, $4D, $00, $FD   ; 
- D 1 - I - 0x02A977 0A:A967: F1        .byte $F1, $45, $00, $05   ; 
- D 1 - I - 0x02A97B 0A:A96B: F1        .byte $F1, $51, $00, $0D   ; 
@end:



_off004_A96F_B3:
- D 1 - I - 0x02A97F 0A:A96F: 14        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A980 0A:A970: C1        .byte $C1, $25, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A984 0A:A974: C1        .byte $C1, $27, $00, $00   ; 
- D 1 - I - 0x02A988 0A:A978: C1        .byte $C1, $0B, $00, $08   ; 
- D 1 - I - 0x02A98C 0A:A97C: C1        .byte $C1, $0D, $00, $10   ; 
- D 1 - I - 0x02A990 0A:A980: C1        .byte $C1, $0F, $00, $18   ; 
- D 1 - I - 0x02A994 0A:A984: D1        .byte $D1, $29, $00, $F4   ; 
- D 1 - I - 0x02A998 0A:A988: D1        .byte $D1, $2B, $00, $FC   ; 
- D 1 - I - 0x02A99C 0A:A98C: D1        .byte $D1, $2D, $00, $04   ; 
- D 1 - I - 0x02A9A0 0A:A990: D1        .byte $D1, $2F, $00, $0C   ; 
- D 1 - I - 0x02A9A4 0A:A994: D1        .byte $D1, $1B, $00, $14   ; 
- D 1 - I - 0x02A9A8 0A:A998: D1        .byte $D1, $1D, $00, $1C   ; 
- D 1 - I - 0x02A9AC 0A:A99C: E1        .byte $E1, $41, $00, $E9   ; 
- D 1 - I - 0x02A9B0 0A:A9A0: E1        .byte $E1, $43, $00, $F1   ; 
- D 1 - I - 0x02A9B4 0A:A9A4: E1        .byte $E1, $45, $00, $F9   ; 
- D 1 - I - 0x02A9B8 0A:A9A8: E1        .byte $E1, $47, $00, $01   ; 
- D 1 - I - 0x02A9BC 0A:A9AC: E1        .byte $E1, $4B, $00, $09   ; 
- D 1 - I - 0x02A9C0 0A:A9B0: F1        .byte $F1, $4F, $00, $F1   ; 
- D 1 - I - 0x02A9C4 0A:A9B4: F1        .byte $F1, $51, $00, $F9   ; 
- D 1 - I - 0x02A9C8 0A:A9B8: F1        .byte $F1, $53, $00, $04   ; 
- D 1 - I - 0x02A9CC 0A:A9BC: F1        .byte $F1, $55, $00, $0C   ; 
@end:



_off004_A9C0_B4:
- D 1 - I - 0x02A9D0 0A:A9C0: 12        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02A9D1 0A:A9C1: AD        .byte $AD, $01, $00, $F0   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02A9D5 0A:A9C5: AD        .byte $AD, $03, $00, $F8   ; 
- D 1 - I - 0x02A9D9 0A:A9C9: BD        .byte $BD, $05, $00, $F4   ; 
- D 1 - I - 0x02A9DD 0A:A9CD: BD        .byte $BD, $07, $00, $FC   ; 
- D 1 - I - 0x02A9E1 0A:A9D1: BD        .byte $BD, $09, $00, $04   ; 
- D 1 - I - 0x02A9E5 0A:A9D5: BD        .byte $BD, $0B, $00, $0C   ; 
- D 1 - I - 0x02A9E9 0A:A9D9: BD        .byte $BD, $0D, $00, $14   ; 
- D 1 - I - 0x02A9ED 0A:A9DD: BD        .byte $BD, $0F, $00, $1C   ; 
- D 1 - I - 0x02A9F1 0A:A9E1: CD        .byte $CD, $11, $00, $F0   ; 
- D 1 - I - 0x02A9F5 0A:A9E5: CD        .byte $CD, $13, $00, $F8   ; 
- D 1 - I - 0x02A9F9 0A:A9E9: CD        .byte $CD, $15, $00, $00   ; 
- D 1 - I - 0x02A9FD 0A:A9ED: CD        .byte $CD, $17, $00, $08   ; 
- D 1 - I - 0x02AA01 0A:A9F1: CD        .byte $CD, $19, $00, $10   ; 
- D 1 - I - 0x02AA05 0A:A9F5: CD        .byte $CD, $1B, $00, $18   ; 
- D 1 - I - 0x02AA09 0A:A9F9: CD        .byte $CD, $1D, $00, $20   ; 
- D 1 - I - 0x02AA0D 0A:A9FD: DD        .byte $DD, $1F, $00, $F5   ; 
- D 1 - I - 0x02AA11 0A:AA01: DD        .byte $DD, $21, $00, $FD   ; 
- D 1 - I - 0x02AA15 0A:AA05: DD        .byte $DD, $23, $00, $05   ; 
@end:



_off004_AA09_B5:
- D 1 - I - 0x02AA19 0A:AA09: 16        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AA1A 0A:AA0A: D1        .byte $D1, $01, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AA1E 0A:AA0E: D1        .byte $D1, $03, $00, $F3   ; 
- D 1 - I - 0x02AA22 0A:AA12: D1        .byte $D1, $05, $00, $FB   ; 
- D 1 - I - 0x02AA26 0A:AA16: D1        .byte $D1, $07, $00, $03   ; 
- D 1 - I - 0x02AA2A 0A:AA1A: D1        .byte $D1, $09, $00, $0B   ; 
- D 1 - I - 0x02AA2E 0A:AA1E: D1        .byte $D1, $0B, $00, $13   ; 
- D 1 - I - 0x02AA32 0A:AA22: D1        .byte $D1, $0D, $00, $1B   ; 
- D 1 - I - 0x02AA36 0A:AA26: D1        .byte $D1, $0F, $00, $23   ; 
- D 1 - I - 0x02AA3A 0A:AA2A: E1        .byte $E1, $11, $00, $EA   ; 
- D 1 - I - 0x02AA3E 0A:AA2E: E1        .byte $E1, $13, $00, $F2   ; 
- D 1 - I - 0x02AA42 0A:AA32: E1        .byte $E1, $15, $00, $FA   ; 
- D 1 - I - 0x02AA46 0A:AA36: E1        .byte $E1, $17, $00, $02   ; 
- D 1 - I - 0x02AA4A 0A:AA3A: E1        .byte $E1, $19, $00, $0A   ; 
- D 1 - I - 0x02AA4E 0A:AA3E: E1        .byte $E1, $1B, $00, $12   ; 
- D 1 - I - 0x02AA52 0A:AA42: E1        .byte $E1, $1D, $00, $1A   ; 
- D 1 - I - 0x02AA56 0A:AA46: F1        .byte $F1, $1F, $00, $E5   ; 
- D 1 - I - 0x02AA5A 0A:AA4A: F1        .byte $F1, $21, $00, $ED   ; 
- D 1 - I - 0x02AA5E 0A:AA4E: F1        .byte $F1, $23, $00, $F5   ; 
- D 1 - I - 0x02AA62 0A:AA52: F1        .byte $F1, $25, $00, $FD   ; 
- D 1 - I - 0x02AA66 0A:AA56: F1        .byte $F1, $27, $00, $05   ; 
- D 1 - I - 0x02AA6A 0A:AA5A: F1        .byte $F1, $29, $00, $0D   ; 
- D 1 - I - 0x02AA6E 0A:AA5E: F1        .byte $F1, $2B, $00, $15   ; 
@end:



_off004_AA62_B6:
- D 1 - I - 0x02AA72 0A:AA62: 18        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AA73 0A:AA63: A1        .byte $A1, $01, $00, $1E   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AA77 0A:AA67: B1        .byte $B1, $03, $00, $06   ; 
- D 1 - I - 0x02AA7B 0A:AA6B: B1        .byte $B1, $05, $00, $0E   ; 
- D 1 - I - 0x02AA7F 0A:AA6F: B1        .byte $B1, $07, $00, $16   ; 
- D 1 - I - 0x02AA83 0A:AA73: B1        .byte $B1, $09, $00, $1E   ; 
- D 1 - I - 0x02AA87 0A:AA77: AB        .byte $AB, $0B, $00, $26   ; 
- D 1 - I - 0x02AA8B 0A:AA7B: C1        .byte $C1, $0D, $00, $FC   ; 
- D 1 - I - 0x02AA8F 0A:AA7F: C1        .byte $C1, $0F, $00, $04   ; 
- D 1 - I - 0x02AA93 0A:AA83: C1        .byte $C1, $11, $00, $0C   ; 
- D 1 - I - 0x02AA97 0A:AA87: C1        .byte $C1, $13, $00, $14   ; 
- D 1 - I - 0x02AA9B 0A:AA8B: C1        .byte $C1, $15, $00, $1C   ; 
- D 1 - I - 0x02AA9F 0A:AA8F: D1        .byte $D1, $17, $00, $F8   ; 
- D 1 - I - 0x02AAA3 0A:AA93: D1        .byte $D1, $19, $00, $00   ; 
- D 1 - I - 0x02AAA7 0A:AA97: D1        .byte $D1, $1D, $00, $10   ; 
- D 1 - I - 0x02AAAB 0A:AA9B: E1        .byte $E1, $41, $00, $EF   ; 
- D 1 - I - 0x02AAAF 0A:AA9F: E1        .byte $E1, $23, $00, $F7   ; 
- D 1 - I - 0x02AAB3 0A:AAA3: E1        .byte $E1, $4D, $40, $FF   ; 
- D 1 - I - 0x02AAB7 0A:AAA7: E1        .byte $E1, $47, $00, $07   ; 
- D 1 - I - 0x02AABB 0A:AAAB: E1        .byte $E1, $25, $00, $0F   ; 
- D 1 - I - 0x02AABF 0A:AAAF: F1        .byte $F1, $1F, $00, $EF   ; 
- D 1 - I - 0x02AAC3 0A:AAB3: F1        .byte $F1, $21, $00, $F7   ; 
- D 1 - I - 0x02AAC7 0A:AAB7: F1        .byte $F1, $53, $00, $08   ; 
- D 1 - I - 0x02AACB 0A:AABB: F1        .byte $F1, $55, $00, $10   ; 
- D 1 - I - 0x02AACF 0A:AABF: D1        .byte $D1, $1B, $00, $08   ; 
@end:



_off004_AAC3_B7:
- D 1 - I - 0x02AAD3 0A:AAC3: 16        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AAD4 0A:AAC4: B1        .byte $B1, $1D, $00, $06   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AAD8 0A:AAC8: C1        .byte $C1, $1F, $00, $F6   ; 
- D 1 - I - 0x02AADC 0A:AACC: C1        .byte $C1, $21, $00, $FE   ; 
- D 1 - I - 0x02AAE0 0A:AAD0: C1        .byte $C1, $23, $00, $06   ; 
- D 1 - I - 0x02AAE4 0A:AAD4: C1        .byte $C1, $25, $00, $0E   ; 
- D 1 - I - 0x02AAE8 0A:AAD8: C1        .byte $C1, $27, $00, $16   ; 
- D 1 - I - 0x02AAEC 0A:AADC: D1        .byte $D1, $29, $00, $F0   ; 
- D 1 - I - 0x02AAF0 0A:AAE0: D1        .byte $D1, $2B, $00, $F8   ; 
- D 1 - I - 0x02AAF4 0A:AAE4: D1        .byte $D1, $2D, $00, $00   ; 
- D 1 - I - 0x02AAF8 0A:AAE8: D1        .byte $D1, $2F, $00, $08   ; 
- D 1 - I - 0x02AAFC 0A:AAEC: D1        .byte $D1, $33, $00, $18   ; 
- D 1 - I - 0x02AB00 0A:AAF0: D1        .byte $D1, $35, $00, $20   ; 
- D 1 - I - 0x02AB04 0A:AAF4: E1        .byte $E1, $41, $00, $E8   ; 
- D 1 - I - 0x02AB08 0A:AAF8: E1        .byte $E1, $43, $00, $F0   ; 
- D 1 - I - 0x02AB0C 0A:AAFC: E1        .byte $E1, $45, $00, $F8   ; 
- D 1 - I - 0x02AB10 0A:AB00: E1        .byte $E1, $47, $00, $00   ; 
- D 1 - I - 0x02AB14 0A:AB04: E1        .byte $E1, $4B, $00, $08   ; 
- D 1 - I - 0x02AB18 0A:AB08: F1        .byte $F1, $4F, $00, $F0   ; 
- D 1 - I - 0x02AB1C 0A:AB0C: F1        .byte $F1, $51, $00, $F8   ; 
- D 1 - I - 0x02AB20 0A:AB10: F1        .byte $F1, $53, $00, $03   ; 
- D 1 - I - 0x02AB24 0A:AB14: F1        .byte $F1, $55, $00, $0B   ; 
- D 1 - I - 0x02AB28 0A:AB18: D1        .byte $D1, $31, $00, $10   ; 
@end:



_off004_AB1C_B8:
- D 1 - I - 0x02AB2C 0A:AB1C: 16        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AB2D 0A:AB1D: B1        .byte $B1, $27, $00, $E2   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AB31 0A:AB21: B1        .byte $B1, $29, $00, $EA   ; 
- D 1 - I - 0x02AB35 0A:AB25: B1        .byte $B1, $2B, $00, $F2   ; 
- D 1 - I - 0x02AB39 0A:AB29: B1        .byte $B1, $2D, $00, $FA   ; 
- D 1 - I - 0x02AB3D 0A:AB2D: C1        .byte $C1, $2F, $00, $E2   ; 
- D 1 - I - 0x02AB41 0A:AB31: C1        .byte $C1, $31, $00, $EA   ; 
- D 1 - I - 0x02AB45 0A:AB35: C1        .byte $C1, $33, $00, $F2   ; 
- D 1 - I - 0x02AB49 0A:AB39: C1        .byte $C1, $35, $00, $FA   ; 
- D 1 - I - 0x02AB4D 0A:AB3D: D1        .byte $D1, $37, $00, $E3   ; 
- D 1 - I - 0x02AB51 0A:AB41: D1        .byte $D1, $39, $00, $EB   ; 
- D 1 - I - 0x02AB55 0A:AB45: D1        .byte $D1, $3B, $00, $F3   ; 
- D 1 - I - 0x02AB59 0A:AB49: D1        .byte $D1, $3D, $00, $FB   ; 
- D 1 - I - 0x02AB5D 0A:AB4D: D1        .byte $D1, $3F, $00, $03   ; 
- D 1 - I - 0x02AB61 0A:AB51: E1        .byte $E1, $4B, $40, $E3   ; 
- D 1 - I - 0x02AB65 0A:AB55: E1        .byte $E1, $47, $40, $EB   ; 
- D 1 - I - 0x02AB69 0A:AB59: E1        .byte $E1, $4D, $40, $F3   ; 
- D 1 - I - 0x02AB6D 0A:AB5D: E1        .byte $E1, $47, $00, $FB   ; 
- D 1 - I - 0x02AB71 0A:AB61: E1        .byte $E1, $4B, $00, $03   ; 
- D 1 - I - 0x02AB75 0A:AB65: F1        .byte $F1, $51, $40, $E0   ; 
- D 1 - I - 0x02AB79 0A:AB69: F1        .byte $F1, $4F, $40, $E8   ; 
- D 1 - I - 0x02AB7D 0A:AB6D: F1        .byte $F1, $57, $00, $03   ; 
- D 1 - I - 0x02AB81 0A:AB71: F1        .byte $F1, $59, $00, $0B   ; 
@end:



_off004_AB75_B9:
- D 1 - I - 0x02AB85 0A:AB75: 14        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AB86 0A:AB76: B1        .byte $B1, $01, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AB8A 0A:AB7A: B1        .byte $B1, $03, $00, $00   ; 
- D 1 - I - 0x02AB8E 0A:AB7E: B1        .byte $B1, $05, $00, $08   ; 
- D 1 - I - 0x02AB92 0A:AB82: C1        .byte $C1, $07, $00, $F7   ; 
- D 1 - I - 0x02AB96 0A:AB86: C1        .byte $C1, $09, $00, $FF   ; 
- D 1 - I - 0x02AB9A 0A:AB8A: C1        .byte $C1, $0B, $00, $07   ; 
- D 1 - I - 0x02AB9E 0A:AB8E: C1        .byte $C1, $0D, $00, $0F   ; 
- D 1 - I - 0x02ABA2 0A:AB92: D1        .byte $D1, $0F, $00, $F5   ; 
- D 1 - I - 0x02ABA6 0A:AB96: D1        .byte $D1, $11, $00, $FD   ; 
- D 1 - I - 0x02ABAA 0A:AB9A: D1        .byte $D1, $13, $00, $05   ; 
- D 1 - I - 0x02ABAE 0A:AB9E: D1        .byte $D1, $15, $00, $0D   ; 
- D 1 - I - 0x02ABB2 0A:ABA2: E1        .byte $E1, $4B, $40, $ED   ; 
- D 1 - I - 0x02ABB6 0A:ABA6: E1        .byte $E1, $17, $00, $F5   ; 
- D 1 - I - 0x02ABBA 0A:ABAA: E1        .byte $E1, $4D, $00, $FD   ; 
- D 1 - I - 0x02ABBE 0A:ABAE: E1        .byte $E1, $19, $00, $05   ; 
- D 1 - I - 0x02ABC2 0A:ABB2: E1        .byte $E1, $1B, $00, $0D   ; 
- D 1 - I - 0x02ABC6 0A:ABB6: F1        .byte $F1, $59, $40, $E5   ; 
- D 1 - I - 0x02ABCA 0A:ABBA: F1        .byte $F1, $57, $40, $ED   ; 
- D 1 - I - 0x02ABCE 0A:ABBE: F1        .byte $F1, $4F, $00, $08   ; 
- D 1 - I - 0x02ABD2 0A:ABC2: F1        .byte $F1, $51, $00, $10   ; 
@end:



_off004_ABC6_BA:
- D 1 - I - 0x02ABD6 0A:ABC6: 13        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02ABD7 0A:ABC7: C1        .byte $C1, $01, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02ABDB 0A:ABCB: C1        .byte $C1, $03, $00, $00   ; 
- D 1 - I - 0x02ABDF 0A:ABCF: C1        .byte $C1, $05, $00, $08   ; 
- D 1 - I - 0x02ABE3 0A:ABD3: D1        .byte $D1, $07, $00, $F7   ; 
- D 1 - I - 0x02ABE7 0A:ABD7: D1        .byte $D1, $09, $00, $FF   ; 
- D 1 - I - 0x02ABEB 0A:ABDB: D1        .byte $D1, $0B, $00, $07   ; 
- D 1 - I - 0x02ABEF 0A:ABDF: D1        .byte $D1, $0D, $00, $0F   ; 
- D 1 - I - 0x02ABF3 0A:ABE3: E1        .byte $E1, $0F, $00, $F5   ; 
- D 1 - I - 0x02ABF7 0A:ABE7: E1        .byte $E1, $11, $00, $FD   ; 
- D 1 - I - 0x02ABFB 0A:ABEB: E1        .byte $E1, $13, $00, $05   ; 
- D 1 - I - 0x02ABFF 0A:ABEF: E1        .byte $E1, $15, $00, $0D   ; 
- D 1 - I - 0x02AC03 0A:ABF3: F1        .byte $F1, $4B, $40, $ED   ; 
- D 1 - I - 0x02AC07 0A:ABF7: 01        .byte $01, $5D, $00, $EF   ; 
- D 1 - I - 0x02AC0B 0A:ABFB: F1        .byte $F1, $37, $00, $05   ; 
- D 1 - I - 0x02AC0F 0A:ABFF: F1        .byte $F1, $39, $00, $0D   ; 
- D 1 - I - 0x02AC13 0A:AC03: 01        .byte $01, $3B, $00, $00   ; 
- D 1 - I - 0x02AC17 0A:AC07: 01        .byte $01, $3D, $00, $08   ; 
- D 1 - I - 0x02AC1B 0A:AC0B: F1        .byte $F1, $17, $00, $F5   ; 
- D 1 - I - 0x02AC1F 0A:AC0F: F1        .byte $F1, $4D, $00, $FD   ; 
@end:



_off004_AC13_BB:
- D 1 - I - 0x02AC23 0A:AC13: 0E        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AC24 0A:AC14: E1        .byte $E1, $01, $00, $E9   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AC28 0A:AC18: F1        .byte $F1, $03, $00, $E8   ; 
- D 1 - I - 0x02AC2C 0A:AC1C: F1        .byte $F1, $05, $00, $F0   ; 
- D 1 - I - 0x02AC30 0A:AC20: F1        .byte $F1, $07, $00, $F8   ; 
- D 1 - I - 0x02AC34 0A:AC24: F1        .byte $F1, $09, $00, $00   ; 
- D 1 - I - 0x02AC38 0A:AC28: F1        .byte $F1, $0B, $00, $08   ; 
- D 1 - I - 0x02AC3C 0A:AC2C: F1        .byte $F1, $0D, $00, $10   ; 
- D 1 - I - 0x02AC40 0A:AC30: 01        .byte $01, $0F, $00, $E4   ; 
- D 1 - I - 0x02AC44 0A:AC34: 01        .byte $01, $11, $00, $EC   ; 
- D 1 - I - 0x02AC48 0A:AC38: 01        .byte $01, $13, $00, $F4   ; 
- D 1 - I - 0x02AC4C 0A:AC3C: 01        .byte $01, $15, $00, $FC   ; 
- D 1 - I - 0x02AC50 0A:AC40: 01        .byte $01, $17, $00, $04   ; 
- D 1 - I - 0x02AC54 0A:AC44: 01        .byte $01, $19, $00, $0C   ; 
- D 1 - I - 0x02AC58 0A:AC48: 01        .byte $01, $1B, $00, $14   ; 
@end:



_off004_AC4C_BC:
- D 1 - I - 0x02AC5C 0A:AC4C: 19        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AC5D 0A:AC4D: B4        .byte $B4, $3B, $00, $E7   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AC61 0A:AC51: C4        .byte $C4, $3D, $00, $E0   ; 
- D 1 - I - 0x02AC65 0A:AC55: C4        .byte $C4, $3F, $00, $E8   ; 
- D 1 - I - 0x02AC69 0A:AC59: B4        .byte $B4, $3B, $40, $11   ; 
- D 1 - I - 0x02AC6D 0A:AC5D: C4        .byte $C4, $3F, $40, $10   ; 
- D 1 - I - 0x02AC71 0A:AC61: C4        .byte $C4, $3D, $40, $18   ; 
- D 1 - I - 0x02AC75 0A:AC65: B1        .byte $B1, $31, $00, $F8   ; 
- D 1 - I - 0x02AC79 0A:AC69: B1        .byte $B1, $31, $40, $00   ; 
- D 1 - I - 0x02AC7D 0A:AC6D: C1        .byte $C1, $33, $00, $F0   ; 
- D 1 - I - 0x02AC81 0A:AC71: C1        .byte $C1, $35, $00, $F8   ; 
- D 1 - I - 0x02AC85 0A:AC75: D1        .byte $D1, $37, $00, $F0   ; 
- D 1 - I - 0x02AC89 0A:AC79: D1        .byte $D1, $39, $00, $F8   ; 
- D 1 - I - 0x02AC8D 0A:AC7D: C1        .byte $C1, $33, $40, $08   ; 
- D 1 - I - 0x02AC91 0A:AC81: C1        .byte $C1, $35, $40, $00   ; 
- D 1 - I - 0x02AC95 0A:AC85: D1        .byte $D1, $39, $40, $00   ; 
- D 1 - I - 0x02AC99 0A:AC89: D1        .byte $D1, $37, $40, $08   ; 
- D 1 - I - 0x02AC9D 0A:AC8D: F1        .byte $F1, $51, $40, $E9   ; 
- D 1 - I - 0x02ACA1 0A:AC91: F1        .byte $F1, $4F, $40, $F1   ; 
- D 1 - I - 0x02ACA5 0A:AC95: F1        .byte $F1, $4F, $00, $07   ; 
- D 1 - I - 0x02ACA9 0A:AC99: F1        .byte $F1, $51, $00, $0F   ; 
- D 1 - I - 0x02ACAD 0A:AC9D: E1        .byte $E1, $4B, $40, $EC   ; 
- D 1 - I - 0x02ACB1 0A:ACA1: E1        .byte $E1, $4B, $00, $0C   ; 
- D 1 - I - 0x02ACB5 0A:ACA5: E1        .byte $E1, $4D, $40, $FC   ; 
- D 1 - I - 0x02ACB9 0A:ACA9: E1        .byte $E1, $47, $00, $04   ; 
- D 1 - I - 0x02ACBD 0A:ACAD: E1        .byte $E1, $47, $40, $F4   ; 
@end:



_off004_ACB1_BD:
- D 1 - I - 0x02ACC1 0A:ACB1: 1D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02ACC2 0A:ACB2: A1        .byte $A1, $33, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02ACC6 0A:ACB6: B1        .byte $B1, $35, $00, $F8   ; 
- D 1 - I - 0x02ACCA 0A:ACBA: C1        .byte $C1, $37, $00, $F0   ; 
- D 1 - I - 0x02ACCE 0A:ACBE: C1        .byte $C1, $39, $00, $F8   ; 
- D 1 - I - 0x02ACD2 0A:ACC2: D1        .byte $D1, $2D, $00, $F0   ; 
- D 1 - I - 0x02ACD6 0A:ACC6: D1        .byte $D1, $2F, $00, $F8   ; 
- D 1 - I - 0x02ACDA 0A:ACCA: C2        .byte $C2, $3D, $00, $E0   ; 
- D 1 - I - 0x02ACDE 0A:ACCE: C2        .byte $C2, $3F, $00, $E8   ; 
- D 1 - I - 0x02ACE2 0A:ACD2: B2        .byte $B2, $3B, $00, $E7   ; 
- D 1 - I - 0x02ACE6 0A:ACD6: B2        .byte $B2, $3B, $40, $11   ; 
- D 1 - I - 0x02ACEA 0A:ACDA: C2        .byte $C2, $3F, $40, $10   ; 
- D 1 - I - 0x02ACEE 0A:ACDE: C2        .byte $C2, $3D, $40, $18   ; 
- D 1 - I - 0x02ACF2 0A:ACE2: E1        .byte $E1, $4B, $40, $EC   ; 
- D 1 - I - 0x02ACF6 0A:ACE6: E1        .byte $E1, $4B, $00, $0C   ; 
- D 1 - I - 0x02ACFA 0A:ACEA: E1        .byte $E1, $4D, $40, $FC   ; 
- D 1 - I - 0x02ACFE 0A:ACEE: F1        .byte $F1, $4F, $40, $F1   ; 
- D 1 - I - 0x02AD02 0A:ACF2: F1        .byte $F1, $51, $40, $E9   ; 
- D 1 - I - 0x02AD06 0A:ACF6: F1        .byte $F1, $4F, $00, $07   ; 
- D 1 - I - 0x02AD0A 0A:ACFA: F1        .byte $F1, $51, $00, $0F   ; 
- D 1 - I - 0x02AD0E 0A:ACFE: E1        .byte $E1, $47, $00, $04   ; 
- D 1 - I - 0x02AD12 0A:AD02: E1        .byte $E1, $47, $40, $F4   ; 
- D 1 - I - 0x02AD16 0A:AD06: D1        .byte $D1, $2D, $40, $08   ; 
- D 1 - I - 0x02AD1A 0A:AD0A: D1        .byte $D1, $2F, $40, $00   ; 
- D 1 - I - 0x02AD1E 0A:AD0E: C1        .byte $C1, $39, $40, $00   ; 
- D 1 - I - 0x02AD22 0A:AD12: C1        .byte $C1, $37, $40, $08   ; 
- D 1 - I - 0x02AD26 0A:AD16: B1        .byte $B1, $35, $40, $00   ; 
- D 1 - I - 0x02AD2A 0A:AD1A: A1        .byte $A1, $33, $40, $00   ; 
- D 1 - I - 0x02AD2E 0A:AD1E: B1        .byte $B1, $31, $40, $08   ; 
- D 1 - I - 0x02AD32 0A:AD22: B1        .byte $B1, $31, $00, $F0   ; 
@end:



_off004_AD26_BE:
- D 1 - I - 0x02AD36 0A:AD26: 1B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AD37 0A:AD27: B1        .byte $B1, $23, $40, $F0   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AD3B 0A:AD2B: B1        .byte $B1, $21, $40, $F8   ; 
- D 1 - I - 0x02AD3F 0A:AD2F: B1        .byte $B1, $1D, $40, $08   ; 
- D 1 - I - 0x02AD43 0A:AD33: B1        .byte $B1, $1F, $40, $00   ; 
- D 1 - I - 0x02AD47 0A:AD37: B1        .byte $B1, $3B, $00, $E7   ; 
- D 1 - I - 0x02AD4B 0A:AD3B: C1        .byte $C1, $3D, $00, $E0   ; 
- D 1 - I - 0x02AD4F 0A:AD3F: C1        .byte $C1, $3F, $00, $E8   ; 
- D 1 - I - 0x02AD53 0A:AD43: C1        .byte $C1, $2B, $40, $F0   ; 
- D 1 - I - 0x02AD57 0A:AD47: C1        .byte $C1, $25, $40, $08   ; 
- D 1 - I - 0x02AD5B 0A:AD4B: C1        .byte $C1, $27, $40, $00   ; 
- D 1 - I - 0x02AD5F 0A:AD4F: C1        .byte $C1, $29, $40, $F8   ; 
- D 1 - I - 0x02AD63 0A:AD53: D1        .byte $D1, $2D, $00, $F0   ; 
- D 1 - I - 0x02AD67 0A:AD57: D1        .byte $D1, $2F, $00, $F8   ; 
- D 1 - I - 0x02AD6B 0A:AD5B: D1        .byte $D1, $2F, $40, $00   ; 
- D 1 - I - 0x02AD6F 0A:AD5F: D1        .byte $D1, $2D, $40, $08   ; 
- D 1 - I - 0x02AD73 0A:AD63: E1        .byte $E1, $4B, $40, $EC   ; 
- D 1 - I - 0x02AD77 0A:AD67: E1        .byte $E1, $47, $40, $F4   ; 
- D 1 - I - 0x02AD7B 0A:AD6B: E1        .byte $E1, $4D, $40, $FC   ; 
- D 1 - I - 0x02AD7F 0A:AD6F: E1        .byte $E1, $47, $00, $04   ; 
- D 1 - I - 0x02AD83 0A:AD73: E1        .byte $E1, $4B, $00, $0C   ; 
- D 1 - I - 0x02AD87 0A:AD77: F1        .byte $F1, $4F, $40, $F1   ; 
- D 1 - I - 0x02AD8B 0A:AD7B: F1        .byte $F1, $51, $40, $E9   ; 
- D 1 - I - 0x02AD8F 0A:AD7F: F1        .byte $F1, $4F, $00, $07   ; 
- D 1 - I - 0x02AD93 0A:AD83: F1        .byte $F1, $51, $00, $0F   ; 
- D 1 - I - 0x02AD97 0A:AD87: C1        .byte $C1, $3F, $40, $10   ; 
- D 1 - I - 0x02AD9B 0A:AD8B: C1        .byte $C1, $3D, $40, $18   ; 
- D 1 - I - 0x02AD9F 0A:AD8F: B1        .byte $B1, $3B, $40, $11   ; 
@end:



_off004_AD93_BF:
- D 1 - I - 0x02ADA3 0A:AD93: 1B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02ADA4 0A:AD94: B1        .byte $B1, $3B, $00, $E7   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02ADA8 0A:AD98: C1        .byte $C1, $3D, $00, $E0   ; 
- D 1 - I - 0x02ADAC 0A:AD9C: C1        .byte $C1, $3F, $00, $E8   ; 
- D 1 - I - 0x02ADB0 0A:ADA0: B1        .byte $B1, $3B, $40, $11   ; 
- D 1 - I - 0x02ADB4 0A:ADA4: C1        .byte $C1, $3F, $40, $10   ; 
- D 1 - I - 0x02ADB8 0A:ADA8: C1        .byte $C1, $3D, $40, $18   ; 
- D 1 - I - 0x02ADBC 0A:ADAC: B1        .byte $B1, $1D, $00, $F0   ; 
- D 1 - I - 0x02ADC0 0A:ADB0: B1        .byte $B1, $1F, $00, $F8   ; 
- D 1 - I - 0x02ADC4 0A:ADB4: B1        .byte $B1, $21, $00, $00   ; 
- D 1 - I - 0x02ADC8 0A:ADB8: B1        .byte $B1, $23, $00, $08   ; 
- D 1 - I - 0x02ADCC 0A:ADBC: C1        .byte $C1, $25, $00, $F0   ; 
- D 1 - I - 0x02ADD0 0A:ADC0: C1        .byte $C1, $27, $00, $F8   ; 
- D 1 - I - 0x02ADD4 0A:ADC4: C1        .byte $C1, $29, $00, $00   ; 
- D 1 - I - 0x02ADD8 0A:ADC8: C1        .byte $C1, $2B, $00, $08   ; 
- D 1 - I - 0x02ADDC 0A:ADCC: D1        .byte $D1, $2D, $00, $F0   ; 
- D 1 - I - 0x02ADE0 0A:ADD0: D1        .byte $D1, $2F, $00, $F8   ; 
- D 1 - I - 0x02ADE4 0A:ADD4: D1        .byte $D1, $2F, $40, $00   ; 
- D 1 - I - 0x02ADE8 0A:ADD8: D1        .byte $D1, $2D, $40, $08   ; 
- D 1 - I - 0x02ADEC 0A:ADDC: E1        .byte $E1, $4B, $40, $EC   ; 
- D 1 - I - 0x02ADF0 0A:ADE0: E1        .byte $E1, $47, $40, $F4   ; 
- D 1 - I - 0x02ADF4 0A:ADE4: E1        .byte $E1, $4D, $40, $FC   ; 
- D 1 - I - 0x02ADF8 0A:ADE8: E1        .byte $E1, $47, $00, $04   ; 
- D 1 - I - 0x02ADFC 0A:ADEC: E1        .byte $E1, $4B, $00, $0C   ; 
- D 1 - I - 0x02AE00 0A:ADF0: F1        .byte $F1, $4F, $40, $F1   ; 
- D 1 - I - 0x02AE04 0A:ADF4: F1        .byte $F1, $51, $40, $E9   ; 
- D 1 - I - 0x02AE08 0A:ADF8: F1        .byte $F1, $4F, $00, $07   ; 
- D 1 - I - 0x02AE0C 0A:ADFC: F1        .byte $F1, $51, $00, $0F   ; 
@end:



_off004_AE00_C0:
- D 1 - I - 0x02AE10 0A:AE00: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AE11 0A:AE01: F8        .byte $F8, $73, $02, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AE15 0A:AE05: F8        .byte $F8, $73, $C2, $00   ; 
@end:



_off004_AE09_C1:
- D 1 - I - 0x02AE19 0A:AE09: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AE1A 0A:AE0A: F8        .byte $F8, $75, $02, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AE1E 0A:AE0E: F8        .byte $F8, $75, $C2, $00   ; 
@end:



_off004_AE12_C2:
- D 1 - I - 0x02AE22 0A:AE12: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AE23 0A:AE13: F8        .byte $F8, $77, $02, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AE27 0A:AE17: F8        .byte $F8, $77, $C2, $00   ; 
@end:



_off004_AE1B_C3:
- D 1 - I - 0x02AE2B 0A:AE1B: 15        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AE2C 0A:AE1C: B1        .byte $B1, $01, $00, $FD   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AE30 0A:AE20: B1        .byte $B1, $03, $00, $05   ; 
- D 1 - I - 0x02AE34 0A:AE24: B1        .byte $B1, $05, $00, $0D   ; 
- D 1 - I - 0x02AE38 0A:AE28: B1        .byte $B1, $07, $00, $15   ; 
- D 1 - I - 0x02AE3C 0A:AE2C: B1        .byte $B1, $09, $00, $1D   ; 
- D 1 - I - 0x02AE40 0A:AE30: C1        .byte $C1, $0B, $00, $FA   ; 
- D 1 - I - 0x02AE44 0A:AE34: C1        .byte $C1, $0D, $00, $02   ; 
- D 1 - I - 0x02AE48 0A:AE38: C1        .byte $C1, $0F, $00, $0A   ; 
- D 1 - I - 0x02AE4C 0A:AE3C: C1        .byte $C1, $11, $00, $12   ; 
- D 1 - I - 0x02AE50 0A:AE40: C1        .byte $C1, $13, $00, $1A   ; 
- D 1 - I - 0x02AE54 0A:AE44: D1        .byte $D1, $15, $00, $F5   ; 
- D 1 - I - 0x02AE58 0A:AE48: D1        .byte $D1, $17, $00, $FD   ; 
- D 1 - I - 0x02AE5C 0A:AE4C: D1        .byte $D1, $19, $00, $05   ; 
- D 1 - I - 0x02AE60 0A:AE50: D1        .byte $D1, $1B, $00, $0D   ; 
- D 1 - I - 0x02AE64 0A:AE54: D1        .byte $D1, $1D, $00, $15   ; 
- D 1 - I - 0x02AE68 0A:AE58: E1        .byte $E1, $1F, $00, $F0   ; 
- D 1 - I - 0x02AE6C 0A:AE5C: E1        .byte $E1, $21, $00, $F8   ; 
- D 1 - I - 0x02AE70 0A:AE60: E1        .byte $E1, $23, $00, $00   ; 
- D 1 - I - 0x02AE74 0A:AE64: E1        .byte $E1, $25, $00, $08   ; 
- D 1 - I - 0x02AE78 0A:AE68: F1        .byte $F1, $27, $00, $F9   ; 
- D 1 - I - 0x02AE7C 0A:AE6C: F1        .byte $F1, $29, $00, $01   ; 
@end:



_off004_AE70_C4:
- D 1 - I - 0x02AE80 0A:AE70: 15        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AE81 0A:AE71: A6        .byte $A6, $01, $00, $00   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AE85 0A:AE75: A6        .byte $A6, $03, $00, $08   ; 
- D 1 - I - 0x02AE89 0A:AE79: A6        .byte $A6, $05, $00, $10   ; 
- D 1 - I - 0x02AE8D 0A:AE7D: A6        .byte $A6, $07, $00, $18   ; 
- D 1 - I - 0x02AE91 0A:AE81: A6        .byte $A6, $09, $00, $20   ; 
- D 1 - I - 0x02AE95 0A:AE85: B6        .byte $B6, $0B, $00, $FD   ; 
- D 1 - I - 0x02AE99 0A:AE89: B6        .byte $B6, $0D, $00, $05   ; 
- D 1 - I - 0x02AE9D 0A:AE8D: B6        .byte $B6, $0F, $00, $0D   ; 
- D 1 - I - 0x02AEA1 0A:AE91: B6        .byte $B6, $11, $00, $15   ; 
- D 1 - I - 0x02AEA5 0A:AE95: B6        .byte $B6, $13, $00, $1D   ; 
- D 1 - I - 0x02AEA9 0A:AE99: C6        .byte $C6, $2B, $00, $F8   ; 
- D 1 - I - 0x02AEAD 0A:AE9D: D6        .byte $D6, $2F, $00, $F3   ; 
- D 1 - I - 0x02AEB1 0A:AEA1: C6        .byte $C6, $2D, $00, $00   ; 
- D 1 - I - 0x02AEB5 0A:AEA5: D6        .byte $D6, $31, $00, $FB   ; 
- D 1 - I - 0x02AEB9 0A:AEA9: D6        .byte $D6, $35, $00, $0B   ; 
- D 1 - I - 0x02AEBD 0A:AEAD: D6        .byte $D6, $37, $00, $13   ; 
- D 1 - I - 0x02AEC1 0A:AEB1: E6        .byte $E6, $5D, $40, $09   ; 
- D 1 - I - 0x02AEC5 0A:AEB5: C6        .byte $C6, $19, $00, $08   ; 
- D 1 - I - 0x02AEC9 0A:AEB9: C6        .byte $C6, $1B, $00, $10   ; 
- D 1 - I - 0x02AECD 0A:AEBD: C6        .byte $C6, $1D, $00, $18   ; 
- D 1 - I - 0x02AED1 0A:AEC1: D6        .byte $D6, $33, $00, $03   ; 
@end:



_off000_0x02AED5_06_shred:
- D 1 - I - 0x02AED5 0A:AEC5: 5B AF     .word _off005_AF5B_80
- D 1 - I - 0x02AED7 0A:AEC7: 8C AF     .word _off005_AF8C_81
- D 1 - I - 0x02AED9 0A:AEC9: BD AF     .word _off005_AFBD_82
- D 1 - I - 0x02AEDB 0A:AECB: EE AF     .word _off005_AFEE_83
- D 1 - I - 0x02AEDD 0A:AECD: 17 B0     .word _off005_B017_84
- D 1 - I - 0x02AEDF 0A:AECF: 4C B0     .word _off005_B04C_85
- D 1 - I - 0x02AEE1 0A:AED1: 79 B0     .word _off005_B079_86
- D 1 - I - 0x02AEE3 0A:AED3: AE B0     .word _off005_B0AE_87
- D 1 - I - 0x02AEE5 0A:AED5: DB B0     .word _off005_B0DB_88
- D 1 - I - 0x02AEE7 0A:AED7: 08 B1     .word _off005_B108_89
- D 1 - I - 0x02AEE9 0A:AED9: 3D B1     .word _off005_B13D_8A
- D 1 - I - 0x02AEEB 0A:AEDB: 6E B1     .word _off005_B16E_8B
- D 1 - I - 0x02AEED 0A:AEDD: 9F B1     .word _off005_B19F_8C
- D 1 - I - 0x02AEEF 0A:AEDF: D0 B1     .word _off005_B1D0_8D
- D 1 - I - 0x02AEF1 0A:AEE1: 05 B2     .word _off005_B205_8E
- D 1 - I - 0x02AEF3 0A:AEE3: 32 B2     .word _off005_B232_8F
- D 1 - I - 0x02AEF5 0A:AEE5: 6B B2     .word _off005_B26B_90
- D 1 - I - 0x02AEF7 0A:AEE7: 9C B2     .word _off005_B29C_91
- D 1 - I - 0x02AEF9 0A:AEE9: C1 B2     .word _off005_B2C1_92
- D 1 - I - 0x02AEFB 0A:AEEB: EA B2     .word _off005_B2EA_93
- D 1 - I - 0x02AEFD 0A:AEED: 1F B3     .word _off005_B31F_94
- D 1 - I - 0x02AEFF 0A:AEEF: 54 B3     .word _off005_B354_95
- D 1 - I - 0x02AF01 0A:AEF1: 89 B3     .word _off005_B389_96
- D 1 - I - 0x02AF03 0A:AEF3: C2 B3     .word _off005_B3C2_97
- D 1 - I - 0x02AF05 0A:AEF5: EB B3     .word _off005_B3EB_98
- D 1 - I - 0x02AF07 0A:AEF7: 20 B4     .word _off005_B420_99
- D 1 - I - 0x02AF09 0A:AEF9: 4D B4     .word _off005_B44D_9A
- D 1 - I - 0x02AF0B 0A:AEFB: 72 B4     .word _off005_B472_9B
- D 1 - I - 0x02AF0D 0A:AEFD: 9F B4     .word _off005_B49F_9C
- D 1 - I - 0x02AF0F 0A:AEFF: D4 B4     .word _off005_B4D4_9D
- D 1 - I - 0x02AF11 0A:AF01: F9 B4     .word _off005_B4F9_9E
- D 1 - I - 0x02AF13 0A:AF03: 1E B5     .word _off005_B51E_9F
- D 1 - I - 0x02AF15 0A:AF05: 4F B5     .word _off005_B54F_A0
- D 1 - I - 0x02AF17 0A:AF07: 74 B5     .word _off005_B574_A1
- D 1 - I - 0x02AF19 0A:AF09: A1 B5     .word _off005_B5A1_A2
- D 1 - I - 0x02AF1B 0A:AF0B: CE B5     .word _off005_B5CE_A3
- D 1 - I - 0x02AF1D 0A:AF0D: 03 B6     .word _off005_B603_A4
- D 1 - I - 0x02AF1F 0A:AF0F: 38 B6     .word _off005_B638_A5
- D 1 - I - 0x02AF21 0A:AF11: 6D B6     .word _off005_B66D_A6
- D 1 - I - 0x02AF23 0A:AF13: 9A B6     .word _off005_B69A_A7
- D 1 - I - 0x02AF25 0A:AF15: C3 B6     .word _off005_B6C3_A8
- D 1 - I - 0x02AF27 0A:AF17: F0 B6     .word _off005_B6F0_A9
- D 1 - I - 0x02AF29 0A:AF19: 1D B7     .word _off005_B71D_AA
- D 1 - I - 0x02AF2B 0A:AF1B: 4A B7     .word _off005_B74A_AB
- D 1 - I - 0x02AF2D 0A:AF1D: 4F B7     .word _off005_B74F_AC
- D 1 - I - 0x02AF2F 0A:AF1F: 58 B7     .word _off005_B758_AD
- D 1 - I - 0x02AF31 0A:AF21: 65 B7     .word _off005_B765_AE
- D 1 - I - 0x02AF33 0A:AF23: 96 B7     .word _off005_B796_AF
- D 1 - I - 0x02AF35 0A:AF25: BF B7     .word _off005_B7BF_B0
- D 1 - I - 0x02AF37 0A:AF27: F0 B7     .word _off005_B7F0_B1
- D 1 - I - 0x02AF39 0A:AF29: 01 B8     .word _off005_B801_B2
- D 1 - I - 0x02AF3B 0A:AF2B: 12 B8     .word _off005_B812_B3
- D 1 - I - 0x02AF3D 0A:AF2D: 23 B8     .word _off005_B823_B4
- D 1 - I - 0x02AF3F 0A:AF2F: 58 B8     .word _off005_B858_B5
- D 1 - I - 0x02AF41 0A:AF31: 91 B8     .word _off005_B891_B6
- D 1 - I - 0x02AF43 0A:AF33: C6 B8     .word _off005_B8C6_B7
- D 1 - I - 0x02AF45 0A:AF35: EF B8     .word _off005_B8EF_B8
- D 1 - I - 0x02AF47 0A:AF37: 18 B9     .word _off005_B918_B9
- D 1 - I - 0x02AF49 0A:AF39: 45 B9     .word _off005_B945_BA
- D 1 - I - 0x02AF4B 0A:AF3B: 76 B9     .word _off005_B976_BB
- D 1 - I - 0x02AF4D 0A:AF3D: A7 B9     .word _off005_B9A7_BC
- D 1 - I - 0x02AF4F 0A:AF3F: AC B9     .word _off005_B9AC_BD
- D 1 - I - 0x02AF51 0A:AF41: B9 B9     .word _off005_B9B9_BE
- D 1 - I - 0x02AF53 0A:AF43: C2 B9     .word _off005_B9C2_BF
- D 1 - I - 0x02AF55 0A:AF45: C7 B9     .word _off005_B9C7_C0
- D 1 - I - 0x02AF57 0A:AF47: D0 B9     .word _off005_B9D0_C1
- D 1 - I - 0x02AF59 0A:AF49: D9 B9     .word _off005_B9D9_C2
- D 1 - I - 0x02AF5B 0A:AF4B: 06 BA     .word _off005_BA06_C3
- D 1 - I - 0x02AF5D 0A:AF4D: 37 BA     .word _off005_BA37_C4
- D 1 - I - 0x02AF5F 0A:AF4F: 70 BA     .word _off005_BA70_C5
- D 1 - I - 0x02AF61 0A:AF51: A1 BA     .word _off005_BAA1_C6
- D 1 - I - 0x02AF63 0A:AF53: DA BA     .word _off005_BADA_C7
- D 1 - I - 0x02AF65 0A:AF55: 13 BB     .word _off005_BB13_C8
- D 1 - I - 0x02AF67 0A:AF57: 48 BB     .word _off005_BB48_C9
- D 1 - I - 0x02AF69 0A:AF59: 79 BB     .word _off005_BB79_CA



_off005_AF5B_80:
- D 1 - I - 0x02AF6B 0A:AF5B: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AF6C 0A:AF5C: C4        .byte $C4, $01, $00, $F2   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AF70 0A:AF60: C4        .byte $C4, $03, $00, $FA   ; 
- D 1 - I - 0x02AF74 0A:AF64: C4        .byte $C4, $07, $00, $02   ; 
- D 1 - I - 0x02AF78 0A:AF68: D4        .byte $D4, $09, $00, $F3   ; 
- D 1 - I - 0x02AF7C 0A:AF6C: D4        .byte $D4, $0F, $00, $FB   ; 
- D 1 - I - 0x02AF80 0A:AF70: D4        .byte $D4, $11, $00, $03   ; 
- D 1 - I - 0x02AF84 0A:AF74: E4        .byte $E4, $59, $00, $F1   ; 
- D 1 - I - 0x02AF88 0A:AF78: E4        .byte $E4, $5B, $00, $F9   ; 
- D 1 - I - 0x02AF8C 0A:AF7C: E4        .byte $E4, $5D, $00, $01   ; 
- D 1 - I - 0x02AF90 0A:AF80: F4        .byte $F4, $47, $00, $F2   ; 
- D 1 - I - 0x02AF94 0A:AF84: F4        .byte $F4, $49, $00, $FF   ; 
- D 1 - I - 0x02AF98 0A:AF88: F4        .byte $F4, $4B, $00, $07   ; 
@end:



_off005_AF8C_81:
- D 1 - I - 0x02AF9C 0A:AF8C: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AF9D 0A:AF8D: C1        .byte $C1, $01, $00, $F4   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AFA1 0A:AF91: C1        .byte $C1, $03, $00, $FC   ; 
- D 1 - I - 0x02AFA5 0A:AF95: C1        .byte $C1, $05, $00, $04   ; 
- D 1 - I - 0x02AFA9 0A:AF99: D1        .byte $D1, $09, $00, $F5   ; 
- D 1 - I - 0x02AFAD 0A:AF9D: D1        .byte $D1, $0B, $00, $FD   ; 
- D 1 - I - 0x02AFB1 0A:AFA1: D1        .byte $D1, $0D, $00, $05   ; 
- D 1 - I - 0x02AFB5 0A:AFA5: E1        .byte $E1, $53, $00, $F2   ; 
- D 1 - I - 0x02AFB9 0A:AFA9: E1        .byte $E1, $57, $00, $02   ; 
- D 1 - I - 0x02AFBD 0A:AFAD: E1        .byte $E1, $55, $00, $FA   ; 
- D 1 - I - 0x02AFC1 0A:AFB1: F1        .byte $F1, $41, $00, $F3   ; 
- D 1 - I - 0x02AFC5 0A:AFB5: F1        .byte $F1, $43, $00, $00   ; 
- D 1 - I - 0x02AFC9 0A:AFB9: F1        .byte $F1, $45, $00, $08   ; 
@end:



_off005_AFBD_82:
- D 1 - I - 0x02AFCD 0A:AFBD: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AFCE 0A:AFBE: C4        .byte $C4, $01, $00, $F5   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02AFD2 0A:AFC2: C4        .byte $C4, $03, $00, $FD   ; 
- D 1 - I - 0x02AFD6 0A:AFC6: C4        .byte $C4, $05, $00, $05   ; 
- D 1 - I - 0x02AFDA 0A:AFCA: D4        .byte $D4, $09, $00, $F6   ; 
- D 1 - I - 0x02AFDE 0A:AFCE: D4        .byte $D4, $0B, $00, $FE   ; 
- D 1 - I - 0x02AFE2 0A:AFD2: D4        .byte $D4, $0D, $00, $06   ; 
- D 1 - I - 0x02AFE6 0A:AFD6: E4        .byte $E4, $59, $00, $F3   ; 
- D 1 - I - 0x02AFEA 0A:AFDA: E4        .byte $E4, $5B, $00, $FB   ; 
- D 1 - I - 0x02AFEE 0A:AFDE: E4        .byte $E4, $5D, $00, $03   ; 
- D 1 - I - 0x02AFF2 0A:AFE2: F4        .byte $F4, $47, $00, $F4   ; 
- D 1 - I - 0x02AFF6 0A:AFE6: F4        .byte $F4, $49, $00, $01   ; 
- D 1 - I - 0x02AFFA 0A:AFEA: F4        .byte $F4, $4B, $00, $09   ; 
@end:



_off005_AFEE_83:
- D 1 - I - 0x02AFFE 0A:AFEE: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02AFFF 0A:AFEF: C3        .byte $C3, $01, $00, $FC   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B003 0A:AFF3: C3        .byte $C3, $03, $00, $04   ; 
- D 1 - I - 0x02B007 0A:AFF7: C3        .byte $C3, $05, $00, $0C   ; 
- D 1 - I - 0x02B00B 0A:AFFB: D3        .byte $D3, $07, $00, $FC   ; 
- D 1 - I - 0x02B00F 0A:AFFF: D3        .byte $D3, $09, $00, $04   ; 
- D 1 - I - 0x02B013 0A:B003: D3        .byte $D3, $1F, $00, $0C   ; 
- D 1 - I - 0x02B017 0A:B007: E3        .byte $E3, $1B, $00, $FD   ; 
- D 1 - I - 0x02B01B 0A:B00B: E3        .byte $E3, $1D, $00, $05   ; 
- D 1 - I - 0x02B01F 0A:B00F: F3        .byte $F3, $57, $00, $FF   ; 
- D 1 - I - 0x02B023 0A:B013: F3        .byte $F3, $59, $00, $07   ; 
@end:



_off005_B017_84:
- D 1 - I - 0x02B027 0A:B017: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B028 0A:B018: C1        .byte $C1, $01, $00, $FC   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B02C 0A:B01C: C1        .byte $C1, $03, $00, $04   ; 
- D 1 - I - 0x02B030 0A:B020: C1        .byte $C1, $05, $00, $0C   ; 
- D 1 - I - 0x02B034 0A:B024: D1        .byte $D1, $07, $00, $FC   ; 
- D 1 - I - 0x02B038 0A:B028: D1        .byte $D1, $09, $00, $04   ; 
- D 1 - I - 0x02B03C 0A:B02C: D1        .byte $D1, $1F, $00, $0C   ; 
- D 1 - I - 0x02B040 0A:B030: E1        .byte $E1, $21, $00, $EB   ; 
- D 1 - I - 0x02B044 0A:B034: E6        .byte $E6, $23, $00, $F3   ; 
- D 1 - I - 0x02B048 0A:B038: E1        .byte $E1, $25, $00, $FB   ; 
- D 1 - I - 0x02B04C 0A:B03C: E1        .byte $E1, $27, $00, $03   ; 
- D 1 - I - 0x02B050 0A:B040: E1        .byte $E1, $29, $00, $0B   ; 
- D 1 - I - 0x02B054 0A:B044: F1        .byte $F1, $2B, $00, $0B   ; 
- D 1 - I - 0x02B058 0A:B048: EE        .byte $EE, $5B, $00, $13   ; 
@end:



_off005_B04C_85:
- D 1 - I - 0x02B05C 0A:B04C: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B05D 0A:B04D: C4        .byte $C4, $01, $00, $FC   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B061 0A:B051: C4        .byte $C4, $03, $00, $04   ; 
- D 1 - I - 0x02B065 0A:B055: C4        .byte $C4, $05, $00, $0C   ; 
- D 1 - I - 0x02B069 0A:B059: D4        .byte $D4, $07, $00, $FC   ; 
- D 1 - I - 0x02B06D 0A:B05D: D4        .byte $D4, $09, $00, $04   ; 
- D 1 - I - 0x02B071 0A:B061: D4        .byte $D4, $1F, $00, $0C   ; 
- D 1 - I - 0x02B075 0A:B065: E6        .byte $E6, $21, $00, $F4   ; 
- D 1 - I - 0x02B079 0A:B069: E4        .byte $E4, $2D, $00, $FC   ; 
- D 1 - I - 0x02B07D 0A:B06D: E4        .byte $E4, $2F, $00, $04   ; 
- D 1 - I - 0x02B081 0A:B071: E8        .byte $E8, $31, $00, $0C   ; 
- D 1 - I - 0x02B085 0A:B075: F4        .byte $F4, $57, $00, $04   ; 
@end:



_off005_B079_86:
- D 1 - I - 0x02B089 0A:B079: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B08A 0A:B07A: C1        .byte $C1, $01, $00, $FC   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B08E 0A:B07E: C1        .byte $C1, $03, $00, $04   ; 
- D 1 - I - 0x02B092 0A:B082: C1        .byte $C1, $05, $00, $0C   ; 
- D 1 - I - 0x02B096 0A:B086: D1        .byte $D1, $07, $00, $FC   ; 
- D 1 - I - 0x02B09A 0A:B08A: D1        .byte $D1, $09, $00, $04   ; 
- D 1 - I - 0x02B09E 0A:B08E: D1        .byte $D1, $1F, $00, $0C   ; 
- D 1 - I - 0x02B0A2 0A:B092: E1        .byte $E1, $21, $00, $ED   ; 
- D 1 - I - 0x02B0A6 0A:B096: E6        .byte $E6, $23, $00, $F5   ; 
- D 1 - I - 0x02B0AA 0A:B09A: E1        .byte $E1, $33, $00, $FD   ; 
- D 1 - I - 0x02B0AE 0A:B09E: E1        .byte $E1, $35, $00, $05   ; 
- D 1 - I - 0x02B0B2 0A:B0A2: E1        .byte $E1, $37, $00, $0D   ; 
- D 1 - I - 0x02B0B6 0A:B0A6: F1        .byte $F1, $2B, $00, $0D   ; 
- D 1 - I - 0x02B0BA 0A:B0AA: EE        .byte $EE, $5B, $00, $15   ; 
@end:



_off005_B0AE_87:
- D 1 - I - 0x02B0BE 0A:B0AE: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B0BF 0A:B0AF: C4        .byte $C4, $01, $00, $FC   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B0C3 0A:B0B3: C4        .byte $C4, $03, $00, $04   ; 
- D 1 - I - 0x02B0C7 0A:B0B7: C4        .byte $C4, $05, $00, $0C   ; 
- D 1 - I - 0x02B0CB 0A:B0BB: D4        .byte $D4, $07, $00, $FC   ; 
- D 1 - I - 0x02B0CF 0A:B0BF: D4        .byte $D4, $09, $00, $04   ; 
- D 1 - I - 0x02B0D3 0A:B0C3: D4        .byte $D4, $1F, $00, $0C   ; 
- D 1 - I - 0x02B0D7 0A:B0C7: E6        .byte $E6, $21, $00, $F3   ; 
- D 1 - I - 0x02B0DB 0A:B0CB: E4        .byte $E4, $39, $00, $FB   ; 
- D 1 - I - 0x02B0DF 0A:B0CF: E4        .byte $E4, $3B, $00, $03   ; 
- D 1 - I - 0x02B0E3 0A:B0D3: E8        .byte $E8, $31, $00, $0B   ; 
- D 1 - I - 0x02B0E7 0A:B0D7: F4        .byte $F4, $57, $00, $03   ; 
@end:



_off005_B0DB_88:
- D 1 - I - 0x02B0EB 0A:B0DB: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B0EC 0A:B0DC: C1        .byte $C1, $01, $00, $F5   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B0F0 0A:B0E0: C1        .byte $C1, $03, $00, $FD   ; 
- D 1 - I - 0x02B0F4 0A:B0E4: C1        .byte $C1, $05, $00, $05   ; 
- D 1 - I - 0x02B0F8 0A:B0E8: D1        .byte $D1, $09, $00, $F6   ; 
- D 1 - I - 0x02B0FC 0A:B0EC: D1        .byte $D1, $0B, $00, $FE   ; 
- D 1 - I - 0x02B100 0A:B0F0: D1        .byte $D1, $0D, $00, $06   ; 
- D 1 - I - 0x02B104 0A:B0F4: E1        .byte $E1, $53, $00, $F3   ; 
- D 1 - I - 0x02B108 0A:B0F8: E1        .byte $E1, $55, $00, $FB   ; 
- D 1 - I - 0x02B10C 0A:B0FC: E1        .byte $E1, $5F, $00, $03   ; 
- D 1 - I - 0x02B110 0A:B100: F1        .byte $F1, $41, $00, $F4   ; 
- D 1 - I - 0x02B114 0A:B104: F1        .byte $F1, $4D, $00, $04   ; 
@end:



_off005_B108_89:
- D 1 - I - 0x02B118 0A:B108: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B119 0A:B109: C4        .byte $C4, $01, $00, $F5   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B11D 0A:B10D: C4        .byte $C4, $03, $00, $FD   ; 
- D 1 - I - 0x02B121 0A:B111: C4        .byte $C4, $05, $00, $05   ; 
- D 1 - I - 0x02B125 0A:B115: D4        .byte $D4, $09, $00, $F6   ; 
- D 1 - I - 0x02B129 0A:B119: D4        .byte $D4, $0B, $00, $FE   ; 
- D 1 - I - 0x02B12D 0A:B11D: D4        .byte $D4, $0D, $00, $06   ; 
- D 1 - I - 0x02B131 0A:B121: E4        .byte $E4, $57, $40, $F5   ; 
- D 1 - I - 0x02B135 0A:B125: E4        .byte $E4, $55, $40, $FD   ; 
- D 1 - I - 0x02B139 0A:B129: E4        .byte $E4, $53, $40, $05   ; 
- D 1 - I - 0x02B13D 0A:B12D: F4        .byte $F4, $4B, $40, $F0   ; 
- D 1 - I - 0x02B141 0A:B131: F4        .byte $F4, $49, $40, $F8   ; 
- D 1 - I - 0x02B145 0A:B135: F4        .byte $F4, $49, $00, $03   ; 
- D 1 - I - 0x02B149 0A:B139: F4        .byte $F4, $4B, $00, $0B   ; 
@end:



_off005_B13D_8A:
- D 1 - I - 0x02B14D 0A:B13D: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B14E 0A:B13E: C4        .byte $C4, $01, $00, $F2   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B152 0A:B142: C4        .byte $C4, $03, $00, $FA   ; 
- D 1 - I - 0x02B156 0A:B146: C4        .byte $C4, $07, $00, $02   ; 
- D 1 - I - 0x02B15A 0A:B14A: D4        .byte $D4, $09, $00, $F3   ; 
- D 1 - I - 0x02B15E 0A:B14E: D4        .byte $D4, $0F, $00, $FB   ; 
- D 1 - I - 0x02B162 0A:B152: D4        .byte $D4, $11, $00, $03   ; 
- D 1 - I - 0x02B166 0A:B156: E4        .byte $E4, $59, $00, $F1   ; 
- D 1 - I - 0x02B16A 0A:B15A: E4        .byte $E4, $5B, $00, $F9   ; 
- D 1 - I - 0x02B16E 0A:B15E: E4        .byte $E4, $5D, $00, $01   ; 
- D 1 - I - 0x02B172 0A:B162: F4        .byte $F4, $47, $00, $F2   ; 
- D 1 - I - 0x02B176 0A:B166: F4        .byte $F4, $49, $00, $FF   ; 
- D 1 - I - 0x02B17A 0A:B16A: F4        .byte $F4, $4B, $00, $07   ; 
@end:



_off005_B16E_8B:
- D 1 - I - 0x02B17E 0A:B16E: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B17F 0A:B16F: C4        .byte $C4, $01, $00, $F6   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B183 0A:B173: C4        .byte $C4, $03, $00, $FE   ; 
- D 1 - I - 0x02B187 0A:B177: C4        .byte $C4, $07, $00, $06   ; 
- D 1 - I - 0x02B18B 0A:B17B: D4        .byte $D4, $09, $00, $F7   ; 
- D 1 - I - 0x02B18F 0A:B17F: D4        .byte $D4, $0F, $00, $FF   ; 
- D 1 - I - 0x02B193 0A:B183: D4        .byte $D4, $11, $00, $07   ; 
- D 1 - I - 0x02B197 0A:B187: F4        .byte $F4, $47, $00, $F4   ; 
- D 1 - I - 0x02B19B 0A:B18B: F4        .byte $F4, $49, $00, $FC   ; 
- D 1 - I - 0x02B19F 0A:B18F: F4        .byte $F4, $4B, $00, $04   ; 
- D 1 - I - 0x02B1A3 0A:B193: E4        .byte $E4, $15, $00, $F3   ; 
- D 1 - I - 0x02B1A7 0A:B197: E4        .byte $E4, $17, $00, $FB   ; 
- D 1 - I - 0x02B1AB 0A:B19B: E4        .byte $E4, $19, $00, $03   ; 
@end:



_off005_B19F_8C:
- D 1 - I - 0x02B1AF 0A:B19F: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B1B0 0A:B1A0: C4        .byte $C4, $35, $00, $F0   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B1B4 0A:B1A4: C4        .byte $C4, $37, $00, $F8   ; 
- D 1 - I - 0x02B1B8 0A:B1A8: C4        .byte $C4, $2B, $00, $00   ; 
- D 1 - I - 0x02B1BC 0A:B1AC: D4        .byte $D4, $39, $00, $F4   ; 
- D 1 - I - 0x02B1C0 0A:B1B0: D4        .byte $D4, $3B, $00, $FC   ; 
- D 1 - I - 0x02B1C4 0A:B1B4: D4        .byte $D4, $3D, $00, $04   ; 
- D 1 - I - 0x02B1C8 0A:B1B8: E4        .byte $E4, $5D, $40, $F5   ; 
- D 1 - I - 0x02B1CC 0A:B1BC: E4        .byte $E4, $5B, $40, $FD   ; 
- D 1 - I - 0x02B1D0 0A:B1C0: E4        .byte $E4, $59, $40, $05   ; 
- D 1 - I - 0x02B1D4 0A:B1C4: F4        .byte $F4, $4B, $40, $EF   ; 
- D 1 - I - 0x02B1D8 0A:B1C8: F4        .byte $F4, $49, $40, $F7   ; 
- D 1 - I - 0x02B1DC 0A:B1CC: F4        .byte $F4, $47, $40, $04   ; 
@end:



_off005_B1D0_8D:
- D 1 - I - 0x02B1E0 0A:B1D0: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B1E1 0A:B1D1: C4        .byte $C4, $03, $00, $02   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B1E5 0A:B1D5: C4        .byte $C4, $05, $00, $0A   ; 
- D 1 - I - 0x02B1E9 0A:B1D9: CD        .byte $CD, $01, $00, $FA   ; 
- D 1 - I - 0x02B1ED 0A:B1DD: D4        .byte $D4, $07, $00, $02   ; 
- D 1 - I - 0x02B1F1 0A:B1E1: D4        .byte $D4, $09, $00, $0A   ; 
- D 1 - I - 0x02B1F5 0A:B1E5: D0        .byte $D0, $27, $00, $12   ; 
- D 1 - I - 0x02B1F9 0A:B1E9: CC        .byte $CC, $29, $00, $1A   ; 
- D 1 - I - 0x02B1FD 0A:B1ED: E4        .byte $E4, $21, $00, $F9   ; 
- D 1 - I - 0x02B201 0A:B1F1: E4        .byte $E4, $23, $00, $01   ; 
- D 1 - I - 0x02B205 0A:B1F5: E4        .byte $E4, $25, $00, $09   ; 
- D 1 - I - 0x02B209 0A:B1F9: F4        .byte $F4, $4F, $00, $F3   ; 
- D 1 - I - 0x02B20D 0A:B1FD: F4        .byte $F4, $51, $00, $FB   ; 
- D 1 - I - 0x02B211 0A:B201: F4        .byte $F4, $47, $40, $08   ; 
@end:



_off005_B205_8E:
- D 1 - I - 0x02B215 0A:B205: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B216 0A:B206: C4        .byte $C4, $01, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B21A 0A:B20A: C4        .byte $C4, $03, $00, $00   ; 
- D 1 - I - 0x02B21E 0A:B20E: D4        .byte $D4, $0F, $00, $F5   ; 
- D 1 - I - 0x02B222 0A:B212: D4        .byte $D4, $11, $00, $FD   ; 
- D 1 - I - 0x02B226 0A:B216: D4        .byte $D4, $13, $00, $05   ; 
- D 1 - I - 0x02B22A 0A:B21A: E4        .byte $E4, $5D, $40, $F5   ; 
- D 1 - I - 0x02B22E 0A:B21E: E4        .byte $E4, $5B, $40, $FD   ; 
- D 1 - I - 0x02B232 0A:B222: E4        .byte $E4, $59, $40, $05   ; 
- D 1 - I - 0x02B236 0A:B226: F4        .byte $F4, $4B, $40, $EF   ; 
- D 1 - I - 0x02B23A 0A:B22A: F4        .byte $F4, $49, $40, $F7   ; 
- D 1 - I - 0x02B23E 0A:B22E: F4        .byte $F4, $47, $40, $04   ; 
@end:



_off005_B232_8F:
- D 1 - I - 0x02B242 0A:B232: 0E        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B243 0A:B233: C4        .byte $C4, $01, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B247 0A:B237: C4        .byte $C4, $03, $00, $00   ; 
- D 1 - I - 0x02B24B 0A:B23B: C4        .byte $C4, $05, $00, $08   ; 
- D 1 - I - 0x02B24F 0A:B23F: D4        .byte $D4, $09, $00, $F8   ; 
- D 1 - I - 0x02B253 0A:B243: D4        .byte $D4, $0B, $00, $00   ; 
- D 1 - I - 0x02B257 0A:B247: D4        .byte $D4, $1F, $00, $08   ; 
- D 1 - I - 0x02B25B 0A:B24B: E4        .byte $E4, $5D, $40, $F6   ; 
- D 1 - I - 0x02B25F 0A:B24F: E4        .byte $E4, $5B, $40, $FE   ; 
- D 1 - I - 0x02B263 0A:B253: E4        .byte $E4, $59, $40, $06   ; 
- D 1 - I - 0x02B267 0A:B257: F4        .byte $F4, $4B, $40, $F0   ; 
- D 1 - I - 0x02B26B 0A:B25B: F4        .byte $F4, $49, $40, $F8   ; 
- D 1 - I - 0x02B26F 0A:B25F: F4        .byte $F4, $47, $40, $05   ; 
- D 1 - I - 0x02B273 0A:B263: C7        .byte $C7, $21, $00, $10   ; 
- D 1 - I - 0x02B277 0A:B267: D1        .byte $D1, $23, $00, $18   ; 
@end:



_off005_B26B_90:
- D 1 - I - 0x02B27B 0A:B26B: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B27C 0A:B26C: D4        .byte $D4, $01, $00, $FC   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B280 0A:B270: D4        .byte $D4, $03, $00, $04   ; 
- D 1 - I - 0x02B284 0A:B274: D4        .byte $D4, $05, $00, $0C   ; 
- D 1 - I - 0x02B288 0A:B278: E4        .byte $E4, $07, $00, $FC   ; 
- D 1 - I - 0x02B28C 0A:B27C: E4        .byte $E4, $09, $00, $04   ; 
- D 1 - I - 0x02B290 0A:B280: E4        .byte $E4, $0B, $00, $0C   ; 
- D 1 - I - 0x02B294 0A:B284: EC        .byte $EC, $0D, $00, $14   ; 
- D 1 - I - 0x02B298 0A:B288: F6        .byte $F6, $21, $00, $F3   ; 
- D 1 - I - 0x02B29C 0A:B28C: F4        .byte $F4, $39, $00, $FB   ; 
- D 1 - I - 0x02B2A0 0A:B290: F4        .byte $F4, $3B, $00, $03   ; 
- D 1 - I - 0x02B2A4 0A:B294: F8        .byte $F8, $31, $00, $0B   ; 
- D 1 - I - 0x02B2A8 0A:B298: 04        .byte $04, $3D, $00, $03   ; 
@end:



_off005_B29C_91:
- D 1 - I - 0x02B2AC 0A:B29C: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B2AD 0A:B29D: D1        .byte $D1, $35, $00, $EF   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B2B1 0A:B2A1: D1        .byte $D1, $37, $00, $F7   ; 
- D 1 - I - 0x02B2B5 0A:B2A5: D1        .byte $D1, $2B, $00, $FF   ; 
- D 1 - I - 0x02B2B9 0A:B2A9: E1        .byte $E1, $39, $00, $F3   ; 
- D 1 - I - 0x02B2BD 0A:B2AD: E1        .byte $E1, $3B, $00, $FB   ; 
- D 1 - I - 0x02B2C1 0A:B2B1: E1        .byte $E1, $3D, $00, $03   ; 
- D 1 - I - 0x02B2C5 0A:B2B5: F1        .byte $F1, $45, $40, $F4   ; 
- D 1 - I - 0x02B2C9 0A:B2B9: F1        .byte $F1, $43, $40, $FC   ; 
- D 1 - I - 0x02B2CD 0A:B2BD: F1        .byte $F1, $41, $40, $04   ; 
@end:



_off005_B2C1_92:
- D 1 - I - 0x02B2D1 0A:B2C1: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B2D2 0A:B2C2: D1        .byte $D1, $03, $00, $FB   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B2D6 0A:B2C6: D1        .byte $D1, $05, $00, $03   ; 
- D 1 - I - 0x02B2DA 0A:B2CA: DA        .byte $DA, $01, $00, $F3   ; 
- D 1 - I - 0x02B2DE 0A:B2CE: E1        .byte $E1, $07, $00, $FB   ; 
- D 1 - I - 0x02B2E2 0A:B2D2: E1        .byte $E1, $09, $00, $03   ; 
- D 1 - I - 0x02B2E6 0A:B2D6: DD        .byte $DD, $27, $00, $0B   ; 
- D 1 - I - 0x02B2EA 0A:B2DA: D9        .byte $D9, $29, $00, $13   ; 
- D 1 - I - 0x02B2EE 0A:B2DE: F1        .byte $F1, $45, $40, $F5   ; 
- D 1 - I - 0x02B2F2 0A:B2E2: F1        .byte $F1, $43, $40, $FD   ; 
- D 1 - I - 0x02B2F6 0A:B2E6: F1        .byte $F1, $41, $40, $05   ; 
@end:



_off005_B2EA_93:
- D 1 - I - 0x02B2FA 0A:B2EA: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B2FB 0A:B2EB: C5        .byte $C5, $05, $00, $EC   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B2FF 0A:B2EF: C4        .byte $C4, $07, $00, $F4   ; 
- D 1 - I - 0x02B303 0A:B2F3: C4        .byte $C4, $35, $00, $FC   ; 
- D 1 - I - 0x02B307 0A:B2F7: C4        .byte $C4, $37, $00, $04   ; 
- D 1 - I - 0x02B30B 0A:B2FB: D4        .byte $D4, $09, $00, $F4   ; 
- D 1 - I - 0x02B30F 0A:B2FF: D4        .byte $D4, $0B, $00, $FC   ; 
- D 1 - I - 0x02B313 0A:B303: D4        .byte $D4, $0D, $00, $04   ; 
- D 1 - I - 0x02B317 0A:B307: E4        .byte $E4, $59, $00, $F2   ; 
- D 1 - I - 0x02B31B 0A:B30B: E4        .byte $E4, $5B, $00, $FA   ; 
- D 1 - I - 0x02B31F 0A:B30F: E4        .byte $E4, $5D, $00, $02   ; 
- D 1 - I - 0x02B323 0A:B313: F4        .byte $F4, $47, $00, $F3   ; 
- D 1 - I - 0x02B327 0A:B317: F4        .byte $F4, $49, $00, $00   ; 
- D 1 - I - 0x02B32B 0A:B31B: F4        .byte $F4, $4B, $00, $08   ; 
@end:



_off005_B31F_94:
- D 1 - I - 0x02B32F 0A:B31F: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B330 0A:B320: C4        .byte $C4, $03, $00, $FE   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B334 0A:B324: C4        .byte $C4, $05, $00, $06   ; 
- D 1 - I - 0x02B338 0A:B328: CD        .byte $CD, $01, $00, $F6   ; 
- D 1 - I - 0x02B33C 0A:B32C: D4        .byte $D4, $07, $00, $FE   ; 
- D 1 - I - 0x02B340 0A:B330: D4        .byte $D4, $09, $00, $06   ; 
- D 1 - I - 0x02B344 0A:B334: D0        .byte $D0, $2B, $00, $0E   ; 
- D 1 - I - 0x02B348 0A:B338: D0        .byte $D0, $2D, $00, $16   ; 
- D 1 - I - 0x02B34C 0A:B33C: E4        .byte $E4, $21, $00, $F6   ; 
- D 1 - I - 0x02B350 0A:B340: E4        .byte $E4, $23, $00, $FE   ; 
- D 1 - I - 0x02B354 0A:B344: E4        .byte $E4, $25, $00, $06   ; 
- D 1 - I - 0x02B358 0A:B348: F4        .byte $F4, $4F, $00, $F0   ; 
- D 1 - I - 0x02B35C 0A:B34C: F4        .byte $F4, $51, $00, $F8   ; 
- D 1 - I - 0x02B360 0A:B350: F4        .byte $F4, $47, $40, $05   ; 
@end:



_off005_B354_95:
- D 1 - I - 0x02B364 0A:B354: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B365 0A:B355: C4        .byte $C4, $01, $00, $F7   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B369 0A:B359: C4        .byte $C4, $03, $00, $FF   ; 
- D 1 - I - 0x02B36D 0A:B35D: C4        .byte $C4, $05, $00, $07   ; 
- D 1 - I - 0x02B371 0A:B361: D4        .byte $D4, $09, $00, $F8   ; 
- D 1 - I - 0x02B375 0A:B365: D4        .byte $D4, $0B, $00, $00   ; 
- D 1 - I - 0x02B379 0A:B369: D4        .byte $D4, $1B, $00, $08   ; 
- D 1 - I - 0x02B37D 0A:B36D: CD        .byte $CD, $1D, $00, $10   ; 
- D 1 - I - 0x02B381 0A:B371: E4        .byte $E4, $5D, $40, $F8   ; 
- D 1 - I - 0x02B385 0A:B375: E4        .byte $E4, $5B, $40, $00   ; 
- D 1 - I - 0x02B389 0A:B379: E4        .byte $E4, $59, $40, $08   ; 
- D 1 - I - 0x02B38D 0A:B37D: F4        .byte $F4, $4B, $40, $F2   ; 
- D 1 - I - 0x02B391 0A:B381: F4        .byte $F4, $49, $40, $FA   ; 
- D 1 - I - 0x02B395 0A:B385: F4        .byte $F4, $47, $40, $07   ; 
@end:



_off005_B389_96:
- D 1 - I - 0x02B399 0A:B389: 0E        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B39A 0A:B38A: C1        .byte $C1, $05, $40, $00   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B39E 0A:B38E: C1        .byte $C1, $03, $40, $08   ; 
- D 1 - I - 0x02B3A2 0A:B392: C1        .byte $C1, $1B, $00, $10   ; 
- D 1 - I - 0x02B3A6 0A:B396: BC        .byte $BC, $1D, $00, $18   ; 
- D 1 - I - 0x02B3AA 0A:B39A: CE        .byte $CE, $0D, $40, $F8   ; 
- D 1 - I - 0x02B3AE 0A:B39E: D1        .byte $D1, $0B, $40, $00   ; 
- D 1 - I - 0x02B3B2 0A:B3A2: D1        .byte $D1, $17, $00, $08   ; 
- D 1 - I - 0x02B3B6 0A:B3A6: D1        .byte $D1, $19, $00, $10   ; 
- D 1 - I - 0x02B3BA 0A:B3AA: E1        .byte $E1, $57, $00, $09   ; 
- D 1 - I - 0x02B3BE 0A:B3AE: F1        .byte $F1, $41, $00, $FA   ; 
- D 1 - I - 0x02B3C2 0A:B3B2: F1        .byte $F1, $43, $00, $07   ; 
- D 1 - I - 0x02B3C6 0A:B3B6: F1        .byte $F1, $45, $00, $0F   ; 
- D 1 - I - 0x02B3CA 0A:B3BA: E1        .byte $E1, $53, $00, $F9   ; 
- D 1 - I - 0x02B3CE 0A:B3BE: E1        .byte $E1, $55, $00, $01   ; 
@end:



_off005_B3C2_97:
- D 1 - I - 0x02B3D2 0A:B3C2: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B3D3 0A:B3C3: C3        .byte $C3, $05, $00, $EB   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B3D7 0A:B3C7: C1        .byte $C1, $07, $00, $F3   ; 
- D 1 - I - 0x02B3DB 0A:B3CB: C1        .byte $C1, $1B, $00, $FB   ; 
- D 1 - I - 0x02B3DF 0A:B3CF: C1        .byte $C1, $1D, $00, $03   ; 
- D 1 - I - 0x02B3E3 0A:B3D3: D1        .byte $D1, $09, $00, $F3   ; 
- D 1 - I - 0x02B3E7 0A:B3D7: D1        .byte $D1, $1F, $00, $FB   ; 
- D 1 - I - 0x02B3EB 0A:B3DB: D1        .byte $D1, $21, $00, $03   ; 
- D 1 - I - 0x02B3EF 0A:B3DF: E1        .byte $E1, $23, $00, $F5   ; 
- D 1 - I - 0x02B3F3 0A:B3E3: E1        .byte $E1, $25, $00, $FD   ; 
- D 1 - I - 0x02B3F7 0A:B3E7: F1        .byte $F1, $41, $00, $F6   ; 
@end:



_off005_B3EB_98:
- D 1 - I - 0x02B3FB 0A:B3EB: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B3FC 0A:B3EC: C1        .byte $C1, $05, $00, $F1   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B400 0A:B3F0: C1        .byte $C1, $07, $00, $F9   ; 
- D 1 - I - 0x02B404 0A:B3F4: C1        .byte $C1, $1B, $00, $01   ; 
- D 1 - I - 0x02B408 0A:B3F8: C1        .byte $C1, $1D, $00, $09   ; 
- D 1 - I - 0x02B40C 0A:B3FC: D1        .byte $D1, $09, $00, $F9   ; 
- D 1 - I - 0x02B410 0A:B400: D1        .byte $D1, $1F, $00, $01   ; 
- D 1 - I - 0x02B414 0A:B404: D3        .byte $D3, $29, $00, $11   ; 
- D 1 - I - 0x02B418 0A:B408: DB        .byte $DB, $2B, $00, $19   ; 
- D 1 - I - 0x02B41C 0A:B40C: E1        .byte $E1, $57, $40, $FB   ; 
- D 1 - I - 0x02B420 0A:B410: E1        .byte $E1, $2D, $00, $03   ; 
- D 1 - I - 0x02B424 0A:B414: F1        .byte $F1, $45, $40, $F5   ; 
- D 1 - I - 0x02B428 0A:B418: F1        .byte $F1, $43, $40, $FD   ; 
- D 1 - I - 0x02B42C 0A:B41C: D1        .byte $D1, $27, $00, $09   ; 
@end:



_off005_B420_99:
- D 1 - I - 0x02B430 0A:B420: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B431 0A:B421: C1        .byte $C1, $1B, $00, $00   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B435 0A:B425: C1        .byte $C1, $1D, $00, $08   ; 
- D 1 - I - 0x02B439 0A:B429: D1        .byte $D1, $1F, $00, $00   ; 
- D 1 - I - 0x02B43D 0A:B42D: D1        .byte $D1, $21, $00, $08   ; 
- D 1 - I - 0x02B441 0A:B431: D1        .byte $D1, $23, $00, $10   ; 
- D 1 - I - 0x02B445 0A:B435: D1        .byte $D1, $25, $00, $18   ; 
- D 1 - I - 0x02B449 0A:B439: E1        .byte $E1, $47, $00, $00   ; 
- D 1 - I - 0x02B44D 0A:B43D: E1        .byte $E1, $49, $00, $08   ; 
- D 1 - I - 0x02B451 0A:B441: E1        .byte $E1, $51, $00, $10   ; 
- D 1 - I - 0x02B455 0A:B445: F1        .byte $F1, $53, $00, $FF   ; 
- D 1 - I - 0x02B459 0A:B449: F1        .byte $F1, $55, $00, $07   ; 
@end:



_off005_B44D_9A:
- D 1 - I - 0x02B45D 0A:B44D: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B45E 0A:B44E: B9        .byte $B9, $1B, $00, $02   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B462 0A:B452: B9        .byte $B9, $1D, $00, $0A   ; 
- D 1 - I - 0x02B466 0A:B456: C9        .byte $C9, $1F, $00, $02   ; 
- D 1 - I - 0x02B46A 0A:B45A: C9        .byte $C9, $21, $00, $0A   ; 
- D 1 - I - 0x02B46E 0A:B45E: CA        .byte $CA, $2D, $00, $12   ; 
- D 1 - I - 0x02B472 0A:B462: C6        .byte $C6, $2F, $00, $1A   ; 
- D 1 - I - 0x02B476 0A:B466: C1        .byte $C1, $31, $00, $22   ; 
- D 1 - I - 0x02B47A 0A:B46A: D9        .byte $D9, $4D, $00, $02   ; 
- D 1 - I - 0x02B47E 0A:B46E: D9        .byte $D9, $4F, $00, $0A   ; 
@end:



_off005_B472_9B:
- D 1 - I - 0x02B482 0A:B472: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B483 0A:B473: C1        .byte $C1, $1B, $00, $00   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B487 0A:B477: C1        .byte $C1, $1D, $00, $08   ; 
- D 1 - I - 0x02B48B 0A:B47B: D1        .byte $D1, $1F, $00, $00   ; 
- D 1 - I - 0x02B48F 0A:B47F: D1        .byte $D1, $21, $00, $08   ; 
- D 1 - I - 0x02B493 0A:B483: D2        .byte $D2, $2D, $00, $10   ; 
- D 1 - I - 0x02B497 0A:B487: CE        .byte $CE, $2F, $00, $18   ; 
- D 1 - I - 0x02B49B 0A:B48B: C9        .byte $C9, $31, $00, $20   ; 
- D 1 - I - 0x02B49F 0A:B48F: E1        .byte $E1, $47, $00, $00   ; 
- D 1 - I - 0x02B4A3 0A:B493: E1        .byte $E1, $49, $00, $08   ; 
- D 1 - I - 0x02B4A7 0A:B497: F1        .byte $F1, $53, $00, $FF   ; 
- D 1 - I - 0x02B4AB 0A:B49B: F1        .byte $F1, $55, $00, $07   ; 
@end:



_off005_B49F_9C:
- D 1 - I - 0x02B4AF 0A:B49F: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B4B0 0A:B4A0: D0        .byte $D0, $01, $00, $E9   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B4B4 0A:B4A4: CD        .byte $CD, $03, $00, $F1   ; 
- D 1 - I - 0x02B4B8 0A:B4A8: CD        .byte $CD, $05, $00, $F9   ; 
- D 1 - I - 0x02B4BC 0A:B4AC: DD        .byte $DD, $07, $00, $F1   ; 
- D 1 - I - 0x02B4C0 0A:B4B0: DD        .byte $DD, $09, $00, $F9   ; 
- D 1 - I - 0x02B4C4 0A:B4B4: D9        .byte $D9, $0B, $00, $01   ; 
- D 1 - I - 0x02B4C8 0A:B4B8: DC        .byte $DC, $0D, $00, $09   ; 
- D 1 - I - 0x02B4CC 0A:B4BC: ED        .byte $ED, $0F, $00, $F1   ; 
- D 1 - I - 0x02B4D0 0A:B4C0: ED        .byte $ED, $11, $00, $F9   ; 
- D 1 - I - 0x02B4D4 0A:B4C4: E9        .byte $E9, $13, $00, $01   ; 
- D 1 - I - 0x02B4D8 0A:B4C8: ED        .byte $ED, $15, $00, $09   ; 
- D 1 - I - 0x02B4DC 0A:B4CC: EC        .byte $EC, $17, $00, $11   ; 
- D 1 - I - 0x02B4E0 0A:B4D0: EB        .byte $EB, $19, $00, $19   ; 
@end:



_off005_B4D4_9D:
- D 1 - I - 0x02B4E4 0A:B4D4: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B4E5 0A:B4D5: D1        .byte $D1, $1B, $00, $01   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B4E9 0A:B4D9: D1        .byte $D1, $1D, $00, $09   ; 
- D 1 - I - 0x02B4ED 0A:B4DD: E1        .byte $E1, $1F, $00, $01   ; 
- D 1 - I - 0x02B4F1 0A:B4E1: E1        .byte $E1, $21, $00, $09   ; 
- D 1 - I - 0x02B4F5 0A:B4E5: E1        .byte $E1, $23, $00, $11   ; 
- D 1 - I - 0x02B4F9 0A:B4E9: E1        .byte $E1, $25, $00, $19   ; 
- D 1 - I - 0x02B4FD 0A:B4ED: F1        .byte $F1, $4D, $00, $01   ; 
- D 1 - I - 0x02B501 0A:B4F1: F1        .byte $F1, $4F, $00, $09   ; 
- D 1 - I - 0x02B505 0A:B4F5: F1        .byte $F1, $51, $00, $11   ; 
@end:



_off005_B4F9_9E:
- D 1 - I - 0x02B509 0A:B4F9: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B50A 0A:B4FA: D1        .byte $D1, $1B, $00, $02   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B50E 0A:B4FE: D1        .byte $D1, $1D, $00, $0A   ; 
- D 1 - I - 0x02B512 0A:B502: E1        .byte $E1, $1F, $00, $02   ; 
- D 1 - I - 0x02B516 0A:B506: E1        .byte $E1, $21, $00, $0A   ; 
- D 1 - I - 0x02B51A 0A:B50A: E2        .byte $E2, $27, $00, $12   ; 
- D 1 - I - 0x02B51E 0A:B50E: E6        .byte $E6, $29, $00, $1A   ; 
- D 1 - I - 0x02B522 0A:B512: E8        .byte $E8, $2B, $00, $22   ; 
- D 1 - I - 0x02B526 0A:B516: F1        .byte $F1, $4D, $00, $02   ; 
- D 1 - I - 0x02B52A 0A:B51A: F1        .byte $F1, $4F, $00, $0A   ; 
@end:



_off005_B51E_9F:
- D 1 - I - 0x02B52E 0A:B51E: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B52F 0A:B51F: C4        .byte $C4, $2F, $00, $F3   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B533 0A:B523: C4        .byte $C4, $31, $00, $FB   ; 
- D 1 - I - 0x02B537 0A:B527: C4        .byte $C4, $33, $00, $03   ; 
- D 1 - I - 0x02B53B 0A:B52B: D4        .byte $D4, $13, $40, $F1   ; 
- D 1 - I - 0x02B53F 0A:B52F: D4        .byte $D4, $11, $40, $F9   ; 
- D 1 - I - 0x02B543 0A:B533: D4        .byte $D4, $0F, $40, $01   ; 
- D 1 - I - 0x02B547 0A:B537: E4        .byte $E4, $59, $00, $F1   ; 
- D 1 - I - 0x02B54B 0A:B53B: E4        .byte $E4, $5B, $00, $F9   ; 
- D 1 - I - 0x02B54F 0A:B53F: E4        .byte $E4, $5D, $00, $01   ; 
- D 1 - I - 0x02B553 0A:B543: F4        .byte $F4, $47, $00, $F2   ; 
- D 1 - I - 0x02B557 0A:B547: F4        .byte $F4, $49, $00, $FF   ; 
- D 1 - I - 0x02B55B 0A:B54B: F4        .byte $F4, $4B, $00, $07   ; 
@end:



_off005_B54F_A0:
- D 1 - I - 0x02B55F 0A:B54F: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B560 0A:B550: D1        .byte $D1, $2F, $00, $F6   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B564 0A:B554: D1        .byte $D1, $31, $00, $FE   ; 
- D 1 - I - 0x02B568 0A:B558: D1        .byte $D1, $33, $00, $06   ; 
- D 1 - I - 0x02B56C 0A:B55C: E1        .byte $E1, $13, $40, $F4   ; 
- D 1 - I - 0x02B570 0A:B560: E1        .byte $E1, $11, $40, $FC   ; 
- D 1 - I - 0x02B574 0A:B564: E1        .byte $E1, $0F, $40, $04   ; 
- D 1 - I - 0x02B578 0A:B568: F1        .byte $F1, $41, $00, $F4   ; 
- D 1 - I - 0x02B57C 0A:B56C: F1        .byte $F1, $43, $00, $FC   ; 
- D 1 - I - 0x02B580 0A:B570: F1        .byte $F1, $45, $00, $04   ; 
@end:



_off005_B574_A1:
- D 1 - I - 0x02B584 0A:B574: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B585 0A:B575: C1        .byte $C1, $29, $00, $FE   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B589 0A:B579: C1        .byte $C1, $2B, $00, $06   ; 
- D 1 - I - 0x02B58D 0A:B57D: D1        .byte $D1, $2D, $00, $F8   ; 
- D 1 - I - 0x02B591 0A:B581: D1        .byte $D1, $2F, $00, $00   ; 
- D 1 - I - 0x02B595 0A:B585: D1        .byte $D1, $31, $00, $08   ; 
- D 1 - I - 0x02B599 0A:B589: D1        .byte $D1, $33, $00, $10   ; 
- D 1 - I - 0x02B59D 0A:B58D: E1        .byte $E1, $47, $00, $FB   ; 
- D 1 - I - 0x02B5A1 0A:B591: E1        .byte $E1, $49, $00, $03   ; 
- D 1 - I - 0x02B5A5 0A:B595: E1        .byte $E1, $4B, $00, $0B   ; 
- D 1 - I - 0x02B5A9 0A:B599: F1        .byte $F1, $53, $00, $FA   ; 
- D 1 - I - 0x02B5AD 0A:B59D: F1        .byte $F1, $55, $00, $02   ; 
@end:



_off005_B5A1_A2:
- D 1 - I - 0x02B5B1 0A:B5A1: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B5B2 0A:B5A2: D1        .byte $D1, $01, $00, $F4   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B5B6 0A:B5A6: D1        .byte $D1, $03, $00, $FC   ; 
- D 1 - I - 0x02B5BA 0A:B5AA: D1        .byte $D1, $05, $00, $04   ; 
- D 1 - I - 0x02B5BE 0A:B5AE: E1        .byte $E1, $09, $00, $F5   ; 
- D 1 - I - 0x02B5C2 0A:B5B2: E1        .byte $E1, $0B, $00, $FD   ; 
- D 1 - I - 0x02B5C6 0A:B5B6: F1        .byte $F1, $41, $00, $F5   ; 
- D 1 - I - 0x02B5CA 0A:B5BA: E1        .byte $E1, $37, $00, $0D   ; 
- D 1 - I - 0x02B5CE 0A:B5BE: E1        .byte $E1, $35, $00, $05   ; 
- D 1 - I - 0x02B5D2 0A:B5C2: F1        .byte $F1, $3B, $00, $05   ; 
- D 1 - I - 0x02B5D6 0A:B5C6: F1        .byte $F1, $39, $00, $FD   ; 
- D 1 - I - 0x02B5DA 0A:B5CA: F1        .byte $F1, $3D, $00, $0D   ; 
@end:



_off005_B5CE_A3:
- D 1 - I - 0x02B5DE 0A:B5CE: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B5DF 0A:B5CF: C1        .byte $C1, $01, $00, $E9   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B5E3 0A:B5D3: C1        .byte $C1, $03, $00, $F1   ; 
- D 1 - I - 0x02B5E7 0A:B5D7: C1        .byte $C1, $05, $00, $F9   ; 
- D 1 - I - 0x02B5EB 0A:B5DB: D1        .byte $D1, $07, $00, $E9   ; 
- D 1 - I - 0x02B5EF 0A:B5DF: D1        .byte $D1, $09, $00, $F1   ; 
- D 1 - I - 0x02B5F3 0A:B5E3: D1        .byte $D1, $0B, $00, $F9   ; 
- D 1 - I - 0x02B5F7 0A:B5E7: CE        .byte $CE, $0D, $00, $01   ; 
- D 1 - I - 0x02B5FB 0A:B5EB: E1        .byte $E1, $0F, $00, $F0   ; 
- D 1 - I - 0x02B5FF 0A:B5EF: E1        .byte $E1, $11, $00, $F8   ; 
- D 1 - I - 0x02B603 0A:B5F3: E1        .byte $E1, $13, $00, $00   ; 
- D 1 - I - 0x02B607 0A:B5F7: F1        .byte $F1, $45, $40, $EE   ; 
- D 1 - I - 0x02B60B 0A:B5FB: F1        .byte $F1, $43, $40, $F6   ; 
- D 1 - I - 0x02B60F 0A:B5FF: F1        .byte $F1, $15, $00, $FF   ; 
@end:



_off005_B603_A4:
- D 1 - I - 0x02B613 0A:B603: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B614 0A:B604: C1        .byte $C1, $01, $00, $EE   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B618 0A:B608: C1        .byte $C1, $03, $00, $F6   ; 
- D 1 - I - 0x02B61C 0A:B60C: C1        .byte $C1, $05, $00, $FE   ; 
- D 1 - I - 0x02B620 0A:B610: D1        .byte $D1, $07, $00, $EE   ; 
- D 1 - I - 0x02B624 0A:B614: D1        .byte $D1, $0F, $00, $F6   ; 
- D 1 - I - 0x02B628 0A:B618: D1        .byte $D1, $11, $00, $FE   ; 
- D 1 - I - 0x02B62C 0A:B61C: D1        .byte $D1, $13, $00, $06   ; 
- D 1 - I - 0x02B630 0A:B620: E1        .byte $E1, $15, $00, $F0   ; 
- D 1 - I - 0x02B634 0A:B624: E1        .byte $E1, $17, $00, $F8   ; 
- D 1 - I - 0x02B638 0A:B628: E1        .byte $E1, $19, $00, $00   ; 
- D 1 - I - 0x02B63C 0A:B62C: E1        .byte $E1, $63, $00, $08   ; 
- D 1 - I - 0x02B640 0A:B630: F1        .byte $F1, $43, $00, $F4   ; 
- D 1 - I - 0x02B644 0A:B634: F1        .byte $F1, $45, $00, $FC   ; 
@end:



_off005_B638_A5:
- D 1 - I - 0x02B648 0A:B638: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B649 0A:B639: E1        .byte $E1, $01, $C0, $02   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B64D 0A:B63D: E1        .byte $E1, $03, $C0, $FA   ; 
- D 1 - I - 0x02B651 0A:B641: E1        .byte $E1, $05, $C0, $F2   ; 
- D 1 - I - 0x02B655 0A:B645: D1        .byte $D1, $07, $C0, $02   ; 
- D 1 - I - 0x02B659 0A:B649: D1        .byte $D1, $0F, $C0, $FA   ; 
- D 1 - I - 0x02B65D 0A:B64D: D1        .byte $D1, $13, $C0, $EA   ; 
- D 1 - I - 0x02B661 0A:B651: C1        .byte $C1, $15, $C0, $00   ; 
- D 1 - I - 0x02B665 0A:B655: C1        .byte $C1, $17, $C0, $F8   ; 
- D 1 - I - 0x02B669 0A:B659: C1        .byte $C1, $19, $C0, $F0   ; 
- D 1 - I - 0x02B66D 0A:B65D: C1        .byte $C1, $63, $C0, $E8   ; 
- D 1 - I - 0x02B671 0A:B661: B1        .byte $B1, $43, $C0, $FC   ; 
- D 1 - I - 0x02B675 0A:B665: B1        .byte $B1, $45, $C0, $F4   ; 
- D 1 - I - 0x02B679 0A:B669: D1        .byte $D1, $11, $C0, $F2   ; 
@end:



_off005_B66D_A6:
- D 1 - I - 0x02B67D 0A:B66D: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B67E 0A:B66E: E1        .byte $E1, $01, $00, $E8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B682 0A:B672: E1        .byte $E1, $03, $00, $F0   ; 
- D 1 - I - 0x02B686 0A:B676: E6        .byte $E6, $05, $00, $F8   ; 
- D 1 - I - 0x02B68A 0A:B67A: E6        .byte $E6, $07, $00, $00   ; 
- D 1 - I - 0x02B68E 0A:B67E: E9        .byte $E9, $13, $00, $08   ; 
- D 1 - I - 0x02B692 0A:B682: F1        .byte $F1, $63, $00, $10   ; 
- D 1 - I - 0x02B696 0A:B686: F1        .byte $F1, $09, $00, $E8   ; 
- D 1 - I - 0x02B69A 0A:B68A: F1        .byte $F1, $0B, $00, $F0   ; 
- D 1 - I - 0x02B69E 0A:B68E: F6        .byte $F6, $0D, $00, $F8   ; 
- D 1 - I - 0x02B6A2 0A:B692: F6        .byte $F6, $0F, $00, $00   ; 
- D 1 - I - 0x02B6A6 0A:B696: F9        .byte $F9, $11, $00, $08   ; 
@end:



_off005_B69A_A7:
- D 1 - I - 0x02B6AA 0A:B69A: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B6AB 0A:B69B: F2        .byte $F2, $15, $00, $E8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B6AF 0A:B69F: F0        .byte $F0, $17, $00, $F0   ; 
- D 1 - I - 0x02B6B3 0A:B6A3: F0        .byte $F0, $19, $00, $F8   ; 
- D 1 - I - 0x02B6B7 0A:B6A7: EC        .byte $EC, $1B, $00, $00   ; 
- D 1 - I - 0x02B6BB 0A:B6AB: EC        .byte $EC, $1D, $00, $08   ; 
- D 1 - I - 0x02B6BF 0A:B6AF: F0        .byte $F0, $1F, $00, $10   ; 
- D 1 - I - 0x02B6C3 0A:B6B3: 00        .byte $00, $21, $00, $F0   ; 
- D 1 - I - 0x02B6C7 0A:B6B7: 00        .byte $00, $23, $00, $F8   ; 
- D 1 - I - 0x02B6CB 0A:B6BB: FC        .byte $FC, $25, $00, $00   ; 
- D 1 - I - 0x02B6CF 0A:B6BF: FC        .byte $FC, $27, $00, $08   ; 
@end:



_off005_B6C3_A8:
- D 1 - I - 0x02B6D3 0A:B6C3: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B6D4 0A:B6C4: E1        .byte $E1, $01, $C0, $10   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B6D8 0A:B6C8: E1        .byte $E1, $03, $C0, $08   ; 
- D 1 - I - 0x02B6DC 0A:B6CC: DC        .byte $DC, $05, $C0, $00   ; 
- D 1 - I - 0x02B6E0 0A:B6D0: DC        .byte $DC, $07, $C0, $F8   ; 
- D 1 - I - 0x02B6E4 0A:B6D4: D9        .byte $D9, $13, $C0, $F0   ; 
- D 1 - I - 0x02B6E8 0A:B6D8: D1        .byte $D1, $63, $C0, $E8   ; 
- D 1 - I - 0x02B6EC 0A:B6DC: D1        .byte $D1, $09, $C0, $10   ; 
- D 1 - I - 0x02B6F0 0A:B6E0: D1        .byte $D1, $0B, $C0, $08   ; 
- D 1 - I - 0x02B6F4 0A:B6E4: CC        .byte $CC, $0D, $C0, $00   ; 
- D 1 - I - 0x02B6F8 0A:B6E8: CC        .byte $CC, $0F, $C0, $F8   ; 
- D 1 - I - 0x02B6FC 0A:B6EC: C9        .byte $C9, $11, $C0, $F0   ; 
@end:



_off005_B6F0_A9:
- D 1 - I - 0x02B700 0A:B6F0: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B701 0A:B6F1: D1        .byte $D1, $01, $00, $EC   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B705 0A:B6F5: D1        .byte $D1, $03, $00, $F4   ; 
- D 1 - I - 0x02B709 0A:B6F9: D1        .byte $D1, $05, $00, $FC   ; 
- D 1 - I - 0x02B70D 0A:B6FD: E1        .byte $E1, $07, $00, $EC   ; 
- D 1 - I - 0x02B711 0A:B701: E1        .byte $E1, $09, $00, $F4   ; 
- D 1 - I - 0x02B715 0A:B705: E1        .byte $E1, $0B, $00, $FC   ; 
- D 1 - I - 0x02B719 0A:B709: DE        .byte $DE, $0D, $00, $04   ; 
- D 1 - I - 0x02B71D 0A:B70D: F1        .byte $F1, $41, $00, $F3   ; 
- D 1 - I - 0x02B721 0A:B711: F1        .byte $F1, $43, $00, $FB   ; 
- D 1 - I - 0x02B725 0A:B715: F1        .byte $F1, $63, $00, $03   ; 
- D 1 - I - 0x02B729 0A:B719: F7        .byte $F7, $65, $00, $0B   ; 
@end:



_off005_B71D_AA:
- D 1 - I - 0x02B72D 0A:B71D: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B72E 0A:B71E: D1        .byte $D1, $01, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B732 0A:B722: D1        .byte $D1, $03, $00, $00   ; 
- D 1 - I - 0x02B736 0A:B726: D1        .byte $D1, $05, $00, $08   ; 
- D 1 - I - 0x02B73A 0A:B72A: E1        .byte $E1, $07, $00, $F8   ; 
- D 1 - I - 0x02B73E 0A:B72E: E1        .byte $E1, $09, $00, $00   ; 
- D 1 - I - 0x02B742 0A:B732: E1        .byte $E1, $0B, $00, $08   ; 
- D 1 - I - 0x02B746 0A:B736: E9        .byte $E9, $0D, $00, $10   ; 
- D 1 - I - 0x02B74A 0A:B73A: F6        .byte $F6, $47, $00, $EE   ; 
- D 1 - I - 0x02B74E 0A:B73E: F1        .byte $F1, $49, $00, $F6   ; 
- D 1 - I - 0x02B752 0A:B742: F1        .byte $F1, $43, $00, $FE   ; 
- D 1 - I - 0x02B756 0A:B746: F1        .byte $F1, $45, $00, $06   ; 
@end:



_off005_B74A_AB:
- D 1 - I - 0x02B75A 0A:B74A: 01        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B75B 0A:B74B: F1        .byte $F1, $4B, $03, $FC   ; spt_Y, spr_T, spr_A, spr_X
@end:



_off005_B74F_AC:
- D 1 - I - 0x02B75F 0A:B74F: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B760 0A:B750: F1        .byte $F1, $4D, $03, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B764 0A:B754: F1        .byte $F1, $4D, $43, $00   ; 
@end:



_off005_B758_AD:
- D 1 - I - 0x02B768 0A:B758: 03        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B769 0A:B759: E1        .byte $E1, $4B, $03, $FC   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B76D 0A:B75D: F1        .byte $F1, $4F, $03, $F8   ; 
- D 1 - I - 0x02B771 0A:B761: F1        .byte $F1, $4F, $43, $00   ; 
@end:



_off005_B765_AE:
- D 1 - I - 0x02B775 0A:B765: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B776 0A:B766: CD        .byte $CD, $01, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B77A 0A:B76A: C4        .byte $C4, $03, $00, $00   ; 
- D 1 - I - 0x02B77E 0A:B76E: C4        .byte $C4, $05, $00, $08   ; 
- D 1 - I - 0x02B782 0A:B772: D4        .byte $D4, $07, $00, $00   ; 
- D 1 - I - 0x02B786 0A:B776: D4        .byte $D4, $09, $00, $08   ; 
- D 1 - I - 0x02B78A 0A:B77A: D0        .byte $D0, $0B, $00, $10   ; 
- D 1 - I - 0x02B78E 0A:B77E: E4        .byte $E4, $21, $00, $F7   ; 
- D 1 - I - 0x02B792 0A:B782: E4        .byte $E4, $23, $00, $FF   ; 
- D 1 - I - 0x02B796 0A:B786: E4        .byte $E4, $25, $00, $07   ; 
- D 1 - I - 0x02B79A 0A:B78A: F4        .byte $F4, $4F, $00, $F1   ; 
- D 1 - I - 0x02B79E 0A:B78E: F4        .byte $F4, $51, $00, $F9   ; 
- D 1 - I - 0x02B7A2 0A:B792: F4        .byte $F4, $47, $40, $06   ; 
@end:



_off005_B796_AF:
- D 1 - I - 0x02B7A6 0A:B796: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B7A7 0A:B797: C4        .byte $C4, $19, $00, $FF   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B7AB 0A:B79B: C4        .byte $C4, $1B, $00, $07   ; 
- D 1 - I - 0x02B7AF 0A:B79F: D4        .byte $D4, $1D, $00, $FE   ; 
- D 1 - I - 0x02B7B3 0A:B7A3: D4        .byte $D4, $1F, $00, $06   ; 
- D 1 - I - 0x02B7B7 0A:B7A7: E4        .byte $E4, $21, $00, $F7   ; 
- D 1 - I - 0x02B7BB 0A:B7AB: E4        .byte $E4, $23, $00, $FF   ; 
- D 1 - I - 0x02B7BF 0A:B7AF: F4        .byte $F4, $4F, $00, $F1   ; 
- D 1 - I - 0x02B7C3 0A:B7B3: F4        .byte $F4, $51, $00, $F9   ; 
- D 1 - I - 0x02B7C7 0A:B7B7: F4        .byte $F4, $47, $40, $06   ; 
- D 1 - I - 0x02B7CB 0A:B7BB: E4        .byte $E4, $25, $00, $07   ; 
@end:



_off005_B7BF_B0:
- D 1 - I - 0x02B7CF 0A:B7BF: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B7D0 0A:B7C0: CD        .byte $CD, $0D, $00, $F7   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B7D4 0A:B7C4: C4        .byte $C4, $0F, $00, $FF   ; 
- D 1 - I - 0x02B7D8 0A:B7C8: C4        .byte $C4, $11, $00, $07   ; 
- D 1 - I - 0x02B7DC 0A:B7CC: D4        .byte $D4, $15, $00, $FF   ; 
- D 1 - I - 0x02B7E0 0A:B7D0: D4        .byte $D4, $17, $00, $07   ; 
- D 1 - I - 0x02B7E4 0A:B7D4: CF        .byte $CF, $13, $00, $0F   ; 
- D 1 - I - 0x02B7E8 0A:B7D8: E4        .byte $E4, $21, $00, $F7   ; 
- D 1 - I - 0x02B7EC 0A:B7DC: E4        .byte $E4, $23, $00, $FF   ; 
- D 1 - I - 0x02B7F0 0A:B7E0: E4        .byte $E4, $25, $00, $07   ; 
- D 1 - I - 0x02B7F4 0A:B7E4: F4        .byte $F4, $4F, $00, $F1   ; 
- D 1 - I - 0x02B7F8 0A:B7E8: F4        .byte $F4, $51, $00, $F9   ; 
- D 1 - I - 0x02B7FC 0A:B7EC: F4        .byte $F4, $47, $40, $06   ; 
@end:



_off005_B7F0_B1:
- D 1 - I - 0x02B800 0A:B7F0: 04        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B801 0A:B7F1: CA        .byte $CA, $3D, $83, $18   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B805 0A:B7F5: CA        .byte $CA, $3F, $83, $20   ; 
- D 1 - I - 0x02B809 0A:B7F9: D1        .byte $D1, $3D, $03, $18   ; 
- D 1 - I - 0x02B80D 0A:B7FD: D1        .byte $D1, $3F, $03, $20   ; 
@end:



_off005_B801_B2:
- D 1 - I - 0x02B811 0A:B801: 04        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B812 0A:B802: C1        .byte $C1, $39, $03, $18   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B816 0A:B806: C1        .byte $C1, $3B, $03, $20   ; 
- D 1 - I - 0x02B81A 0A:B80A: CA        .byte $CA, $3D, $83, $18   ; 
- D 1 - I - 0x02B81E 0A:B80E: CA        .byte $CA, $3F, $83, $20   ; 
@end:



_off005_B812_B3:
- D 1 - I - 0x02B822 0A:B812: 04        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B823 0A:B813: C1        .byte $C1, $39, $03, $18   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B827 0A:B817: C1        .byte $C1, $3B, $03, $20   ; 
- D 1 - I - 0x02B82B 0A:B81B: D1        .byte $D1, $3D, $03, $18   ; 
- D 1 - I - 0x02B82F 0A:B81F: D1        .byte $D1, $3F, $03, $20   ; 
@end:



_off005_B823_B4:
- D 1 - I - 0x02B833 0A:B823: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B834 0A:B824: C4        .byte $C4, $01, $00, $00   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B838 0A:B828: C4        .byte $C4, $03, $00, $08   ; 
- D 1 - I - 0x02B83C 0A:B82C: C4        .byte $C4, $05, $00, $10   ; 
- D 1 - I - 0x02B840 0A:B830: D4        .byte $D4, $07, $00, $00   ; 
- D 1 - I - 0x02B844 0A:B834: D4        .byte $D4, $09, $00, $08   ; 
- D 1 - I - 0x02B848 0A:B838: CF        .byte $CF, $61, $80, $18   ; 
- D 1 - I - 0x02B84C 0A:B83C: D4        .byte $D4, $3F, $00, $10   ; 
- D 1 - I - 0x02B850 0A:B840: E4        .byte $E4, $5D, $40, $FE   ; 
- D 1 - I - 0x02B854 0A:B844: E4        .byte $E4, $5B, $40, $06   ; 
- D 1 - I - 0x02B858 0A:B848: E4        .byte $E4, $59, $40, $0E   ; 
- D 1 - I - 0x02B85C 0A:B84C: F4        .byte $F4, $65, $40, $F8   ; 
- D 1 - I - 0x02B860 0A:B850: F4        .byte $F4, $49, $40, $00   ; 
- D 1 - I - 0x02B864 0A:B854: F4        .byte $F4, $47, $40, $0D   ; 
@end:



_off005_B858_B5:
- D 1 - I - 0x02B868 0A:B858: 0E        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B869 0A:B859: B1        .byte $B1, $23, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B86D 0A:B85D: C1        .byte $C1, $1F, $00, $F6   ; 
- D 1 - I - 0x02B871 0A:B861: C1        .byte $C1, $03, $00, $FE   ; 
- D 1 - I - 0x02B875 0A:B865: C1        .byte $C1, $05, $00, $06   ; 
- D 1 - I - 0x02B879 0A:B869: C4        .byte $C4, $21, $00, $0E   ; 
- D 1 - I - 0x02B87D 0A:B86D: D1        .byte $D1, $19, $40, $F6   ; 
- D 1 - I - 0x02B881 0A:B871: D1        .byte $D1, $17, $40, $FE   ; 
- D 1 - I - 0x02B885 0A:B875: D1        .byte $D1, $0B, $00, $06   ; 
- D 1 - I - 0x02B889 0A:B879: E1        .byte $E1, $57, $40, $FD   ; 
- D 1 - I - 0x02B88D 0A:B87D: E1        .byte $E1, $55, $40, $05   ; 
- D 1 - I - 0x02B891 0A:B881: E1        .byte $E1, $53, $40, $0D   ; 
- D 1 - I - 0x02B895 0A:B885: F1        .byte $F1, $45, $40, $F7   ; 
- D 1 - I - 0x02B899 0A:B889: F1        .byte $F1, $43, $40, $FF   ; 
- D 1 - I - 0x02B89D 0A:B88D: F1        .byte $F1, $41, $40, $0C   ; 
@end:



_off005_B891_B6:
- D 1 - I - 0x02B8A1 0A:B891: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B8A2 0A:B892: C4        .byte $C4, $33, $00, $F4   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B8A6 0A:B896: C4        .byte $C4, $35, $00, $FC   ; 
- D 1 - I - 0x02B8AA 0A:B89A: C4        .byte $C4, $37, $00, $04   ; 
- D 1 - I - 0x02B8AE 0A:B89E: DA        .byte $DA, $39, $00, $F0   ; 
- D 1 - I - 0x02B8B2 0A:B8A2: D4        .byte $D4, $3B, $00, $F8   ; 
- D 1 - I - 0x02B8B6 0A:B8A6: D4        .byte $D4, $3D, $00, $00   ; 
- D 1 - I - 0x02B8BA 0A:B8AA: D4        .byte $D4, $3F, $00, $08   ; 
- D 1 - I - 0x02B8BE 0A:B8AE: E4        .byte $E4, $5D, $40, $FE   ; 
- D 1 - I - 0x02B8C2 0A:B8B2: E4        .byte $E4, $5B, $40, $06   ; 
- D 1 - I - 0x02B8C6 0A:B8B6: E4        .byte $E4, $59, $40, $0E   ; 
- D 1 - I - 0x02B8CA 0A:B8BA: F4        .byte $F4, $4B, $40, $F8   ; 
- D 1 - I - 0x02B8CE 0A:B8BE: F4        .byte $F4, $49, $40, $00   ; 
- D 1 - I - 0x02B8D2 0A:B8C2: F4        .byte $F4, $47, $40, $0D   ; 
@end:



_off005_B8C6_B7:
- D 1 - I - 0x02B8D6 0A:B8C6: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B8D7 0A:B8C7: D1        .byte $D1, $05, $40, $F6   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B8DB 0A:B8CB: D1        .byte $D1, $03, $40, $FE   ; 
- D 1 - I - 0x02B8DF 0A:B8CF: D1        .byte $D1, $01, $40, $06   ; 
- D 1 - I - 0x02B8E3 0A:B8D3: E1        .byte $E1, $1F, $40, $F6   ; 
- D 1 - I - 0x02B8E7 0A:B8D7: E1        .byte $E1, $09, $40, $FE   ; 
- D 1 - I - 0x02B8EB 0A:B8DB: E1        .byte $E1, $07, $40, $06   ; 
- D 1 - I - 0x02B8EF 0A:B8DF: F1        .byte $F1, $45, $40, $F9   ; 
- D 1 - I - 0x02B8F3 0A:B8E3: F1        .byte $F1, $43, $40, $01   ; 
- D 1 - I - 0x02B8F7 0A:B8E7: F1        .byte $F1, $49, $40, $09   ; 
- D 1 - I - 0x02B8FB 0A:B8EB: F6        .byte $F6, $47, $40, $11   ; 
@end:



_off005_B8EF_B8:
- D 1 - I - 0x02B8FF 0A:B8EF: 0A        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B900 0A:B8F0: D1        .byte $D1, $51, $00, $F2   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B904 0A:B8F4: D1        .byte $D1, $53, $00, $FA   ; 
- D 1 - I - 0x02B908 0A:B8F8: D1        .byte $D1, $55, $00, $02   ; 
- D 1 - I - 0x02B90C 0A:B8FC: D1        .byte $D1, $57, $00, $0A   ; 
- D 1 - I - 0x02B910 0A:B900: E1        .byte $E1, $59, $00, $F2   ; 
- D 1 - I - 0x02B914 0A:B904: E1        .byte $E1, $5B, $00, $FA   ; 
- D 1 - I - 0x02B918 0A:B908: E1        .byte $E1, $5D, $00, $02   ; 
- D 1 - I - 0x02B91C 0A:B90C: E1        .byte $E1, $5F, $00, $0A   ; 
- D 1 - I - 0x02B920 0A:B910: F1        .byte $F1, $61, $00, $FA   ; 
- D 1 - I - 0x02B924 0A:B914: F1        .byte $F1, $61, $00, $02   ; 
@end:



_off005_B918_B9:
- D 1 - I - 0x02B928 0A:B918: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B929 0A:B919: C4        .byte $C4, $01, $00, $00   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B92D 0A:B91D: C4        .byte $C4, $03, $00, $08   ; 
- D 1 - I - 0x02B931 0A:B921: C9        .byte $C9, $05, $00, $10   ; 
- D 1 - I - 0x02B935 0A:B925: D4        .byte $D4, $07, $00, $00   ; 
- D 1 - I - 0x02B939 0A:B929: D4        .byte $D4, $09, $00, $08   ; 
- D 1 - I - 0x02B93D 0A:B92D: E4        .byte $E4, $17, $00, $F9   ; 
- D 1 - I - 0x02B941 0A:B931: E4        .byte $E4, $19, $00, $01   ; 
- D 1 - I - 0x02B945 0A:B935: E4        .byte $E4, $1B, $00, $09   ; 
- D 1 - I - 0x02B949 0A:B939: F4        .byte $F4, $4F, $00, $F1   ; 
- D 1 - I - 0x02B94D 0A:B93D: F4        .byte $F4, $51, $00, $F9   ; 
- D 1 - I - 0x02B951 0A:B941: F4        .byte $F4, $47, $40, $0A   ; 
@end:



_off005_B945_BA:
- D 1 - I - 0x02B955 0A:B945: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B956 0A:B946: C4        .byte $C4, $0B, $00, $FF   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B95A 0A:B94A: C4        .byte $C4, $0D, $00, $07   ; 
- D 1 - I - 0x02B95E 0A:B94E: C1        .byte $C1, $0F, $00, $0F   ; 
- D 1 - I - 0x02B962 0A:B952: D4        .byte $D4, $11, $00, $FF   ; 
- D 1 - I - 0x02B966 0A:B956: D4        .byte $D4, $13, $00, $07   ; 
- D 1 - I - 0x02B96A 0A:B95A: D4        .byte $D4, $15, $00, $0F   ; 
- D 1 - I - 0x02B96E 0A:B95E: E4        .byte $E4, $17, $00, $F9   ; 
- D 1 - I - 0x02B972 0A:B962: E4        .byte $E4, $19, $00, $01   ; 
- D 1 - I - 0x02B976 0A:B966: E4        .byte $E4, $1B, $00, $09   ; 
- D 1 - I - 0x02B97A 0A:B96A: F4        .byte $F4, $4F, $00, $F1   ; 
- D 1 - I - 0x02B97E 0A:B96E: F4        .byte $F4, $51, $00, $F9   ; 
- D 1 - I - 0x02B982 0A:B972: F4        .byte $F4, $47, $40, $0A   ; 
@end:



_off005_B976_BB:
- D 1 - I - 0x02B986 0A:B976: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B987 0A:B977: B1        .byte $B1, $21, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B98B 0A:B97B: C1        .byte $C1, $23, $00, $F8   ; 
- D 1 - I - 0x02B98F 0A:B97F: D1        .byte $D1, $25, $00, $F8   ; 
- D 1 - I - 0x02B993 0A:B983: E1        .byte $E1, $27, $00, $F8   ; 
- D 1 - I - 0x02B997 0A:B987: B8        .byte $B8, $29, $00, $00   ; 
- D 1 - I - 0x02B99B 0A:B98B: B8        .byte $B8, $2B, $00, $08   ; 
- D 1 - I - 0x02B99F 0A:B98F: C8        .byte $C8, $2D, $00, $00   ; 
- D 1 - I - 0x02B9A3 0A:B993: C8        .byte $C8, $2F, $00, $08   ; 
- D 1 - I - 0x02B9A7 0A:B997: D8        .byte $D8, $31, $00, $00   ; 
- D 1 - I - 0x02B9AB 0A:B99B: D8        .byte $D8, $33, $00, $08   ; 
- D 1 - I - 0x02B9AF 0A:B99F: E8        .byte $E8, $35, $00, $00   ; 
- D 1 - I - 0x02B9B3 0A:B9A3: E8        .byte $E8, $37, $00, $08   ; 
@end:



_off005_B9A7_BC:
- D 1 - I - 0x02B9B7 0A:B9A7: 01        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B9B8 0A:B9A8: C9        .byte $C9, $3B, $02, $18   ; spt_Y, spr_T, spr_A, spr_X
@end:



_off005_B9AC_BD:
- D 1 - I - 0x02B9BC 0A:B9AC: 03        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B9BD 0A:B9AD: B9        .byte $B9, $3D, $02, $17   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B9C1 0A:B9B1: CA        .byte $CA, $3F, $02, $1A   ; 
- D 1 - I - 0x02B9C5 0A:B9B5: DC        .byte $DC, $3D, $82, $17   ; 
@end:



_off005_B9B9_BE:
- D 1 - I - 0x02B9C9 0A:B9B9: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B9CA 0A:B9BA: C1        .byte $C1, $39, $02, $1C   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B9CE 0A:B9BE: D1        .byte $D1, $39, $82, $1C   ; 
@end:



_off005_B9C2_BF:
- D 1 - I - 0x02B9D2 0A:B9C2: 01        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B9D3 0A:B9C3: F8        .byte $F8, $71, $02, $FD   ; spt_Y, spr_T, spr_A, spr_X
@end:



_off005_B9C7_C0:
- D 1 - I - 0x02B9D7 0A:B9C7: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B9D8 0A:B9C8: F8        .byte $F8, $73, $82, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B9DC 0A:B9CC: F8        .byte $F8, $75, $82, $00   ; 
@end:



_off005_B9D0_C1:
- D 1 - I - 0x02B9E0 0A:B9D0: 02        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B9E1 0A:B9D1: F0        .byte $F0, $77, $02, $FC   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B9E5 0A:B9D5: 00        .byte $00, $77, $82, $FC   ; 
@end:



_off005_B9D9_C2:
- D 1 - I - 0x02B9E9 0A:B9D9: 0B        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02B9EA 0A:B9DA: C1        .byte $C1, $25, $00, $01   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02B9EE 0A:B9DE: C1        .byte $C1, $27, $00, $09   ; 
- D 1 - I - 0x02B9F2 0A:B9E2: C1        .byte $C1, $29, $00, $11   ; 
- D 1 - I - 0x02B9F6 0A:B9E6: D1        .byte $D1, $2B, $00, $01   ; 
- D 1 - I - 0x02B9FA 0A:B9EA: D1        .byte $D1, $2D, $00, $09   ; 
- D 1 - I - 0x02B9FE 0A:B9EE: D1        .byte $D1, $2F, $00, $11   ; 
- D 1 - I - 0x02BA02 0A:B9F2: CB        .byte $CB, $31, $00, $19   ; 
- D 1 - I - 0x02BA06 0A:B9F6: E1        .byte $E1, $47, $00, $01   ; 
- D 1 - I - 0x02BA0A 0A:B9FA: E1        .byte $E1, $49, $00, $09   ; 
- D 1 - I - 0x02BA0E 0A:B9FE: F1        .byte $F1, $53, $00, $00   ; 
- D 1 - I - 0x02BA12 0A:BA02: F1        .byte $F1, $55, $00, $08   ; 
@end:



_off005_BA06_C3:
- D 1 - I - 0x02BA16 0A:BA06: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02BA17 0A:BA07: AC        .byte $AC, $25, $00, $13   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02BA1B 0A:BA0B: AC        .byte $AC, $27, $00, $1B   ; 
- D 1 - I - 0x02BA1F 0A:BA0F: BC        .byte $BC, $29, $00, $06   ; 
- D 1 - I - 0x02BA23 0A:BA13: BC        .byte $BC, $2B, $00, $0E   ; 
- D 1 - I - 0x02BA27 0A:BA17: BC        .byte $BC, $2D, $00, $16   ; 
- D 1 - I - 0x02BA2B 0A:BA1B: CC        .byte $CC, $2F, $00, $06   ; 
- D 1 - I - 0x02BA2F 0A:BA1F: CC        .byte $CC, $31, $00, $0E   ; 
- D 1 - I - 0x02BA33 0A:BA23: CC        .byte $CC, $33, $00, $16   ; 
- D 1 - I - 0x02BA37 0A:BA27: DC        .byte $DC, $35, $00, $0B   ; 
- D 1 - I - 0x02BA3B 0A:BA2B: DC        .byte $DC, $37, $00, $13   ; 
- D 1 - I - 0x02BA3F 0A:BA2F: EC        .byte $EC, $53, $00, $0A   ; 
- D 1 - I - 0x02BA43 0A:BA33: EC        .byte $EC, $55, $00, $12   ; 
@end:



_off005_BA37_C4:
- D 1 - I - 0x02BA47 0A:BA37: 0E        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02BA48 0A:BA38: B1        .byte $B1, $01, $00, $04   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02BA4C 0A:BA3C: C1        .byte $C1, $03, $00, $F4   ; 
- D 1 - I - 0x02BA50 0A:BA40: C1        .byte $C1, $05, $00, $FC   ; 
- D 1 - I - 0x02BA54 0A:BA44: C1        .byte $C1, $07, $00, $04   ; 
- D 1 - I - 0x02BA58 0A:BA48: C1        .byte $C1, $09, $00, $0C   ; 
- D 1 - I - 0x02BA5C 0A:BA4C: D1        .byte $D1, $0B, $00, $F5   ; 
- D 1 - I - 0x02BA60 0A:BA50: D1        .byte $D1, $0D, $00, $FD   ; 
- D 1 - I - 0x02BA64 0A:BA54: D1        .byte $D1, $0F, $00, $05   ; 
- D 1 - I - 0x02BA68 0A:BA58: E1        .byte $E1, $11, $00, $F6   ; 
- D 1 - I - 0x02BA6C 0A:BA5C: E1        .byte $E1, $13, $00, $FE   ; 
- D 1 - I - 0x02BA70 0A:BA60: E1        .byte $E1, $15, $00, $06   ; 
- D 1 - I - 0x02BA74 0A:BA64: F1        .byte $F1, $41, $00, $F6   ; 
- D 1 - I - 0x02BA78 0A:BA68: F1        .byte $F1, $43, $00, $04   ; 
- D 1 - I - 0x02BA7C 0A:BA6C: F1        .byte $F1, $45, $00, $0C   ; 
@end:



_off005_BA70_C5:
- D 1 - I - 0x02BA80 0A:BA70: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02BA81 0A:BA71: C1        .byte $C1, $17, $00, $F9   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02BA85 0A:BA75: C1        .byte $C1, $19, $00, $01   ; 
- D 1 - I - 0x02BA89 0A:BA79: C1        .byte $C1, $1B, $00, $09   ; 
- D 1 - I - 0x02BA8D 0A:BA7D: D1        .byte $D1, $1D, $00, $FD   ; 
- D 1 - I - 0x02BA91 0A:BA81: D1        .byte $D1, $1F, $00, $05   ; 
- D 1 - I - 0x02BA95 0A:BA85: D1        .byte $D1, $21, $00, $0D   ; 
- D 1 - I - 0x02BA99 0A:BA89: F1        .byte $F1, $41, $40, $0B   ; 
- D 1 - I - 0x02BA9D 0A:BA8D: F1        .byte $F1, $43, $40, $FD   ; 
- D 1 - I - 0x02BAA1 0A:BA91: F1        .byte $F1, $45, $40, $F5   ; 
- D 1 - I - 0x02BAA5 0A:BA95: E1        .byte $E1, $11, $40, $0B   ; 
- D 1 - I - 0x02BAA9 0A:BA99: E1        .byte $E1, $13, $40, $03   ; 
- D 1 - I - 0x02BAAD 0A:BA9D: E1        .byte $E1, $15, $40, $FB   ; 
@end:



_off005_BAA1_C6:
- D 1 - I - 0x02BAB1 0A:BAA1: 0E        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02BAB2 0A:BAA2: B1        .byte $B1, $01, $40, $FD   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02BAB6 0A:BAA6: C1        .byte $C1, $09, $40, $F5   ; 
- D 1 - I - 0x02BABA 0A:BAAA: C1        .byte $C1, $07, $40, $FD   ; 
- D 1 - I - 0x02BABE 0A:BAAE: C1        .byte $C1, $05, $40, $05   ; 
- D 1 - I - 0x02BAC2 0A:BAB2: C1        .byte $C1, $03, $40, $0D   ; 
- D 1 - I - 0x02BAC6 0A:BAB6: D1        .byte $D1, $0F, $40, $FC   ; 
- D 1 - I - 0x02BACA 0A:BABA: D1        .byte $D1, $0D, $40, $04   ; 
- D 1 - I - 0x02BACE 0A:BABE: D1        .byte $D1, $0B, $40, $0C   ; 
- D 1 - I - 0x02BAD2 0A:BAC2: E1        .byte $E1, $15, $40, $FB   ; 
- D 1 - I - 0x02BAD6 0A:BAC6: E1        .byte $E1, $13, $40, $03   ; 
- D 1 - I - 0x02BADA 0A:BACA: E1        .byte $E1, $11, $40, $0B   ; 
- D 1 - I - 0x02BADE 0A:BACE: F1        .byte $F1, $45, $40, $F5   ; 
- D 1 - I - 0x02BAE2 0A:BAD2: F1        .byte $F1, $43, $40, $FD   ; 
- D 1 - I - 0x02BAE6 0A:BAD6: F1        .byte $F1, $41, $40, $0B   ; 
@end:



_off005_BADA_C7:
- D 1 - I - 0x02BAEA 0A:BADA: 0E        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02BAEB 0A:BADB: B1        .byte $B1, $23, $00, $02   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02BAEF 0A:BADF: C1        .byte $C1, $25, $00, $F9   ; 
- D 1 - I - 0x02BAF3 0A:BAE3: C1        .byte $C1, $27, $00, $01   ; 
- D 1 - I - 0x02BAF7 0A:BAE7: C1        .byte $C1, $29, $00, $09   ; 
- D 1 - I - 0x02BAFB 0A:BAEB: D1        .byte $D1, $2B, $00, $F9   ; 
- D 1 - I - 0x02BAFF 0A:BAEF: D1        .byte $D1, $2D, $00, $01   ; 
- D 1 - I - 0x02BB03 0A:BAF3: D1        .byte $D1, $2F, $00, $09   ; 
- D 1 - I - 0x02BB07 0A:BAF7: E1        .byte $E1, $31, $00, $F9   ; 
- D 1 - I - 0x02BB0B 0A:BAFB: E1        .byte $E1, $33, $00, $01   ; 
- D 1 - I - 0x02BB0F 0A:BAFF: E1        .byte $E1, $31, $40, $09   ; 
- D 1 - I - 0x02BB13 0A:BB03: F1        .byte $F1, $45, $40, $F5   ; 
- D 1 - I - 0x02BB17 0A:BB07: F1        .byte $F1, $43, $40, $FD   ; 
- D 1 - I - 0x02BB1B 0A:BB0B: F1        .byte $F1, $43, $00, $05   ; 
- D 1 - I - 0x02BB1F 0A:BB0F: F1        .byte $F1, $45, $00, $0D   ; 
@end:



_off005_BB13_C8:
- D 1 - I - 0x02BB23 0A:BB13: 0D        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02BB24 0A:BB14: C4        .byte $C4, $01, $00, $F5   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02BB28 0A:BB18: C4        .byte $C4, $03, $00, $FD   ; 
- D 1 - I - 0x02BB2C 0A:BB1C: C4        .byte $C4, $05, $00, $05   ; 
- D 1 - I - 0x02BB30 0A:BB20: D4        .byte $D4, $07, $00, $F5   ; 
- D 1 - I - 0x02BB34 0A:BB24: D4        .byte $D4, $09, $00, $FD   ; 
- D 1 - I - 0x02BB38 0A:BB28: D4        .byte $D4, $0B, $00, $05   ; 
- D 1 - I - 0x02BB3C 0A:BB2C: E4        .byte $E4, $0D, $00, $F5   ; 
- D 1 - I - 0x02BB40 0A:BB30: E4        .byte $E4, $0F, $00, $FD   ; 
- D 1 - I - 0x02BB44 0A:BB34: E4        .byte $E4, $11, $00, $05   ; 
- D 1 - I - 0x02BB48 0A:BB38: F4        .byte $F4, $65, $40, $F0   ; 
- D 1 - I - 0x02BB4C 0A:BB3C: F4        .byte $F4, $49, $40, $F8   ; 
- D 1 - I - 0x02BB50 0A:BB40: F4        .byte $F4, $49, $00, $03   ; 
- D 1 - I - 0x02BB54 0A:BB44: F4        .byte $F4, $65, $00, $0B   ; 
@end:



_off005_BB48_C9:
- D 1 - I - 0x02BB58 0A:BB48: 0C        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02BB59 0A:BB49: C4        .byte $C4, $13, $00, $F3   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02BB5D 0A:BB4D: C4        .byte $C4, $15, $00, $FB   ; 
- D 1 - I - 0x02BB61 0A:BB51: C4        .byte $C4, $17, $00, $03   ; 
- D 1 - I - 0x02BB65 0A:BB55: D4        .byte $D4, $19, $00, $F4   ; 
- D 1 - I - 0x02BB69 0A:BB59: D4        .byte $D4, $1B, $00, $FC   ; 
- D 1 - I - 0x02BB6D 0A:BB5D: D4        .byte $D4, $1D, $00, $04   ; 
- D 1 - I - 0x02BB71 0A:BB61: E4        .byte $E4, $1F, $00, $F8   ; 
- D 1 - I - 0x02BB75 0A:BB65: E4        .byte $E4, $21, $00, $00   ; 
- D 1 - I - 0x02BB79 0A:BB69: E4        .byte $E4, $23, $00, $08   ; 
- D 1 - I - 0x02BB7D 0A:BB6D: F4        .byte $F4, $47, $40, $07   ; 
- D 1 - I - 0x02BB81 0A:BB71: F4        .byte $F4, $49, $40, $FA   ; 
- D 1 - I - 0x02BB85 0A:BB75: F4        .byte $F4, $65, $40, $F2   ; 
@end:



_off005_BB79_CA:
- D 1 - I - 0x02BB89 0A:BB79: 09        .byte (@end - * - $01) / $04 ; счетчик спрайтов
- D 1 - I - 0x02BB8A 0A:BB7A: E1        .byte $E1, $25, $00, $F8   ; spt_Y, spr_T, spr_A, spr_X
- D 1 - I - 0x02BB8E 0A:BB7E: E1        .byte $E1, $27, $00, $00   ; 
- D 1 - I - 0x02BB92 0A:BB82: E1        .byte $E1, $29, $00, $08   ; 
- D 1 - I - 0x02BB96 0A:BB86: E1        .byte $E1, $2B, $00, $10   ; 
- D 1 - I - 0x02BB9A 0A:BB8A: F1        .byte $F1, $2D, $00, $F5   ; 
- D 1 - I - 0x02BB9E 0A:BB8E: F1        .byte $F1, $2F, $00, $FD   ; 
- D 1 - I - 0x02BBA2 0A:BB92: F1        .byte $F1, $33, $00, $0D   ; 
- D 1 - I - 0x02BBA6 0A:BB96: F1        .byte $F1, $35, $00, $15   ; 
- D 1 - I - 0x02BBAA 0A:BB9A: F1        .byte $F1, $31, $00, $05   ; 
@end:



sub_0x02BD8C:
C - - - - - 0x02BD8C 0A:BD7C: 20 11 BF  JSR sub_BF11
C - - - - - 0x02BD8F 0A:BD7F: A2 01     LDX #$01
C - - - - - 0x02BD91 0A:BD81: AD 31 05  LDA ram_obj_0530 + $01
C - - - - - 0x02BD94 0A:BD84: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 1 - I - 0x02BD97 0A:BD87: 91 BD     .word ofs_043_BD91_00
- D 1 - I - 0x02BD99 0A:BD89: C4 BD     .word ofs_043_BDC4_01
- D 1 - I - 0x02BD9B 0A:BD8B: 46 BE     .word ofs_043_BE46_02
- D 1 - I - 0x02BD9D 0A:BD8D: B4 BE     .word ofs_043_BEB4_03
- D 1 - I - 0x02BD9F 0A:BD8F: C2 BE     .word _общий_RTS ; 04



ofs_043_BD91_00:
C - - J - - 0x02BDA1 0A:BD91: A9 90     LDA #$90
C - - - - - 0x02BDA3 0A:BD93: 8D 41 04  STA ram_obj_pos_X + $01
C - - - - - 0x02BDA6 0A:BD96: A9 00     LDA #$00
C - - - - - 0x02BDA8 0A:BD98: 8D A1 04  STA ram_obj_spd_Y_hi + $01
loc_BD9B:
C D 1 - - - 0x02BDAB 0A:BD9B: AC 50 05  LDY ram_obj_id
C - - - - - 0x02BDAE 0A:BD9E: B9 CE BF  LDA tbl_BFCE,Y
C - - - - - 0x02BDB1 0A:BDA1: 8D 91 05  STA ram_obj_0590 + $01
C - - - - - 0x02BDB4 0A:BDA4: EE 31 05  INC ram_obj_0530 + $01
C - - - - - 0x02BDB7 0A:BDA7: A9 80     LDA #$80
C - - - - - 0x02BDB9 0A:BDA9: 8D E1 05  STA ram_obj_05E0 + $01
C - - - - - 0x02BDBC 0A:BDAC: 0A        ASL
C - - - - - 0x02BDBD 0A:BDAD: 8D B1 04  STA ram_obj_spd_Y_lo + $01
C - - - - - 0x02BDC0 0A:BDB0: A9 01     LDA #$01
C - - - - - 0x02BDC2 0A:BDB2: 8D 31 05  STA ram_obj_0530 + $01
C - - - - - 0x02BDC5 0A:BDB5: A9 B0     LDA #$B0
C - - - - - 0x02BDC7 0A:BDB7: 8D 11 04  STA ram_obj_pos_Y + $01
C - - - - - 0x02BDCA 0A:BDBA: A9 09     LDA #$09
C - - - - - 0x02BDCC 0A:BDBC: 8D 71 05  STA ram_obj_0570 + $01
C - - - - - 0x02BDCF 0A:BDBF: A9 20     LDA #$20
C - - - - - 0x02BDD1 0A:BDC1: 8D 81 05  STA ram_obj_0580 + $01
ofs_043_BDC4_01:
C - - - - - 0x02BDD4 0A:BDC4: AD 61 05  LDA ram_obj_timer + $01
C - - - - - 0x02BDD7 0A:BDC7: F0 0A     BEQ bra_BDD3
- - - - - - 0x02BDD9 0A:BDC9: CE 61 05  DEC ram_obj_timer + $01
- - - - - - 0x02BDDC 0A:BDCC: D0 0F     BNE bra_BDDD
- - - - - - 0x02BDDE 0A:BDCE: A9 00     LDA #$00
- - - - - - 0x02BDE0 0A:BDD0: 8D 1F 06  STA ram_plr_061E + $01
bra_BDD3:
C - - - - - 0x02BDE3 0A:BDD3: AD 1F 06  LDA ram_plr_061E + $01
C - - - - - 0x02BDE6 0A:BDD6: F0 05     BEQ bra_BDDD
C - - - - - 0x02BDE8 0A:BDD8: A9 03     LDA #$03
C - - - - - 0x02BDEA 0A:BDDA: 8D 60 05  STA ram_obj_timer
bra_BDDD:
C - - - - - 0x02BDED 0A:BDDD: A9 1E     LDA #$1E
C - - - - - 0x02BDEF 0A:BDDF: 8D 71 05  STA ram_obj_0570 + $01
C - - - - - 0x02BDF2 0A:BDE2: AD F1 05  LDA ram_obj_05F0 + $01
C - - - - - 0x02BDF5 0A:BDE5: F0 0A     BEQ bra_BDF1
C - - - - - 0x02BDF7 0A:BDE7: CE F1 05  DEC ram_obj_05F0 + $01
C - - - - - 0x02BDFA 0A:BDEA: D0 05     BNE bra_BDF1
C - - - - - 0x02BDFC 0A:BDEC: A9 00     LDA #$00
C - - - - - 0x02BDFE 0A:BDEE: 8D 1F 06  STA ram_plr_061E + $01
bra_BDF1:
C - - - - - 0x02BE01 0A:BDF1: AD 91 05  LDA ram_obj_0590 + $01
C - - - - - 0x02BE04 0A:BDF4: AC B1 04  LDY ram_obj_spd_Y_lo + $01
C - - - - - 0x02BE07 0A:BDF7: D9 E2 BF  CMP tbl_BFE2,Y
C - - - - - 0x02BE0A 0A:BDFA: B0 49     BCS bra_BE45_RTS
C - - - - - 0x02BE0C 0A:BDFC: A9 01     LDA #$01
C - - - - - 0x02BE0E 0A:BDFE: 85 04     STA ram_0004
C - - - - - 0x02BE10 0A:BE00: AD B1 04  LDA ram_obj_spd_Y_lo + $01
C - - - - - 0x02BE13 0A:BE03: 0A        ASL
C - - - - - 0x02BE14 0A:BE04: 0A        ASL
C - - - - - 0x02BE15 0A:BE05: 0A        ASL
C - - - - - 0x02BE16 0A:BE06: 85 02     STA ram_0002
C - - - - - 0x02BE18 0A:BE08: AD A1 04  LDA ram_obj_spd_Y_hi + $01
C - - - - - 0x02BE1B 0A:BE0B: 0A        ASL
C - - - - - 0x02BE1C 0A:BE0C: A8        TAY
C - - - - - 0x02BE1D 0A:BE0D: B9 86 BF  LDA tbl_BF86,Y
C - - - - - 0x02BE20 0A:BE10: 85 00     STA ram_0000
C - - - - - 0x02BE22 0A:BE12: B9 87 BF  LDA tbl_BF86 + $01,Y
C - - - - - 0x02BE25 0A:BE15: 18        CLC
C - - - - - 0x02BE26 0A:BE16: 69 80     ADC #$80
C - - - - - 0x02BE28 0A:BE18: 85 01     STA ram_0001
bra_BE1A_loop:
C - - - - - 0x02BE2A 0A:BE1A: A5 00     LDA ram_0000
C - - - - - 0x02BE2C 0A:BE1C: A4 01     LDY ram_0001
C - - - - - 0x02BE2E 0A:BE1E: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x02BE31 0A:BE21: A9 03     LDA #$03
C - - - - - 0x02BE33 0A:BE23: 85 03     STA ram_0003
bra_BE25_loop:
C - - - - - 0x02BE35 0A:BE25: A4 02     LDY ram_0002
C - - - - - 0x02BE37 0A:BE27: B9 D2 BF  LDA tbl_BFD2,Y
C - - - - - 0x02BE3A 0A:BE2A: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x02BE3D 0A:BE2D: E6 02     INC ram_0002
C - - - - - 0x02BE3F 0A:BE2F: C6 03     DEC ram_0003
C - - - - - 0x02BE41 0A:BE31: 10 F2     BPL bra_BE25_loop
C - - - - - 0x02BE43 0A:BE33: 18        CLC
C - - - - - 0x02BE44 0A:BE34: A5 01     LDA ram_0001
C - - - - - 0x02BE46 0A:BE36: 69 20     ADC #$20
C - - - - - 0x02BE48 0A:BE38: 85 01     STA ram_0001
C - - - - - 0x02BE4A 0A:BE3A: 90 02     BCC bra_BE3E
C - - - - - 0x02BE4C 0A:BE3C: E6 00     INC ram_0000
bra_BE3E:
C - - - - - 0x02BE4E 0A:BE3E: C6 04     DEC ram_0004
C - - - - - 0x02BE50 0A:BE40: 10 D8     BPL bra_BE1A_loop
C - - - - - 0x02BE52 0A:BE42: EE B1 04  INC ram_obj_spd_Y_lo + $01
bra_BE45_RTS:
C - - - - - 0x02BE55 0A:BE45: 60        RTS



ofs_043_BE46_02:
C - - J - - 0x02BE56 0A:BE46: A9 14     LDA #con_sfx_разбитая_стена
C - - - - - 0x02BE58 0A:BE48: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x02BE5B 0A:BE4B: 20 C3 BE  JSR sub_BEC3
C - - - - - 0x02BE5E 0A:BE4E: A9 04     LDA #$04
C - - - - - 0x02BE60 0A:BE50: 85 00     STA ram_0000
C - - - - - 0x02BE62 0A:BE52: A0 03     LDY #$03
bra_BE54_loop:
C - - - - - 0x02BE64 0A:BE54: AD 41 04  LDA ram_obj_pos_X + $01
C - - - - - 0x02BE67 0A:BE57: 99 40 04  STA ram_obj_pos_X,Y ; 0443 0445 0447 0449 044B 
C - - - - - 0x02BE6A 0A:BE5A: A9 80     LDA #$80
C - - - - - 0x02BE6C 0A:BE5C: 99 10 04  STA ram_obj_pos_Y,Y ; 0413 0415 0417 0419 041B 
C - - - - - 0x02BE6F 0A:BE5F: A9 01     LDA #$01
C - - - - - 0x02BE71 0A:BE61: 99 30 05  STA ram_obj_0530,Y ; 0533 0535 0537 0539 053B 
C - - - - - 0x02BE74 0A:BE64: C8        INY
C - - - - - 0x02BE75 0A:BE65: C8        INY
C - - - - - 0x02BE76 0A:BE66: C6 00     DEC ram_0000
C - - - - - 0x02BE78 0A:BE68: 10 EA     BPL bra_BE54_loop
C - - - - - 0x02BE7A 0A:BE6A: EE A1 04  INC ram_obj_spd_Y_hi + $01
C - - - - - 0x02BE7D 0A:BE6D: AD A1 04  LDA ram_obj_spd_Y_hi + $01
C - - - - - 0x02BE80 0A:BE70: C9 05     CMP #$05
C - - - - - 0x02BE82 0A:BE72: B0 28     BCS bra_BE9C
C - - - - - 0x02BE84 0A:BE74: 18        CLC
C - - - - - 0x02BE85 0A:BE75: AD 41 04  LDA ram_obj_pos_X + $01
C - - - - - 0x02BE88 0A:BE78: 69 40     ADC #< $0040
C - - - - - 0x02BE8A 0A:BE7A: 8D 46 04  STA ram_obj_pos_X + $06
C - - - - - 0x02BE8D 0A:BE7D: AD 31 04  LDA ram_obj_0430 + $01
C - - - - - 0x02BE90 0A:BE80: 69 00     ADC #> $0040
C - - - - - 0x02BE92 0A:BE82: 8D 36 04  STA ram_obj_0430 + $06
C - - - - - 0x02BE95 0A:BE85: A9 80     LDA #$80
C - - - - - 0x02BE97 0A:BE87: 8D E6 05  STA ram_obj_05E0 + $06
C - - - - - 0x02BE9A 0A:BE8A: EE 31 05  INC ram_obj_0530 + $01
C - - - - - 0x02BE9D 0A:BE8D: A9 80     LDA #$80
C - - - - - 0x02BE9F 0A:BE8F: 8D 81 05  STA ram_obj_0580 + $01
C - - - - - 0x02BEA2 0A:BE92: 0A        ASL
C - - - - - 0x02BEA3 0A:BE93: 8D E1 05  STA ram_obj_05E0 + $01
C - - - - - 0x02BEA6 0A:BE96: A9 FF     LDA #$FF
C - - - - - 0x02BEA8 0A:BE98: 8D 41 04  STA ram_obj_pos_X + $01
C - - - - - 0x02BEAB 0A:BE9B: 60        RTS
bra_BE9C:
C - - - - - 0x02BEAC 0A:BE9C: A9 04     LDA #$04
C - - - - - 0x02BEAE 0A:BE9E: 8D 31 05  STA ram_obj_0530 + $01
C - - - - - 0x02BEB1 0A:BEA1: A0 00     LDY #$00
C - - - - - 0x02BEB3 0A:BEA3: 8C E1 05  STY ram_obj_05E0 + $01
C - - - - - 0x02BEB6 0A:BEA6: 88        DEY
C - - - - - 0x02BEB7 0A:BEA7: 8C 41 04  STY ram_obj_pos_X + $01
C - - - - - 0x02BEBA 0A:BEAA: A9 05     LDA #con_plr_state_запускает_мяч
C - - - - - 0x02BEBC 0A:BEAC: 8D 21 05  STA ram_obj_0520 + $01
C - - - - - 0x02BEBF 0A:BEAF: A9 1D     LDA #con_0x03F6AD_1D
C - - - - - 0x02BEC1 0A:BEB1: 4C 8B F6  JMP loc_0x03F69B_выключить_звуки_и_записать_новый



ofs_043_BEB4_03:
C - - J - - 0x02BEC4 0A:BEB4: AD 36 04  LDA ram_obj_0430 + $06
C - - - - - 0x02BEC7 0A:BEB7: D0 8C     BNE bra_BE45_RTS
C - - - - - 0x02BEC9 0A:BEB9: AD 46 04  LDA ram_obj_pos_X + $06
C - - - - - 0x02BECC 0A:BEBC: 8D 41 04  STA ram_obj_pos_X + $01
C - - - - - 0x02BECF 0A:BEBF: 4C 9B BD  JMP loc_BD9B



sub_BEC3:
C - - - - - 0x02BED3 0A:BEC3: AD A1 04  LDA ram_obj_spd_Y_hi + $01
C - - - - - 0x02BED6 0A:BEC6: 0A        ASL
C - - - - - 0x02BED7 0A:BEC7: A8        TAY
C - - - - - 0x02BED8 0A:BEC8: B9 86 BF  LDA tbl_BF86,Y
C - - - - - 0x02BEDB 0A:BECB: 85 00     STA ram_0000
C - - - - - 0x02BEDD 0A:BECD: B9 87 BF  LDA tbl_BF86 + $01,Y
C - - - - - 0x02BEE0 0A:BED0: 85 01     STA ram_0001
C - - - - - 0x02BEE2 0A:BED2: A0 00     LDY #$00
C - - - - - 0x02BEE4 0A:BED4: A9 03     LDA #$03
C - - - - - 0x02BEE6 0A:BED6: 85 02     STA ram_0002
loc_BED8_loop:
C D 1 - - - 0x02BEE8 0A:BED8: A9 02     LDA #$02
C - - - - - 0x02BEEA 0A:BEDA: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x02BEED 0A:BEDD: A5 01     LDA ram_0001
C - - - - - 0x02BEEF 0A:BEDF: 20 5F D2  JSR sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса
C - - - - - 0x02BEF2 0A:BEE2: A5 00     LDA ram_0000
C - - - - - 0x02BEF4 0A:BEE4: 20 5F D2  JSR sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса
bra_BEE7_loop:
C - - - - - 0x02BEF7 0A:BEE7: B9 90 BF  LDA tbl_BF90,Y
C - - - - - 0x02BEFA 0A:BEEA: 20 5F D2  JSR sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса
C - - - - - 0x02BEFD 0A:BEED: C8        INY
C - - - - - 0x02BEFE 0A:BEEE: C9 FF     CMP #$FF
C - - - - - 0x02BF00 0A:BEF0: D0 F5     BNE bra_BEE7_loop
C - - - - - 0x02BF02 0A:BEF2: C6 02     DEC ram_0002
C - - - - - 0x02BF04 0A:BEF4: 30 05     BMI bra_BEFB
C - - - - - 0x02BF06 0A:BEF6: E6 01     INC ram_0001
C - - - - - 0x02BF08 0A:BEF8: 4C D8 BE  JMP loc_BED8_loop
bra_BEFB:
C - - - - - 0x02BF0B 0A:BEFB: AD A1 04  LDA ram_obj_spd_Y_hi + $01
C - - - - - 0x02BF0E 0A:BEFE: 0A        ASL
C - - - - - 0x02BF0F 0A:BEFF: AA        TAX
C - - - - - 0x02BF10 0A:BF00: BD C4 BF  LDA tbl_BFC4,X
C - - - - - 0x02BF13 0A:BF03: BC C5 BF  LDY tbl_BFC4 + $01,X
C - - - - - 0x02BF16 0A:BF06: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x02BF19 0A:BF09: A9 55     LDA #$55
C - - - - - 0x02BF1B 0A:BF0B: 20 5F D2  JSR sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса
C - - - - - 0x02BF1E 0A:BF0E: 4C 5B D2  JMP loc_0x03D26B_записать_FF_в_буфер_с_чтением_индекса



sub_BF11:
sub_0x02BF21:
C - - - - - 0x02BF21 0A:BF11: A2 03     LDX #$03
bra_BF13_loop:
C - - - - - 0x02BF23 0A:BF13: BD 30 05  LDA ram_obj_0530,X ; 0533 0535 0537 0539 053B 053D 053F 
C - - - - - 0x02BF26 0A:BF16: F0 03     BEQ bra_BF1B
C - - - - - 0x02BF28 0A:BF18: 20 22 BF  JSR sub_BF22
bra_BF1B:
C - - - - - 0x02BF2B 0A:BF1B: E8        INX
C - - - - - 0x02BF2C 0A:BF1C: E8        INX
C - - - - - 0x02BF2D 0A:BF1D: E0 10     CPX #$10
C - - - - - 0x02BF2F 0A:BF1F: 90 F2     BCC bra_BF13_loop
C - - - - - 0x02BF31 0A:BF21: 60        RTS



sub_BF22:
C - - - - - 0x02BF32 0A:BF22: 20 49 DB  JSR sub_0x03DB59_добавить_spd_X_к_pos_X___spd_Z_к_pos_Y
C - - - - - 0x02BF35 0A:BF25: BD 30 05  LDA ram_obj_0530,X ; 0533 0535 0537 0539 053B 
C - - - - - 0x02BF38 0A:BF28: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- - - - - - 0x02BF3B 0A:BF2B: 35 BF     .word ofs_042_BF35_00
- D 1 - I - 0x02BF3D 0A:BF2D: 35 BF     .word ofs_042_BF35_01
- D 1 - I - 0x02BF3F 0A:BF2F: 61 BF     .word ofs_042_BF61_02
- D 1 - I - 0x02BF41 0A:BF31: 6E BF     .word ofs_042_BF6E_03
- D 1 - I - 0x02BF43 0A:BF33: 7E BF     .word ofs_042_BF7E_04



ofs_042_BF35_00:
ofs_042_BF35_01:
C - - J - - 0x02BF45 0A:BF35: 8A        TXA
C - - - - - 0x02BF46 0A:BF36: 4A        LSR
C - - - - - 0x02BF47 0A:BF37: A8        TAY
C - - - - - 0x02BF48 0A:BF38: 88        DEY
C - - - - - 0x02BF49 0A:BF39: B9 E5 BF  LDA tbl_BFE5,Y
C - - - - - 0x02BF4C 0A:BF3C: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0463 0465 0467 0469 046B 
C - - - - - 0x02BF4F 0A:BF3F: B9 EA BF  LDA tbl_BFEA,Y
C - - - - - 0x02BF52 0A:BF42: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0483 0485 0487 0489 048B 
C - - - - - 0x02BF55 0A:BF45: B9 EF BF  LDA tbl_BFEF_анимация,Y
C - - - - - 0x02BF58 0A:BF48: 9D 00 04  STA ram_obj_anim_id,X ; 0403 0405 0407 0409 040B 
C - - - - - 0x02BF5B 0A:BF4B: B9 F4 BF  LDA tbl_BFF4,Y
C - - - - - 0x02BF5E 0A:BF4E: 9D 10 05  STA ram_obj_spr_flip,X ; 0513 0515 0517 0519 051B 
C - - - - - 0x02BF61 0A:BF51: FE 30 05  INC ram_obj_0530,X ; 0533 0535 0537 0539 053B 
C - - - - - 0x02BF64 0A:BF54: A9 80     LDA #$80
C - - - - - 0x02BF66 0A:BF56: 9D E0 05  STA ram_obj_05E0,X ; 05E3 05E5 05E7 05E9 05EB 
C - - - - - 0x02BF69 0A:BF59: 9D 80 05  STA ram_obj_0580,X ; 0583 0585 0587 0589 058B 
C - - - - - 0x02BF6C 0A:BF5C: 0A        ASL
C - - - - - 0x02BF6D 0A:BF5D: 9D B0 05  STA ram_obj_05B0,X ; 05B3 05B5 05B7 05B9 05BB 
bra_BF60_RTS:
C - - - - - 0x02BF70 0A:BF60: 60        RTS



ofs_042_BF61_02:
C - - J - - 0x02BF71 0A:BF61: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x02BF74 0A:BF64: 90 FA     BCC bra_BF60_RTS
C - - - - - 0x02BF76 0A:BF66: A9 FC     LDA #$FC
C - - - - - 0x02BF78 0A:BF68: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0463 0465 0467 0469 046B 
C - - - - - 0x02BF7B 0A:BF6B: FE 30 05  INC ram_obj_0530,X ; 0533 0535 0537 0539 053B 
ofs_042_BF6E_03:
C - - - - - 0x02BF7E 0A:BF6E: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x02BF81 0A:BF71: 90 ED     BCC bra_BF60_RTS
C - - - - - 0x02BF83 0A:BF73: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x02BF86 0A:BF76: A9 20     LDA #$20
C - - - - - 0x02BF88 0A:BF78: 9D 60 05  STA ram_obj_timer,X ; 0563 0565 0567 0569 056B 
C - - - - - 0x02BF8B 0A:BF7B: FE 30 05  INC ram_obj_0530,X ; 0533 0535 0537 0539 053B 
ofs_042_BF7E_04:
C - - - - - 0x02BF8E 0A:BF7E: DE 60 05  DEC ram_obj_timer,X ; 0563 0565 0567 0569 056B 
C - - - - - 0x02BF91 0A:BF81: D0 DD     BNE bra_BF60_RTS
C - - - - - 0x02BF93 0A:BF83: 4C D3 DA  JMP loc_0x03DAE3_удалить_объект



tbl_BF86:
- D 1 - - - 0x02BF96 0A:BF86: 21        .dbyt $2170   ; 00
- D 1 - - - 0x02BF98 0A:BF88: 21        .dbyt $2178   ; 01
- D 1 - - - 0x02BF9A 0A:BF8A: 25        .dbyt $2560   ; 02
- D 1 - - - 0x02BF9C 0A:BF8C: 25        .dbyt $2568   ; 03
- D 1 - - - 0x02BF9E 0A:BF8E: 25        .dbyt $2570   ; 04



tbl_BF90:
- D 1 - - - 0x02BFA0 0A:BF90: 0C        .byte $0C, $10, $30, $11, $13, $00, $17, $19, $1B, $05, $05, $06, $FF   ; 
- D 1 - - - 0x02BFAD 0A:BF9D: 0D        .byte $0D, $10, $30, $12, $14, $00, $00, $1A, $00, $05, $05, $06, $FF   ; 
- D 1 - - - 0x02BFBA 0A:BFAA: 0E        .byte $0E, $10, $30, $30, $15, $00, $00, $18, $00, $05, $05, $06, $FF   ; 
- D 1 - - - 0x02BFC7 0A:BFB7: 0F        .byte $0F, $10, $30, $30, $16, $00, $00, $18, $00, $05, $05, $06, $FF   ; 



tbl_BFC4:
- D 1 - - - 0x02BFD4 0A:BFC4: 23        .dbyt $23DC   ; 00
- D 1 - - - 0x02BFD6 0A:BFC6: 23        .dbyt $23DE   ; 01
- D 1 - - - 0x02BFD8 0A:BFC8: 27        .dbyt $27D8   ; 02
- D 1 - - - 0x02BFDA 0A:BFCA: 27        .dbyt $27DA   ; 03
- D 1 - - - 0x02BFDC 0A:BFCC: 27        .dbyt $27DC   ; 04



tbl_BFCE:
- - - - - - 0x02BFDE 0A:BFCE: 90        .byte $90   ; 00
- - - - - - 0x02BFDF 0A:BFCF: 72        .byte $72   ; 01
- - - - - - 0x02BFE0 0A:BFD0: B0        .byte $B0   ; 02
- D 1 - - - 0x02BFE1 0A:BFD1: B0        .byte $B0   ; 03



tbl_BFD2:
- D 1 - - - 0x02BFE2 0A:BFD2: 47        .byte $47   ; 00
- D 1 - - - 0x02BFE3 0A:BFD3: 48        .byte $48   ; 01
- D 1 - - - 0x02BFE4 0A:BFD4: 03        .byte $03   ; 02
- D 1 - - - 0x02BFE5 0A:BFD5: FF        .byte $FF   ; 03
- D 1 - - - 0x02BFE6 0A:BFD6: 49        .byte $49   ; 04
- D 1 - - - 0x02BFE7 0A:BFD7: 4A        .byte $4A   ; 05
- D 1 - - - 0x02BFE8 0A:BFD8: 4B        .byte $4B   ; 06
- D 1 - - - 0x02BFE9 0A:BFD9: FF        .byte $FF   ; 07
- D 1 - - - 0x02BFEA 0A:BFDA: 4C        .byte $4C   ; 08
- D 1 - - - 0x02BFEB 0A:BFDB: 4D        .byte $4D   ; 09
- D 1 - - - 0x02BFEC 0A:BFDC: 4E        .byte $4E   ; 0A
- D 1 - - - 0x02BFED 0A:BFDD: FF        .byte $FF   ; 0B
- D 1 - - - 0x02BFEE 0A:BFDE: 4F        .byte $4F   ; 0C
- D 1 - - - 0x02BFEF 0A:BFDF: 50        .byte $50   ; 0D
- D 1 - - - 0x02BFF0 0A:BFE0: 51        .byte $51   ; 0E
- D 1 - - - 0x02BFF1 0A:BFE1: FF        .byte $FF   ; 0F



tbl_BFE2:
- D 1 - - - 0x02BFF2 0A:BFE2: 50        .byte $50   ; 00
- D 1 - - - 0x02BFF3 0A:BFE3: 20        .byte $20   ; 01
- D 1 - - - 0x02BFF4 0A:BFE4: 00        .byte $00   ; 02



tbl_BFE5:
- D 1 - - - 0x02BFF5 0A:BFE5: FD        .byte $FD   ; 02
- D 1 - - - 0x02BFF6 0A:BFE6: FC        .byte $FC   ; 04
- D 1 - - - 0x02BFF7 0A:BFE7: FB        .byte $FB   ; 06
- D 1 - - - 0x02BFF8 0A:BFE8: FC        .byte $FC   ; 08
- D 1 - - - 0x02BFF9 0A:BFE9: FD        .byte $FD   ; 0A

tbl_BFEA:
- D 1 - - - 0x02BFFA 0A:BFEA: FE        .byte $FE   ; 02
- D 1 - - - 0x02BFFB 0A:BFEB: FF        .byte $FF   ; 04
- D 1 - - - 0x02BFFC 0A:BFEC: 00        .byte $00   ; 06
- D 1 - - - 0x02BFFD 0A:BFED: 01        .byte $01   ; 08
- D 1 - - - 0x02BFFE 0A:BFEE: 02        .byte $02   ; 0A

tbl_BFEF_анимация:
- D 1 - - - 0x02BFFF 0A:BFEF: 25        .byte $25   ; 02
- D 1 - - - 0x02C000 0A:BFF0: 26        .byte $26   ; 04
- D 1 - - - 0x02C001 0A:BFF1: 27        .byte $27   ; 06
- D 1 - - - 0x02C002 0A:BFF2: 26        .byte $26   ; 08
- D 1 - - - 0x02C003 0A:BFF3: 25        .byte $25   ; 0A

tbl_BFF4:
- D 1 - - - 0x02C004 0A:BFF4: 00        .byte $00   ; 02
- D 1 - - - 0x02C005 0A:BFF5: 00        .byte $00   ; 04
- D 1 - - - 0x02C006 0A:BFF6: 00        .byte $00   ; 06
- D 1 - - - 0x02C007 0A:BFF7: 40        .byte $40   ; 08
- D 1 - - - 0x02C008 0A:BFF8: C0        .byte $C0   ; 0A



